inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_ZNK11btMultiBody12solveImatrixERK20btSpatialForceVectorR21btSpatialMotionVector:bb.a
  %i.lf = fmul float %i.fk, %i.ko
  %i.lg = tail call float @llvm.fmuladd.f32(float %i.eh, float %i.kl, float %i.lf)
  %i.lh = tail call noundef float @llvm.fmuladd.f32(float %i.fg, float %i.ks, float %i.lg) ; 2 uses
  %i.li = fmul float %i.fi, %i.ko
  %i.lj = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.kl, float %i.li)
  %i.lk = tail call noundef float @llvm.fmuladd.f32(float %i.bd, float %i.ks, float %i.lj) ; 2 uses
  %i.ll = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = fmul <2 x float> %i.dt, %i.ll
  %i.ln = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.ln, <2 x float> %i.lm)
  %i.lp = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.lp, <2 x float> %i.lo) ; 6 uses
  %i.lr = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ls = fmul <2 x float> %i.dt, %i.lr
  %i.lt = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.lt, <2 x float> %i.ls)
  %i.lv = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.lv, <2 x float> %i.lu) ; 6 uses
  %i.lx = fmul <2 x float> %i.iy, %i.ky
  %i.ly = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.iz, <2 x float> %i.kv, <2 x float> %i.lx)
  %i.lz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> %i.lb, <2 x float> %i.ly) ; 7 uses
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.mb = insertelement <2 x float> poison, float %i.lh, i64 0
  %i.mc = shufflevector <2 x float> %i.mb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.md = fmul <2 x float> %i.dt, %i.mc
  %i.me = insertelement <2 x float> poison, float %i.le, i64 0
  %i.mf = shufflevector <2 x float> %i.me, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ds, <2 x float> %i.mf, <2 x float> %i.md)
  %i.mh = insertelement <2 x float> poison, float %i.lk, i64 0
  %i.mi = shufflevector <2 x float> %i.mh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.mi, <2 x float> %i.mg) ; 7 uses
  %i.mk = extractelement <2 x float> %i.lz, i64 1
  %i.ml = shufflevector <2 x float> %i.du, <2 x float> %i.gk, <4 x i32> <i32 1, i32 2, i32 2, i32 2>
  %i.mm = shufflevector <2 x float> %i.lw, <2 x float> %i.lz, <4 x i32> <i32 poison, i32 0, i32 1, i32 3>
  %i.mn = insertelement <4 x float> %i.mm, float %i.lh, i64 0
  %i.mo = fmul <4 x float> %i.ml, %i.mn
  %i.mp = extractelement <2 x float> %i.lz, i64 0
  %i.mq = shufflevector <2 x float> %i.du, <2 x float> %i.lq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.mr = shufflevector <4 x float> %i.mq, <4 x float> %i.ma, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ms = insertelement <4 x float> poison, float %i.le, i64 0
  %i.mt = insertelement <4 x float> %i.ms, float %i.jd, i64 1
  %i.mu = shufflevector <4 x float> %i.mt, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.mv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.mr, <4 x float> %i.mu, <4 x float> %i.mo) ; 3 uses
  %i.mw = extractelement <4 x float> %i.mv, i64 0
  %i.mx = extractelement <2 x float> %i.mj, i64 0 ; 3 uses
  %i.my = extractelement <4 x float> %i.mv, i64 1
  %i.mz = extractelement <2 x float> %i.gl, i64 1 ; 3 uses
  %i.na = shufflevector <2 x float> %i.mj, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.nb = shufflevector <2 x float> %i.gk, <2 x float> %i.lq, <4 x i32> <i32 1, i32 1, i32 2, i32 3>
  %i.nc = shufflevector <2 x float> %i.gl, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.nd = shufflevector <2 x float> %i.lw, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ne = fmul <4 x float> %i.nc, %i.nd
  %i.nf = shufflevector <4 x float> %i.mv, <4 x float> %i.ne, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.ng = extractelement <2 x float> %i.gm, i64 1
  %i.nh = shufflevector <2 x float> %i.gl, <2 x float> %i.gm, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ni = shufflevector <2 x float> %i.lz, <2 x float> %i.lw, <4 x i32> <i32 1, i32 2, i32 3, i32 1>
  %i.nj = fmul <4 x float> %i.nh, %i.ni
  %i.nk = shufflevector <2 x float> %i.lz, <2 x float> %i.lq, <4 x i32> <i32 0, i32 2, i32 3, i32 0>
  %i.nl = insertelement <4 x float> poison, float %i.bg, i64 0
  %i.nm = insertelement <4 x float> %i.nl, float %i.bi, i64 1
  %i.nn = shufflevector <4 x float> %i.nm, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1>
  %i.no = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nk, <4 x float> %i.nn, <4 x float> %i.nj) ; 3 uses
  %i.np = extractelement <4 x float> %i.no, i64 0
  %i.nq = extractelement <4 x float> %i.no, i64 1
  %i.nr = tail call noundef float @llvm.fmuladd.f32(float %i.mx, float %i.ng, float %i.nq) ; 2 uses
  %i.ns = insertelement <2 x float> poison, float %i.nr, i64 0
  %i.nt = shufflevector <2 x float> %i.ns, <2 x float> poison, <2 x i32> zeroinitializer
  %i.nu = tail call noundef float @llvm.fmuladd.f32(float %i.dy, float %i.lk, float %i.mw) ; 5 uses
  %i.nv = tail call noundef float @llvm.fmuladd.f32(float %i.mx, float %i.jc, float %i.my)
  %i.nw = extractelement <2 x float> %i.mj, i64 1
  %i.nx = insertelement <4 x float> %i.na, float %i.nu, i64 1
  %i.ny = insertelement <4 x float> %i.nx, float %i.bg, i64 2
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.oa = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.nz, <4 x float> %i.nb, <4 x float> %i.nf) ; 6 uses
  %i.ob = extractelement <4 x float> %i.oa, i64 2
  %i.oc = tail call noundef float @llvm.fmuladd.f32(float %i.mx, float %i.mz, float %i.ob) ; 2 uses
  %i.od = extractelement <4 x float> %i.oa, i64 3
  %i.oe = tail call noundef float @llvm.fmuladd.f32(float %i.nw, float %i.mz, float %i.od)
  %i.of = tail call noundef float @llvm.fmuladd.f32(float %i.nu, float %i.mz, float %i.np) ; 2 uses
  %i.og = fadd float %i.oe, -1.000000e+00         ; 2 uses
  %i.oh = fmul float %i.ed, %i.oc
  %i.oi = fmul float %i.ed, %i.og
  %i.oj = shufflevector <2 x float> %i.mj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ok = shufflevector <4 x float> %i.oj, <4 x float> %i.oa, <4 x i32> <i32 1, i32 poison, i32 poison, i32 4>
  %i.ol = insertelement <4 x float> %i.ok, float %i.nu, i64 1
  %i.om = insertelement <4 x float> %i.ol, float %i.nv, i64 2
  %i.on = fadd <4 x float> %i.om, <float -0.000000e+00, float -0.000000e+00, float -1.000000e+00, float -0.000000e+00> ; 2 uses
  %i.oo = shufflevector <2 x float> %i.gm, <2 x float> %i.dx, <4 x i32> <i32 1, i32 1, i32 2, i32 2>
  %i.op = shufflevector <4 x float> %i.no, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.oq = insertelement <4 x float> %i.op, float %i.oh, i64 2
  %i.or = insertelement <4 x float> %i.oq, float %i.oi, i64 3
  %i.os = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.on, <4 x float> %i.oo, <4 x float> %i.or) ; 5 uses
  %i.ot = extractelement <4 x float> %i.os, i64 1
  %i.ou = fadd float %i.ot, -1.000000e+00         ; 2 uses
  %i.ov = insertelement <2 x float> poison, float %i.oc, i64 0
  %i.ow = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ox = fmul <2 x float> %i.gi, %i.ow
  %i.oy = shufflevector <4 x float> %i.on, <4 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.oz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oy, <2 x float> %i.gj, <2 x float> %i.ox)
  %i.pa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nt, <2 x float> %i.du, <2 x float> %i.oz)
  %i.pb = insertelement <2 x float> poison, float %i.og, i64 0
  %i.pc = shufflevector <2 x float> %i.pb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pd = fmul <2 x float> %i.gi, %i.pc
  %i.pe = shufflevector <4 x float> %i.oa, <4 x float> poison, <2 x i32> zeroinitializer
  %i.pf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pe, <2 x float> %i.gj, <2 x float> %i.pd)
  %i.pg = shufflevector <4 x float> %i.os, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ph = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pg, <2 x float> %i.du, <2 x float> %i.pf)
  %i.pi = insertelement <2 x float> poison, float %i.of, i64 0
  %i.pj = shufflevector <2 x float> %i.pi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pk = fmul <2 x float> %i.gi, %i.pj
  %i.pl = shufflevector <4 x float> %i.oa, <4 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pl, <2 x float> %i.gj, <2 x float> %i.pk)
  %i.pn = insertelement <2 x float> poison, float %i.ou, i64 0
  %i.po = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.po, <2 x float> %i.du, <2 x float> %i.pm)
  %i.pq = extractelement <4 x float> %i.os, i64 2
  %i.pr = tail call noundef float @llvm.fmuladd.f32(float %i.nr, float %i.dy, float %i.pq)
  %i.ps = extractelement <4 x float> %i.os, i64 0
  %i.pt = extractelement <4 x float> %i.os, i64 3
  %i.pu = tail call noundef float @llvm.fmuladd.f32(float %i.ps, float %i.dy, float %i.pt)
  %i.pv = fmul float %i.ed, %i.of
  %i.pw = extractelement <4 x float> %i.oa, i64 1
  %i.px = tail call float @llvm.fmuladd.f32(float %i.pw, float %i.eb, float %i.pv)
  %i.py = tail call noundef float @llvm.fmuladd.f32(float %i.ou, float %i.dy, float %i.px)
  %i.pz = shufflevector <2 x float> %i.lq, <2 x float> %i.lw, <2 x i32> <i32 1, i32 3>
  %i.qa = shufflevector <2 x float> %i.lq, <2 x float> %i.lw, <2 x i32> <i32 0, i32 2>
  %i.qb = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.qc = shufflevector <2 x float> %i.qb, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qd = insertelement <2 x float> poison, float %i.cb, i64 0 ; 2 uses
  %i.qe = shufflevector <2 x float> %i.qd, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qf = load <2 x float>, ptr %1, align 4, !tbaa !9 ; 5 uses
  %i.qg = load float, ptr %i.bv, align 4, !tbaa !9
  %i.qh = load <2 x float>, ptr %i.by, align 4, !tbaa !9 ; 5 uses
  %i.qi = load float, ptr %i.bz, align 4, !tbaa !9
  %i.qj = shufflevector <2 x float> %i.qf, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.qk = fmul <2 x float> %i.qj, %i.pz
  %i.ql = shufflevector <2 x float> %i.qf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qa, <2 x float> %i.ql, <2 x float> %i.qk)
  %i.qn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lz, <2 x float> %i.qc, <2 x float> %i.qm)
  %i.qo = shufflevector <2 x float> %i.qh, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.qp = fmul <2 x float> %i.qo, %i.kh
  %i.qq = shufflevector <2 x float> %i.qh, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ke, <2 x float> %i.qq, <2 x float> %i.qp)
  %i.qs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.qe, <2 x float> %i.qr)
  %i.qt = shufflevector <2 x float> %i.qh, <2 x float> %i.qf, <2 x i32> <i32 1, i32 3>
  %i.qu = insertelement <2 x float> %i.mj, float %i.ko, i64 0
  %i.qv = fmul <2 x float> %i.qt, %i.qu
  %i.qw = shufflevector <2 x float> %i.mj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.qx = insertelement <2 x float> %i.qw, float %i.kl, i64 0
  %i.qy = shufflevector <2 x float> %i.qh, <2 x float> %i.qf, <2 x i32> <i32 0, i32 2>
  %i.qz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qx, <2 x float> %i.qy, <2 x float> %i.qv)
  %i.ra = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.rb = insertelement <2 x float> %i.ra, float %i.nu, i64 1
  %i.rc = insertelement <2 x float> %i.qd, float %i.bx, i64 1
  %i.rd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rb, <2 x float> %i.rc, <2 x float> %i.qz) ; 2 uses
  %i.re = fadd <2 x float> %i.qs, %i.qn
  %shift275 = shufflevector <2 x float> %i.rd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop276 = fadd <2 x float> %i.rd, %shift275
  %.sroa.851.8.vec.insert278 = insertelement <2 x float> %foldExtExtBinop276, float 0.000000e+00, i64 1
  %i.rf = fmul <2 x float> %i.qj, %i.ph
  %i.rg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pa, <2 x float> %i.ql, <2 x float> %i.rf)
  %i.rh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pp, <2 x float> %i.qc, <2 x float> %i.rg)
  %i.ri = fmul float %i.qg, %i.pu
  %i.rj = extractelement <2 x float> %i.qf, i64 0
  %i.rk = tail call float @llvm.fmuladd.f32(float %i.pr, float %i.rj, float %i.ri)
  %i.rl = tail call noundef float @llvm.fmuladd.f32(float %i.py, float %i.bx, float %i.rk)
  %i.rm = fmul <2 x float> %i.qo, %i.lw
  %i.rn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lq, <2 x float> %i.qq, <2 x float> %i.rm)
  %i.ro = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mj, <2 x float> %i.qe, <2 x float> %i.rn)
  %i.rp = fmul float %i.qi, %i.mk
  %i.rq = extractelement <2 x float> %i.qh, i64 0
  %i.rr = tail call float @llvm.fmuladd.f32(float %i.mp, float %i.rq, float %i.rp)
  %i.rs = tail call noundef float @llvm.fmuladd.f32(float %i.nu, float %i.cb, float %i.rr)
  %i.rt = fadd <2 x float> %i.ro, %i.rh
  %i.ru = fadd float %i.rs, %i.rl
  %.sroa.8.8.vec.insert = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ru, i64 0
  store <2 x float> %i.re, ptr %2, align 4
  %.sroa.851.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.851.8.vec.insert278, ptr %.sroa.851.0..sroa_idx, align 4, !tbaa !11
  %i.rv = getelementptr inbounds nuw i8, ptr %2, i64 16
  store <2 x float> %i.rt, ptr %i.rv, align 4
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  store <2 x float> %.sroa.8.8.vec.insert, ptr %.sroa.8.0..sroa_idx, align 4, !tbaa !11
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.i, %bb.h, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_ZNK11btMultiBody9mulMatrixEPKfS1_iiiiPf(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6, ptr nofree noundef writeonly captures(none) %7) local_unnamed_addr #15 align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  %i.b = icmp sgt i32 %6, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.lr.ph.split, label %._crit_edge.split

.preheader.lr.ph.split:                           ; preds = %bb.a
  %i.c = icmp sgt i32 %5, 0
  %i.d = zext nneg i32 %6 to i64                  ; 5 uses
  br i1 %i.c, label %.preheader.us.preheader, label %.preheader.lr.ph.split.split

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph.split
  %i.e = sext i32 %4 to i64
  %wide.trip.count46 = zext nneg i32 %3 to i64
  %wide.trip.count41 = zext nneg i32 %6 to i64
  %wide.trip.count = zext nneg i32 %5 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.f = icmp eq i32 %5, 1
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod54 = trunc i32 %5 to i1
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge30.split.us.us
  %indvars.iv43 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next44, %._crit_edge30.split.us.us ] ; 3 uses
  %i.g = mul nuw nsw i64 %indvars.iv43, %i.d
  %i.h = mul nsw i64 %indvars.iv43, %i.e
  %invariant.gep52 = getelementptr inbounds nuw [4 x i8], ptr %7, i64 %i.g
  %invariant.gep = getelementptr [4 x i8], ptr %1, i64 %i.h ; 3 uses
  br label %.lr.ph.us.us

.lr.ph.us.us:                                     ; preds = %._crit_edge.us.us, %.preheader.us
  %indvars.iv38 = phi i64 [ %indvars.iv.next39, %._crit_edge.us.us ], [ 0, %.preheader.us ] ; 3 uses
  %gep53 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep52, i64 %indvars.iv38 ; 4 uses
  store float 0.000000e+00, ptr %gep53, align 4, !tbaa !9
  %invariant.gep50 = getelementptr inbounds nuw [4 x i8], ptr %2, i64 %indvars.iv38 ; 3 uses
  br i1 %i.f, label %.epil.preheader, label %.lr.ph.us.us.new

.lr.ph.us.us.new:                                 ; preds = %.lr.ph.us.us, %.lr.ph.us.us.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ] ; 4 uses
  %i.i = phi float [ %i.q, %.lr.ph.us.us.new ], [ 0.000000e+00, %.lr.ph.us.us ]
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.new ], [ 0, %.lr.ph.us.us ]
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv
  %i.j = load float, ptr %gep, align 4, !tbaa !9
  %i.k = mul nuw nsw i64 %indvars.iv, %i.d
  %gep51 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50, i64 %i.k
  %i.l = load float, ptr %gep51, align 4, !tbaa !9
  %i.m = tail call float @llvm.fmuladd.f32(float %i.j, float %i.l, float %i.i) ; 2 uses
  store float %i.m, ptr %gep53, align 4, !tbaa !9
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %gep.1 = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.next
  %i.n = load float, ptr %gep.1, align 4, !tbaa !9
  %i.o = mul nuw nsw i64 %indvars.iv.next, %i.d
  %gep51.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50, i64 %i.o
  %i.p = load float, ptr %gep51.1, align 4, !tbaa !9
  %i.q = tail call float @llvm.fmuladd.f32(float %i.n, float %i.p, float %i.m) ; 3 uses
  store float %i.q, ptr %gep53, align 4, !tbaa !9
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.us.us.unr-lcssa, label %.lr.ph.us.us.new, !llvm.loop !215

._crit_edge.us.us.unr-lcssa:                      ; preds = %.lr.ph.us.us.new
  br i1 %lcmp.mod.not, label %._crit_edge.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.us.us.unr-lcssa, %.lr.ph.us.us
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.us.us ], [ %indvars.iv.next.1, %._crit_edge.us.us.unr-lcssa ] ; 2 uses
  %.epil.init = phi float [ 0.000000e+00, %.lr.ph.us.us ], [ %i.q, %._crit_edge.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod54)
  %gep.epil = getelementptr [4 x i8], ptr %invariant.gep, i64 %indvars.iv.epil.init
  %i.r = load float, ptr %gep.epil, align 4, !tbaa !9
  %i.s = mul nuw nsw i64 %indvars.iv.epil.init, %i.d
  %gep51.epil = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep50, i64 %i.s
  %i.t = load float, ptr %gep51.epil, align 4, !tbaa !9
  %i.u = tail call float @llvm.fmuladd.f32(float %i.r, float %i.t, float %.epil.init)
  store float %i.u, ptr %gep53, align 4, !tbaa !9
  br label %._crit_edge.us.us

._crit_edge.us.us:                                ; preds = %._crit_edge.us.us.unr-lcssa, %.epil.preheader
  %indvars.iv.next39 = add nuw nsw i64 %indvars.iv38, 1 ; 2 uses
  %exitcond42.not = icmp eq i64 %indvars.iv.next39, %wide.trip.count41
  br i1 %exitcond42.not, label %._crit_edge30.split.us.us, label %.lr.ph.us.us, !llvm.loop !342

._crit_edge30.split.us.us:                        ; preds = %._crit_edge.us.us
  %indvars.iv.next44 = add nuw nsw i64 %indvars.iv43, 1 ; 2 uses
  %exitcond47.not = icmp eq i64 %indvars.iv.next44, %wide.trip.count46
  br i1 %exitcond47.not, label %._crit_edge.split, label %.preheader.us, !llvm.loop !216

.preheader.lr.ph.split.split:                     ; preds = %.preheader.lr.ph.split
  %8 = zext nneg i32 %3 to i64
  %9 = mul nuw nsw i64 %i.d, %8
  %10 = shl nuw i64 %9, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %7, i8 0, i64 %10, i1 false), !tbaa !9
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge30.split.us.us, %.preheader.lr.ph.split.split, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZNK11btMultiBody12solveImatrixERK9btVector3S2_Pf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(640) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr nofree noundef writeonly captures(none) initializes((0, 24)) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i32, ptr %i.a, align 4, !tbaa !39
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.e = load float, ptr %i.d, align 4, !tbaa !9  ; 2 uses
  %i.f = fcmp ult float %i.e, f0x34000000
  br i1 %i.f, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.h = load float, ptr %i.g, align 8, !tbaa !9
  %i.i = fcmp ult float %i.h, f0x34000000
  br i1 %i.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 100 ; 2 uses
  %i.k = load float, ptr %i.j, align 4, !tbaa !9
  %i.l = fcmp ult float %i.k, f0x34000000
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load float, ptr %2, align 4, !tbaa !9
  %i.n = fdiv float %i.m, %i.e
  store float %i.n, ptr %3, align 4, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.p = load float, ptr %i.o, align 4, !tbaa !9
  %i.q = load float, ptr %i.g, align 8, !tbaa !9
  %i.r = fdiv float %i.p, %i.q
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %i.r, ptr %i.s, align 4, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.u = load float, ptr %i.t, align 4, !tbaa !9
  %i.v = load float, ptr %i.j, align 4, !tbaa !9
  %i.w = fdiv float %i.u, %i.v
  br label %bb.g

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b
  store <2 x float> zeroinitializer, ptr %3, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi float [ 0.000000e+00, %bb.f ], [ %i.w, %bb.e ]
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %.sink, ptr %i.x, align 4, !tbaa !9
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.z = load float, ptr %i.y, align 8, !tbaa !14 ; 2 uses
  %i.aa = fcmp ult float %i.z, f0x34000000
  br i1 %i.aa, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ab = load float, ptr %1, align 4, !tbaa !9
  %i.ac = fdiv float %i.ab, %i.z
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 12
  store float %i.ac, ptr %i.ad, align 4, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !9
  %i.ag = load float, ptr %i.y, align 8, !tbaa !14
  %i.ah = fdiv float %i.af, %i.ag
  %i.ai = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %i.ah, ptr %i.ai, align 4, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !9
  %i.al = load float, ptr %i.y, align 8, !tbaa !14
  %i.am = fdiv float %i.ak, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float %i.am, ptr %i.an, align 4, !tbaa !9
  br label %.loopexit

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %3, i64 12
  store <2 x float> zeroinitializer, ptr %i.ao, align 4, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %3, i64 20
  store float 0.000000e+00, ptr %i.ap, align 4, !tbaa !9
  br label %.loopexit

bb.j:                                             ; preds = %bb.a
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 560
  %i.ar = load i8, ptr %i.aq, align 8, !tbaa !201, !range !67, !noundef !68
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.k, label %.preheader.preheader

.preheader.preheader:                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(24) %3, i8 0, i64 24, i1 false), !tbaa !9
  br label %.loopexit

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 416
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !9, !noalias !343 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.az = load float, ptr %i.ay, align 8, !tbaa !9, !noalias !343 ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 420
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 516
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 548
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.bk = load float, ptr %i.bj, align 8, !tbaa !9, !noalias !346 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 400
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !9, !noalias !349 ; 5 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.br = load float, ptr %i.bq, align 8, !tbaa !9, !noalias !349 ; 5 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.bt = load float, ptr %i.bs, align 8, !tbaa !9, !noalias !349 ; 5 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.bw = load float, ptr %i.bv, align 8, !tbaa !9, !noalias !352
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.bz = load float, ptr %i.by, align 8, !tbaa !9, !noalias !352
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.cc = load float, ptr %i.cb, align 8, !tbaa !9, !noalias !352
  %i.cd = load float, ptr %1, align 4, !tbaa !9   ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.cf = load float, ptr %i.ce, align 4, !tbaa !9 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ch = load float, ptr %i.cg, align 4, !tbaa !9 ; 2 uses
  %i.ci = load float, ptr %2, align 4, !tbaa !9   ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ck = load float, ptr %i.cj, align 4, !tbaa !9 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.cm = load float, ptr %i.cl, align 4, !tbaa !9 ; 2 uses
  %i.cn = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.co = shufflevector <4 x float> %i.cn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cp = insertelement <4 x float> poison, float %i.cd, i64 0
  %i.cq = shufflevector <4 x float> %i.cp, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cr = insertelement <4 x float> poison, float %i.ch, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ct = insertelement <4 x float> poison, float %i.ck, i64 0
  %i.cu = shufflevector <4 x float> %i.ct, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cv = insertelement <4 x float> poison, float %i.ci, i64 0
  %i.cw = shufflevector <4 x float> %i.cv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cx = insertelement <4 x float> poison, float %i.cm, i64 0
  %i.cy = shufflevector <4 x float> %i.cx, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cz = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.da = insertelement <2 x float> poison, float %i.ax, i64 0
  %i.db = load <2 x float>, ptr %i.at, align 8, !tbaa !9, !noalias !343 ; 4 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dd = load <2 x float>, ptr %i.ba, align 4, !tbaa !9, !noalias !343 ; 4 uses
  %i.de = extractelement <2 x float> %i.db, i64 0
  %i.df = extractelement <2 x float> %i.dd, i64 1
  %i.dg = shufflevector <2 x float> %i.dd, <2 x float> %i.db, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.di = load <2 x float>, ptr %i.bl, align 8, !tbaa !9, !noalias !349 ; 7 uses
  %i.dj = load <2 x float>, ptr %i.bm, align 8, !tbaa !9, !noalias !349 ; 8 uses
  %i.dk = load <2 x float>, ptr %i.bn, align 8, !tbaa !9, !noalias !349 ; 6 uses
  %i.dl = load <2 x float>, ptr %i.bu, align 8, !tbaa !9, !noalias !352 ; 2 uses
  %i.dm = load <2 x float>, ptr %i.bx, align 8, !tbaa !9, !noalias !352 ; 2 uses
  %i.dn = shufflevector <2 x float> %i.dj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.do = insertelement <2 x float> %i.dn, float %i.br, i64 0 ; 2 uses
  %i.dp = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dq = insertelement <2 x float> %i.dp, float %i.bp, i64 0 ; 2 uses
  %i.dr = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ds = insertelement <2 x float> %i.dr, float %i.bt, i64 0 ; 2 uses
  %i.dt = shufflevector <2 x float> %i.dl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.du = insertelement <2 x float> %i.dt, float %i.bw, i64 0
  %i.dv = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.dw = insertelement <2 x float> %i.dv, float %i.bz, i64 0
  %i.dx = load <2 x float>, ptr %i.ca, align 8, !tbaa !9, !noalias !352
  %i.dy = load <2 x float>, ptr %i.av, align 8, !tbaa !9, !noalias !343 ; 6 uses
  %i.dz = load <2 x float>, ptr %i.au, align 8, !tbaa !9, !noalias !343 ; 7 uses
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> %i.dy, <2 x i32> <i32 3, i32 0>
  %i.eb = fneg <2 x float> %i.ea                  ; 2 uses
  %i.ec = extractelement <2 x float> %i.eb, i64 0
  %i.ed = extractelement <2 x float> %i.dz, i64 1
  %i.ee = insertelement <2 x float> %i.dz, float %i.ax, i64 0
  %i.ef = fneg <2 x float> %i.ee                  ; 2 uses
  %i.eg = insertelement <2 x float> %i.dy, float %i.az, i64 1
  %i.eh = fneg <2 x float> %i.eg                  ; 2 uses
  %i.ei = shufflevector <2 x float> %i.ef, <2 x float> %i.eh, <2 x i32> <i32 0, i32 2>
  %i.ej = fmul <2 x float> %i.dz, %i.ei
  %i.ek = shufflevector <2 x float> %i.dy, <2 x float> %i.dz, <2 x i32> <i32 0, i32 2>
  %i.el = insertelement <2 x float> %i.dy, float %i.az, i64 0
  %i.em = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ek, <2 x float> %i.el, <2 x float> %i.ej) ; 3 uses
  %i.en = extractelement <2 x float> %i.em, i64 1
  %i.eo = fmul <2 x float> %i.dd, %i.ef
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eq = insertelement <2 x float> %i.dy, float %i.az, i64 0
  %i.er = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.eq, <2 x float> %i.ep)
  %i.es = fmul <2 x float> %i.dg, %i.eh
  %i.et = fmul <2 x float> %i.db, %i.eb
end_hunk_0
