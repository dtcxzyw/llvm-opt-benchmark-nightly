inline.NumInlined: 178
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@process:bb.a

bb.r:                                             ; preds = %bb.q
  %i.mr = fcmp reassoc nsz arcp contract afn ult float %i.mp, -1.000000e+06
  br i1 %i.mr, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ms = fcmp reassoc nsz arcp contract afn ole float %i.mp, 1.000000e+06
  %i.mt = select reassoc nsz arcp contract afn i1 %i.ms, float %i.mp, float 1.000000e+06
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.mu = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.q ], [ %i.mt, %bb.s ], [ -1.000000e+06, %bb.r ] ; 4 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mo, i64 4
  %i.mw = load float, ptr %i.mv, align 4, !tbaa !11 ; 4 uses
  %i.mx = fcmp uno float %i.mw, 0.000000e+00
  br i1 %i.mx, label %bb.w, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.my = fcmp reassoc nsz arcp contract afn ult float %i.mw, -1.000000e+06
  br i1 %i.my, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.mz = fcmp reassoc nsz arcp contract afn ole float %i.mw, 1.000000e+06
  %i.na = select reassoc nsz arcp contract afn i1 %i.mz, float %i.mw, float 1.000000e+06
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.t
  %i.nb = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.t ], [ %i.na, %bb.v ], [ -1.000000e+06, %bb.u ] ; 4 uses
  %i.nc = getelementptr inbounds nuw i8, ptr %i.mo, i64 8
  %i.nd = load float, ptr %i.nc, align 4, !tbaa !11 ; 4 uses
  %i.ne = fcmp uno float %i.nd, 0.000000e+00
  br i1 %i.ne, label %bb.z, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.nf = fcmp reassoc nsz arcp contract afn ult float %i.nd, -1.000000e+06
  br i1 %i.nf, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ng = fcmp reassoc nsz arcp contract afn ole float %i.nd, 1.000000e+06
  %i.nh = select reassoc nsz arcp contract afn i1 %i.ng, float %i.nd, float 1.000000e+06
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w
  %i.ni = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.w ], [ %i.nh, %bb.y ], [ -1.000000e+06, %bb.x ] ; 4 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.mo, i64 12
  %i.nk = load float, ptr %i.nj, align 4, !tbaa !11 ; 4 uses
  %i.nl = fcmp uno float %i.nk, 0.000000e+00
  br i1 %i.nl, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.nm = fcmp reassoc nsz arcp contract afn ult float %i.nk, -1.000000e+06
  br i1 %i.nm, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.nn = fcmp reassoc nsz arcp contract afn ole float %i.nk, 1.000000e+06
  %i.no = select reassoc nsz arcp contract afn i1 %i.nn, float %i.nk, float 1.000000e+06
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa, %bb.z
  %i.np = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %bb.z ], [ %i.no, %bb.ab ], [ -1.000000e+06, %bb.aa ]
  %i.nq = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0108
  br i1 %i.ks, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.nr = fmul reassoc nsz arcp contract afn float %i.mu, %i.lc
  %i.ns = fmul reassoc nsz arcp contract afn float %i.nb, %i.ld
  %i.nt = fadd reassoc nsz arcp contract afn float %i.ns, %i.nr
  %i.nu = fmul reassoc nsz arcp contract afn float %i.ni, %i.le
  %i.nv = fadd reassoc nsz arcp contract afn float %i.nt, %i.nu
  %i.nw = fmul reassoc nsz arcp contract afn float %i.lf, %i.mu
  %i.nx = fmul reassoc nsz arcp contract afn float %i.lg, %i.nb
  %i.ny = fadd reassoc nsz arcp contract afn float %i.nx, %i.nw
  %i.nz = fmul reassoc nsz arcp contract afn float %i.lh, %i.ni
  %i.oa = fadd reassoc nsz arcp contract afn float %i.ny, %i.nz
  %i.ob = fmul reassoc nsz arcp contract afn float %i.li, %i.mu
  %i.oc = fmul reassoc nsz arcp contract afn float %i.lj, %i.nb
  %i.od = fadd reassoc nsz arcp contract afn float %i.oc, %i.ob
  %i.oe = fmul reassoc nsz arcp contract afn float %i.lk, %i.ni
  %i.of = fadd reassoc nsz arcp contract afn float %i.od, %i.oe
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ac, %bb.ad
  %.sroa.071.0 = phi nsz float [ %i.nv, %bb.ad ], [ %i.mu, %bb.ac ] ; 5 uses
  %.sroa.1176.0 = phi nsz float [ %i.oa, %bb.ad ], [ %i.nb, %bb.ac ] ; 5 uses
  %.sroa.18.0 = phi nsz float [ %i.of, %bb.ad ], [ %i.ni, %bb.ac ] ; 5 uses
  %i.og = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.071.0, float %.sroa.1176.0)
  %i.oh = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.og, float %.sroa.18.0) ; 3 uses
  %i.oi = fsub reassoc nsz arcp contract afn float %i.oh, %.sroa.071.0 ; 2 uses
  %i.oj = fsub reassoc nsz arcp contract afn float %i.oh, %.sroa.1176.0 ; 2 uses
  %i.ok = fsub reassoc nsz arcp contract afn float %i.oh, %.sroa.18.0 ; 2 uses
  %i.ol = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %.sroa.071.0, float %.sroa.1176.0)
  %i.om = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ol, float %.sroa.18.0)
  %i.on = fneg reassoc nsz arcp contract afn float %i.om
  %i.oo = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.on, float 0.000000e+00) ; 3 uses
  %i.op = fadd reassoc nsz arcp contract afn float %i.oo, %.sroa.071.0 ; 4 uses
  %i.oq = fadd reassoc nsz arcp contract afn float %i.oo, %.sroa.1176.0 ; 4 uses
  %i.or = fadd reassoc nsz arcp contract afn float %i.oo, %.sroa.18.0 ; 4 uses
  %i.os = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.op, float %i.oq)
  %i.ot = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.os, float %i.or) ; 3 uses
  %i.ou = fsub reassoc nsz arcp contract afn float %i.ot, %i.op ; 2 uses
  %i.ov = fsub reassoc nsz arcp contract afn float %i.ot, %i.oq ; 2 uses
  %i.ow = fsub reassoc nsz arcp contract afn float %i.ot, %i.or ; 2 uses
  %i.ox = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.oi, float %i.oj)
  %i.oy = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ox, float %i.ok)
  %reass.add.i = fsub reassoc nsz arcp contract afn float %.sroa.18.0, %i.ok
  %reass.mul.i = fmul reassoc nsz arcp contract afn float %reass.add.i, f0x3E0AF81D
  %reass.add57.i = fsub reassoc nsz arcp contract afn float %.sroa.1176.0, %i.oj
  %reass.mul58.i = fmul reassoc nsz arcp contract afn float %reass.add57.i, f0x3F193552
  %reass.add60.i = fsub reassoc nsz arcp contract afn float %.sroa.071.0, %i.oi
  %reass.mul61.i = fmul reassoc nsz arcp contract afn float %reass.add60.i, f0x3E88194D
  %i.oz = fadd reassoc nsz arcp contract afn float %i.oy, %reass.mul61.i
  %i.pa = fadd reassoc nsz arcp contract afn float %i.oz, %reass.mul58.i
  %i.pb = fadd reassoc nsz arcp contract afn float %i.pa, %reass.mul.i ; 2 uses
  %i.pc = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ou, float %i.ov)
  %i.pd = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.pc, float %i.ow)
  %reass.add67.i = fsub reassoc nsz arcp contract afn float %i.or, %i.ow
  %reass.mul68.i = fmul reassoc nsz arcp contract afn float %reass.add67.i, f0x3E0AF81D
  %reass.add70.i = fsub reassoc nsz arcp contract afn float %i.oq, %i.ov
  %reass.mul71.i = fmul reassoc nsz arcp contract afn float %reass.add70.i, f0x3F193552
  %reass.add73.i = fsub reassoc nsz arcp contract afn float %i.op, %i.ou
  %reass.mul74.i = fmul reassoc nsz arcp contract afn float %reass.add73.i, f0x3E88194D
  %i.pe = fadd reassoc nsz arcp contract afn float %i.pd, %reass.mul74.i
  %i.pf = fadd reassoc nsz arcp contract afn float %i.pe, %reass.mul71.i
  %i.pg = fadd reassoc nsz arcp contract afn float %i.pf, %reass.mul68.i ; 3 uses
  %i.ph = fcmp reassoc nsz arcp contract afn ogt float %i.pg, %i.pb
  %i.pi = fcmp reassoc nsz arcp contract afn ogt float %i.pg, f0x358637BD
  %or.cond.i44 = and i1 %i.ph, %i.pi
  %i.pj = fdiv reassoc nsz arcp contract afn float %i.pb, %i.pg
  %i.pk = select reassoc nsz arcp contract afn i1 %or.cond.i44, float %i.pj, float 1.000000e+00 ; 3 uses
  %i.pl = fmul reassoc nsz arcp contract afn float %i.pk, %i.op ; 3 uses
  %i.pm = fmul reassoc nsz arcp contract afn float %i.pk, %i.oq ; 3 uses
  %i.pn = fmul reassoc nsz arcp contract afn float %i.pk, %i.or ; 3 uses
  %i.po = fmul reassoc nsz arcp contract afn float %i.pl, %i.dq
  %i.pp = fmul reassoc nsz arcp contract afn float %i.pm, %i.er
  %i.pq = fadd reassoc nsz arcp contract afn float %i.pp, %i.po
  %i.pr = fmul reassoc nsz arcp contract afn float %i.pn, %i.fm
  %i.ps = fadd reassoc nsz arcp contract afn float %i.pq, %i.pr ; 6 uses
  %i.pt = fmul reassoc nsz arcp contract afn float %i.pl, %i.dy
  %i.pu = fmul reassoc nsz arcp contract afn float %i.pm, %i.ew
  %i.pv = fadd reassoc nsz arcp contract afn float %i.pu, %i.pt
  %i.pw = fmul reassoc nsz arcp contract afn float %i.pn, %i.fr
  %i.px = fadd reassoc nsz arcp contract afn float %i.pv, %i.pw ; 6 uses
  %i.py = fmul reassoc nsz arcp contract afn float %i.pl, %i.eg
  %i.pz = fmul reassoc nsz arcp contract afn float %i.pm, %i.fb
  %i.qa = fadd reassoc nsz arcp contract afn float %i.pz, %i.py
  %i.qb = fmul reassoc nsz arcp contract afn float %i.pn, %i.fw
  %i.qc = fadd reassoc nsz arcp contract afn float %i.qa, %i.qb ; 5 uses
  br i1 %.not.i45, label %dt_RGB_2_HSV.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.qd = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ps, float %i.px)
  %i.qe = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.qd, float %i.qc)
  %i.qf = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.ps, float %i.px)
  %i.qg = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.qf, float %i.qc) ; 4 uses
  %i.qh = fsub reassoc nsz arcp contract afn float %i.qg, %i.qe ; 4 uses
  %i.qi = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.qg)
  %i.qj = fcmp reassoc nsz arcp contract afn ogt float %i.qi, f0x358637BD
  %i.qk = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.qh)
  %i.ql = fcmp reassoc nsz arcp contract afn ogt float %i.qk, f0x358637BD
  %or.cond.i.i = select i1 %i.qj, i1 %i.ql, i1 false
  br i1 %or.cond.i.i, label %bb.ag, label %dt_RGB_2_HSV.exit.i

bb.ag:                                            ; preds = %bb.af
  %i.qm = fcmp reassoc nsz arcp contract afn oeq float %i.ps, %i.qg
  br i1 %i.qm, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.qn = fsub reassoc nsz arcp contract afn float %i.px, %i.qc
  %i.qo = fdiv reassoc nsz arcp contract afn float %i.qn, %i.qh
  br label %_dt_RGB_2_Hue.exit.i.i

bb.ai:                                            ; preds = %bb.ag
  %i.qp = fcmp reassoc nsz arcp contract afn oeq float %i.px, %i.qg
  br i1 %i.qp, label %bb.aj, label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.qq = fsub reassoc nsz arcp contract afn float %i.qc, %i.ps
  %i.qr = fdiv reassoc nsz arcp contract afn float %i.qq, %i.qh
  %i.qs = fadd reassoc nsz arcp contract afn float %i.qr, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i

bb.ak:                                            ; preds = %bb.ai
  %i.qt = fsub reassoc nsz arcp contract afn float %i.ps, %i.px
  %i.qu = fdiv reassoc nsz arcp contract afn float %i.qt, %i.qh
  %i.qv = fadd reassoc nsz arcp contract afn float %i.qu, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i.i

_dt_RGB_2_Hue.exit.i.i:                           ; preds = %bb.ak, %bb.aj, %bb.ah
  %.0.i.i.i = phi nsz float [ %i.qo, %bb.ah ], [ %i.qs, %bb.aj ], [ %i.qv, %bb.ak ]
  %i.qw = fmul reassoc nsz arcp contract afn float %.0.i.i.i, f0x3E2AAAAB ; 2 uses
  %i.qx = call reassoc nsz arcp contract afn float @llvm.floor.f32(float %i.qw)
  %i.qy = fsub reassoc nsz arcp contract afn float %i.qw, %i.qx
  br label %dt_RGB_2_HSV.exit.i

dt_RGB_2_HSV.exit.i:                              ; preds = %_dt_RGB_2_Hue.exit.i.i, %bb.af, %bb.ae
  %.sroa.0.0.i = phi nsz float [ 0.000000e+00, %bb.ae ], [ %i.qy, %_dt_RGB_2_Hue.exit.i.i ], [ 0.000000e+00, %bb.af ] ; 2 uses
  %i.qz = load float, ptr %i.ln, align 4, !tbaa !109 ; 3 uses
  %i.ra = load float, ptr %i.q, align 4, !tbaa !110 ; 3 uses
  %i.rb = load float, ptr %i.lo, align 4, !tbaa !111 ; 6 uses
  %i.rc = load float, ptr %i.lp, align 4, !tbaa !112 ; 12 uses
  %7 = fmul reassoc nsz arcp contract afn float %i.ps, f0x40B1C71C
  %8 = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %7, float f0x358637BD)
  %i.rd = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %8)
  %i.re = fsub reassoc nsz arcp contract afn float %i.rd, %i.ra
  %i.rf = fdiv reassoc nsz arcp contract afn float %i.re, %i.qz ; 3 uses
  %i.rg = fcmp reassoc nsz arcp contract afn oge float %i.rf, 0.000000e+00
  %i.rh = fcmp reassoc nsz arcp contract afn ole float %i.rf, 1.000000e+00
  %i.ri = select reassoc nsz arcp contract afn i1 %i.rh, float %i.rf, float 1.000000e+00
  %i.rj = select reassoc nsz arcp contract afn i1 %i.rg, float %i.ri, float 0.000000e+00 ; 9 uses
  %i.rk = fcmp reassoc nsz arcp contract afn olt float %i.rj, %i.rb
  br i1 %i.rk, label %bb.al, label %bb.ap

bb.al:                                            ; preds = %dt_RGB_2_HSV.exit.i
  %i.rl = load i32, ptr %i.ma, align 4, !tbaa !113
  %.not37.i.i = icmp eq i32 %i.rl, 0
  br i1 %.not37.i.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.rm = fcmp reassoc nsz arcp contract afn olt float %i.rj, 0.000000e+00
  br i1 %i.rm, label %_fallback_toe.exit.i.i, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.rn = load float, ptr %i.mb, align 4, !tbaa !114
  %i.ro = load float, ptr %i.mc, align 4, !tbaa !115
  %i.rp = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.rj, float %i.ro)
  %i.rq = fmul reassoc nsz arcp contract afn float %i.rp, %i.rn
  %i.rr = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.rq, float 0.000000e+00)
  %i.rs = fadd reassoc nsz arcp contract afn float %i.rr, %i.rc
  br label %_fallback_toe.exit.i.i

bb.ao:                                            ; preds = %bb.al
  %i.rt = load float, ptr %i.md, align 4, !tbaa !116 ; 2 uses
  %i.ru = load float, ptr %i.lr, align 4, !tbaa !117
  %i.rv = load float, ptr %i.me, align 4, !tbaa !118 ; 2 uses
  %i.rw = load float, ptr %i.mf, align 4, !tbaa !119
  %i.rx = fsub reassoc nsz arcp contract afn float %i.rj, %i.rb
  %i.ry = fmul reassoc nsz arcp contract afn float %i.ru, %i.rx
  %i.rz = fdiv reassoc nsz arcp contract afn float %i.ry, %i.rt ; 2 uses
  %i.sa = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.rz, float %i.rv)
  %i.sb = fadd reassoc nsz arcp contract afn float %i.sa, 1.000000e+00
  %i.sc = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.rv
  %i.sd = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.sb, float %i.sc)
  %i.se = fmul reassoc nsz arcp contract afn float %i.rz, %i.rt
  %i.sf = fmul reassoc nsz arcp contract afn float %i.se, %i.sd
  %i.sg = fadd reassoc nsz arcp contract afn float %i.sf, %i.rw
  br label %_fallback_toe.exit.i.i

bb.ap:                                            ; preds = %dt_RGB_2_HSV.exit.i
  %i.sh = load float, ptr %i.lq, align 4, !tbaa !120 ; 2 uses
  %i.si = fcmp reassoc nsz arcp contract afn ugt float %i.rj, %i.sh
  br i1 %i.si, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.sj = load float, ptr %i.lr, align 4, !tbaa !117
  %i.sk = load float, ptr %i.ls, align 4, !tbaa !121
  %i.sl = fmul reassoc nsz arcp contract afn float %i.sj, %i.rj
  %i.sm = fadd reassoc nsz arcp contract afn float %i.sl, %i.sk
  br label %_fallback_toe.exit.i.i

bb.ar:                                            ; preds = %bb.ap
  %i.sn = load i32, ptr %i.lt, align 4, !tbaa !122
  %.not.i.i = icmp eq i32 %i.sn, 0
  br i1 %.not.i.i, label %bb.au, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.so = fcmp reassoc nsz arcp contract afn ult float %i.rj, 1.000000e+00
  %i.sp = load float, ptr %i.lu, align 4, !tbaa !123 ; 2 uses
  br i1 %i.so, label %bb.at, label %_fallback_toe.exit.i.i

bb.at:                                            ; preds = %bb.as
  %i.sq = load float, ptr %i.lv, align 4, !tbaa !124
  %i.sr = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.rj
  %i.ss = load float, ptr %i.lw, align 4, !tbaa !125
  %i.st = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.sr, float %i.ss)
  %i.su = fmul reassoc nsz arcp contract afn float %i.st, %i.sq
  %i.sv = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.su, float 0.000000e+00)
  %i.sw = fsub reassoc nsz arcp contract afn float %i.sp, %i.sv
  br label %_fallback_toe.exit.i.i

bb.au:                                            ; preds = %bb.ar
  %i.sx = load float, ptr %i.lx, align 4, !tbaa !126 ; 2 uses
  %i.sy = load float, ptr %i.lr, align 4, !tbaa !117
  %i.sz = load float, ptr %i.ly, align 4, !tbaa !127 ; 2 uses
  %i.ta = load float, ptr %i.lz, align 4, !tbaa !128
  %i.tb = fsub reassoc nsz arcp contract afn float %i.rj, %i.sh
  %i.tc = fmul reassoc nsz arcp contract afn float %i.sy, %i.tb
  %i.td = fdiv reassoc nsz arcp contract afn float %i.tc, %i.sx ; 2 uses
  %i.te = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.td, float %i.sz)
  %i.tf = fadd reassoc nsz arcp contract afn float %i.te, 1.000000e+00
  %i.tg = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.sz
  %i.th = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tf, float %i.tg)
  %i.ti = fmul reassoc nsz arcp contract afn float %i.td, %i.sx
  %i.tj = fmul reassoc nsz arcp contract afn float %i.ti, %i.th
  %i.tk = fadd reassoc nsz arcp contract afn float %i.tj, %i.ta
  br label %_fallback_toe.exit.i.i

_fallback_toe.exit.i.i:                           ; preds = %bb.au, %bb.at, %bb.as, %bb.aq, %bb.ao, %bb.an, %bb.am
  %.0.i28.i = phi nsz float [ %i.sg, %bb.ao ], [ %i.sm, %bb.aq ], [ %i.tk, %bb.au ], [ %i.rc, %bb.am ], [ %i.rs, %bb.an ], [ %i.sw, %bb.at ], [ %i.sp, %bb.as ] ; 3 uses
  %i.tl = fcmp reassoc nsz arcp contract afn ult float %.0.i28.i, %i.rc
  br i1 %i.tl, label %_apply_curve.exit.i, label %bb.av

bb.av:                                            ; preds = %_fallback_toe.exit.i.i
  %i.tm = load float, ptr %i.lu, align 4, !tbaa !123 ; 2 uses
  %.inv.i.i = fcmp reassoc nsz arcp contract afn ole float %.0.i28.i, %i.tm
  %..0.i.i = select reassoc nsz arcp contract afn i1 %.inv.i.i, float %.0.i28.i, float %i.tm
  br label %_apply_curve.exit.i

_apply_curve.exit.i:                              ; preds = %bb.av, %_fallback_toe.exit.i.i
  %i.tn = phi reassoc nsz arcp contract afn float [ %..0.i.i, %bb.av ], [ %i.rc, %_fallback_toe.exit.i.i ] ; 2 uses
  %9 = fmul reassoc nsz arcp contract afn float %i.px, f0x40B1C71C
  %10 = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %9, float f0x358637BD)
  %i.to = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %10)
  %i.tp = fsub reassoc nsz arcp contract afn float %i.to, %i.ra
  %i.tq = fdiv reassoc nsz arcp contract afn float %i.tp, %i.qz ; 3 uses
  %i.tr = fcmp reassoc nsz arcp contract afn oge float %i.tq, 0.000000e+00
  %i.ts = fcmp reassoc nsz arcp contract afn ole float %i.tq, 1.000000e+00
  %i.tt = select reassoc nsz arcp contract afn i1 %i.ts, float %i.tq, float 1.000000e+00
  %i.tu = select reassoc nsz arcp contract afn i1 %i.tr, float %i.tt, float 0.000000e+00 ; 9 uses
  %i.tv = fcmp reassoc nsz arcp contract afn olt float %i.tu, %i.rb
  br i1 %i.tv, label %bb.bc, label %bb.aw

bb.aw:                                            ; preds = %_apply_curve.exit.i
  %i.tw = load float, ptr %i.lq, align 4, !tbaa !120 ; 2 uses
  %i.tx = fcmp reassoc nsz arcp contract afn ugt float %i.tu, %i.tw
  br i1 %i.tx, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ty = load float, ptr %i.lr, align 4, !tbaa !117
  %i.tz = load float, ptr %i.ls, align 4, !tbaa !121
  %i.ua = fmul reassoc nsz arcp contract afn float %i.ty, %i.tu
  %i.ub = fadd reassoc nsz arcp contract afn float %i.ua, %i.tz
  br label %_fallback_toe.exit.i.1.i

bb.ay:                                            ; preds = %bb.aw
  %i.uc = load i32, ptr %i.lt, align 4, !tbaa !122
  %.not.i.1.i = icmp eq i32 %i.uc, 0
  br i1 %.not.i.1.i, label %bb.bb, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.ud = fcmp reassoc nsz arcp contract afn ult float %i.tu, 1.000000e+00
  %i.ue = load float, ptr %i.lu, align 4, !tbaa !123 ; 2 uses
  br i1 %i.ud, label %bb.ba, label %_fallback_toe.exit.i.1.i

bb.ba:                                            ; preds = %bb.az
  %i.uf = load float, ptr %i.lv, align 4, !tbaa !124
  %i.ug = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.tu
  %i.uh = load float, ptr %i.lw, align 4, !tbaa !125
  %i.ui = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ug, float %i.uh)
  %i.uj = fmul reassoc nsz arcp contract afn float %i.ui, %i.uf
  %i.uk = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.uj, float 0.000000e+00)
  %i.ul = fsub reassoc nsz arcp contract afn float %i.ue, %i.uk
  br label %_fallback_toe.exit.i.1.i

bb.bb:                                            ; preds = %bb.ay
  %i.um = load float, ptr %i.lx, align 4, !tbaa !126 ; 2 uses
  %i.un = load float, ptr %i.lr, align 4, !tbaa !117
  %i.uo = load float, ptr %i.ly, align 4, !tbaa !127 ; 2 uses
  %i.up = load float, ptr %i.lz, align 4, !tbaa !128
  %i.uq = fsub reassoc nsz arcp contract afn float %i.tu, %i.tw
  %i.ur = fmul reassoc nsz arcp contract afn float %i.un, %i.uq
  %i.us = fdiv reassoc nsz arcp contract afn float %i.ur, %i.um ; 2 uses
  %i.ut = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.us, float %i.uo)
  %i.uu = fadd reassoc nsz arcp contract afn float %i.ut, 1.000000e+00
  %i.uv = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.uo
  %i.uw = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.uu, float %i.uv)
  %i.ux = fmul reassoc nsz arcp contract afn float %i.us, %i.um
  %i.uy = fmul reassoc nsz arcp contract afn float %i.ux, %i.uw
  %i.uz = fadd reassoc nsz arcp contract afn float %i.uy, %i.up
  br label %_fallback_toe.exit.i.1.i

bb.bc:                                            ; preds = %_apply_curve.exit.i
  %i.va = load i32, ptr %i.ma, align 4, !tbaa !113
  %.not37.i.1.i = icmp eq i32 %i.va, 0
  br i1 %.not37.i.1.i, label %bb.bf, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.vb = fcmp reassoc nsz arcp contract afn olt float %i.tu, 0.000000e+00
  br i1 %i.vb, label %_fallback_toe.exit.i.1.i, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.vc = load float, ptr %i.mb, align 4, !tbaa !114
  %i.vd = load float, ptr %i.mc, align 4, !tbaa !115
  %i.ve = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tu, float %i.vd)
  %i.vf = fmul reassoc nsz arcp contract afn float %i.ve, %i.vc
  %i.vg = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.vf, float 0.000000e+00)
  %i.vh = fadd reassoc nsz arcp contract afn float %i.vg, %i.rc
  br label %_fallback_toe.exit.i.1.i

bb.bf:                                            ; preds = %bb.bc
  %i.vi = load float, ptr %i.md, align 4, !tbaa !116 ; 2 uses
  %i.vj = load float, ptr %i.lr, align 4, !tbaa !117
  %i.vk = load float, ptr %i.me, align 4, !tbaa !118 ; 2 uses
  %i.vl = load float, ptr %i.mf, align 4, !tbaa !119
  %i.vm = fsub reassoc nsz arcp contract afn float %i.tu, %i.rb
  %i.vn = fmul reassoc nsz arcp contract afn float %i.vj, %i.vm
  %i.vo = fdiv reassoc nsz arcp contract afn float %i.vn, %i.vi ; 2 uses
  %i.vp = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.vo, float %i.vk)
  %i.vq = fadd reassoc nsz arcp contract afn float %i.vp, 1.000000e+00
  %i.vr = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.vk
  %i.vs = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.vq, float %i.vr)
  %i.vt = fmul reassoc nsz arcp contract afn float %i.vo, %i.vi
  %i.vu = fmul reassoc nsz arcp contract afn float %i.vt, %i.vs
  %i.vv = fadd reassoc nsz arcp contract afn float %i.vu, %i.vl
  br label %_fallback_toe.exit.i.1.i

_fallback_toe.exit.i.1.i:                         ; preds = %bb.bf, %bb.be, %bb.bd, %bb.bb, %bb.ba, %bb.az, %bb.ax
  %.0.i28.1.i = phi nsz float [ %i.vv, %bb.bf ], [ %i.ub, %bb.ax ], [ %i.uz, %bb.bb ], [ %i.rc, %bb.bd ], [ %i.vh, %bb.be ], [ %i.ul, %bb.ba ], [ %i.ue, %bb.az ] ; 3 uses
  %i.vw = fcmp reassoc nsz arcp contract afn ult float %.0.i28.1.i, %i.rc
  br i1 %i.vw, label %_apply_curve.exit.1.i, label %bb.bg

bb.bg:                                            ; preds = %_fallback_toe.exit.i.1.i
  %i.vx = load float, ptr %i.lu, align 4, !tbaa !123 ; 2 uses
  %.inv.i.1.i = fcmp reassoc nsz arcp contract afn ole float %.0.i28.1.i, %i.vx
  %..0.i.1.i = select reassoc nsz arcp contract afn i1 %.inv.i.1.i, float %.0.i28.1.i, float %i.vx
  br label %_apply_curve.exit.1.i

_apply_curve.exit.1.i:                            ; preds = %bb.bg, %_fallback_toe.exit.i.1.i
  %i.vy = phi reassoc nsz arcp contract afn float [ %..0.i.1.i, %bb.bg ], [ %i.rc, %_fallback_toe.exit.i.1.i ] ; 2 uses
  %11 = fmul reassoc nsz arcp contract afn float %i.qc, f0x40B1C71C
  %12 = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %11, float f0x358637BD)
  %i.vz = call reassoc nsz arcp contract afn float @llvm.log2.f32(float %12)
  %i.wa = fsub reassoc nsz arcp contract afn float %i.vz, %i.ra
  %i.wb = fdiv reassoc nsz arcp contract afn float %i.wa, %i.qz ; 3 uses
  %i.wc = fcmp reassoc nsz arcp contract afn oge float %i.wb, 0.000000e+00
  %i.wd = fcmp reassoc nsz arcp contract afn ole float %i.wb, 1.000000e+00
  %i.we = select reassoc nsz arcp contract afn i1 %i.wd, float %i.wb, float 1.000000e+00
  %i.wf = select reassoc nsz arcp contract afn i1 %i.wc, float %i.we, float 0.000000e+00 ; 9 uses
  %i.wg = fcmp reassoc nsz arcp contract afn olt float %i.wf, %i.rb
  br i1 %i.wg, label %bb.bn, label %bb.bh

bb.bh:                                            ; preds = %_apply_curve.exit.1.i
  %i.wh = load float, ptr %i.lq, align 4, !tbaa !120 ; 2 uses
  %i.wi = fcmp reassoc nsz arcp contract afn ugt float %i.wf, %i.wh
  br i1 %i.wi, label %bb.bj, label %bb.bi

bb.bi:                                            ; preds = %bb.bh
  %i.wj = load float, ptr %i.lr, align 4, !tbaa !117
  %i.wk = load float, ptr %i.ls, align 4, !tbaa !121
  %i.wl = fmul reassoc nsz arcp contract afn float %i.wj, %i.wf
  %i.wm = fadd reassoc nsz arcp contract afn float %i.wl, %i.wk
  br label %_fallback_toe.exit.i.2.i

bb.bj:                                            ; preds = %bb.bh
  %i.wn = load i32, ptr %i.lt, align 4, !tbaa !122
  %.not.i.2.i = icmp eq i32 %i.wn, 0
  br i1 %.not.i.2.i, label %bb.bm, label %bb.bk

bb.bk:                                            ; preds = %bb.bj
  %i.wo = fcmp reassoc nsz arcp contract afn ult float %i.wf, 1.000000e+00
  %i.wp = load float, ptr %i.lu, align 4, !tbaa !123 ; 2 uses
  br i1 %i.wo, label %bb.bl, label %_fallback_toe.exit.i.2.i

bb.bl:                                            ; preds = %bb.bk
  %i.wq = load float, ptr %i.lv, align 4, !tbaa !124
  %i.wr = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.wf
  %i.ws = load float, ptr %i.lw, align 4, !tbaa !125
  %i.wt = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.wr, float %i.ws)
  %i.wu = fmul reassoc nsz arcp contract afn float %i.wt, %i.wq
  %i.wv = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wu, float 0.000000e+00)
  %i.ww = fsub reassoc nsz arcp contract afn float %i.wp, %i.wv
  br label %_fallback_toe.exit.i.2.i

bb.bm:                                            ; preds = %bb.bj
  %i.wx = load float, ptr %i.lx, align 4, !tbaa !126 ; 2 uses
  %i.wy = load float, ptr %i.lr, align 4, !tbaa !117
  %i.wz = load float, ptr %i.ly, align 4, !tbaa !127 ; 2 uses
  %i.xa = load float, ptr %i.lz, align 4, !tbaa !128
  %i.xb = fsub reassoc nsz arcp contract afn float %i.wf, %i.wh
  %i.xc = fmul reassoc nsz arcp contract afn float %i.wy, %i.xb
  %i.xd = fdiv reassoc nsz arcp contract afn float %i.xc, %i.wx ; 2 uses
  %i.xe = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.xd, float %i.wz)
  %i.xf = fadd reassoc nsz arcp contract afn float %i.xe, 1.000000e+00
  %i.xg = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.wz
  %i.xh = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.xf, float %i.xg)
  %i.xi = fmul reassoc nsz arcp contract afn float %i.xd, %i.wx
  %i.xj = fmul reassoc nsz arcp contract afn float %i.xi, %i.xh
  %i.xk = fadd reassoc nsz arcp contract afn float %i.xj, %i.xa
  br label %_fallback_toe.exit.i.2.i

bb.bn:                                            ; preds = %_apply_curve.exit.1.i
  %i.xl = load i32, ptr %i.ma, align 4, !tbaa !113
  %.not37.i.2.i = icmp eq i32 %i.xl, 0
  br i1 %.not37.i.2.i, label %bb.bq, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.xm = fcmp reassoc nsz arcp contract afn olt float %i.wf, 0.000000e+00
  br i1 %i.xm, label %_fallback_toe.exit.i.2.i, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.xn = load float, ptr %i.mb, align 4, !tbaa !114
  %i.xo = load float, ptr %i.mc, align 4, !tbaa !115
  %i.xp = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.wf, float %i.xo)
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xp, %i.xn
  %i.xr = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xq, float 0.000000e+00)
  %i.xs = fadd reassoc nsz arcp contract afn float %i.xr, %i.rc
  br label %_fallback_toe.exit.i.2.i

bb.bq:                                            ; preds = %bb.bn
  %i.xt = load float, ptr %i.md, align 4, !tbaa !116 ; 2 uses
  %i.xu = load float, ptr %i.lr, align 4, !tbaa !117
  %i.xv = load float, ptr %i.me, align 4, !tbaa !118 ; 2 uses
  %i.xw = load float, ptr %i.mf, align 4, !tbaa !119
  %i.xx = fsub reassoc nsz arcp contract afn float %i.wf, %i.rb
  %i.xy = fmul reassoc nsz arcp contract afn float %i.xu, %i.xx
  %i.xz = fdiv reassoc nsz arcp contract afn float %i.xy, %i.xt ; 2 uses
  %i.ya = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.xz, float %i.xv)
  %i.yb = fadd reassoc nsz arcp contract afn float %i.ya, 1.000000e+00
  %i.yc = fdiv reassoc nsz arcp contract afn float -1.000000e+00, %i.xv
  %i.yd = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.yb, float %i.yc)
  %i.ye = fmul reassoc nsz arcp contract afn float %i.xz, %i.xt
  %i.yf = fmul reassoc nsz arcp contract afn float %i.ye, %i.yd
  %i.yg = fadd reassoc nsz arcp contract afn float %i.yf, %i.xw
  br label %_fallback_toe.exit.i.2.i

_fallback_toe.exit.i.2.i:                         ; preds = %bb.bq, %bb.bp, %bb.bo, %bb.bm, %bb.bl, %bb.bk, %bb.bi
  %.0.i28.2.i = phi nsz float [ %i.yg, %bb.bq ], [ %i.wm, %bb.bi ], [ %i.xk, %bb.bm ], [ %i.rc, %bb.bo ], [ %i.xs, %bb.bp ], [ %i.ww, %bb.bl ], [ %i.wp, %bb.bk ] ; 3 uses
  %i.yh = fcmp reassoc nsz arcp contract afn ult float %.0.i28.2.i, %i.rc
  br i1 %i.yh, label %_apply_curve.exit.2.i, label %bb.br

bb.br:                                            ; preds = %_fallback_toe.exit.i.2.i
  %i.yi = load float, ptr %i.lu, align 4, !tbaa !123 ; 2 uses
  %.inv.i.2.i = fcmp reassoc nsz arcp contract afn ole float %.0.i28.2.i, %i.yi
  %..0.i.2.i = select reassoc nsz arcp contract afn i1 %.inv.i.2.i, float %.0.i28.2.i, float %i.yi
  br label %_apply_curve.exit.2.i

_apply_curve.exit.2.i:                            ; preds = %bb.br, %_fallback_toe.exit.i.2.i
  %i.yj = phi reassoc nsz arcp contract afn float [ %..0.i.2.i, %bb.br ], [ %i.rc, %_fallback_toe.exit.i.2.i ] ; 2 uses
  br i1 %.not26.i46, label %bb.bt, label %bb.bs

bb.bs:                                            ; preds = %_apply_curve.exit.2.i
  %i.yk = load float, ptr %i.mi, align 4, !tbaa !129 ; 3 uses
  %i.yl = load float, ptr %i.mj, align 4, !tbaa !130 ; 4 uses
  %i.ym = load float, ptr %i.mk, align 4, !tbaa !131 ; 3 uses
  %i.yn = load float, ptr %i.ml, align 4, !tbaa !132 ; 3 uses
  %i.yo = fadd reassoc nsz arcp contract afn float %i.yl, 1.000000e+00 ; 3 uses
  %i.yp = fadd reassoc nsz arcp contract afn float %i.yl, %i.tn
  %i.yq = fmul reassoc nsz arcp contract afn float %i.yp, %i.yk
  %.reass.i.i = fdiv reassoc nsz arcp contract afn float %i.yq, %i.yo ; 3 uses
  %i.yr = fcmp reassoc nsz arcp contract afn ogt float %.reass.i.i, 0.000000e+00
  %i.ys = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.i.i, float %i.ym)
  %i.yt = select reassoc nsz arcp contract afn i1 %i.yr, float %i.ys, float %.reass.i.i ; 2 uses
  %i.yu = fadd reassoc nsz arcp contract afn float %i.yl, %i.vy
  %i.yv = fmul reassoc nsz arcp contract afn float %i.yu, %i.yk
  %.reass.1.i.i = fdiv reassoc nsz arcp contract afn float %i.yv, %i.yo ; 3 uses
  %i.yw = fcmp reassoc nsz arcp contract afn ogt float %.reass.1.i.i, 0.000000e+00
  %i.yx = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.1.i.i, float %i.ym)
  %i.yy = select reassoc nsz arcp contract afn i1 %i.yw, float %i.yx, float %.reass.1.i.i ; 2 uses
  %i.yz = fadd reassoc nsz arcp contract afn float %i.yl, %i.yj
  %i.za = fmul reassoc nsz arcp contract afn float %i.yz, %i.yk
  %.reass.2.i.i = fdiv reassoc nsz arcp contract afn float %i.za, %i.yo ; 3 uses
  %i.zb = fcmp reassoc nsz arcp contract afn ogt float %.reass.2.i.i, 0.000000e+00
  %i.zc = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.reass.2.i.i, float %i.ym)
  %i.zd = select reassoc nsz arcp contract afn i1 %i.zb, float %i.zc, float %.reass.2.i.i ; 2 uses
  %i.ze = fmul reassoc nsz arcp contract afn float %i.yt, %i.kp
  %i.zf = fmul reassoc nsz arcp contract afn float %i.yy, %i.kq
  %i.zg = fadd reassoc nsz arcp contract afn float %i.zf, %i.ze
  %i.zh = fmul reassoc nsz arcp contract afn float %i.zd, %i.kr
  %i.zi = fadd reassoc nsz arcp contract afn float %i.zg, %i.zh ; 6 uses
  %i.zj = fsub reassoc nsz arcp contract afn float %i.yt, %i.zi
  %i.zk = fmul reassoc nsz arcp contract afn float %i.zj, %i.yn
  %i.zl = fadd reassoc nsz arcp contract afn float %i.zk, %i.zi
  %i.zm = fsub reassoc nsz arcp contract afn float %i.yy, %i.zi
  %i.zn = fmul reassoc nsz arcp contract afn float %i.zm, %i.yn
  %i.zo = fadd reassoc nsz arcp contract afn float %i.zn, %i.zi
  %i.zp = fsub reassoc nsz arcp contract afn float %i.zd, %i.zi
  %i.zq = fmul reassoc nsz arcp contract afn float %i.zp, %i.yn
  %i.zr = fadd reassoc nsz arcp contract afn float %i.zq, %i.zi
  br label %bb.bt

bb.bt:                                            ; preds = %bb.bs, %_apply_curve.exit.2.i
  %.sroa.11.0.i = phi nsz float [ %i.vy, %_apply_curve.exit.2.i ], [ %i.zo, %bb.bs ]
  %.sroa.18.0.i = phi nsz float [ %i.yj, %_apply_curve.exit.2.i ], [ %i.zr, %bb.bs ]
  %.sroa.0.045.i = phi nsz float [ %i.tn, %_apply_curve.exit.2.i ], [ %i.zl, %bb.bs ]
  %i.zs = load float, ptr %i.mm, align 4, !tbaa !133 ; 3 uses
  %i.zt = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.0.045.i, float 0.000000e+00)
  %i.zu = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.zt, float %i.zs) ; 6 uses
  %i.zv = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.11.0.i, float 0.000000e+00)
  %i.zw = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.zv, float %i.zs) ; 6 uses
  %i.zx = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %.sroa.18.0.i, float 0.000000e+00)
  %i.zy = call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.zx, float %i.zs) ; 5 uses
  br i1 %.not.i45, label %_agx_tone_mapping.exit, label %bb.bu

bb.bu:                                            ; preds = %bb.bt
  %i.zz = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.zu, float %i.zw)
  %i.aaa = call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.zz, float %i.zy)
  %i.aab = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.zu, float %i.zw)
  %i.aac = call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.aab, float %i.zy) ; 14 uses
  %i.aad = fsub reassoc nsz arcp contract afn float %i.aac, %i.aaa ; 5 uses
  %i.aae = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aac)
  %i.aaf = fcmp reassoc nsz arcp contract afn ogt float %i.aae, f0x358637BD
  %i.aag = call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aad)
  %i.aah = fcmp reassoc nsz arcp contract afn ogt float %i.aag, f0x358637BD
  %or.cond.i29.i = select i1 %i.aaf, i1 %i.aah, i1 false
  br i1 %or.cond.i29.i, label %bb.bv, label %dt_RGB_2_HSV.exit34.i

bb.bv:                                            ; preds = %bb.bu
  %i.aai = fdiv reassoc nsz arcp contract afn float %i.aad, %i.aac
  %i.aaj = fcmp reassoc nsz arcp contract afn oeq float %i.zu, %i.aac
  br i1 %i.aaj, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.aak = fsub reassoc nsz arcp contract afn float %i.zw, %i.zy
  %i.aal = fdiv reassoc nsz arcp contract afn float %i.aak, %i.aad
  br label %_dt_RGB_2_Hue.exit.i32.i

bb.bx:                                            ; preds = %bb.bv
  %i.aam = fcmp reassoc nsz arcp contract afn oeq float %i.zw, %i.aac
  br i1 %i.aam, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  %i.aan = fsub reassoc nsz arcp contract afn float %i.zy, %i.zu
  %i.aao = fdiv reassoc nsz arcp contract afn float %i.aan, %i.aad
  %i.aap = fadd reassoc nsz arcp contract afn float %i.aao, 2.000000e+00
  br label %_dt_RGB_2_Hue.exit.i32.i

bb.bz:                                            ; preds = %bb.bx
  %i.aaq = fsub reassoc nsz arcp contract afn float %i.zu, %i.zw
  %i.aar = fdiv reassoc nsz arcp contract afn float %i.aaq, %i.aad
  %i.aas = fadd reassoc nsz arcp contract afn float %i.aar, 4.000000e+00
  br label %_dt_RGB_2_Hue.exit.i32.i
end_hunk_0
