Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/curve_intersector_virtual_4v?download=true
inline.NumInlined: 1827
inline.NumDeleted: 58
begin_hunk_0_@_ZN6embree4sse230RoundLinearCurveMiIntersector1ILi4ELb1EE9intersectERKNS0_21CurvePrecalculations1ERNS_7RayHitKILi1EEEPNS_15RayQueryContextERKNS_6LineMiILi4EEE:bb.a
  %i.on = and <4 x i1> %i.nz, %i.om
  %i.oo = and <4 x i1> %i.nw, %i.on
  %.demorgan = or <4 x i1> %i.ng, %i.oo
  %i.op = select <4 x i1> %.demorgan, <4 x float> splat (float +inf), <4 x float> %.sroa.0694.0 ; 3 uses
  %i.oq = fsub <4 x float> %i.lx, %i.aq           ; 3 uses
  %i.or = fsub <4 x float> %i.ly, %i.ar           ; 3 uses
  %i.os = fsub <4 x float> %i.lz, %i.as           ; 3 uses
  %i.ot = fmul <4 x float> %i.kr, %i.os
  %i.ou = fmul <4 x float> %i.kq, %i.or
  %i.ov = fadd <4 x float> %i.ou, %i.ot
  %i.ow = fmul <4 x float> %i.kp, %i.oq
  %i.ox = fadd <4 x float> %i.ow, %i.ov           ; 5 uses
  %i.oy = fcmp ugt <4 x float> %i.ox, %i.mi
  %i.oz = fcmp olt <4 x float> %i.ox, %i.mk
  %i.pa = and <4 x i1> %i.oy, %i.oz
  %i.pb = fmul <4 x float> %i.os, %i.os
  %i.pc = fmul <4 x float> %i.or, %i.or
  %i.pd = fadd <4 x float> %i.pc, %i.pb
  %i.pe = fmul <4 x float> %i.oq, %i.oq
  %i.pf = fadd <4 x float> %i.pe, %i.pd
  %i.pg = fmul <4 x float> %i.la, %i.pf
  %i.ph = fmul <4 x float> %i.ox, %i.ox
  %i.pi = fsub <4 x float> %i.pg, %i.ph
  %i.pj = fmul <4 x float> %i.nb, %i.ox
  %i.pk = fadd <4 x float> %i.na, %i.pj
  %i.pl = fcmp olt <4 x float> %i.pi, %i.pk
  %i.pm = and <4 x i1> %i.pa, %i.pl
  %i.pn = and <4 x i1> %i.mo, %i.pm
  %i.po = fsub <4 x float> %i.lx, %i.bs           ; 3 uses
  %i.pp = fsub <4 x float> %i.ly, %i.bt           ; 3 uses
  %i.pq = fsub <4 x float> %i.lz, %i.bu           ; 3 uses
  %i.pr = fmul <4 x float> %i.ld, %i.pq
  %i.ps = fmul <4 x float> %i.lc, %i.pp
  %i.pt = fadd <4 x float> %i.ps, %i.pr
  %i.pu = fmul <4 x float> %i.lb, %i.po
  %i.pv = fadd <4 x float> %i.pu, %i.pt           ; 5 uses
  %i.pw = fcmp ugt <4 x float> %i.pv, %i.nq
  %i.px = fcmp olt <4 x float> %i.pv, %i.ns
  %i.py = and <4 x i1> %i.pw, %i.px
  %i.pz = fmul <4 x float> %i.pq, %i.pq
  %i.qa = fmul <4 x float> %i.pp, %i.pp
  %i.qb = fadd <4 x float> %i.qa, %i.pz
  %i.qc = fmul <4 x float> %i.po, %i.po
  %i.qd = fadd <4 x float> %i.qc, %i.qb
  %i.qe = fmul <4 x float> %i.ln, %i.qd
  %i.qf = fmul <4 x float> %i.pv, %i.pv
  %i.qg = fsub <4 x float> %i.qe, %i.qf
  %i.qh = fmul <4 x float> %i.oj, %i.pv
  %i.qi = fadd <4 x float> %i.oi, %i.qh
  %i.qj = fcmp olt <4 x float> %i.qg, %i.qi
  %i.qk = and <4 x i1> %i.py, %i.qj
  %i.ql = and <4 x i1> %i.nw, %i.qk
  %.demorgan1553 = or <4 x i1> %i.pn, %i.ql
  %i.qm = select <4 x i1> %.demorgan1553, <4 x float> splat (float -inf), <4 x float> %.sroa.0687.0 ; 3 uses
  %i.qn = fsub <4 x float> %i.gq, %i.bs           ; 3 uses
  %i.qo = fsub <4 x float> %i.gr, %i.bt           ; 3 uses
  %i.qp = fsub <4 x float> %i.gs, %i.bu           ; 3 uses
  %i.qq = fmul <4 x float> %i.fg, %i.qp
  %i.qr = fmul <4 x float> %i.fn, %i.qo
  %i.qs = fadd <4 x float> %i.qr, %i.qq
  %i.qt = fmul <4 x float> %i.fm, %i.qn
  %i.qu = fadd <4 x float> %i.qt, %i.qs           ; 4 uses
  %i.qv = fmul <4 x float> %i.qu, %i.qu
  %i.qw = fmul <4 x float> %i.qp, %i.qp
  %i.qx = fmul <4 x float> %i.qo, %i.qo
  %i.qy = fadd <4 x float> %i.qx, %i.qw
  %i.qz = fmul <4 x float> %i.qn, %i.qn
  %i.ra = fadd <4 x float> %i.qz, %i.qy
  %i.rb = fsub <4 x float> %i.ra, %i.lj
  %i.rc = fmul <4 x float> %i.fs, %i.rb
  %i.rd = fsub <4 x float> %i.qv, %i.rc           ; 2 uses
  %i.re = fcmp uge <4 x float> %i.rd, zeroinitializer ; 3 uses
  %i.rf = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.rd)
  %i.rg = select <4 x i1> %i.re, <4 x float> %i.rf, <4 x float> splat (float -inf) ; 2 uses
  %i.rh = fneg <4 x float> %i.qu
  %i.ri = fsub <4 x float> %i.rh, %i.rg
  %i.rj = fmul <4 x float> %i.fx, %i.ri           ; 7 uses
  %i.rk = fmul <4 x float> %i.fm, %i.rj
  %i.rl = fmul <4 x float> %i.fn, %i.rj
  %i.rm = fmul <4 x float> %i.fg, %i.rj
  %i.rn = fadd <4 x float> %i.gq, %i.rk
  %i.ro = fadd <4 x float> %i.gr, %i.rl
  %i.rp = fadd <4 x float> %i.gs, %i.rm
  %i.rq = fmul <4 x float> %i.hs, %i.rj
  %i.rr = fadd <4 x float> %i.ht, %i.rq
  %i.rs = fcmp ugt <4 x float> %i.rr, %i.hf
  %i.rt = fsub <4 x float> %i.rn, %i.bs
  %i.ru = fsub <4 x float> %i.ro, %i.bt
  %i.rv = fsub <4 x float> %i.rp, %i.bu
  %i.rw = fmul <4 x float> %i.ld, %i.rv
  %i.rx = fmul <4 x float> %i.lc, %i.ru
  %i.ry = fadd <4 x float> %i.rx, %i.rw
  %i.rz = fmul <4 x float> %i.lb, %i.rt
  %i.sa = fadd <4 x float> %i.rz, %i.ry
  %i.sb = fcmp ugt <4 x float> %i.sa, %i.np
  %i.sc = and <4 x i1> %i.nt, %i.km
  %i.sd = and <4 x i1> %i.nv, %i.sc               ; 2 uses
  %i.se = and <4 x i1> %i.sd, %i.sb
  %i.sf = xor <4 x i1> %i.se, splat (i1 true)
  %i.sg = and <4 x i1> %i.rs, %i.sf
  %i.sh = and <4 x i1> %i.re, %i.sg
  %i.si = bitcast <4 x float> %i.rj to <4 x i32>
  %i.sj = select <4 x i1> %i.sh, <4 x float> %i.rj, <4 x float> splat (float +inf)
  %i.sk = fsub <4 x float> %i.rg, %i.qu
  %i.sl = fmul <4 x float> %i.fx, %i.sk           ; 7 uses
  %i.sm = fmul <4 x float> %i.fm, %i.sl
  %i.sn = fmul <4 x float> %i.fn, %i.sl
  %i.so = fmul <4 x float> %i.fg, %i.sl
  %i.sp = fadd <4 x float> %i.gq, %i.sm
  %i.sq = fadd <4 x float> %i.gr, %i.sn
  %i.sr = fadd <4 x float> %i.gs, %i.so
  %i.ss = fmul <4 x float> %i.hs, %i.sl
  %i.st = fadd <4 x float> %i.ht, %i.ss
  %i.su = fcmp ugt <4 x float> %i.st, %i.hf
  %i.sv = fsub <4 x float> %i.sp, %i.bs
  %i.sw = fsub <4 x float> %i.sq, %i.bt
  %i.sx = fsub <4 x float> %i.sr, %i.bu
  %i.sy = fmul <4 x float> %i.ld, %i.sx
  %i.sz = fmul <4 x float> %i.lc, %i.sw
  %i.ta = fadd <4 x float> %i.sz, %i.sy
  %i.tb = fmul <4 x float> %i.lb, %i.sv
  %i.tc = fadd <4 x float> %i.tb, %i.ta
  %i.td = fcmp ugt <4 x float> %i.tc, %i.np
  %i.te = and <4 x i1> %i.sd, %i.td
  %i.tf = xor <4 x i1> %i.te, splat (i1 true)
  %i.tg = and <4 x i1> %i.su, %i.tf
  %i.th = and <4 x i1> %i.re, %i.tg
  %i.ti = bitcast <4 x float> %i.sl to <4 x i32>
  %i.tj = select <4 x i1> %i.th, <4 x float> %i.sl, <4 x float> splat (float -inf)
  %i.tk = fcmp oeq <4 x float> %i.da, splat (float +inf)
  %i.tl = and <4 x i1> %i.tk, %i.km               ; 2 uses
  %i.tm = bitcast <4 x i1> %i.tl to i4
  %.not = icmp eq i4 %i.tm, 0
  br i1 %.not, label %bb.t, label %bb.s, !prof !14

bb.s:                                             ; preds = %bb.r
  %i.tn = fmul <4 x float> %i.id, %i.id
  %i.to = fsub <4 x float> %i.hy, %i.hb
  %i.tp = fmul <4 x float> %i.fs, %i.to
  %i.tq = fsub <4 x float> %i.tn, %i.tp           ; 2 uses
  %i.tr = fcmp uge <4 x float> %i.tq, zeroinitializer ; 2 uses
  %i.ts = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.tq)
  %i.tt = select <4 x i1> %i.tr, <4 x float> %i.ts, <4 x float> splat (float -inf) ; 2 uses
  %i.tu = fneg <4 x float> %i.id
  %i.tv = fsub <4 x float> %i.tu, %i.tt
  %i.tw = fmul <4 x float> %i.fx, %i.tv           ; 3 uses
  %i.tx = and <4 x i1> %i.tr, %i.tl               ; 2 uses
  %i.ty = fmul <4 x float> %i.hs, %i.tw
  %i.tz = fadd <4 x float> %i.ht, %i.ty
  %i.ua = fcmp olt <4 x float> %i.tz, zeroinitializer
  %i.ub = and <4 x i1> %i.ua, %i.tx
  %i.uc = select <4 x i1> %i.ub, <4 x float> %i.tw, <4 x float> splat (float +inf)
  %i.ud = fsub <4 x float> %i.tt, %i.id
  %i.ue = fmul <4 x float> %i.fx, %i.ud           ; 3 uses
  %i.uf = fmul <4 x float> %i.hs, %i.ue
  %i.ug = fadd <4 x float> %i.ht, %i.uf
  %i.uh = fcmp olt <4 x float> %i.ug, zeroinitializer
  %i.ui = and <4 x i1> %i.uh, %i.tx
  %i.uj = select <4 x i1> %i.ui, <4 x float> %i.ue, <4 x float> splat (float -inf)
  %i.uk = bitcast <4 x float> %i.tw to <4 x i32>
  %i.ul = bitcast <4 x float> %i.ue to <4 x i32>
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0390.0 = phi <4 x float> [ %i.uj, %bb.s ], [ splat (float -inf), %bb.r ] ; 3 uses
  %.sroa.0393.0 = phi <4 x float> [ %i.uc, %bb.s ], [ splat (float +inf), %bb.r ] ; 3 uses
  %.sroa.215.0 = phi <4 x i32> [ %i.uk, %bb.s ], [ undef, %bb.r ] ; 2 uses
  %.sroa.228.0 = phi <4 x i32> [ %i.ul, %bb.s ], [ undef, %bb.r ] ; 2 uses
  %i.um = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0393.0, <4 x float> %i.sj)
  %i.un = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.op, <4 x float> %i.um) ; 3 uses
  %i.uo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0390.0, <4 x float> %i.tj)
  %i.up = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qm, <4 x float> %i.uo) ; 7 uses
  %i.uq = fadd <4 x float> %i.gm, %i.un           ; 2 uses
  %i.ur = fcmp ole <4 x float> %i.fk, %i.uq
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 12 uses
  %i.ut = load float, ptr %i.us, align 16, !noalias !1246
  %i.uu = insertelement <4 x float> poison, float %i.ut, i64 0
  %i.uv = shufflevector <4 x float> %i.uu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.uw = fcmp ole <4 x float> %i.uq, %i.uv
  %i.ux = and <4 x i1> %i.ur, %i.uw
  %i.uy = fcmp une <4 x float> %i.un, splat (float +inf)
  %i.uz = and <4 x i1> %i.uy, %i.ux               ; 2 uses
  %i.va = and <4 x i1> %i.km, %i.uz               ; 6 uses
  %i.vb = fadd <4 x float> %i.gm, %i.up           ; 7 uses
  %i.vc = fcmp ole <4 x float> %i.fk, %i.vb
  %i.vd = fcmp ole <4 x float> %i.vb, %i.uv
  %i.ve = and <4 x i1> %i.vc, %i.vd
  %i.vf = fcmp une <4 x float> %i.up, splat (float -inf)
  %i.vg = and <4 x i1> %i.vf, %i.ve
  %i.vh = and <4 x i1> %i.km, %i.vg               ; 2 uses
  %i.vi = or <4 x i1> %i.va, %i.vh                ; 5 uses
  %i.vj = bitcast <4 x i1> %i.vi to i4
  %i.vk = icmp eq i4 %i.vj, 0
  br i1 %i.vk, label %_ZN6embree4sse220__roundline_internalL19intersectConeSphereILi4ENS0_17Intersect1EpilogMILi4ELb1EEENS0_28RoundLinearCurveIntersector1ILi4EE8ray_tfarINS_7RayHitKILi1EEEEEEEbRKNS_6vtypesIXT_EE5vboolERKNS_4Vec3INSC_6vfloatEEESK_RKSH_RKT1_RKNS_4Vec4ISH_EEST_ST_ST_RKT0_.exit, label %bb.u, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.vl = sext <4 x i1> %i.vi to <4 x i32>
  %.v = select <4 x i1> %i.va, <4 x float> %i.un, <4 x float> %i.up ; 5 uses
  %i.vm = fcmp une <4 x float> %.v, %i.op
  %i.vn = fcmp une <4 x float> %.v, %i.qm
  %.not1566 = and <4 x i1> %i.vm, %i.vn           ; 5 uses
  %i.vo = fcmp une <4 x float> %.v, %.sroa.0393.0
  %i.vp = fcmp une <4 x float> %.v, %.sroa.0390.0
  %.not1559 = and <4 x i1> %i.vo, %i.vp           ; 4 uses
  %i.vq = select <4 x i1> %i.va, <4 x i32> %.sroa.183.0, <4 x i32> %.sroa.195.0
  %i.vr = bitcast <4 x i32> %i.vq to <4 x float>  ; 4 uses
  %i.vs = select <4 x i1> %i.va, <4 x i32> %.sroa.190.0, <4 x i32> %.sroa.202.0
  %i.vt = bitcast <4 x i32> %i.vs to <4 x float>  ; 3 uses
  %i.vu = fmul <4 x float> %i.fm, %i.vt
  %i.vv = fmul <4 x float> %i.fn, %i.vt
  %i.vw = fmul <4 x float> %i.fg, %i.vt
  %i.vx = fadd <4 x float> %i.hg, %i.vu
  %i.vy = fadd <4 x float> %i.hh, %i.vv
  %i.vz = fadd <4 x float> %i.hi, %i.vw
  %i.wa = fmul <4 x float> %i.hf, %i.vx
  %i.wb = fmul <4 x float> %i.hf, %i.vy
  %i.wc = fmul <4 x float> %i.hf, %i.vz
  %i.wd = fmul <4 x float> %i.gt, %i.vr
  %i.we = fmul <4 x float> %i.gu, %i.vr
  %i.wf = fmul <4 x float> %i.gv, %i.vr
  %i.wg = fsub <4 x float> %i.wa, %i.wd
  %i.wh = fsub <4 x float> %i.wb, %i.we
  %i.wi = fsub <4 x float> %i.wc, %i.wf
  %i.wj = select <4 x i1> %i.va, <4 x i32> %.sroa.215.0, <4 x i32> %.sroa.228.0
  %i.wk = bitcast <4 x i32> %i.wj to <4 x float>  ; 3 uses
  %i.wl = fmul <4 x float> %i.fm, %i.wk
  %i.wm = fmul <4 x float> %i.fn, %i.wk
  %i.wn = fmul <4 x float> %i.fg, %i.wk
  %i.wo = fadd <4 x float> %i.gq, %i.wl
  %i.wp = fadd <4 x float> %i.gr, %i.wm
  %i.wq = fadd <4 x float> %i.gs, %i.wn
  %i.wr = fsub <4 x float> %i.wo, %i.aq
  %i.ws = fsub <4 x float> %i.wp, %i.ar
  %i.wt = fsub <4 x float> %i.wq, %i.as
  %.v1554 = select <4 x i1> %i.va, <4 x float> %i.rj, <4 x float> %i.sl ; 3 uses
  %i.wu = fmul <4 x float> %i.fm, %.v1554
  %i.wv = fmul <4 x float> %i.fn, %.v1554
  %i.ww = fmul <4 x float> %i.fg, %.v1554
  %i.wx = fadd <4 x float> %i.gq, %i.wu
  %i.wy = fadd <4 x float> %i.gr, %i.wv
  %i.wz = fadd <4 x float> %i.gs, %i.ww
  %i.xa = fsub <4 x float> %i.wx, %i.bs
  %i.xb = fsub <4 x float> %i.wy, %i.bt
  %i.xc = fsub <4 x float> %i.wz, %i.bu
  %.v1555 = select <4 x i1> %.not1559, <4 x float> %i.xa, <4 x float> %i.wr
  %.v1556 = select <4 x i1> %.not1559, <4 x float> %i.xb, <4 x float> %i.ws
  %.v1560 = select <4 x i1> %.not1559, <4 x float> %i.xc, <4 x float> %i.wt
  %.v1561 = select <4 x i1> %.not1566, <4 x float> %.v1555, <4 x float> %i.wg
  %.v1562 = select <4 x i1> %.not1566, <4 x float> %.v1556, <4 x float> %i.wh
  %.v1563 = select <4 x i1> %.not1566, <4 x float> %.v1560, <4 x float> %i.wi
  %i.xd = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.hf) ; 3 uses
  %i.xe = fmul <4 x float> %i.hf, %i.xd
  %i.xf = fsub <4 x float> splat (float 1.000000e+00), %i.xe
  %i.xg = fmul <4 x float> %i.xd, %i.xf
  %i.xh = fadd <4 x float> %i.xd, %i.xg           ; 2 uses
  %i.xi = fmul <4 x float> %i.xh, %i.vr
  %i.xj = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.xi, <4 x float> splat (float 1.000000e+00))
  %i.xk = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.xj, <4 x float> zeroinitializer)
  %12 = bitcast <4 x float> %i.xk to <4 x i32>
  %13 = select <4 x i1> %.not1566, <4 x i32> zeroinitializer, <4 x i32> %12
  %14 = select <4 x i1> %.not1566, <4 x i1> %.not1559, <4 x i1> zeroinitializer
  %15 = select <4 x i1> %14, <4 x i32> splat (i32 1065353216), <4 x i32> zeroinitializer
  %16 = or <4 x i32> %13, %15
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.xl = fadd <4 x float> %i.gm, %.v             ; 4 uses
  store <4 x i32> %16, ptr %10, align 16
  %i.xm = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 6 uses
  store <4 x float> zeroinitializer, ptr %i.xm, align 16
  %i.xn = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 6 uses
  store <4 x float> %i.xl, ptr %i.xn, align 16
  %i.xo = getelementptr inbounds nuw i8, ptr %10, i64 48 ; 6 uses
  store <4 x float> %.v1561, ptr %i.xo, align 16
  %i.xp = getelementptr inbounds nuw i8, ptr %10, i64 64 ; 6 uses
  store <4 x float> %.v1562, ptr %i.xp, align 16
  %i.xq = getelementptr inbounds nuw i8, ptr %10, i64 80 ; 6 uses
  store <4 x float> %.v1563, ptr %i.xq, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  store <4 x i32> %i.vl, ptr %5, align 16
  %i.xr = bitcast <4 x float> %i.xl to <4 x i32>
  %i.xs = select <4 x i1> %i.vi, <4 x float> %i.xl, <4 x float> splat (float +inf) ; 3 uses
  %i.xt = shufflevector <4 x float> %i.xs, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.xu = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.xt, <4 x float> %i.xs) ; 2 uses
  %i.xv = shufflevector <4 x float> %i.xu, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.xw = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.xv, <4 x float> %i.xu)
  %i.xx = fcmp oeq <4 x float> %i.xw, %i.xs       ; 2 uses
  %i.xy = and <4 x i1> %i.xx, %i.vi
  %i.xz = bitcast <4 x i1> %i.xy to i4
  %.not1567 = icmp eq i4 %i.xz, 0
  %i.ya = select i1 %.not1567, <4 x i1> splat (i1 true), <4 x i1> %i.xx
  %i.yb = and <4 x i1> %i.vi, %i.ya
  %i.yc = bitcast <4 x i1> %i.yb to i4
  %i.yd = zext i4 %i.yc to i64
  %i.ye = tail call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.yd) #11, !srcloc !12
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.yg = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.yh = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.yi = getelementptr inbounds nuw i8, ptr %6, i64 4
  %i.yj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.yk = getelementptr inbounds nuw i8, ptr %6, i64 12
  %i.yl = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.ym = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.yn = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.yo = getelementptr inbounds nuw i8, ptr %6, i64 28
  %i.yp = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.yq = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.yr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ys = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  %i.yt = getelementptr inbounds nuw i8, ptr %4, i64 32 ; 2 uses
  %i.yu = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.x

bb.v:                                             ; preds = %bb.y, %bb.ah
  %i.yv = phi <4 x float> [ %i.acz, %bb.ah ], [ %.pre1606, %bb.y ]
  %i.yw = bitcast <4 x float> %i.yv to <4 x i32>  ; 5 uses
  %i.yx = icmp slt <4 x i32> %i.yw, zeroinitializer
  %i.yy = bitcast <4 x i1> %i.yx to i4
  %i.yz = icmp eq i4 %i.yy, 0
  br i1 %i.yz, label %_ZNK6embree4sse217Intersect1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i.loopexit, label %bb.w, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.za = and <4 x i32> %i.yw, %i.xr
  %i.zb = and <4 x i32> %i.yw, splat (i32 2139095040)
  %i.zc = xor <4 x i32> %i.zb, splat (i32 2139095040)
  %i.zd = or <4 x i32> %i.zc, %i.za
  %i.ze = bitcast <4 x i32> %i.zd to <4 x float>  ; 3 uses
  %i.zf = shufflevector <4 x float> %i.ze, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.zg = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.zf, <4 x float> %i.ze) ; 2 uses
  %i.zh = shufflevector <4 x float> %i.zg, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.zi = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.zh, <4 x float> %i.zg)
  %i.zj = fcmp oeq <4 x float> %i.zi, %i.ze
  %i.zk = select <4 x i1> %i.zj, <4 x i32> %i.yw, <4 x i32> zeroinitializer ; 2 uses
  %i.zl = icmp slt <4 x i32> %i.zk, zeroinitializer
  %i.zm = bitcast <4 x i1> %i.zl to i4
  %.not1572 = icmp eq i4 %i.zm, 0
  %i.zn = select i1 %.not1572, <4 x i32> %i.yw, <4 x i32> %i.zk
  %i.zo = icmp slt <4 x i32> %i.zn, zeroinitializer
  %i.zp = bitcast <4 x i1> %i.zo to i4
  %i.zq = zext i4 %i.zp to i64
  %i.zr = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.zq) #11, !srcloc !12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.043.i28.i = phi i64 [ %i.ye, %bb.u ], [ %i.zr, %bb.w ] ; 17 uses
  %.042.in.i29.i = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.043.i28.i
  %.042.i31.i = load i32, ptr %.042.in.i29.i, align 4 ; 3 uses
  %i.zs = zext i32 %.042.i31.i to i64
  %i.zt = load ptr, ptr %i.g, align 8
  %i.zu = getelementptr inbounds nuw [8 x i8], ptr %i.zt, i64 %i.zs
  %i.zv = load ptr, ptr %i.zu, align 8            ; 5 uses
  %i.zw = getelementptr inbounds nuw i8, ptr %i.zv, i64 52
  %i.zx = load i32, ptr %i.zw, align 4
  %i.zy = load i32, ptr %i.yf, align 4
  %i.zz = and i32 %i.zy, %i.zx
  %i.aaa = icmp eq i32 %i.zz, 0
  br i1 %i.aaa, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.043.i28.i
  store i32 0, ptr %i.aab, align 4
  %.pre1606 = load <4 x float>, ptr %5, align 16
  br label %bb.v, !llvm.loop !2

bb.z:                                             ; preds = %bb.x
  %i.aac = load ptr, ptr %i.yg, align 8
  %i.aad = getelementptr inbounds nuw i8, ptr %i.aac, i64 16
  %i.aae = load ptr, ptr %i.aad, align 8
  %.not1568 = icmp eq ptr %i.aae, null
  br i1 %.not1568, label %bb.aa, label %.critedge.i35.i, !prof !14

bb.aa:                                            ; preds = %bb.z
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.zv, i64 64
  %i.aag = load ptr, ptr %i.aaf, align 16
  %.not1569 = icmp eq ptr %i.aag, null
  br i1 %.not1569, label %bb.ai, label %.critedge.i35.i, !prof !14

.critedge.i35.i:                                  ; preds = %bb.aa, %bb.z
  %i.aah = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %.043.i28.i
  %i.aai = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %.043.i28.i
  %i.aaj = load float, ptr %i.aah, align 4, !noalias !1247
  %i.aak = load float, ptr %i.aai, align 4, !noalias !1247
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  %i.aal = load ptr, ptr %i.yh, align 8           ; 2 uses
  %i.aam = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.043.i28.i
  %i.aan = load i32, ptr %i.aam, align 4
  %i.aao = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %.043.i28.i
  %i.aap = load float, ptr %i.aao, align 4, !noalias !1248
  %i.aaq = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %.043.i28.i
  %i.aar = load float, ptr %i.aaq, align 4, !noalias !1248
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %.043.i28.i
  %i.aat = load float, ptr %i.aas, align 4, !noalias !1248
  store float %i.aap, ptr %6, align 16
  store float %i.aar, ptr %i.yi, align 4
  store float %i.aat, ptr %i.yj, align 8
  store float %i.aaj, ptr %i.yk, align 4
  store float %i.aak, ptr %i.yl, align 16
  store i32 %i.aan, ptr %i.ym, align 4
  store i32 %.042.i31.i, ptr %i.yn, align 8
  %i.aau = load i32, ptr %i.aal, align 4
  store i32 %i.aau, ptr %i.yo, align 4
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aal, i64 4
  %i.aaw = load i32, ptr %i.aav, align 4
  store i32 %i.aaw, ptr %i.yp, align 16
  %i.aax = load float, ptr %i.us, align 16        ; 2 uses
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %.043.i28.i
  %i.aaz = load float, ptr %i.aay, align 4
  store float %i.aaz, ptr %i.us, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 -1, ptr %i.a, align 4
  store ptr %i.a, ptr %4, align 8
  %i.aba = getelementptr inbounds nuw i8, ptr %i.zv, i64 24
  %i.abb = load ptr, ptr %i.aba, align 8
  store ptr %i.abb, ptr %i.yq, align 8
  %i.abc = load ptr, ptr %i.yh, align 8
  store ptr %i.abc, ptr %i.yr, align 8
  store ptr %1, ptr %i.ys, align 8
  store ptr %6, ptr %i.yt, align 8
  store i32 1, ptr %i.yu, align 8
  %i.abd = getelementptr inbounds nuw i8, ptr %i.zv, i64 64
  %i.abe = load ptr, ptr %i.abd, align 16         ; 2 uses
  %.not.i.i36.i = icmp eq ptr %i.abe, null
  br i1 %.not.i.i36.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i35.i
  call void %i.abe(ptr noundef nonnull %4), !inline_history !1214
  %i.abf = load ptr, ptr %4, align 8
  %i.abg = load i32, ptr %i.abf, align 4
  %i.abh = icmp eq i32 %i.abg, 0
  br i1 %i.abh, label %bb.ag, label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge.i35.i
  %i.abi = load ptr, ptr %i.yg, align 8           ; 2 uses
  %i.abj = getelementptr inbounds nuw i8, ptr %i.abi, i64 16
  %i.abk = load ptr, ptr %i.abj, align 8          ; 2 uses
  %.not14.i.i37.i = icmp eq ptr %i.abk, null
  br i1 %.not14.i.i37.i, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i38.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.abl = load i32, ptr %i.abi, align 8
  %i.abm = and i32 %i.abl, 2
  %.not1570 = icmp eq i32 %i.abm, 0
  br i1 %.not1570, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.ad
  %i.abn = getelementptr inbounds nuw i8, ptr %i.zv, i64 60
  %i.abo = load i32, ptr %i.abn, align 4
  %i.abp = and i32 %i.abo, 4194304
  %.not1571 = icmp eq i32 %i.abp, 0
  br i1 %.not1571, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i38.i, label %bb.af

bb.af:                                            ; preds = %bb.ad, %bb.ae
  call void %i.abk(ptr noundef nonnull %4), !inline_history !1214
  %.pre = load ptr, ptr %4, align 8
  %.pre1604 = load i32, ptr %.pre, align 4
  %i.abq = icmp eq i32 %.pre1604, 0
  br i1 %i.abq, label %bb.ag, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i38.i

_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i38.i: ; preds = %bb.ae, %bb.ac, %bb.af
  %i.abr = load ptr, ptr %i.ys, align 8           ; 9 uses
  %i.abs = load ptr, ptr %i.yt, align 8           ; 9 uses
  %i.abt = getelementptr inbounds nuw i8, ptr %i.abr, i64 48
  %i.abu = load float, ptr %i.abs, align 4
  store float %i.abu, ptr %i.abt, align 4
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abs, i64 4
  %i.abw = load float, ptr %i.abv, align 4
  %i.abx = getelementptr inbounds nuw i8, ptr %i.abr, i64 52
  store float %i.abw, ptr %i.abx, align 4
  %i.aby = getelementptr inbounds nuw i8, ptr %i.abs, i64 8
  %i.abz = load float, ptr %i.aby, align 4
  %i.aca = getelementptr inbounds nuw i8, ptr %i.abr, i64 56
  store float %i.abz, ptr %i.aca, align 4
  %i.acb = getelementptr inbounds nuw i8, ptr %i.abs, i64 12
  %i.acc = load float, ptr %i.acb, align 4
  %i.acd = getelementptr inbounds nuw i8, ptr %i.abr, i64 60
  store float %i.acc, ptr %i.acd, align 4
  %i.ace = getelementptr inbounds nuw i8, ptr %i.abs, i64 16
  %i.acf = load float, ptr %i.ace, align 16
  %i.acg = getelementptr inbounds nuw i8, ptr %i.abr, i64 64
  store float %i.acf, ptr %i.acg, align 16
  %i.ach = getelementptr inbounds nuw i8, ptr %i.abs, i64 20
  %i.aci = load i32, ptr %i.ach, align 4
  %i.acj = getelementptr inbounds nuw i8, ptr %i.abr, i64 68
  store i32 %i.aci, ptr %i.acj, align 4
  %i.ack = getelementptr inbounds nuw i8, ptr %i.abs, i64 24
  %i.acl = load i32, ptr %i.ack, align 8
  %i.acm = getelementptr inbounds nuw i8, ptr %i.abr, i64 72
  store i32 %i.acl, ptr %i.acm, align 8
  %i.acn = getelementptr inbounds nuw i8, ptr %i.abs, i64 28
  %i.aco = getelementptr inbounds nuw i8, ptr %i.abr, i64 76
  %i.acp = load i32, ptr %i.acn, align 4
  store i32 %i.acp, ptr %i.aco, align 4
  %i.acq = getelementptr inbounds nuw i8, ptr %i.abs, i64 32
  %i.acr = getelementptr inbounds nuw i8, ptr %i.abr, i64 80
  %i.acs = load i32, ptr %i.acq, align 16
  store i32 %i.acs, ptr %i.acr, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %.pre1605 = load float, ptr %i.us, align 16
  br label %bb.ah

bb.ag:                                            ; preds = %bb.ab, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  store float %i.aax, ptr %i.us, align 16
  br label %bb.ah

bb.ah:                                            ; preds = %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i38.i, %bb.ag
  %i.act = phi float [ %i.aax, %bb.ag ], [ %.pre1605, %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i38.i ]
  %i.acu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %.043.i28.i
  store i32 0, ptr %i.acu, align 4
  %i.acv = insertelement <4 x float> poison, float %i.act, i64 0
  %i.acw = shufflevector <4 x float> %i.acv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.acx = fcmp ole <4 x float> %i.xl, %i.acw
  %i.acy = load <4 x float>, ptr %5, align 16, !noalias !1249
  %i.acz = select <4 x i1> %i.acx, <4 x float> %i.acy, <4 x float> zeroinitializer ; 2 uses
  store <4 x float> %i.acz, ptr %5, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %bb.v

bb.ai:                                            ; preds = %bb.aa
  %i.ada = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %.043.i28.i
  %i.adb = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %.043.i28.i
  %i.adc = load float, ptr %i.ada, align 4, !noalias !1250
  %i.add = load float, ptr %i.adb, align 4, !noalias !1250
  %i.ade = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %.043.i28.i
  %i.adf = load float, ptr %i.ade, align 4        ; 2 uses
  store float %i.adf, ptr %i.us, align 16
  %i.adg = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %.043.i28.i
  %i.adh = load float, ptr %i.adg, align 4
  %i.adi = getelementptr inbounds nuw i8, ptr %1, i64 48
  store float %i.adh, ptr %i.adi, align 16
  %i.adj = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %.043.i28.i
  %i.adk = load float, ptr %i.adj, align 4
  %i.adl = getelementptr inbounds nuw i8, ptr %1, i64 52
  store float %i.adk, ptr %i.adl, align 4
  %i.adm = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %.043.i28.i
  %i.adn = load float, ptr %i.adm, align 4
  %i.ado = getelementptr inbounds nuw i8, ptr %1, i64 56
  store float %i.adn, ptr %i.ado, align 8
  %i.adp = getelementptr inbounds nuw i8, ptr %1, i64 60
  store float %i.adc, ptr %i.adp, align 4
  %i.adq = getelementptr inbounds nuw i8, ptr %1, i64 64
  store float %i.add, ptr %i.adq, align 16
  %i.adr = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.043.i28.i
  %i.ads = load i32, ptr %i.adr, align 4
  %i.adt = getelementptr inbounds nuw i8, ptr %1, i64 68
  store i32 %i.ads, ptr %i.adt, align 4
  %i.adu = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i32 %.042.i31.i, ptr %i.adu, align 8
  %i.adv = load ptr, ptr %i.yh, align 8
  %i.adw = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.adx = load i32, ptr %i.adv, align 4
  store i32 %i.adx, ptr %i.adw, align 4
  %i.ady = load ptr, ptr %i.yh, align 8
  %i.adz = getelementptr inbounds nuw i8, ptr %i.ady, i64 4
  %i.aea = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.aeb = load i32, ptr %i.adz, align 4
  store i32 %i.aeb, ptr %i.aea, align 16
  br label %_ZNK6embree4sse217Intersect1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i

_ZNK6embree4sse217Intersect1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i.loopexit: ; preds = %bb.v
  %.pre1607 = load float, ptr %i.us, align 16, !noalias !1251
  br label %_ZNK6embree4sse217Intersect1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i

_ZNK6embree4sse217Intersect1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i: ; preds = %_ZNK6embree4sse217Intersect1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i.loopexit, %bb.ai
  %i.aec = phi float [ %.pre1607, %_ZNK6embree4sse217Intersect1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i.loopexit ], [ %i.adf, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %i.aed = insertelement <4 x float> poison, float %i.aec, i64 0
  %i.aee = shufflevector <4 x float> %i.aed, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aef = fcmp ole <4 x float> %i.vb, %i.aee
  %i.aeg = and <4 x i1> %i.vh, %i.aef
  %i.aeh = and <4 x i1> %i.uz, %i.aeg             ; 5 uses
  %i.aei = bitcast <4 x i1> %i.aeh to i4
  %i.aej = icmp eq i4 %i.aei, 0
  br i1 %i.aej, label %bb.ay, label %bb.aj, !prof !11

bb.aj:                                            ; preds = %_ZNK6embree4sse217Intersect1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i
  %i.aek = sext <4 x i1> %i.aeh to <4 x i32>
  %i.ael = fcmp une <4 x float> %i.up, %i.op
  %i.aem = fcmp une <4 x float> %i.up, %i.qm
  %.not1584 = and <4 x i1> %i.ael, %i.aem         ; 5 uses
  %i.aen = fcmp une <4 x float> %i.up, %.sroa.0393.0
  %i.aeo = fcmp une <4 x float> %i.up, %.sroa.0390.0
  %.not1577 = and <4 x i1> %i.aen, %i.aeo         ; 4 uses
  %i.aep = load <4 x i32>, ptr @_ZN6embree16mm_lookupmask_psE, align 16 ; 5 uses
  %i.aeq = and <4 x i32> %i.aep, %.sroa.183.0
  %i.aer = xor <4 x i32> %i.aep, splat (i32 -1)   ; 4 uses
  %i.aes = and <4 x i32> %.sroa.195.0, %i.aer
  %i.aet = or <4 x i32> %i.aeq, %i.aes
  %i.aeu = bitcast <4 x i32> %i.aet to <4 x float> ; 4 uses
  %i.aev = and <4 x i32> %i.aep, %.sroa.190.0
  %i.aew = and <4 x i32> %.sroa.202.0, %i.aer
  %i.aex = or <4 x i32> %i.aev, %i.aew
  %i.aey = bitcast <4 x i32> %i.aex to <4 x float> ; 3 uses
  %i.aez = fmul <4 x float> %i.fm, %i.aey
  %i.afa = fmul <4 x float> %i.fn, %i.aey
  %i.afb = fmul <4 x float> %i.fg, %i.aey
  %i.afc = fadd <4 x float> %i.hg, %i.aez
  %i.afd = fadd <4 x float> %i.hh, %i.afa
  %i.afe = fadd <4 x float> %i.hi, %i.afb
  %i.aff = fmul <4 x float> %i.hf, %i.afc
  %i.afg = fmul <4 x float> %i.hf, %i.afd
  %i.afh = fmul <4 x float> %i.hf, %i.afe
  %i.afi = fmul <4 x float> %i.gt, %i.aeu
  %i.afj = fmul <4 x float> %i.gu, %i.aeu
  %i.afk = fmul <4 x float> %i.gv, %i.aeu
  %i.afl = fsub <4 x float> %i.aff, %i.afi
  %i.afm = fsub <4 x float> %i.afg, %i.afj
  %i.afn = fsub <4 x float> %i.afh, %i.afk
  %i.afo = and <4 x i32> %i.aep, %.sroa.215.0
  %i.afp = and <4 x i32> %.sroa.228.0, %i.aer
  %i.afq = or <4 x i32> %i.afo, %i.afp
  %i.afr = bitcast <4 x i32> %i.afq to <4 x float> ; 3 uses
  %i.afs = fmul <4 x float> %i.fm, %i.afr
  %i.aft = fmul <4 x float> %i.fn, %i.afr
  %i.afu = fmul <4 x float> %i.fg, %i.afr
  %i.afv = fadd <4 x float> %i.gq, %i.afs
  %i.afw = fadd <4 x float> %i.gr, %i.aft
  %i.afx = fadd <4 x float> %i.gs, %i.afu
  %i.afy = fsub <4 x float> %i.afv, %i.aq
  %i.afz = fsub <4 x float> %i.afw, %i.ar
  %i.aga = fsub <4 x float> %i.afx, %i.as
  %i.agb = and <4 x i32> %i.aep, %i.si
  %i.agc = and <4 x i32> %i.aer, %i.ti
  %i.agd = or <4 x i32> %i.agb, %i.agc
  %i.age = bitcast <4 x i32> %i.agd to <4 x float> ; 3 uses
  %i.agf = fmul <4 x float> %i.fm, %i.age
  %i.agg = fmul <4 x float> %i.fn, %i.age
  %i.agh = fmul <4 x float> %i.fg, %i.age
  %i.agi = fadd <4 x float> %i.gq, %i.agf
  %i.agj = fadd <4 x float> %i.gr, %i.agg
  %i.agk = fadd <4 x float> %i.gs, %i.agh
  %i.agl = fsub <4 x float> %i.agi, %i.bs
  %i.agm = fsub <4 x float> %i.agj, %i.bt
  %i.agn = fsub <4 x float> %i.agk, %i.bu
  %.v1573 = select <4 x i1> %.not1577, <4 x float> %i.agl, <4 x float> %i.afy
  %.v1574 = select <4 x i1> %.not1577, <4 x float> %i.agm, <4 x float> %i.afz
  %.v1578 = select <4 x i1> %.not1577, <4 x float> %i.agn, <4 x float> %i.aga
  %.v1579 = select <4 x i1> %.not1584, <4 x float> %.v1573, <4 x float> %i.afl
  %.v1580 = select <4 x i1> %.not1584, <4 x float> %.v1574, <4 x float> %i.afm
  %.v1581 = select <4 x i1> %.not1584, <4 x float> %.v1578, <4 x float> %i.afn
  %i.ago = fmul <4 x float> %i.xh, %i.aeu
  %i.agp = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ago, <4 x float> splat (float 1.000000e+00))
  %i.agq = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.agp, <4 x float> zeroinitializer)
  %17 = bitcast <4 x float> %i.agq to <4 x i32>
  %18 = select <4 x i1> %.not1584, <4 x i32> zeroinitializer, <4 x i32> %17
  %19 = select <4 x i1> %.not1584, <4 x i1> %.not1577, <4 x i1> zeroinitializer
  %20 = select <4 x i1> %19, <4 x i32> splat (i32 1065353216), <4 x i32> zeroinitializer
  %21 = or <4 x i32> %18, %20
  store <4 x i32> %21, ptr %10, align 16
  store <4 x float> zeroinitializer, ptr %i.xm, align 16
  store <4 x float> %i.vb, ptr %i.xn, align 16
  store <4 x float> %.v1579, ptr %i.xo, align 16
  store <4 x float> %.v1580, ptr %i.xp, align 16
  store <4 x float> %.v1581, ptr %i.xq, align 16
  %i.agr = load ptr, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  store <4 x i32> %i.aek, ptr %8, align 16
  %i.ags = bitcast <4 x float> %i.vb to <4 x i32>
  %i.agt = select <4 x i1> %i.aeh, <4 x float> %i.vb, <4 x float> splat (float +inf) ; 3 uses
  %i.agu = shufflevector <4 x float> %i.agt, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.agv = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.agu, <4 x float> %i.agt) ; 2 uses
  %i.agw = shufflevector <4 x float> %i.agv, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.agx = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.agw, <4 x float> %i.agv)
  %i.agy = fcmp oeq <4 x float> %i.agt, %i.agx
  %i.agz = and <4 x i1> %i.aeh, %i.agy            ; 2 uses
  %i.aha = bitcast <4 x i1> %i.agz to i4
  %.not1585 = icmp eq i4 %i.aha, 0
  %i.ahb = select i1 %.not1585, <4 x i1> %i.aeh, <4 x i1> %i.agz
  %i.ahc = bitcast <4 x i1> %i.ahb to i4
  %i.ahd = zext i4 %i.ahc to i64
  %i.ahe = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ahd) #11, !srcloc !12
  %i.ahf = getelementptr inbounds nuw i8, ptr %i.agr, i64 488
  %i.ahg = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.ahh = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ahi = getelementptr inbounds nuw i8, ptr %9, i64 12
  %i.ahj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ahk = getelementptr inbounds nuw i8, ptr %9, i64 20
  %i.ahl = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.ahm = getelementptr inbounds nuw i8, ptr %9, i64 28
  %i.ahn = getelementptr inbounds nuw i8, ptr %9, i64 32
  %i.aho = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ahp = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ahq = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.ahr = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  %i.ahs = getelementptr inbounds nuw i8, ptr %7, i64 40
  br label %bb.am

bb.ak:                                            ; preds = %bb.an, %bb.aw
  %i.aht = phi <4 x float> [ %i.alx, %bb.aw ], [ %.pre1611, %bb.an ]
  %i.ahu = bitcast <4 x float> %i.aht to <4 x i32> ; 5 uses
  %i.ahv = icmp slt <4 x i32> %i.ahu, zeroinitializer
  %i.ahw = bitcast <4 x i1> %i.ahv to i4
  %i.ahx = icmp eq i4 %i.ahw, 0
  br i1 %i.ahx, label %_ZNK6embree4sse217Intersect1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i, label %bb.al, !prof !11

bb.al:                                            ; preds = %bb.ak
  %i.ahy = and <4 x i32> %i.ahu, %i.ags
  %i.ahz = and <4 x i32> %i.ahu, splat (i32 2139095040)
  %i.aia = xor <4 x i32> %i.ahz, splat (i32 2139095040)
  %i.aib = or <4 x i32> %i.aia, %i.ahy
  %i.aic = bitcast <4 x i32> %i.aib to <4 x float> ; 3 uses
  %i.aid = shufflevector <4 x float> %i.aic, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.aie = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aid, <4 x float> %i.aic) ; 2 uses
  %i.aif = shufflevector <4 x float> %i.aie, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.aig = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aif, <4 x float> %i.aie)
  %i.aih = fcmp oeq <4 x float> %i.aig, %i.aic
  %i.aii = select <4 x i1> %i.aih, <4 x i32> %i.ahu, <4 x i32> zeroinitializer ; 2 uses
  %i.aij = icmp slt <4 x i32> %i.aii, zeroinitializer
  %i.aik = bitcast <4 x i1> %i.aij to i4
  %.not1590 = icmp eq i4 %i.aik, 0
  %i.ail = select i1 %.not1590, <4 x i32> %i.ahu, <4 x i32> %i.aii
  %i.aim = icmp slt <4 x i32> %i.ail, zeroinitializer
  %i.ain = bitcast <4 x i1> %i.aim to i4
  %i.aio = zext i4 %i.ain to i64
  %i.aip = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.aio) #11, !srcloc !12
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.043.i.i = phi i64 [ %i.ahe, %bb.aj ], [ %i.aip, %bb.al ] ; 17 uses
  %.042.in.i.i = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.043.i.i
  %.042.i.i = load i32, ptr %.042.in.i.i, align 4 ; 3 uses
  %i.aiq = zext i32 %.042.i.i to i64
  %i.air = load ptr, ptr %i.ahf, align 8
  %i.ais = getelementptr inbounds nuw [8 x i8], ptr %i.air, i64 %i.aiq
  %i.ait = load ptr, ptr %i.ais, align 8          ; 5 uses
  %i.aiu = getelementptr inbounds nuw i8, ptr %i.ait, i64 52
  %i.aiv = load i32, ptr %i.aiu, align 4
  %i.aiw = load i32, ptr %i.yf, align 4
  %i.aix = and i32 %i.aiw, %i.aiv
  %i.aiy = icmp eq i32 %i.aix, 0
  br i1 %i.aiy, label %bb.an, label %bb.ao

bb.an:                                            ; preds = %bb.am
  %i.aiz = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %.043.i.i
  store i32 0, ptr %i.aiz, align 4
  %.pre1611 = load <4 x float>, ptr %8, align 16
  br label %bb.ak, !llvm.loop !2

bb.ao:                                            ; preds = %bb.am
  %i.aja = load ptr, ptr %i.yg, align 8
  %i.ajb = getelementptr inbounds nuw i8, ptr %i.aja, i64 16
  %i.ajc = load ptr, ptr %i.ajb, align 8
  %.not1586 = icmp eq ptr %i.ajc, null
  br i1 %.not1586, label %bb.ap, label %.critedge.i.i, !prof !14

bb.ap:                                            ; preds = %bb.ao
  %i.ajd = getelementptr inbounds nuw i8, ptr %i.ait, i64 64
  %i.aje = load ptr, ptr %i.ajd, align 16
  %.not1587 = icmp eq ptr %i.aje, null
  br i1 %.not1587, label %bb.ax, label %.critedge.i.i, !prof !14

.critedge.i.i:                                    ; preds = %bb.ap, %bb.ao
  %i.ajf = getelementptr inbounds nuw [4 x i8], ptr %10, i64 %.043.i.i
  %i.ajg = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %.043.i.i
  %i.ajh = load float, ptr %i.ajf, align 4, !noalias !1252
  %i.aji = load float, ptr %i.ajg, align 4, !noalias !1252
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.ajj = load ptr, ptr %i.yh, align 8           ; 2 uses
  %i.ajk = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %.043.i.i
  %i.ajl = load i32, ptr %i.ajk, align 4
  %i.ajm = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %.043.i.i
  %i.ajn = load float, ptr %i.ajm, align 4, !noalias !1253
  %i.ajo = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %.043.i.i
  %i.ajp = load float, ptr %i.ajo, align 4, !noalias !1253
  %i.ajq = getelementptr inbounds nuw [4 x i8], ptr %i.xq, i64 %.043.i.i
  %i.ajr = load float, ptr %i.ajq, align 4, !noalias !1253
  store float %i.ajn, ptr %9, align 16
  store float %i.ajp, ptr %i.ahg, align 4
  store float %i.ajr, ptr %i.ahh, align 8
  store float %i.ajh, ptr %i.ahi, align 4
  store float %i.aji, ptr %i.ahj, align 16
  store i32 %i.ajl, ptr %i.ahk, align 4
  store i32 %.042.i.i, ptr %i.ahl, align 8
  %i.ajs = load i32, ptr %i.ajj, align 4
  store i32 %i.ajs, ptr %i.ahm, align 4
  %i.ajt = getelementptr inbounds nuw i8, ptr %i.ajj, i64 4
  %i.aju = load i32, ptr %i.ajt, align 4
  store i32 %i.aju, ptr %i.ahn, align 16
  %i.ajv = load float, ptr %i.us, align 16        ; 2 uses
  %i.ajw = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %.043.i.i
  %i.ajx = load float, ptr %i.ajw, align 4
  store float %i.ajx, ptr %i.us, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 -1, ptr %i.b, align 4
  store ptr %i.b, ptr %7, align 8
  %i.ajy = getelementptr inbounds nuw i8, ptr %i.ait, i64 24
  %i.ajz = load ptr, ptr %i.ajy, align 8
  store ptr %i.ajz, ptr %i.aho, align 8
  %i.aka = load ptr, ptr %i.yh, align 8
  store ptr %i.aka, ptr %i.ahp, align 8
  store ptr %1, ptr %i.ahq, align 8
  store ptr %9, ptr %i.ahr, align 8
  store i32 1, ptr %i.ahs, align 8
  %i.akb = getelementptr inbounds nuw i8, ptr %i.ait, i64 64
  %i.akc = load ptr, ptr %i.akb, align 16         ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.akc, null
  br i1 %.not.i.i.i, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.critedge.i.i
  call void %i.akc(ptr noundef nonnull %7), !inline_history !1214
  %i.akd = load ptr, ptr %7, align 8
  %i.ake = load i32, ptr %i.akd, align 4
  %i.akf = icmp eq i32 %i.ake, 0
  br i1 %i.akf, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.critedge.i.i
  %i.akg = load ptr, ptr %i.yg, align 8           ; 2 uses
  %i.akh = getelementptr inbounds nuw i8, ptr %i.akg, i64 16
  %i.aki = load ptr, ptr %i.akh, align 8          ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.aki, null
  br i1 %.not14.i.i.i, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.akj = load i32, ptr %i.akg, align 8
  %i.akk = and i32 %i.akj, 2
  %.not1588 = icmp eq i32 %i.akk, 0
  br i1 %.not1588, label %bb.at, label %bb.au

bb.at:                                            ; preds = %bb.as
  %i.akl = getelementptr inbounds nuw i8, ptr %i.ait, i64 60
  %i.akm = load i32, ptr %i.akl, align 4
  %i.akn = and i32 %i.akm, 4194304
  %.not1589 = icmp eq i32 %i.akn, 0
  br i1 %.not1589, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.au

bb.au:                                            ; preds = %bb.as, %bb.at
  call void %i.aki(ptr noundef nonnull %7), !inline_history !1214
  %.pre1608 = load ptr, ptr %7, align 8
  %.pre1609 = load i32, ptr %.pre1608, align 4
  %i.ako = icmp eq i32 %.pre1609, 0
  br i1 %i.ako, label %bb.av, label %_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i

_ZN6embree4sse228runIntersectionFilter1HelperEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i: ; preds = %bb.at, %bb.ar, %bb.au
  %i.akp = load ptr, ptr %i.ahq, align 8          ; 9 uses
  %i.akq = load ptr, ptr %i.ahr, align 8          ; 9 uses
  %i.akr = getelementptr inbounds nuw i8, ptr %i.akp, i64 48
  %i.aks = load float, ptr %i.akq, align 4
  store float %i.aks, ptr %i.akr, align 4
  %i.akt = getelementptr inbounds nuw i8, ptr %i.akq, i64 4
  %i.aku = load float, ptr %i.akt, align 4
  %i.akv = getelementptr inbounds nuw i8, ptr %i.akp, i64 52
  store float %i.aku, ptr %i.akv, align 4
  %i.akw = getelementptr inbounds nuw i8, ptr %i.akq, i64 8
  %i.akx = load float, ptr %i.akw, align 4
  %i.aky = getelementptr inbounds nuw i8, ptr %i.akp, i64 56
  store float %i.akx, ptr %i.aky, align 4
  %i.akz = getelementptr inbounds nuw i8, ptr %i.akq, i64 12
  %i.ala = load float, ptr %i.akz, align 4
end_hunk_0
begin_hunk_1_@_ZN6embree4sse230RoundLinearCurveMiIntersector1ILi4ELb1EE8occludedERKNS0_21CurvePrecalculations1ERNS_4RayKILi1EEEPNS_15RayQueryContextERKNS_6LineMiILi4EEE:bb.a
  %i.om = fcmp olt <4 x float> %i.oh, %i.ol
  %i.on = and <4 x i1> %i.nz, %i.om
  %i.oo = and <4 x i1> %i.nw, %i.on
  %.demorgan = or <4 x i1> %i.ng, %i.oo
  %i.op = select <4 x i1> %.demorgan, <4 x float> splat (float +inf), <4 x float> %.sroa.0663.0 ; 3 uses
  %i.oq = fsub <4 x float> %i.lx, %i.aq           ; 3 uses
  %i.or = fsub <4 x float> %i.ly, %i.ar           ; 3 uses
  %i.os = fsub <4 x float> %i.lz, %i.as           ; 3 uses
  %i.ot = fmul <4 x float> %i.kr, %i.os
  %i.ou = fmul <4 x float> %i.kq, %i.or
  %i.ov = fadd <4 x float> %i.ou, %i.ot
  %i.ow = fmul <4 x float> %i.kp, %i.oq
  %i.ox = fadd <4 x float> %i.ow, %i.ov           ; 5 uses
  %i.oy = fcmp ugt <4 x float> %i.ox, %i.mi
  %i.oz = fcmp olt <4 x float> %i.ox, %i.mk
  %i.pa = and <4 x i1> %i.oy, %i.oz
  %i.pb = fmul <4 x float> %i.os, %i.os
  %i.pc = fmul <4 x float> %i.or, %i.or
  %i.pd = fadd <4 x float> %i.pc, %i.pb
  %i.pe = fmul <4 x float> %i.oq, %i.oq
  %i.pf = fadd <4 x float> %i.pe, %i.pd
  %i.pg = fmul <4 x float> %i.la, %i.pf
  %i.ph = fmul <4 x float> %i.ox, %i.ox
  %i.pi = fsub <4 x float> %i.pg, %i.ph
  %i.pj = fmul <4 x float> %i.nb, %i.ox
  %i.pk = fadd <4 x float> %i.na, %i.pj
  %i.pl = fcmp olt <4 x float> %i.pi, %i.pk
  %i.pm = and <4 x i1> %i.pa, %i.pl
  %i.pn = and <4 x i1> %i.mo, %i.pm
  %i.po = fsub <4 x float> %i.lx, %i.bs           ; 3 uses
  %i.pp = fsub <4 x float> %i.ly, %i.bt           ; 3 uses
  %i.pq = fsub <4 x float> %i.lz, %i.bu           ; 3 uses
  %i.pr = fmul <4 x float> %i.ld, %i.pq
  %i.ps = fmul <4 x float> %i.lc, %i.pp
  %i.pt = fadd <4 x float> %i.ps, %i.pr
  %i.pu = fmul <4 x float> %i.lb, %i.po
  %i.pv = fadd <4 x float> %i.pu, %i.pt           ; 5 uses
  %i.pw = fcmp ugt <4 x float> %i.pv, %i.nq
  %i.px = fcmp olt <4 x float> %i.pv, %i.ns
  %i.py = and <4 x i1> %i.pw, %i.px
  %i.pz = fmul <4 x float> %i.pq, %i.pq
  %i.qa = fmul <4 x float> %i.pp, %i.pp
  %i.qb = fadd <4 x float> %i.qa, %i.pz
  %i.qc = fmul <4 x float> %i.po, %i.po
  %i.qd = fadd <4 x float> %i.qc, %i.qb
  %i.qe = fmul <4 x float> %i.ln, %i.qd
  %i.qf = fmul <4 x float> %i.pv, %i.pv
  %i.qg = fsub <4 x float> %i.qe, %i.qf
  %i.qh = fmul <4 x float> %i.oj, %i.pv
  %i.qi = fadd <4 x float> %i.oi, %i.qh
  %i.qj = fcmp olt <4 x float> %i.qg, %i.qi
  %i.qk = and <4 x i1> %i.py, %i.qj
  %i.ql = and <4 x i1> %i.nw, %i.qk
  %.demorgan1473 = or <4 x i1> %i.pn, %i.ql
  %i.qm = select <4 x i1> %.demorgan1473, <4 x float> splat (float -inf), <4 x float> %.sroa.0656.0 ; 3 uses
  %i.qn = fsub <4 x float> %i.gq, %i.bs           ; 3 uses
  %i.qo = fsub <4 x float> %i.gr, %i.bt           ; 3 uses
  %i.qp = fsub <4 x float> %i.gs, %i.bu           ; 3 uses
  %i.qq = fmul <4 x float> %i.fg, %i.qp
  %i.qr = fmul <4 x float> %i.fn, %i.qo
  %i.qs = fadd <4 x float> %i.qr, %i.qq
  %i.qt = fmul <4 x float> %i.fm, %i.qn
  %i.qu = fadd <4 x float> %i.qt, %i.qs           ; 4 uses
  %i.qv = fmul <4 x float> %i.qu, %i.qu
  %i.qw = fmul <4 x float> %i.qp, %i.qp
  %i.qx = fmul <4 x float> %i.qo, %i.qo
  %i.qy = fadd <4 x float> %i.qx, %i.qw
  %i.qz = fmul <4 x float> %i.qn, %i.qn
  %i.ra = fadd <4 x float> %i.qz, %i.qy
  %i.rb = fsub <4 x float> %i.ra, %i.lj
  %i.rc = fmul <4 x float> %i.fs, %i.rb
  %i.rd = fsub <4 x float> %i.qv, %i.rc           ; 2 uses
  %i.re = fcmp uge <4 x float> %i.rd, zeroinitializer ; 3 uses
  %i.rf = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.rd)
  %i.rg = select <4 x i1> %i.re, <4 x float> %i.rf, <4 x float> splat (float -inf) ; 2 uses
  %i.rh = fneg <4 x float> %i.qu
  %i.ri = fsub <4 x float> %i.rh, %i.rg
  %i.rj = fmul <4 x float> %i.fx, %i.ri           ; 7 uses
  %i.rk = fmul <4 x float> %i.fm, %i.rj
  %i.rl = fmul <4 x float> %i.fn, %i.rj
  %i.rm = fmul <4 x float> %i.fg, %i.rj
  %i.rn = fadd <4 x float> %i.gq, %i.rk
  %i.ro = fadd <4 x float> %i.gr, %i.rl
  %i.rp = fadd <4 x float> %i.gs, %i.rm
  %i.rq = fmul <4 x float> %i.hs, %i.rj
  %i.rr = fadd <4 x float> %i.ht, %i.rq
  %i.rs = fcmp ugt <4 x float> %i.rr, %i.hf
  %i.rt = fsub <4 x float> %i.rn, %i.bs
  %i.ru = fsub <4 x float> %i.ro, %i.bt
  %i.rv = fsub <4 x float> %i.rp, %i.bu
  %i.rw = fmul <4 x float> %i.ld, %i.rv
  %i.rx = fmul <4 x float> %i.lc, %i.ru
  %i.ry = fadd <4 x float> %i.rx, %i.rw
  %i.rz = fmul <4 x float> %i.lb, %i.rt
  %i.sa = fadd <4 x float> %i.rz, %i.ry
  %i.sb = fcmp ugt <4 x float> %i.sa, %i.np
  %i.sc = and <4 x i1> %i.nt, %i.km
  %i.sd = and <4 x i1> %i.nv, %i.sc               ; 2 uses
  %i.se = and <4 x i1> %i.sd, %i.sb
  %i.sf = xor <4 x i1> %i.se, splat (i1 true)
  %i.sg = and <4 x i1> %i.rs, %i.sf
  %i.sh = and <4 x i1> %i.re, %i.sg
  %i.si = bitcast <4 x float> %i.rj to <4 x i32>
  %i.sj = select <4 x i1> %i.sh, <4 x float> %i.rj, <4 x float> splat (float +inf)
  %i.sk = fsub <4 x float> %i.rg, %i.qu
  %i.sl = fmul <4 x float> %i.fx, %i.sk           ; 7 uses
  %i.sm = fmul <4 x float> %i.fm, %i.sl
  %i.sn = fmul <4 x float> %i.fn, %i.sl
  %i.so = fmul <4 x float> %i.fg, %i.sl
  %i.sp = fadd <4 x float> %i.gq, %i.sm
  %i.sq = fadd <4 x float> %i.gr, %i.sn
  %i.sr = fadd <4 x float> %i.gs, %i.so
  %i.ss = fmul <4 x float> %i.hs, %i.sl
  %i.st = fadd <4 x float> %i.ht, %i.ss
  %i.su = fcmp ugt <4 x float> %i.st, %i.hf
  %i.sv = fsub <4 x float> %i.sp, %i.bs
  %i.sw = fsub <4 x float> %i.sq, %i.bt
  %i.sx = fsub <4 x float> %i.sr, %i.bu
  %i.sy = fmul <4 x float> %i.ld, %i.sx
  %i.sz = fmul <4 x float> %i.lc, %i.sw
  %i.ta = fadd <4 x float> %i.sz, %i.sy
  %i.tb = fmul <4 x float> %i.lb, %i.sv
  %i.tc = fadd <4 x float> %i.tb, %i.ta
  %i.td = fcmp ugt <4 x float> %i.tc, %i.np
  %i.te = and <4 x i1> %i.sd, %i.td
  %i.tf = xor <4 x i1> %i.te, splat (i1 true)
  %i.tg = and <4 x i1> %i.su, %i.tf
  %i.th = and <4 x i1> %i.re, %i.tg
  %i.ti = bitcast <4 x float> %i.sl to <4 x i32>
  %i.tj = select <4 x i1> %i.th, <4 x float> %i.sl, <4 x float> splat (float -inf)
  %i.tk = fcmp oeq <4 x float> %i.da, splat (float +inf)
  %i.tl = and <4 x i1> %i.tk, %i.km               ; 2 uses
  %i.tm = bitcast <4 x i1> %i.tl to i4
  %.not = icmp eq i4 %i.tm, 0
  br i1 %.not, label %bb.t, label %bb.s, !prof !14

bb.s:                                             ; preds = %bb.r
  %i.tn = fmul <4 x float> %i.id, %i.id
  %i.to = fsub <4 x float> %i.hy, %i.hb
  %i.tp = fmul <4 x float> %i.fs, %i.to
  %i.tq = fsub <4 x float> %i.tn, %i.tp           ; 2 uses
  %i.tr = fcmp uge <4 x float> %i.tq, zeroinitializer ; 2 uses
  %i.ts = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.tq)
  %i.tt = select <4 x i1> %i.tr, <4 x float> %i.ts, <4 x float> splat (float -inf) ; 2 uses
  %i.tu = fneg <4 x float> %i.id
  %i.tv = fsub <4 x float> %i.tu, %i.tt
  %i.tw = fmul <4 x float> %i.fx, %i.tv           ; 3 uses
  %i.tx = and <4 x i1> %i.tr, %i.tl               ; 2 uses
  %i.ty = fmul <4 x float> %i.hs, %i.tw
  %i.tz = fadd <4 x float> %i.ht, %i.ty
  %i.ua = fcmp olt <4 x float> %i.tz, zeroinitializer
  %i.ub = and <4 x i1> %i.ua, %i.tx
  %i.uc = select <4 x i1> %i.ub, <4 x float> %i.tw, <4 x float> splat (float +inf)
  %i.ud = fsub <4 x float> %i.tt, %i.id
  %i.ue = fmul <4 x float> %i.fx, %i.ud           ; 3 uses
  %i.uf = fmul <4 x float> %i.hs, %i.ue
  %i.ug = fadd <4 x float> %i.ht, %i.uf
  %i.uh = fcmp olt <4 x float> %i.ug, zeroinitializer
  %i.ui = and <4 x i1> %i.uh, %i.tx
  %i.uj = select <4 x i1> %i.ui, <4 x float> %i.ue, <4 x float> splat (float -inf)
  %i.uk = bitcast <4 x float> %i.tw to <4 x i32>
  %i.ul = bitcast <4 x float> %i.ue to <4 x i32>
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0359.0 = phi <4 x float> [ %i.uj, %bb.s ], [ splat (float -inf), %bb.r ] ; 3 uses
  %.sroa.0362.0 = phi <4 x float> [ %i.uc, %bb.s ], [ splat (float +inf), %bb.r ] ; 3 uses
  %.sroa.215.0 = phi <4 x i32> [ %i.uk, %bb.s ], [ undef, %bb.r ] ; 2 uses
  %.sroa.228.0 = phi <4 x i32> [ %i.ul, %bb.s ], [ undef, %bb.r ] ; 2 uses
  %i.um = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0362.0, <4 x float> %i.sj)
  %i.un = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.op, <4 x float> %i.um) ; 3 uses
  %i.uo = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0359.0, <4 x float> %i.tj)
  %i.up = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qm, <4 x float> %i.uo) ; 7 uses
  %i.uq = fadd <4 x float> %i.gm, %i.un           ; 2 uses
  %i.ur = fcmp ole <4 x float> %i.fk, %i.uq
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 6 uses
  %i.ut = load float, ptr %i.us, align 16, !noalias !1322 ; 4 uses
  %i.uu = insertelement <4 x float> poison, float %i.ut, i64 0
  %i.uv = shufflevector <4 x float> %i.uu, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.uw = fcmp ole <4 x float> %i.uq, %i.uv
  %i.ux = and <4 x i1> %i.ur, %i.uw
  %i.uy = fcmp une <4 x float> %i.un, splat (float +inf)
  %i.uz = and <4 x i1> %i.uy, %i.ux               ; 2 uses
  %i.va = and <4 x i1> %i.km, %i.uz               ; 6 uses
  %i.vb = fadd <4 x float> %i.gm, %i.up           ; 4 uses
  %i.vc = fcmp ole <4 x float> %i.fk, %i.vb
  %i.vd = fcmp ole <4 x float> %i.vb, %i.uv
  %i.ve = and <4 x i1> %i.vc, %i.vd
  %i.vf = fcmp une <4 x float> %i.up, splat (float -inf)
  %i.vg = and <4 x i1> %i.vf, %i.ve
  %i.vh = and <4 x i1> %i.km, %i.vg               ; 2 uses
  %i.vi = or <4 x i1> %i.va, %i.vh
  %i.vj = bitcast <4 x i1> %i.vi to i4            ; 2 uses
  %i.vk = icmp eq i4 %i.vj, 0
  br i1 %i.vk, label %_ZN6embree4sse220__roundline_internalL19intersectConeSphereILi4ENS0_16Occluded1EpilogMILi4ELb1EEENS0_28RoundLinearCurveIntersector1ILi4EE8ray_tfarINS_4RayKILi1EEEEEEEbRKNS_6vtypesIXT_EE5vboolERKNS_4Vec3INSC_6vfloatEEESK_RKSH_RKT1_RKNS_4Vec4ISH_EEST_ST_ST_RKT0_.exit, label %bb.u, !prof !11

bb.u:                                             ; preds = %bb.t
  %.v = select <4 x i1> %i.va, <4 x float> %i.un, <4 x float> %i.up ; 5 uses
  %i.vl = fcmp une <4 x float> %.v, %i.op
  %i.vm = fcmp une <4 x float> %.v, %i.qm
  %.not1486 = and <4 x i1> %i.vl, %i.vm           ; 5 uses
  %i.vn = fcmp une <4 x float> %.v, %.sroa.0362.0
  %i.vo = fcmp une <4 x float> %.v, %.sroa.0359.0
  %.not1479 = and <4 x i1> %i.vn, %i.vo           ; 4 uses
  %i.vp = select <4 x i1> %i.va, <4 x i32> %.sroa.183.0, <4 x i32> %.sroa.195.0
  %i.vq = bitcast <4 x i32> %i.vp to <4 x float>  ; 4 uses
  %i.vr = select <4 x i1> %i.va, <4 x i32> %.sroa.190.0, <4 x i32> %.sroa.202.0
  %i.vs = bitcast <4 x i32> %i.vr to <4 x float>  ; 3 uses
  %i.vt = fmul <4 x float> %i.fm, %i.vs
  %i.vu = fmul <4 x float> %i.fn, %i.vs
  %i.vv = fmul <4 x float> %i.fg, %i.vs
  %i.vw = fadd <4 x float> %i.hg, %i.vt
  %i.vx = fadd <4 x float> %i.hh, %i.vu
  %i.vy = fadd <4 x float> %i.hi, %i.vv
  %i.vz = fmul <4 x float> %i.hf, %i.vw
  %i.wa = fmul <4 x float> %i.hf, %i.vx
  %i.wb = fmul <4 x float> %i.hf, %i.vy
  %i.wc = fmul <4 x float> %i.gt, %i.vq
  %i.wd = fmul <4 x float> %i.gu, %i.vq
  %i.we = fmul <4 x float> %i.gv, %i.vq
  %i.wf = fsub <4 x float> %i.vz, %i.wc
  %i.wg = fsub <4 x float> %i.wa, %i.wd
  %i.wh = fsub <4 x float> %i.wb, %i.we
  %i.wi = select <4 x i1> %i.va, <4 x i32> %.sroa.215.0, <4 x i32> %.sroa.228.0
  %i.wj = bitcast <4 x i32> %i.wi to <4 x float>  ; 3 uses
  %i.wk = fmul <4 x float> %i.fm, %i.wj
  %i.wl = fmul <4 x float> %i.fn, %i.wj
  %i.wm = fmul <4 x float> %i.fg, %i.wj
  %i.wn = fadd <4 x float> %i.gq, %i.wk
  %i.wo = fadd <4 x float> %i.gr, %i.wl
  %i.wp = fadd <4 x float> %i.gs, %i.wm
  %i.wq = fsub <4 x float> %i.wn, %i.aq
  %i.wr = fsub <4 x float> %i.wo, %i.ar
  %i.ws = fsub <4 x float> %i.wp, %i.as
  %.v1474 = select <4 x i1> %i.va, <4 x float> %i.rj, <4 x float> %i.sl ; 3 uses
  %i.wt = fmul <4 x float> %i.fm, %.v1474
  %i.wu = fmul <4 x float> %i.fn, %.v1474
  %i.wv = fmul <4 x float> %i.fg, %.v1474
  %i.ww = fadd <4 x float> %i.gq, %i.wt
  %i.wx = fadd <4 x float> %i.gr, %i.wu
  %i.wy = fadd <4 x float> %i.gs, %i.wv
  %i.wz = fsub <4 x float> %i.ww, %i.bs
  %i.xa = fsub <4 x float> %i.wx, %i.bt
  %i.xb = fsub <4 x float> %i.wy, %i.bu
  %.v1475 = select <4 x i1> %.not1479, <4 x float> %i.wz, <4 x float> %i.wq
  %.v1476 = select <4 x i1> %.not1479, <4 x float> %i.xa, <4 x float> %i.wr
  %.v1480 = select <4 x i1> %.not1479, <4 x float> %i.xb, <4 x float> %i.ws
  %.v1481 = select <4 x i1> %.not1486, <4 x float> %.v1475, <4 x float> %i.wf
  %.v1482 = select <4 x i1> %.not1486, <4 x float> %.v1476, <4 x float> %i.wg
  %.v1483 = select <4 x i1> %.not1486, <4 x float> %.v1480, <4 x float> %i.wh
  %i.xc = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.hf) ; 3 uses
  %i.xd = fmul <4 x float> %i.hf, %i.xc
  %i.xe = fsub <4 x float> splat (float 1.000000e+00), %i.xd
  %i.xf = fmul <4 x float> %i.xc, %i.xe
  %i.xg = fadd <4 x float> %i.xc, %i.xf           ; 2 uses
  %i.xh = fmul <4 x float> %i.xg, %i.vq
  %i.xi = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.xh, <4 x float> splat (float 1.000000e+00))
  %i.xj = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.xi, <4 x float> zeroinitializer)
  %10 = bitcast <4 x float> %i.xj to <4 x i32>
  %11 = select <4 x i1> %.not1486, <4 x i32> zeroinitializer, <4 x i32> %10
  %12 = select <4 x i1> %.not1486, <4 x i1> %.not1479, <4 x i1> zeroinitializer
  %13 = select <4 x i1> %12, <4 x i32> splat (i32 1065353216), <4 x i32> zeroinitializer
  %14 = or <4 x i32> %11, %13
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.xk = fadd <4 x float> %i.gm, %.v
  store <4 x i32> %14, ptr %8, align 16
  %i.xl = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 4 uses
  store <4 x float> zeroinitializer, ptr %i.xl, align 16
  %i.xm = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 4 uses
  store <4 x float> %i.xk, ptr %i.xm, align 16
  %i.xn = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 4 uses
  store <4 x float> %.v1481, ptr %i.xn, align 16
  %i.xo = getelementptr inbounds nuw i8, ptr %8, i64 64 ; 4 uses
  store <4 x float> %.v1482, ptr %i.xo, align 16
  %i.xp = getelementptr inbounds nuw i8, ptr %8, i64 80 ; 4 uses
  store <4 x float> %.v1483, ptr %i.xp, align 16
  %i.xq = zext i4 %i.vj to i64
  %i.xr = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.xt = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.xu = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.xv = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.xw = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.xx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.xy = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.xz = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ya = getelementptr inbounds nuw i8, ptr %5, i64 28
  %i.yb = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.yc = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.yd = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ye = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.yf = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.yg = getelementptr inbounds nuw i8, ptr %4, i64 40
  br label %bb.w

bb.v:                                             ; preds = %.thread1455, %.thread
  %.2.i29.i1450 = phi i64 [ %i.yu, %.thread ], [ %i.aaj, %.thread1455 ] ; 2 uses
  %i.yh = icmp eq i64 %.2.i29.i1450, 0
  br i1 %i.yh, label %_ZNK6embree4sse216Occluded1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i, label %bb.w, !prof !11

bb.w:                                             ; preds = %bb.v, %bb.u
  %.025.i28.i = phi i64 [ %i.xq, %bb.u ], [ %.2.i29.i1450, %bb.v ] ; 3 uses
  %i.yi = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.025.i28.i) #11, !srcloc !12 ; 10 uses
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.yi
  %i.yk = load i32, ptr %i.yj, align 4            ; 2 uses
  %i.yl = zext i32 %i.yk to i64
  %i.ym = load ptr, ptr %i.g, align 8
  %i.yn = getelementptr inbounds nuw [8 x i8], ptr %i.ym, i64 %i.yl
  %i.yo = load ptr, ptr %i.yn, align 8            ; 5 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %i.yo, i64 52
  %i.yq = load i32, ptr %i.yp, align 4
  %i.yr = load i32, ptr %i.xr, align 4
  %i.ys = and i32 %i.yr, %i.yq
  %i.yt = icmp eq i32 %i.ys, 0
  br i1 %i.yt, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.w
  %i.yu = call noundef i64 asm "btc $1,$0", "=r,r,0,~{flags},~{dirflag},~{fpsr},~{flags}"(i64 %i.yi, i64 %.025.i28.i) #11, !srcloc !15
  br label %bb.v

bb.x:                                             ; preds = %bb.w
  %i.yv = load ptr, ptr %i.xs, align 8
  %i.yw = getelementptr inbounds nuw i8, ptr %i.yv, i64 16
  %i.yx = load ptr, ptr %i.yw, align 8
  %.not1487 = icmp eq ptr %i.yx, null
  br i1 %.not1487, label %bb.y, label %.critedge.i33.i, !prof !14

bb.y:                                             ; preds = %bb.x
  %i.yy = getelementptr inbounds nuw i8, ptr %i.yo, i64 72
  %i.yz = load ptr, ptr %i.yy, align 8
  %.not1488 = icmp eq ptr %i.yz, null
  br i1 %.not1488, label %_ZNK6embree4sse216Occluded1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i, label %.critedge.i33.i, !prof !14

.critedge.i33.i:                                  ; preds = %bb.y, %bb.x
  %i.za = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.yi
  %i.zb = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %i.yi
  %i.zc = load float, ptr %i.za, align 4, !noalias !1323
  %i.zd = load float, ptr %i.zb, align 4, !noalias !1323
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %i.ze = load ptr, ptr %i.xt, align 8            ; 2 uses
  %i.zf = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.yi
  %i.zg = load i32, ptr %i.zf, align 4
  %i.zh = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %i.yi
  %i.zi = load float, ptr %i.zh, align 4, !noalias !1324
  %i.zj = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.yi
  %i.zk = load float, ptr %i.zj, align 4, !noalias !1324
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %i.yi
  %i.zm = load float, ptr %i.zl, align 4, !noalias !1324
  store float %i.zi, ptr %5, align 16
  store float %i.zk, ptr %i.xu, align 4
  store float %i.zm, ptr %i.xv, align 8
  store float %i.zc, ptr %i.xw, align 4
  store float %i.zd, ptr %i.xx, align 16
  store i32 %i.zg, ptr %i.xy, align 4
  store i32 %i.yk, ptr %i.xz, align 8
  %i.zn = load i32, ptr %i.ze, align 4
  store i32 %i.zn, ptr %i.ya, align 4
  %i.zo = getelementptr inbounds nuw i8, ptr %i.ze, i64 4
  %i.zp = load i32, ptr %i.zo, align 4
  store i32 %i.zp, ptr %i.yb, align 16
  %i.zq = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.yi
  %i.zr = load float, ptr %i.zq, align 4
  store float %i.zr, ptr %i.us, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i32 -1, ptr %i.a, align 4
  store ptr %i.a, ptr %4, align 8
  %i.zs = getelementptr inbounds nuw i8, ptr %i.yo, i64 24
  %i.zt = load ptr, ptr %i.zs, align 8
  store ptr %i.zt, ptr %i.yc, align 8
  %i.zu = load ptr, ptr %i.xt, align 8
  store ptr %i.zu, ptr %i.yd, align 8
  store ptr %1, ptr %i.ye, align 8
  store ptr %5, ptr %i.yf, align 8
  store i32 1, ptr %i.yg, align 8
  %i.zv = getelementptr inbounds nuw i8, ptr %i.yo, i64 72
  %i.zw = load ptr, ptr %i.zv, align 8            ; 2 uses
  %.not.i.i34.i = icmp eq ptr %i.zw, null
  br i1 %.not.i.i34.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge.i33.i
  call void %i.zw(ptr noundef nonnull %4), !inline_history !1298
  %i.zx = load ptr, ptr %4, align 8
  %i.zy = load i32, ptr %i.zx, align 4
  %i.zz = icmp eq i32 %i.zy, 0
  br i1 %i.zz, label %.thread1455, label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge.i33.i
  %i.aaa = load ptr, ptr %i.xs, align 8           ; 2 uses
  %i.aab = getelementptr inbounds nuw i8, ptr %i.aaa, i64 16
  %i.aac = load ptr, ptr %i.aab, align 8          ; 2 uses
  %.not12.i.i35.i = icmp eq ptr %i.aac, null
  br i1 %.not12.i.i35.i, label %.thread1523, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.aad = load i32, ptr %i.aaa, align 8
  %i.aae = and i32 %i.aad, 2
  %.not1489 = icmp eq i32 %i.aae, 0
  br i1 %.not1489, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.aaf = getelementptr inbounds nuw i8, ptr %i.yo, i64 60
  %i.aag = load i32, ptr %i.aaf, align 4
  %i.aah = and i32 %i.aag, 4194304
  %.not1490 = icmp eq i32 %i.aah, 0
  br i1 %.not1490, label %.thread1523, label %bb.ad

bb.ad:                                            ; preds = %bb.ab, %bb.ac
  call void %i.aac(ptr noundef nonnull %4), !inline_history !1298
  %.pre = load ptr, ptr %4, align 8
  %.pre1512 = load i32, ptr %.pre, align 4
  %i.aai = icmp eq i32 %.pre1512, 0
  br i1 %i.aai, label %.thread1455, label %.thread1523

.thread1455:                                      ; preds = %bb.ad, %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  store float %i.ut, ptr %i.us, align 16
  %i.aaj = call noundef i64 asm "btc $1,$0", "=r,r,0,~{flags},~{dirflag},~{fpsr},~{flags}"(i64 %i.yi, i64 %.025.i28.i) #11, !srcloc !15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.v

.thread1523:                                      ; preds = %bb.ac, %bb.ad, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %.pre1513 = load float, ptr %i.us, align 16, !noalias !1325
  br label %_ZNK6embree4sse216Occluded1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i

_ZNK6embree4sse216Occluded1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i: ; preds = %bb.y, %bb.v, %.thread1523
  %i.aak = phi float [ %.pre1513, %.thread1523 ], [ %i.ut, %bb.v ], [ %i.ut, %bb.y ] ; 2 uses
  %.3.i32.i = phi i1 [ true, %.thread1523 ], [ true, %bb.y ], [ false, %bb.v ] ; 2 uses
  %i.aal = insertelement <4 x float> poison, float %i.aak, i64 0
  %i.aam = shufflevector <4 x float> %i.aal, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aan = fcmp ole <4 x float> %i.vb, %i.aam
  %i.aao = and <4 x i1> %i.vh, %i.aan
  %i.aap = and <4 x i1> %i.uz, %i.aao
  %i.aaq = bitcast <4 x i1> %i.aap to i4          ; 2 uses
  %i.aar = icmp eq i4 %i.aaq, 0
  br i1 %i.aar, label %_ZNK6embree4sse216Occluded1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i, label %bb.ae, !prof !11

bb.ae:                                            ; preds = %_ZNK6embree4sse216Occluded1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i
  %i.aas = fcmp une <4 x float> %i.up, %i.op
  %i.aat = fcmp une <4 x float> %i.up, %i.qm
  %.not1502 = and <4 x i1> %i.aas, %i.aat         ; 5 uses
  %i.aau = fcmp une <4 x float> %i.up, %.sroa.0362.0
  %i.aav = fcmp une <4 x float> %i.up, %.sroa.0359.0
  %.not1495 = and <4 x i1> %i.aau, %i.aav         ; 4 uses
  %i.aaw = load <4 x i32>, ptr @_ZN6embree16mm_lookupmask_psE, align 16 ; 5 uses
  %i.aax = and <4 x i32> %i.aaw, %.sroa.183.0
  %i.aay = xor <4 x i32> %i.aaw, splat (i32 -1)   ; 4 uses
  %i.aaz = and <4 x i32> %.sroa.195.0, %i.aay
  %i.aba = or <4 x i32> %i.aax, %i.aaz
  %i.abb = bitcast <4 x i32> %i.aba to <4 x float> ; 4 uses
  %i.abc = and <4 x i32> %i.aaw, %.sroa.190.0
  %i.abd = and <4 x i32> %.sroa.202.0, %i.aay
  %i.abe = or <4 x i32> %i.abc, %i.abd
  %i.abf = bitcast <4 x i32> %i.abe to <4 x float> ; 3 uses
  %i.abg = fmul <4 x float> %i.fm, %i.abf
  %i.abh = fmul <4 x float> %i.fn, %i.abf
  %i.abi = fmul <4 x float> %i.fg, %i.abf
  %i.abj = fadd <4 x float> %i.hg, %i.abg
  %i.abk = fadd <4 x float> %i.hh, %i.abh
  %i.abl = fadd <4 x float> %i.hi, %i.abi
  %i.abm = fmul <4 x float> %i.hf, %i.abj
  %i.abn = fmul <4 x float> %i.hf, %i.abk
  %i.abo = fmul <4 x float> %i.hf, %i.abl
  %i.abp = fmul <4 x float> %i.gt, %i.abb
  %i.abq = fmul <4 x float> %i.gu, %i.abb
  %i.abr = fmul <4 x float> %i.gv, %i.abb
  %i.abs = fsub <4 x float> %i.abm, %i.abp
  %i.abt = fsub <4 x float> %i.abn, %i.abq
  %i.abu = fsub <4 x float> %i.abo, %i.abr
  %i.abv = and <4 x i32> %i.aaw, %.sroa.215.0
  %i.abw = and <4 x i32> %.sroa.228.0, %i.aay
  %i.abx = or <4 x i32> %i.abv, %i.abw
  %i.aby = bitcast <4 x i32> %i.abx to <4 x float> ; 3 uses
  %i.abz = fmul <4 x float> %i.fm, %i.aby
  %i.aca = fmul <4 x float> %i.fn, %i.aby
  %i.acb = fmul <4 x float> %i.fg, %i.aby
  %i.acc = fadd <4 x float> %i.gq, %i.abz
  %i.acd = fadd <4 x float> %i.gr, %i.aca
  %i.ace = fadd <4 x float> %i.gs, %i.acb
  %i.acf = fsub <4 x float> %i.acc, %i.aq
  %i.acg = fsub <4 x float> %i.acd, %i.ar
  %i.ach = fsub <4 x float> %i.ace, %i.as
  %i.aci = and <4 x i32> %i.aaw, %i.si
  %i.acj = and <4 x i32> %i.aay, %i.ti
  %i.ack = or <4 x i32> %i.aci, %i.acj
  %i.acl = bitcast <4 x i32> %i.ack to <4 x float> ; 3 uses
  %i.acm = fmul <4 x float> %i.fm, %i.acl
  %i.acn = fmul <4 x float> %i.fn, %i.acl
  %i.aco = fmul <4 x float> %i.fg, %i.acl
  %i.acp = fadd <4 x float> %i.gq, %i.acm
  %i.acq = fadd <4 x float> %i.gr, %i.acn
  %i.acr = fadd <4 x float> %i.gs, %i.aco
  %i.acs = fsub <4 x float> %i.acp, %i.bs
  %i.act = fsub <4 x float> %i.acq, %i.bt
  %i.acu = fsub <4 x float> %i.acr, %i.bu
  %.v1491 = select <4 x i1> %.not1495, <4 x float> %i.acs, <4 x float> %i.acf
  %.v1492 = select <4 x i1> %.not1495, <4 x float> %i.act, <4 x float> %i.acg
  %.v1496 = select <4 x i1> %.not1495, <4 x float> %i.acu, <4 x float> %i.ach
  %.v1497 = select <4 x i1> %.not1502, <4 x float> %.v1491, <4 x float> %i.abs
  %.v1498 = select <4 x i1> %.not1502, <4 x float> %.v1492, <4 x float> %i.abt
  %.v1499 = select <4 x i1> %.not1502, <4 x float> %.v1496, <4 x float> %i.abu
  %i.acv = fmul <4 x float> %i.xg, %i.abb
  %i.acw = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.acv, <4 x float> splat (float 1.000000e+00))
  %i.acx = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.acw, <4 x float> zeroinitializer)
  %15 = bitcast <4 x float> %i.acx to <4 x i32>
  %16 = select <4 x i1> %.not1502, <4 x i32> zeroinitializer, <4 x i32> %15
  %17 = select <4 x i1> %.not1502, <4 x i1> %.not1495, <4 x i1> zeroinitializer
  %18 = select <4 x i1> %17, <4 x i32> splat (i32 1065353216), <4 x i32> zeroinitializer
  %19 = or <4 x i32> %16, %18
  store <4 x i32> %19, ptr %8, align 16
  store <4 x float> zeroinitializer, ptr %i.xl, align 16
  store <4 x float> %i.vb, ptr %i.xm, align 16
  store <4 x float> %.v1497, ptr %i.xn, align 16
  store <4 x float> %.v1498, ptr %i.xo, align 16
  store <4 x float> %.v1499, ptr %i.xp, align 16
  %i.acy = load ptr, ptr %2, align 8
  %i.acz = zext i4 %i.aaq to i64
  %i.ada = getelementptr inbounds nuw i8, ptr %i.acy, i64 488
  %i.adb = getelementptr inbounds nuw i8, ptr %7, i64 4
  %i.adc = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.add = getelementptr inbounds nuw i8, ptr %7, i64 12
  %i.ade = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.adf = getelementptr inbounds nuw i8, ptr %7, i64 20
  %i.adg = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.adh = getelementptr inbounds nuw i8, ptr %7, i64 28
  %i.adi = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.adj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.adk = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.adl = getelementptr inbounds nuw i8, ptr %6, i64 24
  %i.adm = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.adn = getelementptr inbounds nuw i8, ptr %6, i64 40
  br label %bb.ag

bb.af:                                            ; preds = %.thread1469, %.thread1460
  %.2.i.i1464 = phi i64 [ %i.aeb, %.thread1460 ], [ %i.afq, %.thread1469 ] ; 2 uses
  %i.ado = icmp eq i64 %.2.i.i1464, 0
  br i1 %i.ado, label %_ZNK6embree4sse216Occluded1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i, label %bb.ag, !prof !11

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %.025.i.i = phi i64 [ %i.acz, %bb.ae ], [ %.2.i.i1464, %bb.af ] ; 3 uses
  %i.adp = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.025.i.i) #11, !srcloc !12 ; 10 uses
  %i.adq = getelementptr inbounds nuw [4 x i8], ptr %9, i64 %i.adp
  %i.adr = load i32, ptr %i.adq, align 4          ; 2 uses
  %i.ads = zext i32 %i.adr to i64
  %i.adt = load ptr, ptr %i.ada, align 8
  %i.adu = getelementptr inbounds nuw [8 x i8], ptr %i.adt, i64 %i.ads
  %i.adv = load ptr, ptr %i.adu, align 8          ; 5 uses
  %i.adw = getelementptr inbounds nuw i8, ptr %i.adv, i64 52
  %i.adx = load i32, ptr %i.adw, align 4
  %i.ady = load i32, ptr %i.xr, align 4
  %i.adz = and i32 %i.ady, %i.adx
  %i.aea = icmp eq i32 %i.adz, 0
  br i1 %i.aea, label %.thread1460, label %bb.ah

.thread1460:                                      ; preds = %bb.ag
  %i.aeb = call noundef i64 asm "btc $1,$0", "=r,r,0,~{flags},~{dirflag},~{fpsr},~{flags}"(i64 %i.adp, i64 %.025.i.i) #11, !srcloc !15
  br label %bb.af

bb.ah:                                            ; preds = %bb.ag
  %i.aec = load ptr, ptr %i.xs, align 8
  %i.aed = getelementptr inbounds nuw i8, ptr %i.aec, i64 16
  %i.aee = load ptr, ptr %i.aed, align 8
  %.not1503 = icmp eq ptr %i.aee, null
  br i1 %.not1503, label %bb.ai, label %.critedge.i.i, !prof !14

bb.ai:                                            ; preds = %bb.ah
  %i.aef = getelementptr inbounds nuw i8, ptr %i.adv, i64 72
  %i.aeg = load ptr, ptr %i.aef, align 8
  %.not1504 = icmp eq ptr %i.aeg, null
  br i1 %.not1504, label %_ZNK6embree4sse216Occluded1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i, label %.critedge.i.i, !prof !14

.critedge.i.i:                                    ; preds = %bb.ai, %bb.ah
  %i.aeh = getelementptr inbounds nuw [4 x i8], ptr %8, i64 %i.adp
  %i.aei = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %i.adp
  %i.aej = load float, ptr %i.aeh, align 4, !noalias !1326
  %i.aek = load float, ptr %i.aei, align 4, !noalias !1326
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.ael = load ptr, ptr %i.xt, align 8           ; 2 uses
  %i.aem = getelementptr inbounds nuw [4 x i8], ptr %i.em, i64 %i.adp
  %i.aen = load i32, ptr %i.aem, align 4
  %i.aeo = getelementptr inbounds nuw [4 x i8], ptr %i.xn, i64 %i.adp
  %i.aep = load float, ptr %i.aeo, align 4, !noalias !1327
  %i.aeq = getelementptr inbounds nuw [4 x i8], ptr %i.xo, i64 %i.adp
  %i.aer = load float, ptr %i.aeq, align 4, !noalias !1327
  %i.aes = getelementptr inbounds nuw [4 x i8], ptr %i.xp, i64 %i.adp
  %i.aet = load float, ptr %i.aes, align 4, !noalias !1327
  store float %i.aep, ptr %7, align 16
  store float %i.aer, ptr %i.adb, align 4
  store float %i.aet, ptr %i.adc, align 8
  store float %i.aej, ptr %i.add, align 4
  store float %i.aek, ptr %i.ade, align 16
  store i32 %i.aen, ptr %i.adf, align 4
  store i32 %i.adr, ptr %i.adg, align 8
  %i.aeu = load i32, ptr %i.ael, align 4
  store i32 %i.aeu, ptr %i.adh, align 4
  %i.aev = getelementptr inbounds nuw i8, ptr %i.ael, i64 4
  %i.aew = load i32, ptr %i.aev, align 4
  store i32 %i.aew, ptr %i.adi, align 16
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %i.xm, i64 %i.adp
  %i.aey = load float, ptr %i.aex, align 4
  store float %i.aey, ptr %i.us, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #10
  store i32 -1, ptr %i.b, align 4
  store ptr %i.b, ptr %6, align 8
  %i.aez = getelementptr inbounds nuw i8, ptr %i.adv, i64 24
  %i.afa = load ptr, ptr %i.aez, align 8
  store ptr %i.afa, ptr %i.adj, align 8
  %i.afb = load ptr, ptr %i.xt, align 8
  store ptr %i.afb, ptr %i.adk, align 8
  store ptr %1, ptr %i.adl, align 8
  store ptr %7, ptr %i.adm, align 8
  store i32 1, ptr %i.adn, align 8
  %i.afc = getelementptr inbounds nuw i8, ptr %i.adv, i64 72
  %i.afd = load ptr, ptr %i.afc, align 8          ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.afd, null
  br i1 %.not.i.i.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %.critedge.i.i
  call void %i.afd(ptr noundef nonnull %6), !inline_history !1298
  %i.afe = load ptr, ptr %6, align 8
  %i.aff = load i32, ptr %i.afe, align 4
  %i.afg = icmp eq i32 %i.aff, 0
  br i1 %i.afg, label %.thread1469, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %.critedge.i.i
  %i.afh = load ptr, ptr %i.xs, align 8           ; 2 uses
  %i.afi = getelementptr inbounds nuw i8, ptr %i.afh, i64 16
  %i.afj = load ptr, ptr %i.afi, align 8          ; 2 uses
  %.not12.i.i.i = icmp eq ptr %i.afj, null
  br i1 %.not12.i.i.i, label %.thread1524, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.afk = load i32, ptr %i.afh, align 8
  %i.afl = and i32 %i.afk, 2
  %.not1505 = icmp eq i32 %i.afl, 0
  br i1 %.not1505, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.afm = getelementptr inbounds nuw i8, ptr %i.adv, i64 60
  %i.afn = load i32, ptr %i.afm, align 4
  %i.afo = and i32 %i.afn, 4194304
  %.not1506 = icmp eq i32 %i.afo, 0
  br i1 %.not1506, label %.thread1524, label %bb.an

bb.an:                                            ; preds = %bb.al, %bb.am
  call void %i.afj(ptr noundef nonnull %6), !inline_history !1298
  %.pre1514 = load ptr, ptr %6, align 8
  %.pre1515 = load i32, ptr %.pre1514, align 4
  %i.afp = icmp eq i32 %.pre1515, 0
  br i1 %i.afp, label %.thread1469, label %.thread1524

.thread1469:                                      ; preds = %bb.an, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  store float %i.aak, ptr %i.us, align 16
  %i.afq = call noundef i64 asm "btc $1,$0", "=r,r,0,~{flags},~{dirflag},~{fpsr},~{flags}"(i64 %i.adp, i64 %.025.i.i) #11, !srcloc !15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.af

.thread1524:                                      ; preds = %bb.am, %bb.an, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZNK6embree4sse216Occluded1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i

_ZNK6embree4sse216Occluded1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i: ; preds = %bb.af, %bb.ai, %.thread1524, %_ZNK6embree4sse216Occluded1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i
  %.0.i = phi i1 [ %.3.i32.i, %_ZNK6embree4sse216Occluded1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit40.i ], [ true, %.thread1524 ], [ true, %bb.ai ], [ %.3.i32.i, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %_ZN6embree4sse220__roundline_internalL19intersectConeSphereILi4ENS0_16Occluded1EpilogMILi4ELb1EEENS0_28RoundLinearCurveIntersector1ILi4EE8ray_tfarINS_4RayKILi1EEEEEEEbRKNS_6vtypesIXT_EE5vboolERKNS_4Vec3INSC_6vfloatEEESK_RKSH_RKT1_RKNS_4Vec4ISH_EEST_ST_ST_RKT0_.exit

_ZN6embree4sse220__roundline_internalL19intersectConeSphereILi4ENS0_16Occluded1EpilogMILi4ELb1EEENS0_28RoundLinearCurveIntersector1ILi4EE8ray_tfarINS_4RayKILi1EEEEEEEbRKNS_6vtypesIXT_EE5vboolERKNS_4Vec3INSC_6vfloatEEESK_RKSH_RKT1_RKNS_4Vec4ISH_EEST_ST_ST_RKT0_.exit: ; preds = %bb.t, %_ZNK6embree4sse216Occluded1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i, %_ZN6embree4sse220__roundline_internal23ConeGeometryIntersectorILi4EE13intersectConeERNS_11vboolf_implILi4EEERNS_11vfloat_implILi4EEES9_.exit.i
  %.2.i = phi i1 [ false, %_ZN6embree4sse220__roundline_internal23ConeGeometryIntersectorILi4EE13intersectConeERNS_11vboolf_implILi4EEERNS_11vfloat_implILi4EEES9_.exit.i ], [ %.0.i, %_ZNK6embree4sse216Occluded1EpilogMILi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i ], [ false, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10
  ret i1 %.2.i
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse230RoundLinearCurveMiIntersectorKILi4ELi4ELb1EE9intersectERKNS0_21CurvePrecalculationsKILi4EEERNS_7RayHitKILi4EEEmPNS_15RayQueryContextERKNS_6LineMiILi4EEE(ptr noundef nonnull align 16 dereferenceable(208) %0, ptr noundef nonnull align 16 dereferenceable(336) %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull align 16 dereferenceable(48) %4) #4 comdat align 2 {
bb.a:
  %5 = alloca %struct.RTCFilterFunctionNArguments, align 8 ; 10 uses
  %6 = alloca %"struct.embree::vint_impl", align 16 ; 6 uses
  %7 = alloca %"struct.embree::vboolf_impl", align 16 ; 8 uses
  %8 = alloca %"struct.embree::HitK.36", align 16 ; 12 uses
  %9 = alloca %struct.RTCFilterFunctionNArguments, align 8 ; 10 uses
  %10 = alloca %"struct.embree::vint_impl", align 16 ; 6 uses
  %11 = alloca %"struct.embree::vboolf_impl", align 16 ; 8 uses
  %12 = alloca %"struct.embree::HitK.36", align 16 ; 12 uses
  %13 = alloca %"struct.embree::sse2::RoundLineIntersectorHitM", align 16 ; 13 uses
  %14 = alloca %"struct.embree::vuint_impl", align 16 ; 5 uses
  %i.a = load ptr, ptr %3, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = zext i32 %i.c to i64
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 488 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.d
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.j = load i32, ptr %i.i, align 16             ; 4 uses
  %i.k = zext i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 144
  %i.m = load ptr, ptr %i.l, align 8              ; 16 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 160
  %i.o = load i64, ptr %i.n, align 8              ; 16 uses
  %i.p = mul i64 %i.o, %i.k
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 %i.p
  %i.r = load <4 x float>, ptr %i.q, align 1, !noalias !1481 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.t = load i32, ptr %i.s, align 4              ; 4 uses
end_hunk_1
begin_hunk_2_@_ZN6embree4sse230RoundLinearCurveMiIntersectorKILi4ELi4ELb1EE9intersectERKNS0_21CurvePrecalculationsKILi4EEERNS_7RayHitKILi4EEEmPNS_15RayQueryContextERKNS_6LineMiILi4EEE:bb.a
  %i.ou = and <4 x i1> %i.oc, %i.ot
  %.demorgan = or <4 x i1> %i.nm, %i.ou
  %i.ov = select <4 x i1> %.demorgan, <4 x float> splat (float +inf), <4 x float> %.sroa.0727.0 ; 3 uses
  %i.ow = fsub <4 x float> %i.md, %i.ao           ; 3 uses
  %i.ox = fsub <4 x float> %i.me, %i.ap           ; 3 uses
  %i.oy = fsub <4 x float> %i.mf, %i.aq           ; 3 uses
  %i.oz = fmul <4 x float> %i.kx, %i.oy
  %i.pa = fmul <4 x float> %i.kw, %i.ox
  %i.pb = fadd <4 x float> %i.pa, %i.oz
  %i.pc = fmul <4 x float> %i.kv, %i.ow
  %i.pd = fadd <4 x float> %i.pc, %i.pb           ; 5 uses
  %i.pe = fcmp ugt <4 x float> %i.pd, %i.mo
  %i.pf = fcmp olt <4 x float> %i.pd, %i.mq
  %i.pg = and <4 x i1> %i.pe, %i.pf
  %i.ph = fmul <4 x float> %i.oy, %i.oy
  %i.pi = fmul <4 x float> %i.ox, %i.ox
  %i.pj = fadd <4 x float> %i.pi, %i.ph
  %i.pk = fmul <4 x float> %i.ow, %i.ow
  %i.pl = fadd <4 x float> %i.pk, %i.pj
  %i.pm = fmul <4 x float> %i.lg, %i.pl
  %i.pn = fmul <4 x float> %i.pd, %i.pd
  %i.po = fsub <4 x float> %i.pm, %i.pn
  %i.pp = fmul <4 x float> %i.nh, %i.pd
  %i.pq = fadd <4 x float> %i.ng, %i.pp
  %i.pr = fcmp olt <4 x float> %i.po, %i.pq
  %i.ps = and <4 x i1> %i.pg, %i.pr
  %i.pt = and <4 x i1> %i.mu, %i.ps
  %i.pu = fsub <4 x float> %i.md, %i.bq           ; 3 uses
  %i.pv = fsub <4 x float> %i.me, %i.br           ; 3 uses
  %i.pw = fsub <4 x float> %i.mf, %i.bs           ; 3 uses
  %i.px = fmul <4 x float> %i.lj, %i.pw
  %i.py = fmul <4 x float> %i.li, %i.pv
  %i.pz = fadd <4 x float> %i.py, %i.px
  %i.qa = fmul <4 x float> %i.lh, %i.pu
  %i.qb = fadd <4 x float> %i.qa, %i.pz           ; 5 uses
  %i.qc = fcmp ugt <4 x float> %i.qb, %i.nw
  %i.qd = fcmp olt <4 x float> %i.qb, %i.ny
  %i.qe = and <4 x i1> %i.qc, %i.qd
  %i.qf = fmul <4 x float> %i.pw, %i.pw
  %i.qg = fmul <4 x float> %i.pv, %i.pv
  %i.qh = fadd <4 x float> %i.qg, %i.qf
  %i.qi = fmul <4 x float> %i.pu, %i.pu
  %i.qj = fadd <4 x float> %i.qi, %i.qh
  %i.qk = fmul <4 x float> %i.lt, %i.qj
  %i.ql = fmul <4 x float> %i.qb, %i.qb
  %i.qm = fsub <4 x float> %i.qk, %i.ql
  %i.qn = fmul <4 x float> %i.op, %i.qb
  %i.qo = fadd <4 x float> %i.oo, %i.qn
  %i.qp = fcmp olt <4 x float> %i.qm, %i.qo
  %i.qq = and <4 x i1> %i.qe, %i.qp
  %i.qr = and <4 x i1> %i.oc, %i.qq
  %.demorgan1708 = or <4 x i1> %i.pt, %i.qr
  %i.qs = select <4 x i1> %.demorgan1708, <4 x float> splat (float -inf), <4 x float> %.sroa.0720.0 ; 3 uses
  %i.qt = fsub <4 x float> %i.gw, %i.bq           ; 3 uses
  %i.qu = fsub <4 x float> %i.gx, %i.br           ; 3 uses
  %i.qv = fsub <4 x float> %i.gy, %i.bs           ; 3 uses
  %i.qw = fmul <4 x float> %i.fr, %i.qv
  %i.qx = fmul <4 x float> %i.fm, %i.qu
  %i.qy = fadd <4 x float> %i.qx, %i.qw
  %i.qz = fmul <4 x float> %i.fh, %i.qt
  %i.ra = fadd <4 x float> %i.qz, %i.qy           ; 4 uses
  %i.rb = fmul <4 x float> %i.ra, %i.ra
  %i.rc = fmul <4 x float> %i.qv, %i.qv
  %i.rd = fmul <4 x float> %i.qu, %i.qu
  %i.re = fadd <4 x float> %i.rd, %i.rc
  %i.rf = fmul <4 x float> %i.qt, %i.qt
  %i.rg = fadd <4 x float> %i.rf, %i.re
  %i.rh = fsub <4 x float> %i.rg, %i.lp
  %i.ri = fmul <4 x float> %i.fy, %i.rh
  %i.rj = fsub <4 x float> %i.rb, %i.ri           ; 2 uses
  %i.rk = fcmp uge <4 x float> %i.rj, zeroinitializer ; 3 uses
  %i.rl = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.rj)
  %i.rm = select <4 x i1> %i.rk, <4 x float> %i.rl, <4 x float> splat (float -inf) ; 2 uses
  %i.rn = fneg <4 x float> %i.ra
  %i.ro = fsub <4 x float> %i.rn, %i.rm
  %i.rp = fmul <4 x float> %i.gd, %i.ro           ; 7 uses
  %i.rq = fmul <4 x float> %i.fh, %i.rp
  %i.rr = fmul <4 x float> %i.fm, %i.rp
  %i.rs = fmul <4 x float> %i.fr, %i.rp
  %i.rt = fadd <4 x float> %i.gw, %i.rq
  %i.ru = fadd <4 x float> %i.gx, %i.rr
  %i.rv = fadd <4 x float> %i.gy, %i.rs
  %i.rw = fmul <4 x float> %i.hy, %i.rp
  %i.rx = fadd <4 x float> %i.hz, %i.rw
  %i.ry = fcmp ugt <4 x float> %i.rx, %i.hl
  %i.rz = fsub <4 x float> %i.rt, %i.bq
  %i.sa = fsub <4 x float> %i.ru, %i.br
  %i.sb = fsub <4 x float> %i.rv, %i.bs
  %i.sc = fmul <4 x float> %i.lj, %i.sb
  %i.sd = fmul <4 x float> %i.li, %i.sa
  %i.se = fadd <4 x float> %i.sd, %i.sc
  %i.sf = fmul <4 x float> %i.lh, %i.rz
  %i.sg = fadd <4 x float> %i.sf, %i.se
  %i.sh = fcmp ugt <4 x float> %i.sg, %i.nv
  %i.si = and <4 x i1> %i.nz, %i.ks
  %i.sj = and <4 x i1> %i.ob, %i.si               ; 2 uses
  %i.sk = and <4 x i1> %i.sj, %i.sh
  %i.sl = xor <4 x i1> %i.sk, splat (i1 true)
  %i.sm = and <4 x i1> %i.ry, %i.sl
  %i.sn = and <4 x i1> %i.rk, %i.sm
  %i.so = bitcast <4 x float> %i.rp to <4 x i32>
  %i.sp = select <4 x i1> %i.sn, <4 x float> %i.rp, <4 x float> splat (float +inf)
  %i.sq = fsub <4 x float> %i.rm, %i.ra
  %i.sr = fmul <4 x float> %i.gd, %i.sq           ; 7 uses
  %i.ss = fmul <4 x float> %i.fh, %i.sr
  %i.st = fmul <4 x float> %i.fm, %i.sr
  %i.su = fmul <4 x float> %i.fr, %i.sr
  %i.sv = fadd <4 x float> %i.gw, %i.ss
  %i.sw = fadd <4 x float> %i.gx, %i.st
  %i.sx = fadd <4 x float> %i.gy, %i.su
  %i.sy = fmul <4 x float> %i.hy, %i.sr
  %i.sz = fadd <4 x float> %i.hz, %i.sy
  %i.ta = fcmp ugt <4 x float> %i.sz, %i.hl
  %i.tb = fsub <4 x float> %i.sv, %i.bq
  %i.tc = fsub <4 x float> %i.sw, %i.br
  %i.td = fsub <4 x float> %i.sx, %i.bs
  %i.te = fmul <4 x float> %i.lj, %i.td
  %i.tf = fmul <4 x float> %i.li, %i.tc
  %i.tg = fadd <4 x float> %i.tf, %i.te
  %i.th = fmul <4 x float> %i.lh, %i.tb
  %i.ti = fadd <4 x float> %i.th, %i.tg
  %i.tj = fcmp ugt <4 x float> %i.ti, %i.nv
  %i.tk = and <4 x i1> %i.sj, %i.tj
  %i.tl = xor <4 x i1> %i.tk, splat (i1 true)
  %i.tm = and <4 x i1> %i.ta, %i.tl
  %i.tn = and <4 x i1> %i.rk, %i.tm
  %i.to = bitcast <4 x float> %i.sr to <4 x i32>
  %i.tp = select <4 x i1> %i.tn, <4 x float> %i.sr, <4 x float> splat (float -inf)
  %i.tq = fcmp oeq <4 x float> %i.cy, splat (float +inf)
  %i.tr = and <4 x i1> %i.tq, %i.ks               ; 2 uses
  %i.ts = bitcast <4 x i1> %i.tr to i4
  %.not = icmp eq i4 %i.ts, 0
  br i1 %.not, label %bb.t, label %bb.s, !prof !14

bb.s:                                             ; preds = %bb.r
  %i.tt = fmul <4 x float> %i.ij, %i.ij
  %i.tu = fsub <4 x float> %i.ie, %i.hh
  %i.tv = fmul <4 x float> %i.fy, %i.tu
  %i.tw = fsub <4 x float> %i.tt, %i.tv           ; 2 uses
  %i.tx = fcmp uge <4 x float> %i.tw, zeroinitializer ; 2 uses
  %i.ty = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.tw)
  %i.tz = select <4 x i1> %i.tx, <4 x float> %i.ty, <4 x float> splat (float -inf) ; 2 uses
  %i.ua = fneg <4 x float> %i.ij
  %i.ub = fsub <4 x float> %i.ua, %i.tz
  %i.uc = fmul <4 x float> %i.gd, %i.ub           ; 3 uses
  %i.ud = and <4 x i1> %i.tx, %i.tr               ; 2 uses
  %i.ue = fmul <4 x float> %i.hy, %i.uc
  %i.uf = fadd <4 x float> %i.hz, %i.ue
  %i.ug = fcmp olt <4 x float> %i.uf, zeroinitializer
  %i.uh = and <4 x i1> %i.ug, %i.ud
  %i.ui = select <4 x i1> %i.uh, <4 x float> %i.uc, <4 x float> splat (float +inf)
  %i.uj = fsub <4 x float> %i.tz, %i.ij
  %i.uk = fmul <4 x float> %i.gd, %i.uj           ; 3 uses
  %i.ul = fmul <4 x float> %i.hy, %i.uk
  %i.um = fadd <4 x float> %i.hz, %i.ul
  %i.un = fcmp olt <4 x float> %i.um, zeroinitializer
  %i.uo = and <4 x i1> %i.un, %i.ud
  %i.up = select <4 x i1> %i.uo, <4 x float> %i.uk, <4 x float> splat (float -inf)
  %i.uq = bitcast <4 x float> %i.uc to <4 x i32>
  %i.ur = bitcast <4 x float> %i.uk to <4 x i32>
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0427.0 = phi <4 x float> [ %i.ui, %bb.s ], [ splat (float +inf), %bb.r ] ; 3 uses
  %.sroa.0424.0 = phi <4 x float> [ %i.up, %bb.s ], [ splat (float -inf), %bb.r ] ; 3 uses
  %.sroa.215.0 = phi <4 x i32> [ %i.uq, %bb.s ], [ undef, %bb.r ] ; 2 uses
  %.sroa.228.0 = phi <4 x i32> [ %i.ur, %bb.s ], [ undef, %bb.r ] ; 2 uses
  %i.us = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0427.0, <4 x float> %i.sp)
  %i.ut = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ov, <4 x float> %i.us) ; 3 uses
  %i.uu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0424.0, <4 x float> %i.tp)
  %i.uv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qs, <4 x float> %i.uu) ; 7 uses
  %i.uw = fadd <4 x float> %i.gs, %i.ut           ; 2 uses
  %i.ux = fcmp ole <4 x float> %i.fw, %i.uw
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %2 ; 12 uses
  %i.va = load float, ptr %i.uz, align 4, !noalias !1498
  %i.vb = insertelement <4 x float> poison, float %i.va, i64 0
  %i.vc = shufflevector <4 x float> %i.vb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vd = fcmp ole <4 x float> %i.uw, %i.vc
  %i.ve = and <4 x i1> %i.ux, %i.vd
  %i.vf = fcmp une <4 x float> %i.ut, splat (float +inf)
  %i.vg = and <4 x i1> %i.vf, %i.ve               ; 2 uses
  %i.vh = and <4 x i1> %i.ks, %i.vg               ; 6 uses
  %i.vi = fadd <4 x float> %i.gs, %i.uv           ; 7 uses
  %i.vj = fcmp ole <4 x float> %i.fw, %i.vi
  %i.vk = fcmp ole <4 x float> %i.vi, %i.vc
  %i.vl = and <4 x i1> %i.vj, %i.vk
  %i.vm = fcmp une <4 x float> %i.uv, splat (float -inf)
  %i.vn = and <4 x i1> %i.vm, %i.vl
  %i.vo = and <4 x i1> %i.ks, %i.vn               ; 2 uses
  %i.vp = or <4 x i1> %i.vh, %i.vo                ; 5 uses
  %i.vq = bitcast <4 x i1> %i.vp to i4
  %i.vr = icmp eq i4 %i.vq, 0
  br i1 %i.vr, label %_ZN6embree4sse220__roundline_internalL19intersectConeSphereILi4ENS0_18Intersect1KEpilogMILi4ELi4ELb1EEENS0_28RoundLinearCurveIntersectorKILi4ELi4EE8ray_tfarEEEbRKNS_6vtypesIXT_EE5vboolERKNS_4Vec3INS9_6vfloatEEESH_RKSE_RKT1_RKNS_4Vec4ISE_EESQ_SQ_SQ_RKT0_.exit, label %bb.u, !prof !11

bb.u:                                             ; preds = %bb.t
  %i.vs = sext <4 x i1> %i.vp to <4 x i32>
  %.v = select <4 x i1> %i.vh, <4 x float> %i.ut, <4 x float> %i.uv ; 5 uses
  %i.vt = fcmp une <4 x float> %.v, %i.ov
  %i.vu = fcmp une <4 x float> %.v, %i.qs
  %.not1721 = and <4 x i1> %i.vt, %i.vu           ; 5 uses
  %i.vv = fcmp une <4 x float> %.v, %.sroa.0427.0
  %i.vw = fcmp une <4 x float> %.v, %.sroa.0424.0
  %.not1714 = and <4 x i1> %i.vv, %i.vw           ; 4 uses
  %i.vx = select <4 x i1> %i.vh, <4 x i32> %.sroa.183.0, <4 x i32> %.sroa.195.0
  %i.vy = bitcast <4 x i32> %i.vx to <4 x float>  ; 4 uses
  %i.vz = select <4 x i1> %i.vh, <4 x i32> %.sroa.190.0, <4 x i32> %.sroa.202.0
  %i.wa = bitcast <4 x i32> %i.vz to <4 x float>  ; 3 uses
  %i.wb = fmul <4 x float> %i.fh, %i.wa
  %i.wc = fmul <4 x float> %i.fm, %i.wa
  %i.wd = fmul <4 x float> %i.fr, %i.wa
  %i.we = fadd <4 x float> %i.hm, %i.wb
  %i.wf = fadd <4 x float> %i.hn, %i.wc
  %i.wg = fadd <4 x float> %i.ho, %i.wd
  %i.wh = fmul <4 x float> %i.hl, %i.we
  %i.wi = fmul <4 x float> %i.hl, %i.wf
  %i.wj = fmul <4 x float> %i.hl, %i.wg
  %i.wk = fmul <4 x float> %i.gz, %i.vy
  %i.wl = fmul <4 x float> %i.ha, %i.vy
  %i.wm = fmul <4 x float> %i.hb, %i.vy
  %i.wn = fsub <4 x float> %i.wh, %i.wk
  %i.wo = fsub <4 x float> %i.wi, %i.wl
  %i.wp = fsub <4 x float> %i.wj, %i.wm
  %i.wq = select <4 x i1> %i.vh, <4 x i32> %.sroa.215.0, <4 x i32> %.sroa.228.0
  %i.wr = bitcast <4 x i32> %i.wq to <4 x float>  ; 3 uses
  %i.ws = fmul <4 x float> %i.fh, %i.wr
  %i.wt = fmul <4 x float> %i.fm, %i.wr
  %i.wu = fmul <4 x float> %i.fr, %i.wr
  %i.wv = fadd <4 x float> %i.gw, %i.ws
  %i.ww = fadd <4 x float> %i.gx, %i.wt
  %i.wx = fadd <4 x float> %i.gy, %i.wu
  %i.wy = fsub <4 x float> %i.wv, %i.ao
  %i.wz = fsub <4 x float> %i.ww, %i.ap
  %i.xa = fsub <4 x float> %i.wx, %i.aq
  %.v1709 = select <4 x i1> %i.vh, <4 x float> %i.rp, <4 x float> %i.sr ; 3 uses
  %i.xb = fmul <4 x float> %i.fh, %.v1709
  %i.xc = fmul <4 x float> %i.fm, %.v1709
  %i.xd = fmul <4 x float> %i.fr, %.v1709
  %i.xe = fadd <4 x float> %i.gw, %i.xb
  %i.xf = fadd <4 x float> %i.gx, %i.xc
  %i.xg = fadd <4 x float> %i.gy, %i.xd
  %i.xh = fsub <4 x float> %i.xe, %i.bq
  %i.xi = fsub <4 x float> %i.xf, %i.br
  %i.xj = fsub <4 x float> %i.xg, %i.bs
  %.v1710 = select <4 x i1> %.not1714, <4 x float> %i.xh, <4 x float> %i.wy
  %.v1711 = select <4 x i1> %.not1714, <4 x float> %i.xi, <4 x float> %i.wz
  %.v1715 = select <4 x i1> %.not1714, <4 x float> %i.xj, <4 x float> %i.xa
  %.v1716 = select <4 x i1> %.not1721, <4 x float> %.v1710, <4 x float> %i.wn
  %.v1717 = select <4 x i1> %.not1721, <4 x float> %.v1711, <4 x float> %i.wo
  %.v1718 = select <4 x i1> %.not1721, <4 x float> %.v1715, <4 x float> %i.wp
  %i.xk = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.hl) ; 3 uses
  %i.xl = fmul <4 x float> %i.hl, %i.xk
  %i.xm = fsub <4 x float> splat (float 1.000000e+00), %i.xl
  %i.xn = fmul <4 x float> %i.xk, %i.xm
  %i.xo = fadd <4 x float> %i.xk, %i.xn           ; 2 uses
  %i.xp = fmul <4 x float> %i.xo, %i.vy
  %i.xq = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.xp, <4 x float> splat (float 1.000000e+00))
  %i.xr = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.xq, <4 x float> zeroinitializer)
  %15 = bitcast <4 x float> %i.xr to <4 x i32>
  %16 = select <4 x i1> %.not1721, <4 x i32> zeroinitializer, <4 x i32> %15
  %17 = select <4 x i1> %.not1721, <4 x i1> %.not1714, <4 x i1> zeroinitializer
  %18 = select <4 x i1> %17, <4 x i32> splat (i32 1065353216), <4 x i32> zeroinitializer
  %19 = or <4 x i32> %16, %18
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  %i.xs = fadd <4 x float> %i.gs, %.v             ; 4 uses
  store <4 x i32> %19, ptr %13, align 16
  %i.xt = getelementptr inbounds nuw i8, ptr %13, i64 16 ; 6 uses
  store <4 x float> zeroinitializer, ptr %i.xt, align 16
  %i.xu = getelementptr inbounds nuw i8, ptr %13, i64 32 ; 6 uses
  store <4 x float> %i.xs, ptr %i.xu, align 16
  %i.xv = getelementptr inbounds nuw i8, ptr %13, i64 48 ; 6 uses
  store <4 x float> %.v1716, ptr %i.xv, align 16
  %i.xw = getelementptr inbounds nuw i8, ptr %13, i64 64 ; 6 uses
  store <4 x float> %.v1717, ptr %i.xw, align 16
  %i.xx = getelementptr inbounds nuw i8, ptr %13, i64 80 ; 6 uses
  store <4 x float> %.v1718, ptr %i.xx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  store <4 x i32> %i.vs, ptr %7, align 16
  %i.xy = bitcast <4 x float> %i.xs to <4 x i32>
  %i.xz = select <4 x i1> %i.vp, <4 x float> %i.xs, <4 x float> splat (float +inf) ; 3 uses
  %i.ya = shufflevector <4 x float> %i.xz, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.yb = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ya, <4 x float> %i.xz) ; 2 uses
  %i.yc = shufflevector <4 x float> %i.yb, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.yd = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.yc, <4 x float> %i.yb)
  %i.ye = fcmp oeq <4 x float> %i.yd, %i.xz       ; 2 uses
  %i.yf = and <4 x i1> %i.ye, %i.vp
  %i.yg = bitcast <4 x i1> %i.yf to i4
  %.not1722 = icmp eq i4 %i.yg, 0
  %i.yh = select i1 %.not1722, <4 x i1> splat (i1 true), <4 x i1> %i.ye
  %i.yi = and <4 x i1> %i.vp, %i.yh
  %i.yj = bitcast <4 x i1> %i.yi to i4
  %i.yk = zext i4 %i.yj to i64
  %i.yl = tail call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.yk) #11, !srcloc !12
  %i.ym = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.ym, i64 %2 ; 2 uses
  %i.yo = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 8 uses
  %i.yq = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.yr = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.ys = getelementptr inbounds nuw i8, ptr %8, i64 48
  %i.yt = getelementptr inbounds nuw i8, ptr %8, i64 64
  %i.yu = getelementptr inbounds nuw i8, ptr %8, i64 80
  %i.yv = getelementptr inbounds nuw i8, ptr %8, i64 96
  %.ptr12.i.i36.i = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  %.ptr17.i.i40.i = getelementptr inbounds nuw i8, ptr %8, i64 128
  %i.yw = trunc i64 %2 to i32
  %i.yx = shl nuw i32 1, %i.yw
  %i.yy = sext i32 %i.yx to i64
  %i.yz = getelementptr inbounds [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.yy ; 2 uses
  %i.za = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.zb = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.zc = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.zd = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.ze = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %bb.x

bb.v:                                             ; preds = %bb.y, %bb.ak
  %i.zf = phi <4 x float> [ %i.afa, %bb.ak ], [ %.pre1766, %bb.y ]
  %i.zg = bitcast <4 x float> %i.zf to <4 x i32>  ; 5 uses
  %i.zh = icmp slt <4 x i32> %i.zg, zeroinitializer
  %i.zi = bitcast <4 x i1> %i.zh to i4
  %i.zj = icmp eq i4 %i.zi, 0
  br i1 %i.zj, label %_ZNK6embree4sse218Intersect1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i.loopexit, label %bb.w, !prof !11

bb.w:                                             ; preds = %bb.v
  %i.zk = and <4 x i32> %i.zg, %i.xy
  %i.zl = and <4 x i32> %i.zg, splat (i32 2139095040)
  %i.zm = xor <4 x i32> %i.zl, splat (i32 2139095040)
  %i.zn = or <4 x i32> %i.zm, %i.zk
  %i.zo = bitcast <4 x i32> %i.zn to <4 x float>  ; 3 uses
  %i.zp = shufflevector <4 x float> %i.zo, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.zq = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.zp, <4 x float> %i.zo) ; 2 uses
  %i.zr = shufflevector <4 x float> %i.zq, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.zs = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.zr, <4 x float> %i.zq)
  %i.zt = fcmp oeq <4 x float> %i.zs, %i.zo
  %i.zu = select <4 x i1> %i.zt, <4 x i32> %i.zg, <4 x i32> zeroinitializer ; 2 uses
  %i.zv = icmp slt <4 x i32> %i.zu, zeroinitializer
  %i.zw = bitcast <4 x i1> %i.zv to i4
  %.not1727 = icmp eq i4 %i.zw, 0
  %i.zx = select i1 %.not1727, <4 x i32> %i.zg, <4 x i32> %i.zu
  %i.zy = icmp slt <4 x i32> %i.zx, zeroinitializer
  %i.zz = bitcast <4 x i1> %i.zy to i4
  %i.aaa = zext i4 %i.zz to i64
  %i.aab = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.aaa) #11, !srcloc !12
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.u
  %.043.i28.i = phi i64 [ %i.yl, %bb.u ], [ %i.aab, %bb.w ] ; 17 uses
  %.042.in.i29.i = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %.043.i28.i
  %.042.i31.i = load i32, ptr %.042.in.i29.i, align 4 ; 3 uses
  %i.aac = zext i32 %.042.i31.i to i64
  %i.aad = load ptr, ptr %i.e, align 8
  %i.aae = getelementptr inbounds nuw [8 x i8], ptr %i.aad, i64 %i.aac
  %i.aaf = load ptr, ptr %i.aae, align 8          ; 5 uses
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 52
  %i.aah = load i32, ptr %i.aag, align 4
  %i.aai = load i32, ptr %i.yn, align 4
  %i.aaj = and i32 %i.aai, %i.aah
  %i.aak = icmp eq i32 %i.aaj, 0
  br i1 %i.aak, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.aal = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.043.i28.i
  store i32 0, ptr %i.aal, align 4
  %.pre1766 = load <4 x float>, ptr %7, align 16
  br label %bb.v, !llvm.loop !3

bb.z:                                             ; preds = %bb.x
  %i.aam = load ptr, ptr %i.yo, align 8
  %i.aan = getelementptr inbounds nuw i8, ptr %i.aam, i64 16
  %i.aao = load ptr, ptr %i.aan, align 8
  %.not1723 = icmp eq ptr %i.aao, null
  br i1 %.not1723, label %bb.aa, label %.critedge.i35.i, !prof !14

bb.aa:                                            ; preds = %bb.z
  %i.aap = getelementptr inbounds nuw i8, ptr %i.aaf, i64 64
  %i.aaq = load ptr, ptr %i.aap, align 16
  %.not1724 = icmp eq ptr %i.aaq, null
  br i1 %.not1724, label %bb.al, label %.critedge.i35.i, !prof !14

.critedge.i35.i:                                  ; preds = %bb.aa, %bb.z
  %i.aar = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %.043.i28.i
  %i.aas = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %.043.i28.i
  %i.aat = load float, ptr %i.aar, align 4, !noalias !1499
  %i.aau = load float, ptr %i.aas, align 4, !noalias !1499
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.aav = load ptr, ptr %i.yp, align 8           ; 2 uses
  %i.aaw = insertelement <4 x i32> poison, i32 %.042.i31.i, i64 0
  %i.aax = shufflevector <4 x i32> %i.aaw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aay = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.043.i28.i
  %i.aaz = load i32, ptr %i.aay, align 4
  %i.aba = insertelement <4 x i32> poison, i32 %i.aaz, i64 0
  %i.abb = shufflevector <4 x i32> %i.aba, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.abc = insertelement <4 x float> poison, float %i.aat, i64 0
  %i.abd = shufflevector <4 x float> %i.abc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abe = insertelement <4 x float> poison, float %i.aau, i64 0
  %i.abf = shufflevector <4 x float> %i.abe, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abg = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %.043.i28.i
  %i.abh = load float, ptr %i.abg, align 4, !noalias !1500
  %i.abi = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %.043.i28.i
  %i.abj = load float, ptr %i.abi, align 4, !noalias !1500
  %i.abk = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %.043.i28.i
  %i.abl = load float, ptr %i.abk, align 4, !noalias !1500
  %i.abm = insertelement <4 x float> poison, float %i.abh, i64 0
  %i.abn = shufflevector <4 x float> %i.abm, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abo = insertelement <4 x float> poison, float %i.abj, i64 0
  %i.abp = shufflevector <4 x float> %i.abo, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abq = insertelement <4 x float> poison, float %i.abl, i64 0
  %i.abr = shufflevector <4 x float> %i.abq, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.abn, ptr %8, align 16
  store <4 x float> %i.abp, ptr %i.yq, align 16
  store <4 x float> %i.abr, ptr %i.yr, align 16
  store <4 x float> %i.abd, ptr %i.ys, align 16
  store <4 x float> %i.abf, ptr %i.yt, align 16
  store <4 x i32> %i.abb, ptr %i.yu, align 16
  store <4 x i32> %i.aax, ptr %i.yv, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i36.i, i8 -1, i64 32, i1 false)
  %i.abs = load i32, ptr %i.aav, align 4
  %i.abt = insertelement <4 x i32> poison, i32 %i.abs, i64 0
  %i.abu = shufflevector <4 x i32> %i.abt, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.abu, ptr %.ptr12.i.i36.i, align 16
  %i.abv = getelementptr inbounds nuw i8, ptr %i.aav, i64 4
  %i.abw = load i32, ptr %i.abv, align 4
  %i.abx = insertelement <4 x i32> poison, i32 %i.abw, i64 0
  %i.aby = shufflevector <4 x i32> %i.abx, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.aby, ptr %.ptr17.i.i40.i, align 16
  %i.abz = load float, ptr %i.uz, align 4         ; 2 uses
  %i.aca = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %.043.i28.i
  %i.acb = load float, ptr %i.aca, align 4
  store float %i.acb, ptr %i.uz, align 4
  %i.acc = load <2 x i64>, ptr %i.yz, align 16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10, !noalias !1501
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10, !noalias !1501
  store <2 x i64> %i.acc, ptr %6, align 16, !noalias !1501
  store ptr %6, ptr %5, align 8, !noalias !1501
  %i.acd = getelementptr inbounds nuw i8, ptr %i.aaf, i64 24
  %i.ace = load ptr, ptr %i.acd, align 8, !noalias !1501
  store ptr %i.ace, ptr %i.za, align 8, !noalias !1501
  %i.acf = load ptr, ptr %i.yp, align 8, !noalias !1501
  store ptr %i.acf, ptr %i.zb, align 8, !noalias !1501
  store ptr %1, ptr %i.zc, align 8, !noalias !1501
  store ptr %8, ptr %i.zd, align 8, !noalias !1501
  store i32 4, ptr %i.ze, align 8, !noalias !1501
  %i.acg = getelementptr inbounds nuw i8, ptr %i.aaf, i64 64
  %i.ach = load ptr, ptr %i.acg, align 16, !noalias !1502 ; 2 uses
  %.not.i.i45.i = icmp eq ptr %i.ach, null
  %i.aci = bitcast <2 x i64> %i.acc to <4 x i32>
  br i1 %.not.i.i45.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %.critedge.i35.i
  call void %i.ach(ptr noundef nonnull %5), !noalias !1502, !inline_history !1374
  %.pre = load <4 x i32>, ptr %6, align 16, !noalias !1503
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %.critedge.i35.i
  %i.acj = phi <4 x i32> [ %.pre, %bb.ab ], [ %i.aci, %.critedge.i35.i ] ; 3 uses
  %i.ack = icmp ne <4 x i32> %i.acj, zeroinitializer ; 2 uses
  %i.acl = bitcast <4 x i1> %i.ack to i4
  %i.acm = icmp eq i4 %i.acl, 0
  br i1 %i.acm, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i47.i, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.acn = load ptr, ptr %i.yo, align 8           ; 2 uses
  %i.aco = getelementptr inbounds nuw i8, ptr %i.acn, i64 16
  %i.acp = load ptr, ptr %i.aco, align 8          ; 2 uses
  %.not13.i.i46.i = icmp eq ptr %i.acp, null
  br i1 %.not13.i.i46.i, label %bb.ah, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.acq = load i32, ptr %i.acn, align 8
  %i.acr = and i32 %i.acq, 2
  %.not1725 = icmp eq i32 %i.acr, 0
  br i1 %.not1725, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  %i.acs = getelementptr inbounds nuw i8, ptr %i.aaf, i64 60
  %i.act = load i32, ptr %i.acs, align 4, !noalias !1502
  %i.acu = and i32 %i.act, 4194304
  %.not1726 = icmp eq i32 %i.acu, 0
  br i1 %.not1726, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  call void %i.acp(ptr noundef nonnull %5), !inline_history !1374
  %.pre1764 = load <4 x i32>, ptr %6, align 16, !noalias !1504
  br label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af, %bb.ad
  %i.acv = phi <4 x i32> [ %.pre1764, %bb.ag ], [ %i.acj, %bb.af ], [ %i.acj, %bb.ad ]
  %i.acw = icmp ne <4 x i32> %i.acv, zeroinitializer ; 12 uses
  %i.acx = bitcast <4 x i1> %i.acw to i4
  %i.acy = icmp eq i4 %i.acx, 0
  br i1 %i.acy, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i47.i, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.acz = load ptr, ptr %i.zc, align 8, !noalias !1502 ; 9 uses
  %i.ada = load ptr, ptr %i.zd, align 8, !noalias !1502 ; 9 uses
  %i.adb = getelementptr inbounds nuw i8, ptr %i.acz, i64 192 ; 2 uses
  %i.adc = load <4 x i32>, ptr %i.adb, align 1, !noalias !1505
  %i.add = load <4 x i32>, ptr %i.ada, align 16, !noalias !1506
  %i.ade = select <4 x i1> %i.acw, <4 x i32> %i.add, <4 x i32> %i.adc
  store <4 x i32> %i.ade, ptr %i.adb, align 1
  %i.adf = getelementptr inbounds nuw i8, ptr %i.acz, i64 208 ; 2 uses
  %i.adg = getelementptr inbounds nuw i8, ptr %i.ada, i64 16
  %i.adh = load <4 x i32>, ptr %i.adf, align 1, !noalias !1507
  %i.adi = load <4 x i32>, ptr %i.adg, align 16, !noalias !1508
  %i.adj = select <4 x i1> %i.acw, <4 x i32> %i.adi, <4 x i32> %i.adh
  store <4 x i32> %i.adj, ptr %i.adf, align 1
  %i.adk = getelementptr inbounds nuw i8, ptr %i.acz, i64 224 ; 2 uses
  %i.adl = getelementptr inbounds nuw i8, ptr %i.ada, i64 32
  %i.adm = load <4 x i32>, ptr %i.adk, align 1, !noalias !1509
  %i.adn = load <4 x i32>, ptr %i.adl, align 16, !noalias !1510
  %i.ado = select <4 x i1> %i.acw, <4 x i32> %i.adn, <4 x i32> %i.adm
  store <4 x i32> %i.ado, ptr %i.adk, align 1
  %i.adp = getelementptr inbounds nuw i8, ptr %i.acz, i64 240 ; 2 uses
  %i.adq = getelementptr inbounds nuw i8, ptr %i.ada, i64 48
  %i.adr = load <4 x i32>, ptr %i.adp, align 1, !noalias !1511
  %i.ads = load <4 x i32>, ptr %i.adq, align 16, !noalias !1512
  %i.adt = select <4 x i1> %i.acw, <4 x i32> %i.ads, <4 x i32> %i.adr
  store <4 x i32> %i.adt, ptr %i.adp, align 1
  %i.adu = getelementptr inbounds nuw i8, ptr %i.acz, i64 256 ; 2 uses
  %i.adv = getelementptr inbounds nuw i8, ptr %i.ada, i64 64
  %i.adw = load <4 x i32>, ptr %i.adu, align 1, !noalias !1513
  %i.adx = load <4 x i32>, ptr %i.adv, align 16, !noalias !1514
  %i.ady = select <4 x i1> %i.acw, <4 x i32> %i.adx, <4 x i32> %i.adw
  store <4 x i32> %i.ady, ptr %i.adu, align 1
  %i.adz = getelementptr inbounds nuw i8, ptr %i.acz, i64 272 ; 2 uses
  %i.aea = getelementptr inbounds nuw i8, ptr %i.ada, i64 80
  %i.aeb = load <4 x i32>, ptr %i.adz, align 1, !noalias !1515
  %i.aec = load <4 x i32>, ptr %i.aea, align 16, !noalias !1516
  %i.aed = select <4 x i1> %i.acw, <4 x i32> %i.aec, <4 x i32> %i.aeb
  store <4 x i32> %i.aed, ptr %i.adz, align 1
  %i.aee = getelementptr inbounds nuw i8, ptr %i.acz, i64 288 ; 2 uses
  %i.aef = getelementptr inbounds nuw i8, ptr %i.ada, i64 96
  %i.aeg = load <4 x i32>, ptr %i.aee, align 1, !noalias !1517
  %i.aeh = load <4 x i32>, ptr %i.aef, align 16, !noalias !1518
  %i.aei = select <4 x i1> %i.acw, <4 x i32> %i.aeh, <4 x i32> %i.aeg
  store <4 x i32> %i.aei, ptr %i.aee, align 1
  %i.aej = getelementptr inbounds nuw i8, ptr %i.ada, i64 112
  %i.aek = getelementptr inbounds nuw i8, ptr %i.acz, i64 304 ; 2 uses
  %i.ael = load <4 x i32>, ptr %i.aek, align 16, !noalias !1519
  %i.aem = load <4 x i32>, ptr %i.aej, align 16, !noalias !1520
  %i.aen = select <4 x i1> %i.acw, <4 x i32> %i.aem, <4 x i32> %i.ael
  store <4 x i32> %i.aen, ptr %i.aek, align 16
  %i.aeo = getelementptr inbounds nuw i8, ptr %i.ada, i64 128
  %i.aep = getelementptr inbounds nuw i8, ptr %i.acz, i64 320 ; 2 uses
  %i.aeq = load <4 x i32>, ptr %i.aep, align 16, !noalias !1521
  %i.aer = load <4 x i32>, ptr %i.aeo, align 16, !noalias !1522
  %i.aes = select <4 x i1> %i.acw, <4 x i32> %i.aer, <4 x i32> %i.aeq
  store <4 x i32> %i.aes, ptr %i.aep, align 16
  br label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i47.i

_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i47.i: ; preds = %bb.ai, %bb.ah, %bb.ac
  %.sroa.0949.0.in.in = phi <4 x i1> [ %i.ack, %bb.ac ], [ %i.acw, %bb.ah ], [ %i.acw, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10, !noalias !1501
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10, !noalias !1501
  %i.aet = bitcast <4 x i1> %.sroa.0949.0.in.in to i4
  %.not1775 = icmp eq i4 %i.aet, 0
  br i1 %.not1775, label %bb.aj, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i47.i._crit_edge

_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i47.i._crit_edge: ; preds = %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i47.i
  %.pre1765 = load float, ptr %i.uz, align 4
  br label %bb.ak

bb.aj:                                            ; preds = %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i47.i
  store float %i.abz, ptr %i.uz, align 4
  br label %bb.ak

bb.ak:                                            ; preds = %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i47.i._crit_edge, %bb.aj
  %i.aeu = phi float [ %.pre1765, %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i47.i._crit_edge ], [ %i.abz, %bb.aj ]
  %i.aev = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %.043.i28.i
  store i32 0, ptr %i.aev, align 4
  %i.aew = insertelement <4 x float> poison, float %i.aeu, i64 0
  %i.aex = shufflevector <4 x float> %i.aew, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aey = fcmp ole <4 x float> %i.xs, %i.aex
  %i.aez = load <4 x float>, ptr %7, align 16, !noalias !1523
  %i.afa = select <4 x i1> %i.aey, <4 x float> %i.aez, <4 x float> zeroinitializer ; 2 uses
  store <4 x float> %i.afa, ptr %7, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10
  br label %bb.v

bb.al:                                            ; preds = %bb.aa
  %i.afb = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %.043.i28.i
  %i.afc = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %.043.i28.i
  %i.afd = load float, ptr %i.afb, align 4, !noalias !1524
  %i.afe = load float, ptr %i.afc, align 4, !noalias !1524
  %i.aff = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %.043.i28.i
  %i.afg = load float, ptr %i.aff, align 4        ; 2 uses
  store float %i.afg, ptr %i.uz, align 4
  %i.afh = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %.043.i28.i
  %i.afi = load float, ptr %i.afh, align 4
  %i.afj = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.afk = getelementptr inbounds nuw [4 x i8], ptr %i.afj, i64 %2
  store float %i.afi, ptr %i.afk, align 4
  %i.afl = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %.043.i28.i
  %i.afm = load float, ptr %i.afl, align 4
  %i.afn = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %i.afn, i64 %2
  store float %i.afm, ptr %i.afo, align 4
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %.043.i28.i
  %i.afq = load float, ptr %i.afp, align 4
  %i.afr = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.afr, i64 %2
  store float %i.afq, ptr %i.afs, align 4
  %i.aft = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.afu = getelementptr inbounds nuw [4 x i8], ptr %i.aft, i64 %2
  store float %i.afd, ptr %i.afu, align 4
  %i.afv = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.afw = getelementptr inbounds nuw [4 x i8], ptr %i.afv, i64 %2
  store float %i.afe, ptr %i.afw, align 4
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.043.i28.i
  %i.afy = load i32, ptr %i.afx, align 4
  %i.afz = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.aga = getelementptr inbounds nuw [4 x i8], ptr %i.afz, i64 %2
  store i32 %i.afy, ptr %i.aga, align 4
  %i.agb = getelementptr inbounds nuw i8, ptr %1, i64 288
  %i.agc = getelementptr inbounds nuw [4 x i8], ptr %i.agb, i64 %2
  store i32 %.042.i31.i, ptr %i.agc, align 4
  %i.agd = load ptr, ptr %i.yp, align 8
  %i.age = getelementptr inbounds nuw i8, ptr %1, i64 304
  %i.agf = load i32, ptr %i.agd, align 4
  %i.agg = getelementptr inbounds nuw [4 x i8], ptr %i.age, i64 %2
  store i32 %i.agf, ptr %i.agg, align 4
  %i.agh = load ptr, ptr %i.yp, align 8
  %i.agi = getelementptr inbounds nuw i8, ptr %i.agh, i64 4
  %i.agj = getelementptr inbounds nuw i8, ptr %1, i64 320
  %i.agk = load i32, ptr %i.agi, align 4
  %i.agl = getelementptr inbounds nuw [4 x i8], ptr %i.agj, i64 %2
  store i32 %i.agk, ptr %i.agl, align 4
  br label %_ZNK6embree4sse218Intersect1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i

_ZNK6embree4sse218Intersect1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i.loopexit: ; preds = %bb.v
  %.pre1767 = load float, ptr %i.uz, align 4, !noalias !1525
  br label %_ZNK6embree4sse218Intersect1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i

_ZNK6embree4sse218Intersect1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i: ; preds = %_ZNK6embree4sse218Intersect1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i.loopexit, %bb.al
  %i.agm = phi float [ %.pre1767, %_ZNK6embree4sse218Intersect1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i.loopexit ], [ %i.afg, %bb.al ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  %i.agn = insertelement <4 x float> poison, float %i.agm, i64 0
  %i.ago = shufflevector <4 x float> %i.agn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agp = fcmp ole <4 x float> %i.vi, %i.ago
  %i.agq = and <4 x i1> %i.vo, %i.agp
  %i.agr = and <4 x i1> %i.vg, %i.agq             ; 5 uses
  %i.ags = bitcast <4 x i1> %i.agr to i4
  %i.agt = icmp eq i4 %i.ags, 0
  br i1 %i.agt, label %bb.be, label %bb.am, !prof !11

bb.am:                                            ; preds = %_ZNK6embree4sse218Intersect1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i
  %i.agu = sext <4 x i1> %i.agr to <4 x i32>
  %i.agv = fcmp une <4 x float> %i.uv, %i.ov
  %i.agw = fcmp une <4 x float> %i.uv, %i.qs
  %.not1739 = and <4 x i1> %i.agv, %i.agw         ; 5 uses
  %i.agx = fcmp une <4 x float> %i.uv, %.sroa.0427.0
  %i.agy = fcmp une <4 x float> %i.uv, %.sroa.0424.0
  %.not1732 = and <4 x i1> %i.agx, %i.agy         ; 4 uses
  %i.agz = load <4 x i32>, ptr @_ZN6embree16mm_lookupmask_psE, align 16 ; 5 uses
  %i.aha = and <4 x i32> %i.agz, %.sroa.183.0
  %i.ahb = xor <4 x i32> %i.agz, splat (i32 -1)   ; 4 uses
  %i.ahc = and <4 x i32> %.sroa.195.0, %i.ahb
  %i.ahd = or <4 x i32> %i.aha, %i.ahc
  %i.ahe = bitcast <4 x i32> %i.ahd to <4 x float> ; 4 uses
  %i.ahf = and <4 x i32> %i.agz, %.sroa.190.0
  %i.ahg = and <4 x i32> %.sroa.202.0, %i.ahb
  %i.ahh = or <4 x i32> %i.ahf, %i.ahg
  %i.ahi = bitcast <4 x i32> %i.ahh to <4 x float> ; 3 uses
  %i.ahj = fmul <4 x float> %i.fh, %i.ahi
  %i.ahk = fmul <4 x float> %i.fm, %i.ahi
  %i.ahl = fmul <4 x float> %i.fr, %i.ahi
  %i.ahm = fadd <4 x float> %i.hm, %i.ahj
  %i.ahn = fadd <4 x float> %i.hn, %i.ahk
  %i.aho = fadd <4 x float> %i.ho, %i.ahl
  %i.ahp = fmul <4 x float> %i.hl, %i.ahm
  %i.ahq = fmul <4 x float> %i.hl, %i.ahn
  %i.ahr = fmul <4 x float> %i.hl, %i.aho
  %i.ahs = fmul <4 x float> %i.gz, %i.ahe
  %i.aht = fmul <4 x float> %i.ha, %i.ahe
  %i.ahu = fmul <4 x float> %i.hb, %i.ahe
  %i.ahv = fsub <4 x float> %i.ahp, %i.ahs
  %i.ahw = fsub <4 x float> %i.ahq, %i.aht
  %i.ahx = fsub <4 x float> %i.ahr, %i.ahu
  %i.ahy = and <4 x i32> %i.agz, %.sroa.215.0
  %i.ahz = and <4 x i32> %.sroa.228.0, %i.ahb
  %i.aia = or <4 x i32> %i.ahy, %i.ahz
  %i.aib = bitcast <4 x i32> %i.aia to <4 x float> ; 3 uses
  %i.aic = fmul <4 x float> %i.fh, %i.aib
  %i.aid = fmul <4 x float> %i.fm, %i.aib
  %i.aie = fmul <4 x float> %i.fr, %i.aib
  %i.aif = fadd <4 x float> %i.gw, %i.aic
  %i.aig = fadd <4 x float> %i.gx, %i.aid
  %i.aih = fadd <4 x float> %i.gy, %i.aie
  %i.aii = fsub <4 x float> %i.aif, %i.ao
  %i.aij = fsub <4 x float> %i.aig, %i.ap
  %i.aik = fsub <4 x float> %i.aih, %i.aq
  %i.ail = and <4 x i32> %i.agz, %i.so
  %i.aim = and <4 x i32> %i.ahb, %i.to
  %i.ain = or <4 x i32> %i.ail, %i.aim
  %i.aio = bitcast <4 x i32> %i.ain to <4 x float> ; 3 uses
  %i.aip = fmul <4 x float> %i.fh, %i.aio
  %i.aiq = fmul <4 x float> %i.fm, %i.aio
  %i.air = fmul <4 x float> %i.fr, %i.aio
  %i.ais = fadd <4 x float> %i.gw, %i.aip
  %i.ait = fadd <4 x float> %i.gx, %i.aiq
  %i.aiu = fadd <4 x float> %i.gy, %i.air
  %i.aiv = fsub <4 x float> %i.ais, %i.bq
  %i.aiw = fsub <4 x float> %i.ait, %i.br
  %i.aix = fsub <4 x float> %i.aiu, %i.bs
  %.v1728 = select <4 x i1> %.not1732, <4 x float> %i.aiv, <4 x float> %i.aii
  %.v1729 = select <4 x i1> %.not1732, <4 x float> %i.aiw, <4 x float> %i.aij
  %.v1733 = select <4 x i1> %.not1732, <4 x float> %i.aix, <4 x float> %i.aik
  %.v1734 = select <4 x i1> %.not1739, <4 x float> %.v1728, <4 x float> %i.ahv
  %.v1735 = select <4 x i1> %.not1739, <4 x float> %.v1729, <4 x float> %i.ahw
  %.v1736 = select <4 x i1> %.not1739, <4 x float> %.v1733, <4 x float> %i.ahx
  %i.aiy = fmul <4 x float> %i.xo, %i.ahe
  %i.aiz = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aiy, <4 x float> splat (float 1.000000e+00))
  %i.aja = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aiz, <4 x float> zeroinitializer)
  %20 = bitcast <4 x float> %i.aja to <4 x i32>
  %21 = select <4 x i1> %.not1739, <4 x i32> zeroinitializer, <4 x i32> %20
  %22 = select <4 x i1> %.not1739, <4 x i1> %.not1732, <4 x i1> zeroinitializer
  %23 = select <4 x i1> %22, <4 x i32> splat (i32 1065353216), <4 x i32> zeroinitializer
  %24 = or <4 x i32> %21, %23
  store <4 x i32> %24, ptr %13, align 16
  store <4 x float> zeroinitializer, ptr %i.xt, align 16
  store <4 x float> %i.vi, ptr %i.xu, align 16
  store <4 x float> %.v1734, ptr %i.xv, align 16
  store <4 x float> %.v1735, ptr %i.xw, align 16
  store <4 x float> %.v1736, ptr %i.xx, align 16
  %i.ajb = load ptr, ptr %3, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  store <4 x i32> %i.agu, ptr %11, align 16
  %i.ajc = bitcast <4 x float> %i.vi to <4 x i32>
  %i.ajd = select <4 x i1> %i.agr, <4 x float> %i.vi, <4 x float> splat (float +inf) ; 3 uses
  %i.aje = shufflevector <4 x float> %i.ajd, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.ajf = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aje, <4 x float> %i.ajd) ; 2 uses
  %i.ajg = shufflevector <4 x float> %i.ajf, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ajh = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ajg, <4 x float> %i.ajf)
  %i.aji = fcmp oeq <4 x float> %i.ajd, %i.ajh
  %i.ajj = and <4 x i1> %i.agr, %i.aji            ; 2 uses
  %i.ajk = bitcast <4 x i1> %i.ajj to i4
  %.not1740 = icmp eq i4 %i.ajk, 0
  %i.ajl = select i1 %.not1740, <4 x i1> %i.agr, <4 x i1> %i.ajj
  %i.ajm = bitcast <4 x i1> %i.ajl to i4
  %i.ajn = zext i4 %i.ajm to i64
  %i.ajo = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.ajn) #11, !srcloc !12
  %i.ajp = getelementptr inbounds nuw i8, ptr %i.ajb, i64 488
  %i.ajq = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.ajr = getelementptr inbounds nuw i8, ptr %12, i64 32
  %i.ajs = getelementptr inbounds nuw i8, ptr %12, i64 48
  %i.ajt = getelementptr inbounds nuw i8, ptr %12, i64 64
  %i.aju = getelementptr inbounds nuw i8, ptr %12, i64 80
  %i.ajv = getelementptr inbounds nuw i8, ptr %12, i64 96
  %.ptr12.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 112 ; 2 uses
  %.ptr17.i.i.i = getelementptr inbounds nuw i8, ptr %12, i64 128
  %i.ajw = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.ajx = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ajy = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %i.ajz = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.aka = getelementptr inbounds nuw i8, ptr %9, i64 40
  br label %bb.ap

bb.an:                                            ; preds = %bb.aq, %bb.bc
  %i.akb = phi <4 x float> [ %i.apw, %bb.bc ], [ %.pre1771, %bb.aq ]
  %i.akc = bitcast <4 x float> %i.akb to <4 x i32> ; 5 uses
  %i.akd = icmp slt <4 x i32> %i.akc, zeroinitializer
  %i.ake = bitcast <4 x i1> %i.akd to i4
  %i.akf = icmp eq i4 %i.ake, 0
  br i1 %i.akf, label %_ZNK6embree4sse218Intersect1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i, label %bb.ao, !prof !11

bb.ao:                                            ; preds = %bb.an
  %i.akg = and <4 x i32> %i.akc, %i.ajc
  %i.akh = and <4 x i32> %i.akc, splat (i32 2139095040)
  %i.aki = xor <4 x i32> %i.akh, splat (i32 2139095040)
  %i.akj = or <4 x i32> %i.aki, %i.akg
  %i.akk = bitcast <4 x i32> %i.akj to <4 x float> ; 3 uses
  %i.akl = shufflevector <4 x float> %i.akk, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.akm = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.akl, <4 x float> %i.akk) ; 2 uses
  %i.akn = shufflevector <4 x float> %i.akm, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 0, i32 1>
  %i.ako = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.akn, <4 x float> %i.akm)
  %i.akp = fcmp oeq <4 x float> %i.ako, %i.akk
  %i.akq = select <4 x i1> %i.akp, <4 x i32> %i.akc, <4 x i32> zeroinitializer ; 2 uses
  %i.akr = icmp slt <4 x i32> %i.akq, zeroinitializer
  %i.aks = bitcast <4 x i1> %i.akr to i4
  %.not1745 = icmp eq i4 %i.aks, 0
  %i.akt = select i1 %.not1745, <4 x i32> %i.akc, <4 x i32> %i.akq
  %i.aku = icmp slt <4 x i32> %i.akt, zeroinitializer
  %i.akv = bitcast <4 x i1> %i.aku to i4
  %i.akw = zext i4 %i.akv to i64
  %i.akx = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %i.akw) #11, !srcloc !12
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.am
  %.043.i.i = phi i64 [ %i.ajo, %bb.am ], [ %i.akx, %bb.ao ] ; 17 uses
  %.042.in.i.i = getelementptr inbounds nuw [4 x i8], ptr %14, i64 %.043.i.i
  %.042.i.i = load i32, ptr %.042.in.i.i, align 4 ; 3 uses
  %i.aky = zext i32 %.042.i.i to i64
  %i.akz = load ptr, ptr %i.ajp, align 8
  %i.ala = getelementptr inbounds nuw [8 x i8], ptr %i.akz, i64 %i.aky
  %i.alb = load ptr, ptr %i.ala, align 8          ; 5 uses
  %i.alc = getelementptr inbounds nuw i8, ptr %i.alb, i64 52
  %i.ald = load i32, ptr %i.alc, align 4
  %i.ale = load i32, ptr %i.yn, align 4
  %i.alf = and i32 %i.ale, %i.ald
  %i.alg = icmp eq i32 %i.alf, 0
  br i1 %i.alg, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %.043.i.i
  store i32 0, ptr %i.alh, align 4
  %.pre1771 = load <4 x float>, ptr %11, align 16
  br label %bb.an, !llvm.loop !3

bb.ar:                                            ; preds = %bb.ap
  %i.ali = load ptr, ptr %i.yo, align 8
  %i.alj = getelementptr inbounds nuw i8, ptr %i.ali, i64 16
  %i.alk = load ptr, ptr %i.alj, align 8
  %.not1741 = icmp eq ptr %i.alk, null
  br i1 %.not1741, label %bb.as, label %.critedge.i.i, !prof !14

bb.as:                                            ; preds = %bb.ar
  %i.all = getelementptr inbounds nuw i8, ptr %i.alb, i64 64
  %i.alm = load ptr, ptr %i.all, align 16
  %.not1742 = icmp eq ptr %i.alm, null
  br i1 %.not1742, label %bb.bd, label %.critedge.i.i, !prof !14

.critedge.i.i:                                    ; preds = %bb.as, %bb.ar
  %i.aln = getelementptr inbounds nuw [4 x i8], ptr %13, i64 %.043.i.i
  %i.alo = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %.043.i.i
  %i.alp = load float, ptr %i.aln, align 4, !noalias !1526
  %i.alq = load float, ptr %i.alo, align 4, !noalias !1526
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  %i.alr = load ptr, ptr %i.yp, align 8           ; 2 uses
  %i.als = insertelement <4 x i32> poison, i32 %.042.i.i, i64 0
  %i.alt = shufflevector <4 x i32> %i.als, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.alu = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %.043.i.i
  %i.alv = load i32, ptr %i.alu, align 4
  %i.alw = insertelement <4 x i32> poison, i32 %i.alv, i64 0
  %i.alx = shufflevector <4 x i32> %i.alw, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aly = insertelement <4 x float> poison, float %i.alp, i64 0
  %i.alz = shufflevector <4 x float> %i.aly, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ama = insertelement <4 x float> poison, float %i.alq, i64 0
  %i.amb = shufflevector <4 x float> %i.ama, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amc = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %.043.i.i
  %i.amd = load float, ptr %i.amc, align 4, !noalias !1527
  %i.ame = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %.043.i.i
  %i.amf = load float, ptr %i.ame, align 4, !noalias !1527
  %i.amg = getelementptr inbounds nuw [4 x i8], ptr %i.xx, i64 %.043.i.i
  %i.amh = load float, ptr %i.amg, align 4, !noalias !1527
  %i.ami = insertelement <4 x float> poison, float %i.amd, i64 0
  %i.amj = shufflevector <4 x float> %i.ami, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amk = insertelement <4 x float> poison, float %i.amf, i64 0
  %i.aml = shufflevector <4 x float> %i.amk, <4 x float> poison, <4 x i32> zeroinitializer
  %i.amm = insertelement <4 x float> poison, float %i.amh, i64 0
  %i.amn = shufflevector <4 x float> %i.amm, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.amj, ptr %12, align 16
  store <4 x float> %i.aml, ptr %i.ajq, align 16
  store <4 x float> %i.amn, ptr %i.ajr, align 16
  store <4 x float> %i.alz, ptr %i.ajs, align 16
  store <4 x float> %i.amb, ptr %i.ajt, align 16
  store <4 x i32> %i.alx, ptr %i.aju, align 16
  store <4 x i32> %i.alt, ptr %i.ajv, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i.i, i8 -1, i64 32, i1 false)
  %i.amo = load i32, ptr %i.alr, align 4
  %i.amp = insertelement <4 x i32> poison, i32 %i.amo, i64 0
  %i.amq = shufflevector <4 x i32> %i.amp, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.amq, ptr %.ptr12.i.i.i, align 16
  %i.amr = getelementptr inbounds nuw i8, ptr %i.alr, i64 4
  %i.ams = load i32, ptr %i.amr, align 4
  %i.amt = insertelement <4 x i32> poison, i32 %i.ams, i64 0
  %i.amu = shufflevector <4 x i32> %i.amt, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.amu, ptr %.ptr17.i.i.i, align 16
  %i.amv = load float, ptr %i.uz, align 4         ; 2 uses
  %i.amw = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %.043.i.i
  %i.amx = load float, ptr %i.amw, align 4
  store float %i.amx, ptr %i.uz, align 4
  %i.amy = load <2 x i64>, ptr %i.yz, align 16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10, !noalias !1528
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10, !noalias !1528
  store <2 x i64> %i.amy, ptr %10, align 16, !noalias !1528
  store ptr %10, ptr %9, align 8, !noalias !1528
  %i.amz = getelementptr inbounds nuw i8, ptr %i.alb, i64 24
  %i.ana = load ptr, ptr %i.amz, align 8, !noalias !1528
  store ptr %i.ana, ptr %i.ajw, align 8, !noalias !1528
  %i.anb = load ptr, ptr %i.yp, align 8, !noalias !1528
  store ptr %i.anb, ptr %i.ajx, align 8, !noalias !1528
  store ptr %1, ptr %i.ajy, align 8, !noalias !1528
  store ptr %12, ptr %i.ajz, align 8, !noalias !1528
  store i32 4, ptr %i.aka, align 8, !noalias !1528
  %i.anc = getelementptr inbounds nuw i8, ptr %i.alb, i64 64
  %i.and = load ptr, ptr %i.anc, align 16, !noalias !1529 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.and, null
  %i.ane = bitcast <2 x i64> %i.amy to <4 x i32>
  br i1 %.not.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %.critedge.i.i
  call void %i.and(ptr noundef nonnull %9), !noalias !1529, !inline_history !1374
  %.pre1768 = load <4 x i32>, ptr %10, align 16, !noalias !1530
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %.critedge.i.i
  %i.anf = phi <4 x i32> [ %.pre1768, %bb.at ], [ %i.ane, %.critedge.i.i ] ; 3 uses
  %i.ang = icmp ne <4 x i32> %i.anf, zeroinitializer ; 2 uses
  %i.anh = bitcast <4 x i1> %i.ang to i4
  %i.ani = icmp eq i4 %i.anh, 0
  br i1 %i.ani, label %_ZN6embree4sse227runIntersectionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.anj = load ptr, ptr %i.yo, align 8           ; 2 uses
  %i.ank = getelementptr inbounds nuw i8, ptr %i.anj, i64 16
  %i.anl = load ptr, ptr %i.ank, align 8          ; 2 uses
  %.not13.i.i.i = icmp eq ptr %i.anl, null
  br i1 %.not13.i.i.i, label %bb.az, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.anm = load i32, ptr %i.anj, align 8
  %i.ann = and i32 %i.anm, 2
  %.not1743 = icmp eq i32 %i.ann, 0
  br i1 %.not1743, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.ano = getelementptr inbounds nuw i8, ptr %i.alb, i64 60
  %i.anp = load i32, ptr %i.ano, align 4, !noalias !1529
  %i.anq = and i32 %i.anp, 4194304
end_hunk_2
begin_hunk_3_@_ZN6embree4sse230RoundLinearCurveMiIntersectorKILi4ELi4ELb1EE8occludedERKNS0_21CurvePrecalculationsKILi4EEERNS_4RayKILi4EEEmPNS_15RayQueryContextERKNS_6LineMiILi4EEE:bb.a
  %i.nu = fadd <4 x float> %i.nt, %i.ns           ; 5 uses
  %i.nv = fneg <4 x float> %i.ls                  ; 2 uses
  %i.nw = fsub <4 x float> splat (float f0x34000000), %i.ls ; 2 uses
  %i.nx = fmul <4 x float> %i.ej, %i.lq
  %i.ny = fsub <4 x float> %i.lo, %i.nx           ; 2 uses
  %i.nz = fcmp une <4 x float> %i.bq, splat (float +inf) ; 2 uses
  %i.oa = and <4 x i1> %i.nz, %i.jj
  %i.ob = fcmp une <4 x float> %i.eg, splat (float +inf) ; 2 uses
  %i.oc = and <4 x i1> %i.ob, %i.oa               ; 2 uses
  %i.od = fcmp ugt <4 x float> %i.nu, %i.nw
  %i.oe = fcmp olt <4 x float> %i.nu, %i.ny
  %i.of = and <4 x i1> %i.od, %i.oe
  %i.og = fmul <4 x float> %i.np, %i.np
  %i.oh = fmul <4 x float> %i.no, %i.no
  %i.oi = fadd <4 x float> %i.oh, %i.og
  %i.oj = fmul <4 x float> %i.nn, %i.nn
  %i.ok = fadd <4 x float> %i.oj, %i.oi
  %i.ol = fmul <4 x float> %i.lt, %i.ok
  %i.om = fmul <4 x float> %i.nu, %i.nu
  %i.on = fsub <4 x float> %i.ol, %i.om
  %i.oo = fmul <4 x float> %i.lp, %i.lo           ; 2 uses
  %i.op = fmul <4 x float> %i.ls, splat (float 2.000000e+00) ; 2 uses
  %i.oq = fmul <4 x float> %i.op, %i.nu
  %i.or = fadd <4 x float> %i.oo, %i.oq
  %i.os = fcmp olt <4 x float> %i.on, %i.or
  %i.ot = and <4 x i1> %i.of, %i.os
  %i.ou = and <4 x i1> %i.oc, %i.ot
  %.demorgan = or <4 x i1> %i.nm, %i.ou
  %i.ov = select <4 x i1> %.demorgan, <4 x float> splat (float +inf), <4 x float> %.sroa.0678.0 ; 3 uses
  %i.ow = fsub <4 x float> %i.md, %i.ao           ; 3 uses
  %i.ox = fsub <4 x float> %i.me, %i.ap           ; 3 uses
  %i.oy = fsub <4 x float> %i.mf, %i.aq           ; 3 uses
  %i.oz = fmul <4 x float> %i.kx, %i.oy
  %i.pa = fmul <4 x float> %i.kw, %i.ox
  %i.pb = fadd <4 x float> %i.pa, %i.oz
  %i.pc = fmul <4 x float> %i.kv, %i.ow
  %i.pd = fadd <4 x float> %i.pc, %i.pb           ; 5 uses
  %i.pe = fcmp ugt <4 x float> %i.pd, %i.mo
  %i.pf = fcmp olt <4 x float> %i.pd, %i.mq
  %i.pg = and <4 x i1> %i.pe, %i.pf
  %i.ph = fmul <4 x float> %i.oy, %i.oy
  %i.pi = fmul <4 x float> %i.ox, %i.ox
  %i.pj = fadd <4 x float> %i.pi, %i.ph
  %i.pk = fmul <4 x float> %i.ow, %i.ow
  %i.pl = fadd <4 x float> %i.pk, %i.pj
  %i.pm = fmul <4 x float> %i.lg, %i.pl
  %i.pn = fmul <4 x float> %i.pd, %i.pd
  %i.po = fsub <4 x float> %i.pm, %i.pn
  %i.pp = fmul <4 x float> %i.nh, %i.pd
  %i.pq = fadd <4 x float> %i.ng, %i.pp
  %i.pr = fcmp olt <4 x float> %i.po, %i.pq
  %i.ps = and <4 x i1> %i.pg, %i.pr
  %i.pt = and <4 x i1> %i.mu, %i.ps
  %i.pu = fsub <4 x float> %i.md, %i.bq           ; 3 uses
  %i.pv = fsub <4 x float> %i.me, %i.br           ; 3 uses
  %i.pw = fsub <4 x float> %i.mf, %i.bs           ; 3 uses
  %i.px = fmul <4 x float> %i.lj, %i.pw
  %i.py = fmul <4 x float> %i.li, %i.pv
  %i.pz = fadd <4 x float> %i.py, %i.px
  %i.qa = fmul <4 x float> %i.lh, %i.pu
  %i.qb = fadd <4 x float> %i.qa, %i.pz           ; 5 uses
  %i.qc = fcmp ugt <4 x float> %i.qb, %i.nw
  %i.qd = fcmp olt <4 x float> %i.qb, %i.ny
  %i.qe = and <4 x i1> %i.qc, %i.qd
  %i.qf = fmul <4 x float> %i.pw, %i.pw
  %i.qg = fmul <4 x float> %i.pv, %i.pv
  %i.qh = fadd <4 x float> %i.qg, %i.qf
  %i.qi = fmul <4 x float> %i.pu, %i.pu
  %i.qj = fadd <4 x float> %i.qi, %i.qh
  %i.qk = fmul <4 x float> %i.lt, %i.qj
  %i.ql = fmul <4 x float> %i.qb, %i.qb
  %i.qm = fsub <4 x float> %i.qk, %i.ql
  %i.qn = fmul <4 x float> %i.op, %i.qb
  %i.qo = fadd <4 x float> %i.oo, %i.qn
  %i.qp = fcmp olt <4 x float> %i.qm, %i.qo
  %i.qq = and <4 x i1> %i.qe, %i.qp
  %i.qr = and <4 x i1> %i.oc, %i.qq
  %.demorgan1548 = or <4 x i1> %i.pt, %i.qr
  %i.qs = select <4 x i1> %.demorgan1548, <4 x float> splat (float -inf), <4 x float> %.sroa.0671.0 ; 3 uses
  %i.qt = fsub <4 x float> %i.gw, %i.bq           ; 3 uses
  %i.qu = fsub <4 x float> %i.gx, %i.br           ; 3 uses
  %i.qv = fsub <4 x float> %i.gy, %i.bs           ; 3 uses
  %i.qw = fmul <4 x float> %i.fr, %i.qv
  %i.qx = fmul <4 x float> %i.fm, %i.qu
  %i.qy = fadd <4 x float> %i.qx, %i.qw
  %i.qz = fmul <4 x float> %i.fh, %i.qt
  %i.ra = fadd <4 x float> %i.qz, %i.qy           ; 4 uses
  %i.rb = fmul <4 x float> %i.ra, %i.ra
  %i.rc = fmul <4 x float> %i.qv, %i.qv
  %i.rd = fmul <4 x float> %i.qu, %i.qu
  %i.re = fadd <4 x float> %i.rd, %i.rc
  %i.rf = fmul <4 x float> %i.qt, %i.qt
  %i.rg = fadd <4 x float> %i.rf, %i.re
  %i.rh = fsub <4 x float> %i.rg, %i.lp
  %i.ri = fmul <4 x float> %i.fy, %i.rh
  %i.rj = fsub <4 x float> %i.rb, %i.ri           ; 2 uses
  %i.rk = fcmp uge <4 x float> %i.rj, zeroinitializer ; 3 uses
  %i.rl = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.rj)
  %i.rm = select <4 x i1> %i.rk, <4 x float> %i.rl, <4 x float> splat (float -inf) ; 2 uses
  %i.rn = fneg <4 x float> %i.ra
  %i.ro = fsub <4 x float> %i.rn, %i.rm
  %i.rp = fmul <4 x float> %i.gd, %i.ro           ; 7 uses
  %i.rq = fmul <4 x float> %i.fh, %i.rp
  %i.rr = fmul <4 x float> %i.fm, %i.rp
  %i.rs = fmul <4 x float> %i.fr, %i.rp
  %i.rt = fadd <4 x float> %i.gw, %i.rq
  %i.ru = fadd <4 x float> %i.gx, %i.rr
  %i.rv = fadd <4 x float> %i.gy, %i.rs
  %i.rw = fmul <4 x float> %i.hy, %i.rp
  %i.rx = fadd <4 x float> %i.hz, %i.rw
  %i.ry = fcmp ugt <4 x float> %i.rx, %i.hl
  %i.rz = fsub <4 x float> %i.rt, %i.bq
  %i.sa = fsub <4 x float> %i.ru, %i.br
  %i.sb = fsub <4 x float> %i.rv, %i.bs
  %i.sc = fmul <4 x float> %i.lj, %i.sb
  %i.sd = fmul <4 x float> %i.li, %i.sa
  %i.se = fadd <4 x float> %i.sd, %i.sc
  %i.sf = fmul <4 x float> %i.lh, %i.rz
  %i.sg = fadd <4 x float> %i.sf, %i.se
  %i.sh = fcmp ugt <4 x float> %i.sg, %i.nv
  %i.si = and <4 x i1> %i.nz, %i.ks
  %i.sj = and <4 x i1> %i.ob, %i.si               ; 2 uses
  %i.sk = and <4 x i1> %i.sj, %i.sh
  %i.sl = xor <4 x i1> %i.sk, splat (i1 true)
  %i.sm = and <4 x i1> %i.ry, %i.sl
  %i.sn = and <4 x i1> %i.rk, %i.sm
  %i.so = bitcast <4 x float> %i.rp to <4 x i32>
  %i.sp = select <4 x i1> %i.sn, <4 x float> %i.rp, <4 x float> splat (float +inf)
  %i.sq = fsub <4 x float> %i.rm, %i.ra
  %i.sr = fmul <4 x float> %i.gd, %i.sq           ; 7 uses
  %i.ss = fmul <4 x float> %i.fh, %i.sr
  %i.st = fmul <4 x float> %i.fm, %i.sr
  %i.su = fmul <4 x float> %i.fr, %i.sr
  %i.sv = fadd <4 x float> %i.gw, %i.ss
  %i.sw = fadd <4 x float> %i.gx, %i.st
  %i.sx = fadd <4 x float> %i.gy, %i.su
  %i.sy = fmul <4 x float> %i.hy, %i.sr
  %i.sz = fadd <4 x float> %i.hz, %i.sy
  %i.ta = fcmp ugt <4 x float> %i.sz, %i.hl
  %i.tb = fsub <4 x float> %i.sv, %i.bq
  %i.tc = fsub <4 x float> %i.sw, %i.br
  %i.td = fsub <4 x float> %i.sx, %i.bs
  %i.te = fmul <4 x float> %i.lj, %i.td
  %i.tf = fmul <4 x float> %i.li, %i.tc
  %i.tg = fadd <4 x float> %i.tf, %i.te
  %i.th = fmul <4 x float> %i.lh, %i.tb
  %i.ti = fadd <4 x float> %i.th, %i.tg
  %i.tj = fcmp ugt <4 x float> %i.ti, %i.nv
  %i.tk = and <4 x i1> %i.sj, %i.tj
  %i.tl = xor <4 x i1> %i.tk, splat (i1 true)
  %i.tm = and <4 x i1> %i.ta, %i.tl
  %i.tn = and <4 x i1> %i.rk, %i.tm
  %i.to = bitcast <4 x float> %i.sr to <4 x i32>
  %i.tp = select <4 x i1> %i.tn, <4 x float> %i.sr, <4 x float> splat (float -inf)
  %i.tq = fcmp oeq <4 x float> %i.cy, splat (float +inf)
  %i.tr = and <4 x i1> %i.tq, %i.ks               ; 2 uses
  %i.ts = bitcast <4 x i1> %i.tr to i4
  %.not = icmp eq i4 %i.ts, 0
  br i1 %.not, label %bb.t, label %bb.s, !prof !14

bb.s:                                             ; preds = %bb.r
  %i.tt = fmul <4 x float> %i.ij, %i.ij
  %i.tu = fsub <4 x float> %i.ie, %i.hh
  %i.tv = fmul <4 x float> %i.fy, %i.tu
  %i.tw = fsub <4 x float> %i.tt, %i.tv           ; 2 uses
  %i.tx = fcmp uge <4 x float> %i.tw, zeroinitializer ; 2 uses
  %i.ty = tail call noundef <4 x float> @llvm.sqrt.v4f32(<4 x float> %i.tw)
  %i.tz = select <4 x i1> %i.tx, <4 x float> %i.ty, <4 x float> splat (float -inf) ; 2 uses
  %i.ua = fneg <4 x float> %i.ij
  %i.ub = fsub <4 x float> %i.ua, %i.tz
  %i.uc = fmul <4 x float> %i.gd, %i.ub           ; 3 uses
  %i.ud = and <4 x i1> %i.tx, %i.tr               ; 2 uses
  %i.ue = fmul <4 x float> %i.hy, %i.uc
  %i.uf = fadd <4 x float> %i.hz, %i.ue
  %i.ug = fcmp olt <4 x float> %i.uf, zeroinitializer
  %i.uh = and <4 x i1> %i.ug, %i.ud
  %i.ui = select <4 x i1> %i.uh, <4 x float> %i.uc, <4 x float> splat (float +inf)
  %i.uj = fsub <4 x float> %i.tz, %i.ij
  %i.uk = fmul <4 x float> %i.gd, %i.uj           ; 3 uses
  %i.ul = fmul <4 x float> %i.hy, %i.uk
  %i.um = fadd <4 x float> %i.hz, %i.ul
  %i.un = fcmp olt <4 x float> %i.um, zeroinitializer
  %i.uo = and <4 x i1> %i.un, %i.ud
  %i.up = select <4 x i1> %i.uo, <4 x float> %i.uk, <4 x float> splat (float -inf)
  %i.uq = bitcast <4 x float> %i.uc to <4 x i32>
  %i.ur = bitcast <4 x float> %i.uk to <4 x i32>
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.sroa.0375.0 = phi <4 x float> [ %i.ui, %bb.s ], [ splat (float +inf), %bb.r ] ; 3 uses
  %.sroa.0372.0 = phi <4 x float> [ %i.up, %bb.s ], [ splat (float -inf), %bb.r ] ; 3 uses
  %.sroa.215.0 = phi <4 x i32> [ %i.uq, %bb.s ], [ undef, %bb.r ] ; 2 uses
  %.sroa.228.0 = phi <4 x i32> [ %i.ur, %bb.s ], [ undef, %bb.r ] ; 2 uses
  %i.us = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %.sroa.0375.0, <4 x float> %i.sp)
  %i.ut = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ov, <4 x float> %i.us) ; 3 uses
  %i.uu = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0372.0, <4 x float> %i.tp)
  %i.uv = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.qs, <4 x float> %i.uu) ; 7 uses
  %i.uw = fadd <4 x float> %i.gs, %i.ut           ; 2 uses
  %i.ux = fcmp ole <4 x float> %i.fw, %i.uw
  %i.uy = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.uz = getelementptr inbounds nuw [4 x i8], ptr %i.uy, i64 %2 ; 7 uses
  %i.va = load float, ptr %i.uz, align 4, !noalias !1646
  %i.vb = insertelement <4 x float> poison, float %i.va, i64 0
  %i.vc = shufflevector <4 x float> %i.vb, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.vd = fcmp ole <4 x float> %i.uw, %i.vc
  %i.ve = and <4 x i1> %i.ux, %i.vd
  %i.vf = fcmp une <4 x float> %i.ut, splat (float +inf)
  %i.vg = and <4 x i1> %i.vf, %i.ve               ; 2 uses
  %i.vh = and <4 x i1> %i.ks, %i.vg               ; 6 uses
  %i.vi = fadd <4 x float> %i.gs, %i.uv           ; 4 uses
  %i.vj = fcmp ole <4 x float> %i.fw, %i.vi
  %i.vk = fcmp ole <4 x float> %i.vi, %i.vc
  %i.vl = and <4 x i1> %i.vj, %i.vk
  %i.vm = fcmp une <4 x float> %i.uv, splat (float -inf)
  %i.vn = and <4 x i1> %i.vm, %i.vl
  %i.vo = and <4 x i1> %i.ks, %i.vn               ; 2 uses
  %i.vp = or <4 x i1> %i.vh, %i.vo
  %i.vq = bitcast <4 x i1> %i.vp to i4            ; 2 uses
  %i.vr = icmp eq i4 %i.vq, 0
  br i1 %i.vr, label %_ZN6embree4sse220__roundline_internalL19intersectConeSphereILi4ENS0_17Occluded1KEpilogMILi4ELi4ELb1EEENS0_28RoundLinearCurveIntersectorKILi4ELi4EE8ray_tfarEEEbRKNS_6vtypesIXT_EE5vboolERKNS_4Vec3INS9_6vfloatEEESH_RKSE_RKT1_RKNS_4Vec4ISE_EESQ_SQ_SQ_RKT0_.exit, label %bb.u, !prof !11

bb.u:                                             ; preds = %bb.t
  %.v = select <4 x i1> %i.vh, <4 x float> %i.ut, <4 x float> %i.uv ; 5 uses
  %i.vs = fcmp une <4 x float> %.v, %i.ov
  %i.vt = fcmp une <4 x float> %.v, %i.qs
  %.not1561 = and <4 x i1> %i.vs, %i.vt           ; 5 uses
  %i.vu = fcmp une <4 x float> %.v, %.sroa.0375.0
  %i.vv = fcmp une <4 x float> %.v, %.sroa.0372.0
  %.not1554 = and <4 x i1> %i.vu, %i.vv           ; 4 uses
  %i.vw = select <4 x i1> %i.vh, <4 x i32> %.sroa.183.0, <4 x i32> %.sroa.195.0
  %i.vx = bitcast <4 x i32> %i.vw to <4 x float>  ; 4 uses
  %i.vy = select <4 x i1> %i.vh, <4 x i32> %.sroa.190.0, <4 x i32> %.sroa.202.0
  %i.vz = bitcast <4 x i32> %i.vy to <4 x float>  ; 3 uses
  %i.wa = fmul <4 x float> %i.fh, %i.vz
  %i.wb = fmul <4 x float> %i.fm, %i.vz
  %i.wc = fmul <4 x float> %i.fr, %i.vz
  %i.wd = fadd <4 x float> %i.hm, %i.wa
  %i.we = fadd <4 x float> %i.hn, %i.wb
  %i.wf = fadd <4 x float> %i.ho, %i.wc
  %i.wg = fmul <4 x float> %i.hl, %i.wd
  %i.wh = fmul <4 x float> %i.hl, %i.we
  %i.wi = fmul <4 x float> %i.hl, %i.wf
  %i.wj = fmul <4 x float> %i.gz, %i.vx
  %i.wk = fmul <4 x float> %i.ha, %i.vx
  %i.wl = fmul <4 x float> %i.hb, %i.vx
  %i.wm = fsub <4 x float> %i.wg, %i.wj
  %i.wn = fsub <4 x float> %i.wh, %i.wk
  %i.wo = fsub <4 x float> %i.wi, %i.wl
  %i.wp = select <4 x i1> %i.vh, <4 x i32> %.sroa.215.0, <4 x i32> %.sroa.228.0
  %i.wq = bitcast <4 x i32> %i.wp to <4 x float>  ; 3 uses
  %i.wr = fmul <4 x float> %i.fh, %i.wq
  %i.ws = fmul <4 x float> %i.fm, %i.wq
  %i.wt = fmul <4 x float> %i.fr, %i.wq
  %i.wu = fadd <4 x float> %i.gw, %i.wr
  %i.wv = fadd <4 x float> %i.gx, %i.ws
  %i.ww = fadd <4 x float> %i.gy, %i.wt
  %i.wx = fsub <4 x float> %i.wu, %i.ao
  %i.wy = fsub <4 x float> %i.wv, %i.ap
  %i.wz = fsub <4 x float> %i.ww, %i.aq
  %.v1549 = select <4 x i1> %i.vh, <4 x float> %i.rp, <4 x float> %i.sr ; 3 uses
  %i.xa = fmul <4 x float> %i.fh, %.v1549
  %i.xb = fmul <4 x float> %i.fm, %.v1549
  %i.xc = fmul <4 x float> %i.fr, %.v1549
  %i.xd = fadd <4 x float> %i.gw, %i.xa
  %i.xe = fadd <4 x float> %i.gx, %i.xb
  %i.xf = fadd <4 x float> %i.gy, %i.xc
  %i.xg = fsub <4 x float> %i.xd, %i.bq
  %i.xh = fsub <4 x float> %i.xe, %i.br
  %i.xi = fsub <4 x float> %i.xf, %i.bs
  %.v1550 = select <4 x i1> %.not1554, <4 x float> %i.xg, <4 x float> %i.wx
  %.v1551 = select <4 x i1> %.not1554, <4 x float> %i.xh, <4 x float> %i.wy
  %.v1555 = select <4 x i1> %.not1554, <4 x float> %i.xi, <4 x float> %i.wz
  %.v1556 = select <4 x i1> %.not1561, <4 x float> %.v1550, <4 x float> %i.wm
  %.v1557 = select <4 x i1> %.not1561, <4 x float> %.v1551, <4 x float> %i.wn
  %.v1558 = select <4 x i1> %.not1561, <4 x float> %.v1555, <4 x float> %i.wo
  %i.xj = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.hl) ; 3 uses
  %i.xk = fmul <4 x float> %i.hl, %i.xj
  %i.xl = fsub <4 x float> splat (float 1.000000e+00), %i.xk
  %i.xm = fmul <4 x float> %i.xj, %i.xl
  %i.xn = fadd <4 x float> %i.xj, %i.xm           ; 2 uses
  %i.xo = fmul <4 x float> %i.xn, %i.vx
  %i.xp = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.xo, <4 x float> splat (float 1.000000e+00))
  %i.xq = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.xp, <4 x float> zeroinitializer)
  %13 = bitcast <4 x float> %i.xq to <4 x i32>
  %14 = select <4 x i1> %.not1561, <4 x i32> zeroinitializer, <4 x i32> %13
  %15 = select <4 x i1> %.not1561, <4 x i1> %.not1554, <4 x i1> zeroinitializer
  %16 = select <4 x i1> %15, <4 x i32> splat (i32 1065353216), <4 x i32> zeroinitializer
  %17 = or <4 x i32> %14, %16
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  %i.xr = fadd <4 x float> %i.gs, %.v
  store <4 x i32> %17, ptr %11, align 16
  %i.xs = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  store <4 x float> zeroinitializer, ptr %i.xs, align 16
  %i.xt = getelementptr inbounds nuw i8, ptr %11, i64 32 ; 4 uses
  store <4 x float> %i.xr, ptr %i.xt, align 16
  %i.xu = getelementptr inbounds nuw i8, ptr %11, i64 48 ; 4 uses
  store <4 x float> %.v1556, ptr %i.xu, align 16
  %i.xv = getelementptr inbounds nuw i8, ptr %11, i64 64 ; 4 uses
  store <4 x float> %.v1557, ptr %i.xv, align 16
  %i.xw = getelementptr inbounds nuw i8, ptr %11, i64 80 ; 4 uses
  store <4 x float> %.v1558, ptr %i.xw, align 16
  %i.xx = zext i4 %i.vq to i64
  %i.xy = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.xz = getelementptr inbounds nuw [4 x i8], ptr %i.xy, i64 %2 ; 2 uses
  %i.ya = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 4 uses
  %i.yb = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.yc = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.yd = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ye = getelementptr inbounds nuw i8, ptr %7, i64 48
  %i.yf = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.yg = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.yh = getelementptr inbounds nuw i8, ptr %7, i64 96
  %.ptr12.i.i34.i = getelementptr inbounds nuw i8, ptr %7, i64 112 ; 2 uses
  %.ptr17.i.i38.i = getelementptr inbounds nuw i8, ptr %7, i64 128
  %i.yi = trunc i64 %2 to i32
  %i.yj = shl nuw i32 1, %i.yi
  %i.yk = sext i32 %i.yj to i64
  %i.yl = getelementptr inbounds [16 x i8], ptr @_ZN6embree16mm_lookupmask_psE, i64 %i.yk ; 2 uses
  %i.ym = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.yn = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.yo = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 2 uses
  %i.yp = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.yq = getelementptr inbounds nuw i8, ptr %5, i64 40
  br label %bb.w

bb.v:                                             ; preds = %.thread1531, %.thread
  %.2.i29.i1526 = phi i64 [ %i.ze, %.thread ], [ %i.abt, %.thread1531 ] ; 2 uses
  %i.yr = icmp eq i64 %.2.i29.i1526, 0
  br i1 %i.yr, label %_ZNK6embree4sse217Occluded1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i, label %bb.w, !prof !11

bb.w:                                             ; preds = %bb.v, %bb.u
  %.025.i28.i = phi i64 [ %i.xx, %bb.u ], [ %.2.i29.i1526, %bb.v ] ; 3 uses
  %i.ys = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.025.i28.i) #11, !srcloc !12 ; 10 uses
  %i.yt = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.ys
  %i.yu = load i32, ptr %i.yt, align 4            ; 2 uses
  %i.yv = zext i32 %i.yu to i64
  %i.yw = load ptr, ptr %i.e, align 8
  %i.yx = getelementptr inbounds nuw [8 x i8], ptr %i.yw, i64 %i.yv
  %i.yy = load ptr, ptr %i.yx, align 8            ; 5 uses
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 52
  %i.za = load i32, ptr %i.yz, align 4
  %i.zb = load i32, ptr %i.xz, align 4
  %i.zc = and i32 %i.zb, %i.za
  %i.zd = icmp eq i32 %i.zc, 0
  br i1 %i.zd, label %.thread, label %bb.x

.thread:                                          ; preds = %bb.w
  %i.ze = call noundef i64 asm "btc $1,$0", "=r,r,0,~{flags},~{dirflag},~{fpsr},~{flags}"(i64 %i.ys, i64 %.025.i28.i) #11, !srcloc !15
  br label %bb.v

bb.x:                                             ; preds = %bb.w
  %i.zf = load ptr, ptr %i.ya, align 8
  %i.zg = getelementptr inbounds nuw i8, ptr %i.zf, i64 16
  %i.zh = load ptr, ptr %i.zg, align 8
  %.not1562 = icmp eq ptr %i.zh, null
  br i1 %.not1562, label %bb.y, label %.critedge.i33.i, !prof !14

bb.y:                                             ; preds = %bb.x
  %i.zi = getelementptr inbounds nuw i8, ptr %i.yy, i64 72
  %i.zj = load ptr, ptr %i.zi, align 8
  %.not1563 = icmp eq ptr %i.zj, null
  br i1 %.not1563, label %_ZNK6embree4sse217Occluded1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i, label %.critedge.i33.i, !prof !14

.critedge.i33.i:                                  ; preds = %bb.y, %bb.x
  %i.zk = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.ys
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %i.ys
  %18 = load float, ptr %i.zk, align 4, !noalias !1647
  %i.zm = load float, ptr %i.zl, align 4, !noalias !1647
  %i.zn = load float, ptr %i.uz, align 4
  %i.zo = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %i.ys
  %i.zp = load float, ptr %i.zo, align 4
  store float %i.zp, ptr %i.uz, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.zq = load ptr, ptr %i.yb, align 8            ; 3 uses
  %i.zr = insertelement <4 x i32> poison, i32 %i.yu, i64 0
  %i.zs = shufflevector <4 x i32> %i.zr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.ys
  %i.zu = load i32, ptr %i.zt, align 4
  %i.zv = insertelement <4 x i32> poison, i32 %i.zu, i64 0
  %i.zw = shufflevector <4 x i32> %i.zv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.zx = insertelement <4 x float> poison, float %18, i64 0
  %i.zy = shufflevector <4 x float> %i.zx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.zz = insertelement <4 x float> poison, float %i.zm, i64 0
  %i.aaa = shufflevector <4 x float> %i.zz, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %i.ys
  %i.aac = load float, ptr %i.aab, align 4, !noalias !1648
  %i.aad = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %i.ys
  %i.aae = load float, ptr %i.aad, align 4, !noalias !1648
  %i.aaf = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %i.ys
  %i.aag = load float, ptr %i.aaf, align 4, !noalias !1648
  %i.aah = insertelement <4 x float> poison, float %i.aac, i64 0
  %i.aai = shufflevector <4 x float> %i.aah, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aaj = insertelement <4 x float> poison, float %i.aae, i64 0
  %i.aak = shufflevector <4 x float> %i.aaj, <4 x float> poison, <4 x i32> zeroinitializer
  %i.aal = insertelement <4 x float> poison, float %i.aag, i64 0
  %i.aam = shufflevector <4 x float> %i.aal, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.aai, ptr %7, align 16
  store <4 x float> %i.aak, ptr %i.yc, align 16
  store <4 x float> %i.aam, ptr %i.yd, align 16
  store <4 x float> %i.zy, ptr %i.ye, align 16
  store <4 x float> %i.aaa, ptr %i.yf, align 16
  store <4 x i32> %i.zw, ptr %i.yg, align 16
  store <4 x i32> %i.zs, ptr %i.yh, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i34.i, i8 -1, i64 32, i1 false)
  %i.aan = load i32, ptr %i.zq, align 4
  %i.aao = insertelement <4 x i32> poison, i32 %i.aan, i64 0
  %i.aap = shufflevector <4 x i32> %i.aao, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.aap, ptr %.ptr12.i.i34.i, align 16
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.zq, i64 4
  %i.aar = load i32, ptr %i.aaq, align 4
  %i.aas = insertelement <4 x i32> poison, i32 %i.aar, i64 0
  %i.aat = shufflevector <4 x i32> %i.aas, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.aat, ptr %.ptr17.i.i38.i, align 16
  %i.aau = load <2 x i64>, ptr %i.yl, align 16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10, !noalias !1649
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10, !noalias !1649
  store <2 x i64> %i.aau, ptr %6, align 16, !noalias !1649
  store ptr %6, ptr %5, align 8, !noalias !1649
  %i.aav = getelementptr inbounds nuw i8, ptr %i.yy, i64 24
  %i.aaw = load ptr, ptr %i.aav, align 8, !noalias !1649
  store ptr %i.aaw, ptr %i.ym, align 8, !noalias !1649
  store ptr %i.zq, ptr %i.yn, align 8, !noalias !1649
  store ptr %1, ptr %i.yo, align 8, !noalias !1649
  store ptr %7, ptr %i.yp, align 8, !noalias !1649
  store i32 4, ptr %i.yq, align 8, !noalias !1649
  %i.aax = getelementptr inbounds nuw i8, ptr %i.yy, i64 72
  %i.aay = load ptr, ptr %i.aax, align 8, !noalias !1650 ; 2 uses
  %.not.i.i43.i = icmp eq ptr %i.aay, null
  %i.aaz = bitcast <2 x i64> %i.aau to <4 x i32>
  br i1 %.not.i.i43.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %.critedge.i33.i
  call void %i.aay(ptr noundef nonnull %5), !noalias !1650, !inline_history !1598
  %.pre = load <4 x i32>, ptr %6, align 16, !noalias !1651
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %.critedge.i33.i
  %i.aba = phi <4 x i32> [ %.pre, %bb.z ], [ %i.aaz, %.critedge.i33.i ] ; 3 uses
  %i.abb = icmp ne <4 x i32> %i.aba, zeroinitializer ; 2 uses
  %i.abc = bitcast <4 x i1> %i.abb to i4
  %i.abd = icmp eq i4 %i.abc, 0
  br i1 %i.abd, label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i45.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.abe = load ptr, ptr %i.ya, align 8, !noalias !1650 ; 2 uses
  %i.abf = getelementptr inbounds nuw i8, ptr %i.abe, i64 16
  %i.abg = load ptr, ptr %i.abf, align 8, !noalias !1650 ; 2 uses
  %.not14.i.i44.i = icmp eq ptr %i.abg, null
  br i1 %.not14.i.i44.i, label %bb.af, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.abh = load i32, ptr %i.abe, align 8, !noalias !1650
  %i.abi = and i32 %i.abh, 2
  %.not1564 = icmp eq i32 %i.abi, 0
  br i1 %.not1564, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  %i.abj = getelementptr inbounds nuw i8, ptr %i.yy, i64 60
  %i.abk = load i32, ptr %i.abj, align 4, !noalias !1650
  %i.abl = and i32 %i.abk, 4194304
  %.not1565 = icmp eq i32 %i.abl, 0
  br i1 %.not1565, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void %i.abg(ptr noundef nonnull %5), !noalias !1650, !inline_history !1598
  %.pre1594 = load <4 x i32>, ptr %6, align 16, !noalias !1652
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad, %bb.ab
  %i.abm = phi <4 x i32> [ %.pre1594, %bb.ae ], [ %i.aba, %bb.ad ], [ %i.aba, %bb.ab ]
  %i.abn = icmp ne <4 x i32> %i.abm, zeroinitializer ; 2 uses
  %i.abo = load ptr, ptr %i.yo, align 8, !noalias !1650
  %i.abp = getelementptr inbounds nuw i8, ptr %i.abo, i64 128 ; 2 uses
  %i.abq = load <4 x float>, ptr %i.abp, align 16, !noalias !1653
  %i.abr = select <4 x i1> %i.abn, <4 x float> splat (float -inf), <4 x float> %i.abq
  store <4 x float> %i.abr, ptr %i.abp, align 16, !noalias !1650
  br label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i45.i

_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i45.i: ; preds = %bb.af, %bb.aa
  %.sroa.0834.0.in.in = phi <4 x i1> [ %i.abb, %bb.aa ], [ %i.abn, %bb.af ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10, !noalias !1649
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10, !noalias !1649
  %i.abs = bitcast <4 x i1> %.sroa.0834.0.in.in to i4
  %.not1566 = icmp eq i4 %i.abs, 0
  br i1 %.not1566, label %.thread1531, label %bb.ag

.thread1531:                                      ; preds = %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i45.i
  store float %i.zn, ptr %i.uz, align 4
  %i.abt = call noundef i64 asm "btc $1,$0", "=r,r,0,~{flags},~{dirflag},~{fpsr},~{flags}"(i64 %i.ys, i64 %.025.i28.i) #11, !srcloc !15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %bb.v

bb.ag:                                            ; preds = %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i45.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  br label %_ZNK6embree4sse217Occluded1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i

_ZNK6embree4sse217Occluded1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i: ; preds = %bb.y, %bb.v, %bb.ag
  %.3.i32.i = phi i1 [ true, %bb.ag ], [ false, %bb.v ], [ true, %bb.y ] ; 2 uses
  %19 = load float, ptr %i.uz, align 4, !noalias !1654 ; 2 uses
  %i.abu = insertelement <4 x float> poison, float %19, i64 0
  %i.abv = shufflevector <4 x float> %i.abu, <4 x float> poison, <4 x i32> zeroinitializer
  %i.abw = fcmp ole <4 x float> %i.vi, %i.abv
  %i.abx = and <4 x i1> %i.vo, %i.abw
  %i.aby = and <4 x i1> %i.vg, %i.abx
  %i.abz = bitcast <4 x i1> %i.aby to i4          ; 2 uses
  %i.aca = icmp eq i4 %i.abz, 0
  br i1 %i.aca, label %_ZNK6embree4sse217Occluded1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i, label %bb.ah, !prof !11

bb.ah:                                            ; preds = %_ZNK6embree4sse217Occluded1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i
  %i.acb = fcmp une <4 x float> %i.uv, %i.ov
  %i.acc = fcmp une <4 x float> %i.uv, %i.qs
  %.not1578 = and <4 x i1> %i.acb, %i.acc         ; 5 uses
  %i.acd = fcmp une <4 x float> %i.uv, %.sroa.0375.0
  %i.ace = fcmp une <4 x float> %i.uv, %.sroa.0372.0
  %.not1571 = and <4 x i1> %i.acd, %i.ace         ; 4 uses
  %i.acf = load <4 x i32>, ptr @_ZN6embree16mm_lookupmask_psE, align 16 ; 5 uses
  %i.acg = and <4 x i32> %i.acf, %.sroa.183.0
  %i.ach = xor <4 x i32> %i.acf, splat (i32 -1)   ; 4 uses
  %i.aci = and <4 x i32> %.sroa.195.0, %i.ach
  %i.acj = or <4 x i32> %i.acg, %i.aci
  %i.ack = bitcast <4 x i32> %i.acj to <4 x float> ; 4 uses
  %i.acl = and <4 x i32> %i.acf, %.sroa.190.0
  %i.acm = and <4 x i32> %.sroa.202.0, %i.ach
  %i.acn = or <4 x i32> %i.acl, %i.acm
  %i.aco = bitcast <4 x i32> %i.acn to <4 x float> ; 3 uses
  %i.acp = fmul <4 x float> %i.fh, %i.aco
  %i.acq = fmul <4 x float> %i.fm, %i.aco
  %i.acr = fmul <4 x float> %i.fr, %i.aco
  %i.acs = fadd <4 x float> %i.hm, %i.acp
  %i.act = fadd <4 x float> %i.hn, %i.acq
  %i.acu = fadd <4 x float> %i.ho, %i.acr
  %i.acv = fmul <4 x float> %i.hl, %i.acs
  %i.acw = fmul <4 x float> %i.hl, %i.act
  %i.acx = fmul <4 x float> %i.hl, %i.acu
  %i.acy = fmul <4 x float> %i.gz, %i.ack
  %i.acz = fmul <4 x float> %i.ha, %i.ack
  %i.ada = fmul <4 x float> %i.hb, %i.ack
  %i.adb = fsub <4 x float> %i.acv, %i.acy
  %i.adc = fsub <4 x float> %i.acw, %i.acz
  %i.add = fsub <4 x float> %i.acx, %i.ada
  %i.ade = and <4 x i32> %i.acf, %.sroa.215.0
  %i.adf = and <4 x i32> %.sroa.228.0, %i.ach
  %i.adg = or <4 x i32> %i.ade, %i.adf
  %i.adh = bitcast <4 x i32> %i.adg to <4 x float> ; 3 uses
  %i.adi = fmul <4 x float> %i.fh, %i.adh
  %i.adj = fmul <4 x float> %i.fm, %i.adh
  %i.adk = fmul <4 x float> %i.fr, %i.adh
  %i.adl = fadd <4 x float> %i.gw, %i.adi
  %i.adm = fadd <4 x float> %i.gx, %i.adj
  %i.adn = fadd <4 x float> %i.gy, %i.adk
  %i.ado = fsub <4 x float> %i.adl, %i.ao
  %i.adp = fsub <4 x float> %i.adm, %i.ap
  %i.adq = fsub <4 x float> %i.adn, %i.aq
  %i.adr = and <4 x i32> %i.acf, %i.so
  %i.ads = and <4 x i32> %i.ach, %i.to
  %i.adt = or <4 x i32> %i.adr, %i.ads
  %i.adu = bitcast <4 x i32> %i.adt to <4 x float> ; 3 uses
  %i.adv = fmul <4 x float> %i.fh, %i.adu
  %i.adw = fmul <4 x float> %i.fm, %i.adu
  %i.adx = fmul <4 x float> %i.fr, %i.adu
  %i.ady = fadd <4 x float> %i.gw, %i.adv
  %i.adz = fadd <4 x float> %i.gx, %i.adw
  %i.aea = fadd <4 x float> %i.gy, %i.adx
  %i.aeb = fsub <4 x float> %i.ady, %i.bq
  %i.aec = fsub <4 x float> %i.adz, %i.br
  %i.aed = fsub <4 x float> %i.aea, %i.bs
  %.v1567 = select <4 x i1> %.not1571, <4 x float> %i.aeb, <4 x float> %i.ado
  %.v1568 = select <4 x i1> %.not1571, <4 x float> %i.aec, <4 x float> %i.adp
  %.v1572 = select <4 x i1> %.not1571, <4 x float> %i.aed, <4 x float> %i.adq
  %.v1573 = select <4 x i1> %.not1578, <4 x float> %.v1567, <4 x float> %i.adb
  %.v1574 = select <4 x i1> %.not1578, <4 x float> %.v1568, <4 x float> %i.adc
  %.v1575 = select <4 x i1> %.not1578, <4 x float> %.v1572, <4 x float> %i.add
  %i.aee = fmul <4 x float> %i.xn, %i.ack
  %i.aef = call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.aee, <4 x float> splat (float 1.000000e+00))
  %i.aeg = call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.aef, <4 x float> zeroinitializer)
  %20 = bitcast <4 x float> %i.aeg to <4 x i32>
  %21 = select <4 x i1> %.not1578, <4 x i32> zeroinitializer, <4 x i32> %20
  %22 = select <4 x i1> %.not1578, <4 x i1> %.not1571, <4 x i1> zeroinitializer
  %23 = select <4 x i1> %22, <4 x i32> splat (i32 1065353216), <4 x i32> zeroinitializer
  %24 = or <4 x i32> %21, %23
  store <4 x i32> %24, ptr %11, align 16
  store <4 x float> zeroinitializer, ptr %i.xs, align 16
  store <4 x float> %i.vi, ptr %i.xt, align 16
  store <4 x float> %.v1573, ptr %i.xu, align 16
  store <4 x float> %.v1574, ptr %i.xv, align 16
  store <4 x float> %.v1575, ptr %i.xw, align 16
  %i.aeh = load ptr, ptr %3, align 8
  %i.aei = zext i4 %i.abz to i64
  %i.aej = getelementptr inbounds nuw i8, ptr %i.aeh, i64 488
  %i.aek = getelementptr inbounds nuw i8, ptr %10, i64 16
  %i.ael = getelementptr inbounds nuw i8, ptr %10, i64 32
  %i.aem = getelementptr inbounds nuw i8, ptr %10, i64 48
  %i.aen = getelementptr inbounds nuw i8, ptr %10, i64 64
  %i.aeo = getelementptr inbounds nuw i8, ptr %10, i64 80
  %i.aep = getelementptr inbounds nuw i8, ptr %10, i64 96
  %.ptr12.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 112 ; 2 uses
  %.ptr17.i.i.i = getelementptr inbounds nuw i8, ptr %10, i64 128
  %i.aeq = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.aer = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.aes = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %i.aet = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.aeu = getelementptr inbounds nuw i8, ptr %8, i64 40
  br label %bb.aj

bb.ai:                                            ; preds = %.thread1544, %.thread1535
  %.2.i.i1539 = phi i64 [ %i.afi, %.thread1535 ], [ %i.ahx, %.thread1544 ] ; 2 uses
  %i.aev = icmp eq i64 %.2.i.i1539, 0
  br i1 %i.aev, label %_ZNK6embree4sse217Occluded1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i, label %bb.aj, !prof !11

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %.025.i.i = phi i64 [ %i.aei, %bb.ah ], [ %.2.i.i1539, %bb.ai ] ; 3 uses
  %i.aew = call noundef i64 asm "bsf $1,$0", "=r,r,~{dirflag},~{fpsr},~{flags}"(i64 %.025.i.i) #11, !srcloc !12 ; 10 uses
  %i.aex = getelementptr inbounds nuw [4 x i8], ptr %12, i64 %i.aew
  %i.aey = load i32, ptr %i.aex, align 4          ; 2 uses
  %i.aez = zext i32 %i.aey to i64
  %i.afa = load ptr, ptr %i.aej, align 8
  %i.afb = getelementptr inbounds nuw [8 x i8], ptr %i.afa, i64 %i.aez
  %i.afc = load ptr, ptr %i.afb, align 8          ; 5 uses
  %i.afd = getelementptr inbounds nuw i8, ptr %i.afc, i64 52
  %i.afe = load i32, ptr %i.afd, align 4
  %i.aff = load i32, ptr %i.xz, align 4
  %i.afg = and i32 %i.aff, %i.afe
  %i.afh = icmp eq i32 %i.afg, 0
  br i1 %i.afh, label %.thread1535, label %bb.ak

.thread1535:                                      ; preds = %bb.aj
  %i.afi = call noundef i64 asm "btc $1,$0", "=r,r,0,~{flags},~{dirflag},~{fpsr},~{flags}"(i64 %i.aew, i64 %.025.i.i) #11, !srcloc !15
  br label %bb.ai

bb.ak:                                            ; preds = %bb.aj
  %i.afj = load ptr, ptr %i.ya, align 8
  %i.afk = getelementptr inbounds nuw i8, ptr %i.afj, i64 16
  %i.afl = load ptr, ptr %i.afk, align 8
  %.not1579 = icmp eq ptr %i.afl, null
  br i1 %.not1579, label %bb.al, label %.critedge.i.i, !prof !14

bb.al:                                            ; preds = %bb.ak
  %i.afm = getelementptr inbounds nuw i8, ptr %i.afc, i64 72
  %i.afn = load ptr, ptr %i.afm, align 8
  %.not1580 = icmp eq ptr %i.afn, null
  br i1 %.not1580, label %_ZNK6embree4sse217Occluded1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i, label %.critedge.i.i, !prof !14

.critedge.i.i:                                    ; preds = %bb.al, %bb.ak
  %i.afo = getelementptr inbounds nuw [4 x i8], ptr %11, i64 %i.aew
  %i.afp = getelementptr inbounds nuw [4 x i8], ptr %i.xs, i64 %i.aew
  %i.afq = load float, ptr %i.afo, align 4, !noalias !1655
  %i.afr = load float, ptr %i.afp, align 4, !noalias !1655
  %i.afs = getelementptr inbounds nuw [4 x i8], ptr %i.xt, i64 %i.aew
  %i.aft = load float, ptr %i.afs, align 4
  store float %i.aft, ptr %i.uz, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.afu = load ptr, ptr %i.yb, align 8           ; 3 uses
  %i.afv = insertelement <4 x i32> poison, i32 %i.aey, i64 0
  %i.afw = shufflevector <4 x i32> %i.afv, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.afx = getelementptr inbounds nuw [4 x i8], ptr %i.ek, i64 %i.aew
  %i.afy = load i32, ptr %i.afx, align 4
  %i.afz = insertelement <4 x i32> poison, i32 %i.afy, i64 0
  %i.aga = shufflevector <4 x i32> %i.afz, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.agb = insertelement <4 x float> poison, float %i.afq, i64 0
  %i.agc = shufflevector <4 x float> %i.agb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agd = insertelement <4 x float> poison, float %i.afr, i64 0
  %i.age = shufflevector <4 x float> %i.agd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agf = getelementptr inbounds nuw [4 x i8], ptr %i.xu, i64 %i.aew
  %i.agg = load float, ptr %i.agf, align 4, !noalias !1656
  %i.agh = getelementptr inbounds nuw [4 x i8], ptr %i.xv, i64 %i.aew
  %i.agi = load float, ptr %i.agh, align 4, !noalias !1656
  %i.agj = getelementptr inbounds nuw [4 x i8], ptr %i.xw, i64 %i.aew
  %i.agk = load float, ptr %i.agj, align 4, !noalias !1656
  %i.agl = insertelement <4 x float> poison, float %i.agg, i64 0
  %i.agm = shufflevector <4 x float> %i.agl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agn = insertelement <4 x float> poison, float %i.agi, i64 0
  %i.ago = shufflevector <4 x float> %i.agn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.agp = insertelement <4 x float> poison, float %i.agk, i64 0
  %i.agq = shufflevector <4 x float> %i.agp, <4 x float> poison, <4 x i32> zeroinitializer
  store <4 x float> %i.agm, ptr %10, align 16
  store <4 x float> %i.ago, ptr %i.aek, align 16
  store <4 x float> %i.agq, ptr %i.ael, align 16
  store <4 x float> %i.agc, ptr %i.aem, align 16
  store <4 x float> %i.age, ptr %i.aen, align 16
  store <4 x i32> %i.aga, ptr %i.aeo, align 16
  store <4 x i32> %i.afw, ptr %i.aep, align 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %.ptr12.i.i.i, i8 -1, i64 32, i1 false)
  %i.agr = load i32, ptr %i.afu, align 4
  %i.ags = insertelement <4 x i32> poison, i32 %i.agr, i64 0
  %i.agt = shufflevector <4 x i32> %i.ags, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.agt, ptr %.ptr12.i.i.i, align 16
  %i.agu = getelementptr inbounds nuw i8, ptr %i.afu, i64 4
  %i.agv = load i32, ptr %i.agu, align 4
  %i.agw = insertelement <4 x i32> poison, i32 %i.agv, i64 0
  %i.agx = shufflevector <4 x i32> %i.agw, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.agx, ptr %.ptr17.i.i.i, align 16
  %i.agy = load <2 x i64>, ptr %i.yl, align 16    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10, !noalias !1657
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10, !noalias !1657
  store <2 x i64> %i.agy, ptr %9, align 16, !noalias !1657
  store ptr %9, ptr %8, align 8, !noalias !1657
  %i.agz = getelementptr inbounds nuw i8, ptr %i.afc, i64 24
  %i.aha = load ptr, ptr %i.agz, align 8, !noalias !1657
  store ptr %i.aha, ptr %i.aeq, align 8, !noalias !1657
  store ptr %i.afu, ptr %i.aer, align 8, !noalias !1657
  store ptr %1, ptr %i.aes, align 8, !noalias !1657
  store ptr %10, ptr %i.aet, align 8, !noalias !1657
  store i32 4, ptr %i.aeu, align 8, !noalias !1657
  %i.ahb = getelementptr inbounds nuw i8, ptr %i.afc, i64 72
  %i.ahc = load ptr, ptr %i.ahb, align 8, !noalias !1658 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ahc, null
  %i.ahd = bitcast <2 x i64> %i.agy to <4 x i32>
  br i1 %.not.i.i.i, label %bb.an, label %bb.am

bb.am:                                            ; preds = %.critedge.i.i
  call void %i.ahc(ptr noundef nonnull %8), !noalias !1658, !inline_history !1598
  %.pre1595.a = load <4 x i32>, ptr %9, align 16, !noalias !1659
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %.critedge.i.i
  %i.ahe = phi <4 x i32> [ %.pre1595.a, %bb.am ], [ %i.ahd, %.critedge.i.i ] ; 3 uses
  %i.ahf = icmp ne <4 x i32> %i.ahe, zeroinitializer ; 2 uses
  %i.ahg = bitcast <4 x i1> %i.ahf to i4
  %i.ahh = icmp eq i4 %i.ahg, 0
  br i1 %i.ahh, label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.ahi = load ptr, ptr %i.ya, align 8, !noalias !1658 ; 2 uses
  %i.ahj = getelementptr inbounds nuw i8, ptr %i.ahi, i64 16
  %i.ahk = load ptr, ptr %i.ahj, align 8, !noalias !1658 ; 2 uses
  %.not14.i.i.i = icmp eq ptr %i.ahk, null
  br i1 %.not14.i.i.i, label %bb.as, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ahl = load i32, ptr %i.ahi, align 8, !noalias !1658
  %i.ahm = and i32 %i.ahl, 2
  %.not1581 = icmp eq i32 %i.ahm, 0
  br i1 %.not1581, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.afc, i64 60
  %i.aho = load i32, ptr %i.ahn, align 4, !noalias !1658
  %i.ahp = and i32 %i.aho, 4194304
  %.not1582 = icmp eq i32 %i.ahp, 0
  br i1 %.not1582, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  call void %i.ahk(ptr noundef nonnull %8), !noalias !1658, !inline_history !1598
  %.pre1596 = load <4 x i32>, ptr %9, align 16, !noalias !1660
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ao
  %i.ahq = phi <4 x i32> [ %.pre1596, %bb.ar ], [ %i.ahe, %bb.aq ], [ %i.ahe, %bb.ao ]
  %i.ahr = icmp ne <4 x i32> %i.ahq, zeroinitializer ; 2 uses
  %i.ahs = load ptr, ptr %i.aes, align 8, !noalias !1658
  %i.aht = getelementptr inbounds nuw i8, ptr %i.ahs, i64 128 ; 2 uses
  %i.ahu = load <4 x float>, ptr %i.aht, align 16, !noalias !1661
  %i.ahv = select <4 x i1> %i.ahr, <4 x float> splat (float -inf), <4 x float> %i.ahu
  store <4 x float> %i.ahv, ptr %i.aht, align 16, !noalias !1658
  br label %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i

_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i: ; preds = %bb.as, %bb.an
  %.sroa.0799.0.in.in = phi <4 x i1> [ %i.ahf, %bb.an ], [ %i.ahr, %bb.as ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #10, !noalias !1657
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #10, !noalias !1657
  %i.ahw = bitcast <4 x i1> %.sroa.0799.0.in.in to i4
  %.not1583 = icmp eq i4 %i.ahw, 0
  br i1 %.not1583, label %.thread1544, label %bb.at

.thread1544:                                      ; preds = %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i
  store float %19, ptr %i.uz, align 4
  %i.ahx = call noundef i64 asm "btc $1,$0", "=r,r,0,~{flags},~{dirflag},~{fpsr},~{flags}"(i64 %i.aew, i64 %.025.i.i) #11, !srcloc !15
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %bb.ai

bb.at:                                            ; preds = %_ZN6embree4sse224runOcclusionFilterHelperILi4EEENS_6vtypesIXT_EE5vboolEP27RTCFilterFunctionNArgumentsPKNS_8GeometryEPNS_15RayQueryContextE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #10
  br label %_ZNK6embree4sse217Occluded1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i

_ZNK6embree4sse217Occluded1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i: ; preds = %bb.ai, %bb.al, %bb.at, %_ZNK6embree4sse217Occluded1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i
  %.0.i = phi i1 [ %.3.i32.i, %_ZNK6embree4sse217Occluded1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit48.i ], [ true, %bb.at ], [ true, %bb.al ], [ %.3.i32.i, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #10
  br label %_ZN6embree4sse220__roundline_internalL19intersectConeSphereILi4ENS0_17Occluded1KEpilogMILi4ELi4ELb1EEENS0_28RoundLinearCurveIntersectorKILi4ELi4EE8ray_tfarEEEbRKNS_6vtypesIXT_EE5vboolERKNS_4Vec3INS9_6vfloatEEESH_RKSE_RKT1_RKNS_4Vec4ISE_EESQ_SQ_SQ_RKT0_.exit

_ZN6embree4sse220__roundline_internalL19intersectConeSphereILi4ENS0_17Occluded1KEpilogMILi4ELi4ELb1EEENS0_28RoundLinearCurveIntersectorKILi4ELi4EE8ray_tfarEEEbRKNS_6vtypesIXT_EE5vboolERKNS_4Vec3INS9_6vfloatEEESH_RKSE_RKT1_RKNS_4Vec4ISE_EESQ_SQ_SQ_RKT0_.exit: ; preds = %bb.t, %_ZNK6embree4sse217Occluded1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i, %_ZN6embree4sse220__roundline_internal23ConeGeometryIntersectorILi4EE13intersectConeERNS_11vboolf_implILi4EEERNS_11vfloat_implILi4EEES9_.exit.i
  %.2.i = phi i1 [ false, %_ZN6embree4sse220__roundline_internal23ConeGeometryIntersectorILi4EE13intersectConeERNS_11vboolf_implILi4EEERNS_11vfloat_implILi4EEES9_.exit.i ], [ %.0.i, %_ZNK6embree4sse217Occluded1KEpilogMILi4ELi4ELb1EEclINS0_24RoundLineIntersectorHitMILi4EEEEEbRKNS_11vboolf_implILi4EEERT_.exit.i ], [ false, %bb.t ]
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #10
  ret i1 %.2.i
}

; Function Attrs: alwaysinline mustprogress uwtable
define linkonce_odr hidden void @_ZN6embree4sse229FlatLinearCurveMiIntersector1ILi4ELb1EE9intersectERKNS0_21CurvePrecalculations1ERNS_7RayHitKILi1EEEPNS_15RayQueryContextERKNS_6LineMiILi4EEE(ptr noundef nonnull align 16 dereferenceable(64) %0, ptr noundef nonnull align 16 dereferenceable(84) %1, ptr noundef %2, ptr noundef nonnull align 16 dereferenceable(48) %3) #4 comdat align 2 {
bb.a:
  %4 = alloca %struct.RTCFilterFunctionNArguments, align 8 ; 13 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %5 = alloca %"struct.embree::vboolf_impl", align 16 ; 8 uses
  %6 = alloca %"struct.embree::HitK", align 16    ; 12 uses
  %7 = alloca %"struct.embree::sse2::LineIntersectorHitM", align 16 ; 10 uses
  %8 = alloca %"struct.embree::vuint_impl", align 16 ; 4 uses
  %i.b = load ptr, ptr %2, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.d = load i32, ptr %i.c, align 4              ; 2 uses
  %i.e = zext i32 %i.d to i64
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 488 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.e
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.k = load i32, ptr %i.j, align 16             ; 2 uses
  %i.l = zext i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 144
  %i.n = load ptr, ptr %i.m, align 8              ; 8 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 160
  %i.p = load i64, ptr %i.o, align 8              ; 8 uses
  %i.q = mul i64 %i.p, %i.l
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.q
  %i.s = load <4 x float>, ptr %i.r, align 1, !noalias !1694 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.u = load i32, ptr %i.t, align 4              ; 2 uses
  %i.v = zext i32 %i.u to i64
  %i.w = mul i64 %i.p, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.w
  %i.y = load <4 x float>, ptr %i.x, align 1, !noalias !1695 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.aa = load i32, ptr %i.z, align 8             ; 2 uses
  %i.ab = zext i32 %i.aa to i64
  %i.ac = mul i64 %i.p, %i.ab
  %i.ad = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ac
  %i.ae = load <4 x float>, ptr %i.ad, align 1, !noalias !1696 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 28
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = zext i32 %i.ag to i64
  %i.ai = mul i64 %i.p, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ai
  %i.ak = load <4 x float>, ptr %i.aj, align 1, !noalias !1697 ; 2 uses
  %i.al = shufflevector <4 x float> %i.s, <4 x float> %i.ae, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.am = shufflevector <4 x float> %i.s, <4 x float> %i.ae, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.an = shufflevector <4 x float> %i.y, <4 x float> %i.ak, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.ao = shufflevector <4 x float> %i.y, <4 x float> %i.ak, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ap = shufflevector <4 x float> %i.al, <4 x float> %i.an, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.aq = shufflevector <4 x float> %i.al, <4 x float> %i.an, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.ar = shufflevector <4 x float> %i.am, <4 x float> %i.ao, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.as = shufflevector <4 x float> %i.am, <4 x float> %i.ao, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.at = add i32 %i.k, 1
  %i.au = zext i32 %i.at to i64
  %i.av = mul i64 %i.p, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.av
  %i.ax = load <4 x float>, ptr %i.aw, align 1, !noalias !1698 ; 2 uses
  %i.ay = add i32 %i.u, 1
  %i.az = zext i32 %i.ay to i64
  %i.ba = mul i64 %i.p, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.ba
  %i.bc = load <4 x float>, ptr %i.bb, align 1, !noalias !1699 ; 2 uses
  %i.bd = add i32 %i.aa, 1
  %i.be = zext i32 %i.bd to i64
  %i.bf = mul i64 %i.p, %i.be
  %i.bg = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bf
  %i.bh = load <4 x float>, ptr %i.bg, align 1, !noalias !1700 ; 2 uses
  %i.bi = add i32 %i.ag, 1
  %i.bj = zext i32 %i.bi to i64
  %i.bk = mul i64 %i.p, %i.bj
  %i.bl = getelementptr inbounds nuw i8, ptr %i.n, i64 %i.bk
  %i.bm = load <4 x float>, ptr %i.bl, align 1, !noalias !1701 ; 2 uses
  %i.bn = shufflevector <4 x float> %i.ax, <4 x float> %i.bh, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bo = shufflevector <4 x float> %i.ax, <4 x float> %i.bh, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bp = shufflevector <4 x float> %i.bc, <4 x float> %i.bm, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bq = shufflevector <4 x float> %i.bc, <4 x float> %i.bm, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.br = shufflevector <4 x float> %i.bn, <4 x float> %i.bp, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bs = shufflevector <4 x float> %i.bn, <4 x float> %i.bp, <4 x i32> <i32 2, i32 6, i32 3, i32 7> ; 2 uses
  %i.bt = shufflevector <4 x float> %i.bo, <4 x float> %i.bq, <4 x i32> <i32 0, i32 4, i32 1, i32 5> ; 2 uses
  %i.bu = shufflevector <4 x float> %i.bo, <4 x float> %i.bq, <4 x i32> <i32 2, i32 6, i32 3, i32 7>
  %i.bv = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bw = load <4 x i32>, ptr %i.bv, align 16, !noalias !1702
  %i.bx = icmp ne <4 x i32> %i.bw, splat (i32 -1)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.by = insertelement <4 x i32> poison, i32 %i.d, i64 0
  %i.bz = shufflevector <4 x i32> %i.by, <4 x i32> poison, <4 x i32> zeroinitializer
  store <4 x i32> %i.bz, ptr %8, align 16
  %i.ca = load float, ptr %0, align 16
  %i.cb = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ce = load <3 x float>, ptr %i.cd, align 16   ; 3 uses
  %i.cf = shufflevector <3 x float> %i.ce, <3 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cg = shufflevector <3 x float> %i.ce, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.ch = shufflevector <3 x float> %i.ce, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cj = load <3 x float>, ptr %i.ci, align 16   ; 3 uses
  %i.ck = shufflevector <3 x float> %i.cj, <3 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cl = shufflevector <3 x float> %i.cj, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cm = shufflevector <3 x float> %i.cj, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.co = load <3 x float>, ptr %i.cn, align 16   ; 3 uses
  %i.cp = shufflevector <3 x float> %i.co, <3 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cq = shufflevector <3 x float> %i.co, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cr = shufflevector <3 x float> %i.co, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.cs = load <4 x i32>, ptr %1, align 16, !noalias !1703 ; 2 uses
  %i.ct = bitcast <4 x i32> %i.cs to <4 x float>  ; 3 uses
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cv = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 2 uses
  %i.cw = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2> ; 2 uses
  %i.cx = fsub <4 x float> %i.ap, %i.cu           ; 3 uses
  %i.cy = fsub <4 x float> %i.aq, %i.cv           ; 3 uses
  %i.cz = fsub <4 x float> %i.ar, %i.cw           ; 3 uses
  %i.da = fmul <4 x float> %i.cp, %i.cz
  %i.db = fmul <4 x float> %i.cq, %i.cz
  %i.dc = fmul <4 x float> %i.cr, %i.cz
  %i.dd = fmul <4 x float> %i.ck, %i.cy
  %i.de = fadd <4 x float> %i.dd, %i.da
  %i.df = fmul <4 x float> %i.cl, %i.cy
  %i.dg = fadd <4 x float> %i.df, %i.db
  %i.dh = fmul <4 x float> %i.cm, %i.cy
  %i.di = fadd <4 x float> %i.dh, %i.dc
  %i.dj = fmul <4 x float> %i.cf, %i.cx
  %i.dk = fadd <4 x float> %i.dj, %i.de           ; 3 uses
  %i.dl = fmul <4 x float> %i.cg, %i.cx
  %i.dm = fadd <4 x float> %i.dl, %i.dg           ; 3 uses
  %i.dn = fmul <4 x float> %i.ch, %i.cx
  %i.do = fadd <4 x float> %i.dn, %i.di           ; 2 uses
  %i.dp = fsub <4 x float> %i.br, %i.cu           ; 3 uses
  %i.dq = fsub <4 x float> %i.bs, %i.cv           ; 3 uses
  %i.dr = fsub <4 x float> %i.bt, %i.cw           ; 3 uses
  %i.ds = fmul <4 x float> %i.cp, %i.dr
  %i.dt = fmul <4 x float> %i.cq, %i.dr
  %i.du = fmul <4 x float> %i.cr, %i.dr
  %i.dv = fmul <4 x float> %i.ck, %i.dq
  %i.dw = fadd <4 x float> %i.dv, %i.ds
  %i.dx = fmul <4 x float> %i.cl, %i.dq
  %i.dy = fadd <4 x float> %i.dx, %i.dt
  %i.dz = fmul <4 x float> %i.cm, %i.dq
  %i.ea = fadd <4 x float> %i.dz, %i.du
  %i.eb = fmul <4 x float> %i.cf, %i.dp
  %i.ec = fadd <4 x float> %i.eb, %i.dw
  %i.ed = fmul <4 x float> %i.cg, %i.dp
  %i.ee = fadd <4 x float> %i.ed, %i.dy
  %i.ef = fmul <4 x float> %i.ch, %i.dp
  %i.eg = fadd <4 x float> %i.ef, %i.ea
  %i.eh = fsub <4 x float> %i.ec, %i.dk           ; 4 uses
  %i.ei = fsub <4 x float> %i.ee, %i.dm           ; 4 uses
  %i.ej = fsub <4 x float> %i.eg, %i.do
  %i.ek = fsub <4 x float> %i.bu, %i.as
  %i.el = fneg <4 x float> %i.dm
  %i.em = fmul <4 x float> %i.ei, %i.el
  %i.en = fmul <4 x float> %i.dk, %i.eh
  %i.eo = fsub <4 x float> %i.em, %i.en
  %i.ep = fmul <4 x float> %i.ei, %i.ei
  %i.eq = fmul <4 x float> %i.eh, %i.eh
  %i.er = fadd <4 x float> %i.eq, %i.ep           ; 2 uses
  %i.es = tail call noundef <4 x float> @llvm.x86.sse.rcp.ps(<4 x float> %i.er) ; 3 uses
  %i.et = fmul <4 x float> %i.es, %i.er
  %i.eu = fsub <4 x float> splat (float 1.000000e+00), %i.et
  %i.ev = fmul <4 x float> %i.es, %i.eu
  %i.ew = fadd <4 x float> %i.es, %i.ev
  %i.ex = fmul <4 x float> %i.eo, %i.ew
  %i.ey = tail call noundef <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ex, <4 x float> splat (float 1.000000e+00))
  %i.ez = tail call noundef <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ey, <4 x float> zeroinitializer) ; 5 uses
  %i.fa = fmul <4 x float> %i.ez, %i.eh
  %i.fb = fadd <4 x float> %i.dk, %i.fa           ; 2 uses
  %i.fc = fmul <4 x float> %i.ez, %i.ei
  %i.fd = fadd <4 x float> %i.dm, %i.fc           ; 2 uses
  %i.fe = fmul <4 x float> %i.ez, %i.ej
  %i.ff = fadd <4 x float> %i.do, %i.fe           ; 7 uses
  %i.fg = fmul <4 x float> %i.ek, %i.ez
  %i.fh = fadd <4 x float> %i.as, %i.fg           ; 3 uses
  %i.fi = fmul <4 x float> %i.fd, %i.fd
  %i.fj = fmul <4 x float> %i.fb, %i.fb
  %i.fk = fadd <4 x float> %i.fj, %i.fi
  %i.fl = fmul <4 x float> %i.fh, %i.fh
  %i.fm = fcmp ole <4 x float> %i.fk, %i.fl
  %i.fn = bitcast <4 x i32> %i.cs to <4 x float>
  %i.fo = shufflevector <4 x float> %i.fn, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3>
end_hunk_3
