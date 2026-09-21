Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btMultiBody?download=true
inline.NumInlined: 2252
inline.NumDeleted: 260
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 40
loop-unroll.NumUnrolled: 49
begin_hunk_0_@_ZN15btMultibodyLink32updateInterpolationCacheMultiDofEv:bb.a
  %i.lq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> %i.lp, <2 x float> %i.ln)
  %i.lr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> %i.ll, <2 x float> %i.lo)
  %i.ls = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lj, <2 x float> %i.ll, <2 x float> %i.lq)
  %i.lt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> %i.lk, <2 x float> %i.lr)
  %i.lu = fneg <2 x float> %i.lg                  ; 3 uses
  %i.lv = fneg <2 x float> %i.lj
  %i.lw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lu, <2 x float> %i.lk, <2 x float> %i.ls) ; 5 uses
  %i.lx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lv, <2 x float> %i.lp, <2 x float> %i.lt) ; 4 uses
  %i.ly = extractelement <2 x float> %i.lk, i64 0
  %i.lz = fneg float %i.ly
  %i.ma = extractelement <2 x float> %i.lj, i64 0
  %i.mb = fmul float %i.ma, %i.lz
  %i.mc = tail call float @llvm.fmuladd.f32(float %i.ka, float %i.kd, float %i.mb)
  %i.md = shufflevector <2 x float> %i.lw, <2 x float> %i.lx, <2 x i32> <i32 1, i32 2>
  %i.me = insertelement <2 x float> %i.lh, float %i.kw, i64 1
  %i.mf = shufflevector <2 x float> %i.le, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mg = fmul <2 x float> %i.me, %i.mf           ; 4 uses
  %i.mh = fmul <2 x float> %i.kx, %i.mf           ; 3 uses
  %i.mi = load <2 x float>, ptr %i.kh, align 8, !tbaa !20 ; 2 uses
  %i.mj = load <2 x float>, ptr %i.kg, align 8, !tbaa !20 ; 6 uses
  %i.mk = shufflevector <2 x float> %i.mj, <2 x float> %i.mi, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ml = shufflevector <2 x float> %i.mj, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mm = insertelement <2 x float> %i.ml, float %i.ku, i64 0
  %i.mn = fmul <2 x float> %i.mk, %i.mm
  %i.mo = shufflevector <2 x float> %i.mi, <2 x float> %i.mj, <2 x i32> <i32 0, i32 2>
  %i.mp = fmul <2 x float> %i.mo, %i.mk
  %i.mq = load <2 x float>, ptr %i.kj, align 8, !tbaa !20 ; 2 uses
  %i.mr = shufflevector <2 x float> %i.mq, <2 x float> %i.mj, <2 x i32> <i32 0, i32 3>
  %i.ms = shufflevector <2 x float> %i.mj, <2 x float> %i.mq, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.mt = fmul <2 x float> %i.mr, %i.ms
  %i.mu = insertelement <2 x float> %i.mj, float %i.kv, i64 0
  %i.mv = fmul <2 x float> %i.ms, %i.mu
  %i.mw = fadd <2 x float> %i.mn, %i.mv           ; 4 uses
  %i.mx = shufflevector <2 x float> %i.mw, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.my = fadd <2 x float> %i.mp, %i.mt           ; 3 uses
  %i.mz = fneg <2 x float> %i.mg                  ; 4 uses
  %i.na = shufflevector <2 x float> %i.mg, <2 x float> %i.mh, <2 x i32> <i32 1, i32 2>
  %i.nb = fneg <2 x float> %i.na                  ; 3 uses
  %i.nc = load <2 x float>, ptr %i.km, align 4, !tbaa !20 ; 5 uses
  %i.nd = load <2 x float>, ptr %i.kl, align 8, !tbaa !20 ; 3 uses
  %i.ne = fneg <2 x float> %i.lw                  ; 4 uses
  %i.nf = extractelement <2 x float> %i.lx, i64 0
  %i.ng = fneg float %i.nf                        ; 3 uses
  %i.nh = shufflevector <2 x float> %i.mw, <2 x float> %i.nc, <2 x i32> <i32 1, i32 2>
  %i.ni = fneg <2 x float> %i.nh
  %i.nj = shufflevector <2 x float> %i.mh, <2 x float> %i.lx, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.nk = fmul <2 x float> %i.nj, %i.ni
  %i.nl = extractelement <2 x float> %i.lu, i64 0
  %i.nm = extractelement <2 x float> %i.lk, i64 1
  %i.nn = tail call float @llvm.fmuladd.f32(float %i.nl, float %i.nm, float %i.mc)
  %i.no = shufflevector <2 x float> %i.mz, <2 x float> %i.ne, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.np = shufflevector <2 x float> %i.my, <2 x float> %i.nd, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.nq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.no, <2 x float> %i.np, <2 x float> %i.nk)
  %i.nr = extractelement <2 x float> %i.lu, i64 1
  %i.ns = extractelement <2 x float> %i.ll, i64 1
  %i.nt = tail call float @llvm.fmuladd.f32(float %i.nr, float %i.ns, float %i.nn) ; 3 uses
  %i.nu = shufflevector <2 x float> %i.mz, <2 x float> %i.ne, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.nv = shufflevector <2 x float> %i.mw, <2 x float> %i.nc, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.nw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nu, <2 x float> %i.nv, <2 x float> %i.nq) ; 3 uses
  %.sroa.3.12.vec.insert.i80 = insertelement <2 x float> %i.lw, float %i.nt, i64 1
  store <2 x float> %i.md, ptr %i.b, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i80, ptr %.sroa.44.0..sroa_idx, align 8
  %i.nx = shufflevector <2 x float> %i.mw, <2 x float> %i.my, <2 x i32> <i32 0, i32 2>
  %i.ny = fmul <2 x float> %i.mh, %i.nx
  %i.nz = insertelement <2 x float> poison, float %i.kt, i64 0 ; 2 uses
  %i.oa = shufflevector <2 x float> %i.nz, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ob = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oa, <2 x float> %i.my, <2 x float> %i.ny)
  %i.oc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mz, <2 x float> %i.mx, <2 x float> %i.ob) ; 5 uses
  %i.od = shufflevector <2 x float> %i.mg, <2 x float> %i.nc, <2 x i32> <i32 1, i32 2>
  %i.oe = shufflevector <2 x float> %i.mx, <2 x float> %i.lw, <2 x i32> <i32 0, i32 3>
  %i.of = fmul <2 x float> %i.od, %i.oe
  %i.og = insertelement <2 x float> %i.nz, float %i.nt, i64 1 ; 2 uses
  %i.oh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.og, <2 x float> %i.nv, <2 x float> %i.of)
  %i.oi = shufflevector <2 x float> %i.nb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.oj = insertelement <2 x float> %i.oi, float %i.ng, i64 1
  %i.ok = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oj, <2 x float> %i.np, <2 x float> %i.oh) ; 5 uses
  %i.ol = shufflevector <2 x float> %i.oc, <2 x float> %i.ok, <2 x i32> <i32 1, i32 2>
  %i.om = fmul <2 x float> %i.oa, %i.ol
  %i.on = shufflevector <2 x float> %i.nw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.oo = shufflevector <2 x float> %i.nb, <2 x float> %i.mz, <2 x i32> <i32 1, i32 2>
  %i.op = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.on, <2 x float> %i.oo, <2 x float> %i.om)
  %i.oq = shufflevector <2 x float> %i.ok, <2 x float> %i.oc, <2 x i32> <i32 0, i32 2>
  %i.or = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oq, <2 x float> %i.nb, <2 x float> %i.op)
  %i.os = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oc, <2 x float> %i.mg, <2 x float> %i.or)
  %i.ot = shufflevector <2 x float> %i.nc, <2 x float> %i.nd, <2 x i32> <i32 1, i32 2>
  %i.ou = fmul <2 x float> %i.lx, %i.ot
  %i.ov = insertelement <2 x float> poison, float %i.nt, i64 0
  %i.ow = shufflevector <2 x float> %i.ov, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ox = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ow, <2 x float> %i.nd, <2 x float> %i.ou)
  %i.oy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ne, <2 x float> %i.nc, <2 x float> %i.ox) ; 5 uses
  %i.oz = shufflevector <2 x float> %i.oc, <2 x float> %i.oy, <2 x i32> <i32 0, i32 2>
  %i.pa = fmul <2 x float> %i.og, %i.oz
  %i.pb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nw, <2 x float> %i.no, <2 x float> %i.pa)
  %i.pc = shufflevector <2 x float> %i.oc, <2 x float> %i.oy, <2 x i32> <i32 1, i32 3>
  %i.pd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pc, <2 x float> %i.nu, <2 x float> %i.pb)
  %i.pe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ok, <2 x float> %i.nj, <2 x float> %i.pd)
  %i.pf = shufflevector <2 x float> %i.oy, <2 x float> %i.ok, <2 x i32> <i32 1, i32 3>
  %i.pg = fmul <2 x float> %i.ow, %i.pf
  %i.ph = shufflevector <2 x float> %i.nw, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.pi = shufflevector <2 x float> %i.ne, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.pj = insertelement <2 x float> %i.pi, float %i.ng, i64 0
  %i.pk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ph, <2 x float> %i.pj, <2 x float> %i.pg)
  %i.pl = shufflevector <2 x float> %i.ok, <2 x float> %i.oy, <2 x i32> <i32 1, i32 2>
  %i.pm = insertelement <2 x float> %i.pi, float %i.ng, i64 1
  %i.pn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pl, <2 x float> %i.pm, <2 x float> %i.pk)
  %i.po = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oy, <2 x float> %i.lw, <2 x float> %i.pn)
  %i.pp = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.pe)
  %i.pq = fadd <2 x float> %i.os, %i.po
  br label %.sink.split

bb.f:                                             ; preds = %bb.a
  %i.pr = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.pr, i64 16, i1 false)
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.pu = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.pv = load float, ptr %i.pu, align 4, !tbaa !20 ; 3 uses
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 372
  %i.px = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.pz = load float, ptr %i.ps, align 8, !tbaa !20
  %i.qa = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.qb = load float, ptr %i.px, align 8, !tbaa !20 ; 2 uses
  %i.qc = load <2 x float>, ptr %i.py, align 4, !tbaa !20 ; 4 uses
  %i.qd = load <2 x float>, ptr %i.pt, align 8, !tbaa !20 ; 3 uses
  %i.qe = load float, ptr %i.pw, align 4, !tbaa !20 ; 4 uses
  %i.qf = load float, ptr %i.b, align 8, !tbaa !20 ; 3 uses
  %i.qg = shufflevector <2 x float> %i.qd, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.qh = insertelement <2 x float> %i.qg, float %i.qe, i64 0
  %i.qi = shufflevector <2 x float> %i.qc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.qj = insertelement <2 x float> %i.qi, float %i.qb, i64 1
  %i.qk = fmul <2 x float> %i.qh, %i.qj
  %i.ql = extractelement <2 x float> %i.qc, i64 0 ; 2 uses
  %i.qm = fmul float %i.ql, %i.qf
  %i.qn = insertelement <2 x float> poison, float %i.qb, i64 0
  %i.qo = insertelement <2 x float> %i.qn, float %i.qf, i64 1 ; 2 uses
  %i.qp = fneg <2 x float> %i.qo                  ; 4 uses
  %i.qq = insertelement <2 x float> poison, float %i.pv, i64 0
  %i.qr = shufflevector <2 x float> %i.qq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.qs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qr, <2 x float> %i.qd, <2 x float> %i.qk)
  %i.qt = extractelement <2 x float> %i.qc, i64 1 ; 2 uses
  %i.qu = tail call float @llvm.fmuladd.f32(float %i.pv, float %i.qt, float %i.qm)
  %i.qv = insertelement <2 x float> poison, float %i.qf, i64 0
  %i.qw = insertelement <2 x float> %i.qv, float %i.qe, i64 1
  %i.qx = fneg <2 x float> %i.qw                  ; 3 uses
  %i.qy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qp, <2 x float> %i.qc, <2 x float> %i.qs) ; 5 uses
  %i.qz = extractelement <2 x float> %i.qd, i64 0 ; 2 uses
  %i.ra = extractelement <2 x float> %i.qx, i64 1
  %i.rb = tail call float @llvm.fmuladd.f32(float %i.ra, float %i.qz, float %i.qu) ; 3 uses
  %i.rc = fneg float %i.ql
  %i.rd = fmul float %i.qe, %i.rc
  %i.re = extractelement <2 x float> %i.qp, i64 1 ; 2 uses
  %i.rf = tail call float @llvm.fmuladd.f32(float %i.re, float %i.qz, float %i.rd)
  %i.rg = extractelement <2 x float> %i.qp, i64 0 ; 2 uses
  %i.rh = tail call float @llvm.fmuladd.f32(float %i.rg, float %i.qt, float %i.rf) ; 2 uses
  %i.ri = extractelement <2 x float> %i.qy, i64 0
  %i.rj = fmul float %i.pv, %i.ri
  %i.rk = tail call float @llvm.fmuladd.f32(float %i.rh, float %i.re, float %i.rj)
  %i.rl = extractelement <2 x float> %i.qy, i64 1
  %i.rm = tail call float @llvm.fmuladd.f32(float %i.rl, float %i.rg, float %i.rk)
  %i.rn = tail call float @llvm.fmuladd.f32(float %i.rb, float %i.qe, float %i.rm)
  %i.ro = shufflevector <2 x float> %i.qy, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.rp = insertelement <2 x float> %i.ro, float %i.rb, i64 1
  %i.rq = fmul <2 x float> %i.qr, %i.rp
  %i.rr = insertelement <2 x float> poison, float %i.rh, i64 0
  %i.rs = shufflevector <2 x float> %i.rr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.rt = shufflevector <2 x float> %i.qx, <2 x float> %i.qp, <2 x i32> <i32 1, i32 2>
  %i.ru = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rs, <2 x float> %i.rt, <2 x float> %i.rq)
  %i.rv = insertelement <2 x float> poison, float %i.rb, i64 0
  %i.rw = shufflevector <2 x float> %i.rv, <2 x float> %i.qy, <2 x i32> <i32 0, i32 2>
  %i.rx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rw, <2 x float> %i.qx, <2 x float> %i.ru)
  %i.ry = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qy, <2 x float> %i.qo, <2 x float> %i.rx)
  %i.rz = fadd float %i.pz, %i.rn
  %i.sa = load <2 x float>, ptr %i.qa, align 4, !tbaa !20
  %i.sb = fadd <2 x float> %i.sa, %i.ry
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.sink161 = phi float [ %i.rz, %bb.f ], [ %i.pp, %bb.e ], [ %i.js, %bb.d ], [ %i.gi, %bb.c ], [ %i.dl, %bb.b ]
  %i.sc = phi <2 x float> [ %i.sb, %bb.f ], [ %i.pq, %bb.e ], [ %i.ju, %bb.d ], [ %i.gj, %bb.c ], [ %i.dn, %bb.b ] ; 2 uses
  %.sroa.0.0.vec.insert.i119 = insertelement <2 x float> poison, float %.sink161, i64 0
  %i.sd = shufflevector <2 x float> %.sroa.0.0.vec.insert.i119, <2 x float> %i.sc, <2 x i32> <i32 0, i32 2>
  %i.se = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.sc, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.sd, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 392
  store <2 x float> %i.se, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN11btMultiBody21stepPositionsMultiDofEfPfS0_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(640) %0, float noundef %1, ptr noundef %2, ptr nofree noundef readonly captures(address) %3) local_unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.b = load i32, ptr %i.a, align 4, !tbaa !48   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !89   ; 3 uses
  %.not.i = icmp eq ptr %i.d, null                ; 2 uses
  br i1 %.not.i, label %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread, label %_ZNK11btMultiBody15isBaseKinematicEv.exit

_ZNK11btMultiBody15isBaseKinematicEv.exit:        ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %i.f = load i32, ptr %i.e, align 8, !tbaa !97
  %i.g = and i32 %i.f, 2
  %.not164 = icmp eq i32 %i.g, 0
  br i1 %.not164, label %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread, label %_ZNK11btMultiBody15isBaseKinematicEv.exit106.thread177

_ZNK11btMultiBody15isBaseKinematicEv.exit.thread: ; preds = %bb.a, %_ZNK11btMultiBody15isBaseKinematicEv.exit
  %.not = icmp eq ptr %2, null
  %4 = getelementptr inbounds nuw i8, ptr %2, i64 16
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = select i1 %.not, ptr %5, ptr %4            ; 4 uses
  %.not95 = icmp eq ptr %3, null
  br i1 %.not95, label %7, label %bb.b

7:                                                ; preds = %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread
  %8 = getelementptr inbounds nuw i8, ptr %0, i64 288
  %9 = load ptr, ptr %8, align 8, !tbaa !50
  br label %bb.b

bb.b:                                             ; preds = %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread, %7
  %.pn = phi ptr [ %9, %7 ], [ %3, %_ZNK11btMultiBody15isBaseKinematicEv.exit.thread ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.pn, i64 12
  %i.i = load float, ptr %i.h, align 4, !tbaa !20
  %i.j = load float, ptr %6, align 4, !tbaa !20
  %i.k = tail call float @llvm.fmuladd.f32(float %1, float %i.i, float %i.j)
  store float %i.k, ptr %6, align 4, !tbaa !20
  %i.l = getelementptr inbounds nuw i8, ptr %.pn, i64 16
  %i.m = load float, ptr %i.l, align 4, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 4 ; 2 uses
  %i.o = load float, ptr %i.n, align 4, !tbaa !20
  %i.p = tail call float @llvm.fmuladd.f32(float %1, float %i.m, float %i.o)
  store float %i.p, ptr %i.n, align 4, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %.pn, i64 20
  %i.r = load float, ptr %i.q, align 4, !tbaa !20
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !20
  %i.u = tail call float @llvm.fmuladd.f32(float %1, float %i.r, float %i.t)
  store float %i.u, ptr %i.s, align 4, !tbaa !20
  br i1 %.not.i, label %_ZNK11btMultiBody15isBaseKinematicEv.exit106.thread, label %_ZNK11btMultiBody15isBaseKinematicEv.exit106

_ZNK11btMultiBody15isBaseKinematicEv.exit106:     ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.d, i64 224
  %.pre = load i32, ptr %.phi.trans.insert, align 8, !tbaa !97
  %.pre171 = and i32 %.pre, 2
  %i.v = icmp eq i32 %.pre171, 0
  br i1 %i.v, label %_ZNK11btMultiBody15isBaseKinematicEv.exit106.thread, label %_ZNK11btMultiBody15isBaseKinematicEv.exit106.thread177

_ZNK11btMultiBody15isBaseKinematicEv.exit106.thread: ; preds = %bb.b, %_ZNK11btMultiBody15isBaseKinematicEv.exit106
  %.not96 = icmp eq ptr %2, null
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %spec.select162 = select i1 %.not96, ptr %i.w, ptr %2 ; 3 uses
  %.not97 = icmp eq ptr %3, null
  br i1 %.not97, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_ZNK11btMultiBody15isBaseKinematicEv.exit106.thread
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !50
  br label %bb.d

bb.d:                                             ; preds = %_ZNK11btMultiBody15isBaseKinematicEv.exit106.thread, %bb.c
  %i.z = phi ptr [ %i.y, %bb.c ], [ %3, %_ZNK11btMultiBody15isBaseKinematicEv.exit106.thread ] ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %spec.select162, i64 12
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !20
  %i.ac = load <3 x float>, ptr %spec.select162, align 4, !tbaa !20 ; 3 uses
  %i.ad = shufflevector <3 x float> %i.ac, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 2>
  %i.ae = load float, ptr %i.z, align 4, !tbaa !20 ; 2 uses
  %i.af = load <3 x float>, ptr %i.z, align 4, !tbaa !20 ; 3 uses
  %i.ag = shufflevector <3 x float> %i.af, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2> ; 3 uses
  %foldExtExtBinop = fmul <4 x float> %i.ag, %i.ag
  %i.ah = extractelement <4 x float> %foldExtExtBinop, i64 0
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.ah)
  %i.aj = extractelement <3 x float> %i.af, i64 2 ; 2 uses
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ai)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ak) ; 2 uses
  %i.al = fmul float %1, %sqrt.i.i
  %i.am = fcmp ogt float %i.al, f0x3F490FDB
  %i.an = fdiv float f0x3F490FDB, %1
  %.0.i = select i1 %i.am, float %i.an, float %sqrt.i.i ; 6 uses
  %i.ao = fcmp olt float %.0.i, 1.000000e-03
  br i1 %i.ao, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.ap = fmul float %1, %1
  %i.aq = fmul float %1, %i.ap
  %i.ar = fmul float %i.aq, f0x3CAAAAAB
  %i.as = fmul float %i.ar, %.0.i
  %i.at = fneg float %.0.i
  %i.au = fmul float %i.as, %i.at
  %i.av = tail call float @llvm.fmuladd.f32(float %1, float 5.000000e-01, float %i.au)
  br label %"_ZZN11btMultiBody21stepPositionsMultiDofEfPfS0_EN3$_0clERK9btVector3R12btQuaternionbf.exit"

bb.f:                                             ; preds = %bb.d
  %i.aw = fmul float %.0.i, 5.000000e-01
  %i.ax = fmul float %1, %i.aw
  %i.ay = tail call noundef float @sinf(float noundef %i.ax) #26
  %i.az = fdiv float %i.ay, %.0.i
  br label %"_ZZN11btMultiBody21stepPositionsMultiDofEfPfS0_EN3$_0clERK9btVector3R12btQuaternionbf.exit"

"_ZZN11btMultiBody21stepPositionsMultiDofEfPfS0_EN3$_0clERK9btVector3R12btQuaternionbf.exit": ; preds = %bb.e, %bb.f
  %.sink39.i = phi float [ %i.az, %bb.f ], [ %i.av, %bb.e ] ; 2 uses
  %i.ba = insertelement <4 x float> poison, float %.sink39.i, i64 0
  %i.bb = shufflevector <4 x float> %i.ba, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bc = fmul <4 x float> %i.ag, %i.bb           ; 4 uses
  %i.bd = extractelement <4 x float> %i.bc, i64 0
  %i.be = fneg float %i.bd                        ; 2 uses
  %i.bf = fmul float %1, %.0.i
  %i.bg = fmul float %i.bf, 5.000000e-01
  %i.bh = tail call noundef float @cosf(float noundef %i.bg) #26
  %i.bi = shufflevector <3 x float> %i.af, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bj = insertelement <2 x float> %i.bi, float %i.bh, i64 0 ; 2 uses
  %i.bk = shufflevector <2 x float> %i.bj, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bl = insertelement <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, float %.sink39.i, i64 3
  %i.bm = fmul <4 x float> %i.bk, %i.bl
  %i.bn = fneg <4 x float> %i.bc
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.bp = shufflevector <3 x float> %i.ac, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 0>
  %i.bq = fmul <4 x float> %i.bp, %i.bm
  %i.br = insertelement <4 x float> poison, float %i.ab, i64 0
  %i.bs = shufflevector <4 x float> %i.br, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bt = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.bu = shufflevector <2 x float> %i.bo, <2 x float> %i.bj, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.bv = insertelement <4 x float> %i.bu, float %i.be, i64 1
  %i.bw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bs, <4 x float> %i.bv, <4 x float> %i.bq)
  %i.bx = shufflevector <3 x float> %i.ac, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %i.by = insertelement <4 x float> poison, float %i.be, i64 2
  %i.bz = shufflevector <4 x float> %i.by, <4 x float> %i.bc, <4 x i32> <i32 poison, i32 poison, i32 2, i32 4>
  %i.ca = shufflevector <4 x float> %i.bt, <4 x float> %i.bz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.cb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bx, <4 x float> %i.ca, <4 x float> %i.bw)
  %i.cc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ad, <4 x float> %i.bc, <4 x float> %i.cb) ; 6 uses
  %foldExtExtBinop180 = fmul <4 x float> %i.cc, %i.cc
  %i.cd = extractelement <4 x float> %foldExtExtBinop180, i64 1
  %i.ce = extractelement <4 x float> %i.cc, i64 0 ; 2 uses
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.ce, float %i.ce, float %i.cd)
  %i.cg = extractelement <4 x float> %i.cc, i64 2 ; 2 uses
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.cg, float %i.cg, float %i.cf)
  %i.ci = extractelement <4 x float> %i.cc, i64 3 ; 2 uses
  %i.cj = tail call noundef float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %i.ch)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.cj)
  %i.ck = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.cl = insertelement <4 x float> poison, float %i.ck, i64 0
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> poison, <4 x i32> zeroinitializer
  %i.cn = fmul <4 x float> %i.cc, %i.cm
  store <4 x float> %i.cn, ptr %spec.select162, align 4, !tbaa !20
  br label %_ZNK11btMultiBody15isBaseKinematicEv.exit106.thread177

_ZNK11btMultiBody15isBaseKinematicEv.exit106.thread177: ; preds = %_ZNK11btMultiBody15isBaseKinematicEv.exit, %"_ZZN11btMultiBody21stepPositionsMultiDofEfPfS0_EN3$_0clERK9btVector3R12btQuaternionbf.exit", %_ZNK11btMultiBody15isBaseKinematicEv.exit106
  %i.co = icmp sgt i32 %i.b, 0
  br i1 %i.co, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZNK11btMultiBody15isBaseKinematicEv.exit106.thread177
  %.not99 = icmp eq ptr %3, null
  %i.cp = getelementptr inbounds nuw i8, ptr %3, i64 24
  %.085 = select i1 %.not99, ptr null, ptr %i.cp
  %.not98 = icmp eq ptr %2, null
  %i.cq = getelementptr inbounds nuw i8, ptr %2, i64 28
  %spec.select = select i1 %.not98, ptr null, ptr %i.cq
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ct = fdiv float f0x3F490FDB, %1
  %i.cu = fmul float %1, %1
  %i.cv = fmul float %1, %i.cu
  %i.cw = fmul float %i.cv, f0x3CAAAAAB
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.g

._crit_edge:                                      ; preds = %bb.u, %_ZNK11btMultiBody15isBaseKinematicEv.exit106.thread177
  ret void

bb.g:                                             ; preds = %.lr.ph, %bb.u
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.u ] ; 4 uses
  %.1169 = phi ptr [ %spec.select, %.lr.ph ], [ %.2, %bb.u ] ; 5 uses
  %.186167 = phi ptr [ %.085, %.lr.ph ], [ %.287, %bb.u ] ; 4 uses
  %i.cx = load ptr, ptr %i.cr, align 8, !tbaa !47
  %i.cy = getelementptr inbounds nuw [688 x i8], ptr %i.cx, i64 %indvars.iv ; 15 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 544
  %i.da = load ptr, ptr %i.cz, align 8, !tbaa !98 ; 2 uses
  %.not100 = icmp eq ptr %i.da, null
  br i1 %.not100, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 224
  %i.dc = load i32, ptr %i.db, align 8, !tbaa !97
  %i.dd = and i32 %i.dc, 3
  %.not166 = icmp eq i32 %i.dd, 0
  br i1 %.not166, label %bb.i, label %bb.q

bb.i:                                             ; preds = %bb.h, %bb.g
  %.not101 = icmp eq ptr %.1169, null
  %i.de = getelementptr inbounds nuw i8, ptr %i.cy, i64 464
  %spec.select163 = select i1 %.not101, ptr %i.de, ptr %.1169 ; 10 uses
  %.not102 = icmp eq ptr %.186167, null
  br i1 %.not102, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.cy, i64 328
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !86
  %i.dh = load ptr, ptr %i.cs, align 8, !tbaa !50
  %i.di = sext i32 %i.dg to i64
  %i.dj = getelementptr [4 x i8], ptr %i.dh, i64 %i.di
  %i.dk = getelementptr i8, ptr %i.dj, i64 24
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.dl = phi ptr [ %i.dk, %bb.j ], [ %.186167, %bb.i ] ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.cy, i64 564
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !78
  switch i32 %i.dn, label %bb.q [
    i32 1, label %bb.l
    i32 0, label %bb.l
    i32 2, label %bb.m
    i32 3, label %bb.p
  ]

bb.l:                                             ; preds = %bb.k, %bb.k
  %i.do = load float, ptr %i.dl, align 4, !tbaa !20
  %i.dp = load float, ptr %spec.select163, align 4, !tbaa !20
  %i.dq = tail call float @llvm.fmuladd.f32(float %1, float %i.do, float %i.dp)
  store float %i.dq, ptr %spec.select163, align 4, !tbaa !20
  br label %bb.q

bb.m:                                             ; preds = %bb.k
  %i.dr = getelementptr inbounds nuw i8, ptr %spec.select163, i64 4
  %i.ds = load <3 x float>, ptr %i.dl, align 4, !tbaa !20 ; 5 uses
  %i.dt = shufflevector <3 x float> %i.ds, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.du = load float, ptr %i.dl, align 4, !tbaa !20
  %i.dv = load <3 x float>, ptr %spec.select163, align 4, !tbaa !20 ; 4 uses
  %i.dw = shufflevector <3 x float> %i.dv, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 0> ; 2 uses
  %i.dx = load <4 x float>, ptr %spec.select163, align 4, !tbaa !20 ; 3 uses
  %i.dy = load float, ptr %i.dr, align 4, !tbaa !20
  %i.dz = shufflevector <3 x float> %i.ds, <3 x float> poison, <4 x i32> <i32 2, i32 0, i32 1, i32 0>
  %i.ea = shufflevector <3 x float> %i.dv, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2>
  %i.eb = fmul <4 x float> %i.dz, %i.ea
  %i.ec = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 3, i32 3, i32 3, i32 3> ; 2 uses
end_hunk_0
