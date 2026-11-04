Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/distance?download=true
inline.NumInlined: 318
inline.NumDeleted: 39
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@b3ShapeDistance:bb.a
  %i.li = fdiv float %i.gz, %i.gu
  store float %i.li, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.lj = fdiv float %i.he, %i.gu
  store float %i.lj, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  br label %b3SolveSimplex2.exit.thread768

bb.z:                                             ; preds = %bb.w
  %i.lk = fcmp ole float %i.kv, 0.000000e+00
  %i.ll = fcmp ogt float %i.hq, 0.000000e+00
  %or.cond17.i = select i1 %i.lk, i1 %i.ll, i1 false
  %i.lm = fcmp olt float %i.hv, 0.000000e+00
  %or.cond20.i = select i1 %or.cond17.i, i1 %i.lm, i1 false
  br i1 %or.cond20.i, label %bb.aa, label %bb.ac

bb.aa:                                            ; preds = %bb.z
  store i32 2, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i64 24, i1 false)
  store <2 x float> %.sroa.674.0.copyload.i, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.983.0.copyload.i, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep733, ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false)
  store <2 x float> %.sroa.6.0.copyload.i532, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.9.0.copyload.i, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24285.0..sroa_idx.i, i64 12, i1 false)
  %i.ln = fcmp ugt float %i.hl, 0.000000e+00
  br i1 %i.ln, label %bb.ab, label %b3SolveSimplex2.exit

bb.ab:                                            ; preds = %bb.aa
  %i.lo = fdiv float %i.hq, %i.hl
  store float %i.lo, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.lp = fdiv float %i.hw, %i.hl
  store float %i.lp, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  br label %b3SolveSimplex2.exit.thread768

bb.ac:                                            ; preds = %bb.z
  %i.lq = extractelement <2 x float> %i.lc, i64 1
  %i.lr = fcmp ole float %i.lq, 0.000000e+00
  %i.ls = fcmp ogt float %i.id, 0.000000e+00
  %or.cond23.i = select i1 %i.lr, i1 %i.ls, i1 false
  %i.lt = fcmp olt float %i.il, 0.000000e+00
  %or.cond26.i = select i1 %or.cond23.i, i1 %i.lt, i1 false
  br i1 %or.cond26.i, label %bb.ad, label %bb.af

bb.ad:                                            ; preds = %bb.ac
  store i32 2, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false)
  store <2 x float> %.sroa.6.0.copyload.i532, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.9.0.copyload.i, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep733, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24285.0..sroa_idx.i, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.094.i, i64 24, i1 false), !tbaa.struct !52
  store <2 x float> %.sroa.695.0.copyload.i, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.9104.0.copyload.i, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.12111.i, i64 12, i1 false), !tbaa.struct !53
  %i.lu = fcmp ugt float %i.ii, 0.000000e+00
  br i1 %i.lu, label %bb.ae, label %b3SolveSimplex2.exit

bb.ae:                                            ; preds = %bb.ad
  %i.lv = fdiv float %i.id, %i.ii
  store float %i.lv, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.lw = fdiv float %i.im, %i.ii
  store float %i.lw, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  br label %b3SolveSimplex2.exit.thread768

bb.af:                                            ; preds = %bb.ac
  %i.lx = fcmp ugt float %i.kq, 0.000000e+00
  br i1 %i.lx, label %bb.ag, label %b3SolveSimplex2.exit

bb.ag:                                            ; preds = %bb.af
  %i.ly = fdiv float %i.kv, %i.kq
  store float %i.ly, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.lz = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.ma = shufflevector <2 x float> %i.lz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mb = fdiv <2 x float> %i.lc, %i.ma           ; 2 uses
  %i.mc = extractelement <2 x float> %i.mb, i64 1
  store float %i.mc, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  %i.md = extractelement <2 x float> %i.mb, i64 0
  store float %i.md, ptr %.sroa.24285.0..sroa_idx.i, align 4, !tbaa !22
  br label %b3SolveSimplex2.exit.thread768

bb.ah:                                            ; preds = %bb.j
  %.sroa.10339.0.copyload.i = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16 ; 11 uses
  %i.me = shufflevector <2 x float> %.sroa.10339.0.copyload.i, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.mf = shufflevector <2 x float> %.sroa.10339.0.copyload.i, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.sroa.17360.0.copyload.i = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0293.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24330.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0293.i, ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i64 24, i1 false), !tbaa.struct !52
  %.sroa.10294.0.copyload.i = load <2 x float>, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16 ; 19 uses
  %.sroa.17315.0.copyload.i = load float, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24330.i, ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep, i64 12, i1 false), !tbaa.struct !53
  %.sroa.10249.0.copyload.i = load <2 x float>, ptr %.sroa.10249.0..sroa_idx.i, align 8, !tbaa !16 ; 20 uses
  %.sroa.17270.0.copyload.i = load float, ptr %.sroa.17270.0..sroa_idx.i, align 8, !tbaa !16 ; 13 uses
  %.sroa.10.0.copyload.i = load <2 x float>, ptr %.sroa.10.0..sroa_idx.i, align 8, !tbaa !16 ; 24 uses
  %.sroa.17.0.copyload.i = load float, ptr %.sroa.17.0..sroa_idx.i, align 8, !tbaa !16 ; 15 uses
  %.sroa.06.0.vec.extract.i.i.i533 = extractelement <2 x float> %.sroa.10294.0.copyload.i, i64 0 ; 2 uses
  %i.mg = shufflevector <2 x float> %.sroa.10339.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 6 uses
  %.sroa.03.0.vec.extract.i.i.i534 = extractelement <2 x float> %.sroa.10339.0.copyload.i, i64 0
  %.sroa.06.4.vec.extract.i.i.i535 = extractelement <2 x float> %.sroa.10294.0.copyload.i, i64 1 ; 3 uses
  %i.mh = shufflevector <2 x float> %.sroa.10249.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.06.0.vec.extract.i.i474.i = extractelement <2 x float> %.sroa.10249.0.copyload.i, i64 0 ; 2 uses
  %i.mi = shufflevector <2 x float> %.sroa.10249.0.copyload.i, <2 x float> %.sroa.10294.0.copyload.i, <2 x i32> <i32 1, i32 2> ; 3 uses
  %i.mj = fsub <2 x float> %i.mi, %i.mg           ; 7 uses
  %i.mk = shufflevector <2 x float> %i.mj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ml = extractelement <2 x float> %i.mj, i64 1 ; 3 uses
  %i.mm = shufflevector <2 x float> %.sroa.10294.0.copyload.i, <2 x float> %.sroa.10249.0.copyload.i, <2 x i32> <i32 1, i32 2>
  %i.mn = fsub <2 x float> %i.mm, %i.mg           ; 8 uses
  %i.mo = extractelement <2 x float> %i.mn, i64 0 ; 2 uses
  %i.mp = insertelement <2 x float> poison, float %.sroa.17315.0.copyload.i, i64 0 ; 2 uses
  %i.mq = insertelement <2 x float> %i.mp, float %.sroa.17270.0.copyload.i, i64 1
  %i.mr = insertelement <2 x float> poison, float %.sroa.17360.0.copyload.i, i64 0
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> zeroinitializer ; 4 uses
  %i.mt = fsub <2 x float> %i.mq, %i.ms           ; 8 uses
  %i.mu = extractelement <2 x float> %i.mt, i64 0 ; 2 uses
  %foldExtExtBinop1115 = fmul <2 x float> %i.mt, %i.mt
  %i.mv = extractelement <2 x float> %foldExtExtBinop1115, i64 0
  %i.mw = fmul float %.sroa.06.0.vec.extract.i.i.i533, %i.ml
  %i.mx = fmul float %.sroa.06.4.vec.extract.i.i.i535, %i.mo
  %i.my = fadd float %i.mw, %i.mx
  %i.mz = fmul float %.sroa.17315.0.copyload.i, %i.mu
  %i.na = fadd float %i.mz, %i.my                 ; 3 uses
  %i.nb = extractelement <2 x float> %.sroa.10339.0.copyload.i, i64 1
  %i.nc = extractelement <2 x float> %i.mn, i64 1 ; 3 uses
  %i.nd = extractelement <2 x float> %i.mj, i64 0 ; 3 uses
  %i.ne = extractelement <2 x float> %i.mt, i64 1 ; 5 uses
  %i.nf = fmul float %i.ne, %i.ne
  %i.ng = fmul float %.sroa.06.0.vec.extract.i.i474.i, %i.nc
  %i.nh = extractelement <2 x float> %.sroa.10249.0.copyload.i, i64 1 ; 4 uses
  %i.ni = fmul float %i.nh, %i.nd
  %i.nj = fadd float %i.ng, %i.ni
  %i.nk = fmul float %.sroa.17270.0.copyload.i, %i.ne
  %i.nl = fadd float %i.nk, %i.nj                 ; 3 uses
  %.sroa.06.0.vec.extract.i.i478.i = extractelement <2 x float> %.sroa.10.0.copyload.i, i64 0
  %.sroa.06.4.vec.extract.i.i480.i = extractelement <2 x float> %.sroa.10.0.copyload.i, i64 1 ; 3 uses
  %i.nm = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10249.0.copyload.i, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.nn = shufflevector <2 x float> %.sroa.10339.0.copyload.i, <2 x float> %.sroa.10294.0.copyload.i, <2 x i32> <i32 0, i32 2>
  %i.no = fsub <2 x float> %i.nm, %i.nn           ; 7 uses
  %i.np = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %.sroa.10249.0.copyload.i, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.nq = shufflevector <2 x float> %.sroa.10339.0.copyload.i, <2 x float> %.sroa.10294.0.copyload.i, <2 x i32> <i32 1, i32 3>
  %i.nr = fsub <2 x float> %i.np, %i.nq           ; 8 uses
  %i.ns = shufflevector <2 x float> %i.mn, <2 x float> %i.no, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.nt = shufflevector <4 x float> %i.ns, <4 x float> %i.mf, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.nu = fmul <4 x float> %i.nt, %i.ns
  %i.nv = shufflevector <2 x float> %i.mj, <2 x float> %i.nr, <4 x i32> <i32 1, i32 0, i32 2, i32 2> ; 2 uses
  %i.nw = shufflevector <4 x float> %i.nv, <4 x float> %i.me, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.nx = fmul <4 x float> %i.nw, %i.nv
  %i.ny = fadd <4 x float> %i.nu, %i.nx           ; 4 uses
  %i.nz = extractelement <4 x float> %i.ny, i64 0
  %i.oa = fadd float %i.mv, %i.nz                 ; 3 uses
  %i.ob = extractelement <4 x float> %i.ny, i64 1
  %i.oc = fadd float %i.nf, %i.ob                 ; 3 uses
  %i.od = fsub float %.sroa.17270.0.copyload.i, %.sroa.17315.0.copyload.i ; 6 uses
  %i.oe = extractelement <2 x float> %i.no, i64 1 ; 4 uses
  %i.of = fmul float %i.oe, %i.oe
  %i.og = extractelement <2 x float> %i.nr, i64 1 ; 4 uses
  %i.oh = fmul float %i.og, %i.og
  %i.oi = fadd float %i.of, %i.oh
  %i.oj = fmul float %i.od, %i.od
  %i.ok = fadd float %i.oj, %i.oi                 ; 3 uses
  %i.ol = fmul float %.sroa.06.0.vec.extract.i.i474.i, %i.oe
  %i.om = fmul float %i.nh, %i.og
  %i.on = fadd float %i.ol, %i.om
  %i.oo = fmul float %.sroa.17270.0.copyload.i, %i.od
  %i.op = fadd float %i.oo, %i.on                 ; 3 uses
  %i.oq = fmul float %.sroa.06.0.vec.extract.i.i.i533, %i.oe
  %i.or = fmul float %.sroa.06.4.vec.extract.i.i.i535, %i.og
  %i.os = fadd float %i.oq, %i.or
  %i.ot = fmul float %.sroa.17315.0.copyload.i, %i.od
  %i.ou = fadd float %i.ot, %i.os                 ; 3 uses
  %i.ov = fneg float %i.ou
  %foldExtExtBinop1117 = fsub <2 x float> %.sroa.10.0.copyload.i, %.sroa.10249.0.copyload.i ; 4 uses
  %i.ow = fsub float %.sroa.06.4.vec.extract.i.i480.i, %i.nh ; 4 uses
  %foldExtExtBinop1119 = fmul <2 x float> %foldExtExtBinop1117, %foldExtExtBinop1117
  %i.ox = extractelement <2 x float> %foldExtExtBinop1119, i64 0
  %i.oy = fmul float %i.ow, %i.ow
  %i.oz = fadd float %i.ox, %i.oy
  %i.pa = insertelement <2 x float> poison, float %.sroa.17.0.copyload.i, i64 0
  %i.pb = shufflevector <2 x float> %i.pa, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.pc = insertelement <2 x float> poison, float %.sroa.17270.0.copyload.i, i64 0 ; 3 uses
  %i.pd = insertelement <2 x float> %i.pc, float %.sroa.17360.0.copyload.i, i64 1
  %i.pe = fsub <2 x float> %i.pb, %i.pd           ; 6 uses
  %i.pf = extractelement <2 x float> %i.pe, i64 1 ; 6 uses
  %i.pg = fmul float %i.pf, %i.pf
  %i.ph = fmul float %.sroa.17360.0.copyload.i, %i.pf
  %i.pi = extractelement <4 x float> %i.ny, i64 2
  %i.pj = fadd float %i.pg, %i.pi                 ; 3 uses
  %i.pk = shufflevector <2 x float> %i.nr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.pl = shufflevector <2 x float> %foldExtExtBinop1117, <2 x float> %i.pk, <2 x i32> <i32 0, i32 3>
  %i.pm = fmul <2 x float> %.sroa.10.0.copyload.i, %i.pl
  %i.pn = insertelement <2 x float> %i.no, float %i.ow, i64 1
  %i.po = fmul <2 x float> %.sroa.10.0.copyload.i, %i.pn
  %i.pp = shufflevector <2 x float> %i.po, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pq = fadd <2 x float> %i.pp, %i.pm
  %i.pr = fmul <2 x float> %i.pb, %i.pe
  %i.ps = extractelement <4 x float> %i.ny, i64 3
  %i.pt = fadd float %i.ph, %i.ps                 ; 3 uses
  %i.pu = fneg float %i.pt
  %i.pv = extractelement <2 x float> %i.pe, i64 0
  %foldExtExtBinop1121 = fmul <2 x float> %i.pe, %i.pe
  %i.pw = extractelement <2 x float> %foldExtExtBinop1121, i64 0
  %i.px = fadd float %i.pw, %i.oz                 ; 3 uses
  %i.py = fadd <2 x float> %i.pr, %i.pq           ; 3 uses
  %foldExtExtBinop1123 = fmul <2 x float> %.sroa.10249.0.copyload.i, %foldExtExtBinop1117
  %i.pz = extractelement <2 x float> %foldExtExtBinop1123, i64 0
  %i.qa = fmul float %i.nh, %i.ow
  %i.qb = fadd float %i.pz, %i.qa
  %i.qc = fmul float %.sroa.17270.0.copyload.i, %i.pv
  %i.qd = fadd float %i.qc, %i.qb                 ; 3 uses
  %i.qe = fneg float %i.qd
  %i.qf = fsub float %.sroa.17315.0.copyload.i, %.sroa.17.0.copyload.i ; 4 uses
  %i.qg = fmul float %i.qf, %i.qf
  %i.qh = fmul float %.sroa.17315.0.copyload.i, %i.qf
  %i.qi = fsub <2 x float> %.sroa.10294.0.copyload.i, %.sroa.10.0.copyload.i ; 6 uses
  %i.qj = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %i.qi, <2 x i32> <i32 0, i32 3>
  %i.qk = fmul <2 x float> %i.qj, %i.qi
  %i.ql = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> %i.qi, <2 x i32> <i32 1, i32 2>
  %i.qm = shufflevector <2 x float> %i.qi, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qn = fmul <2 x float> %i.ql, %i.qm
  %i.qo = fadd <2 x float> %i.qk, %i.qn           ; 2 uses
  %i.qp = extractelement <2 x float> %i.qo, i64 1
  %i.qq = fadd float %i.qg, %i.qp                 ; 3 uses
  %foldExtExtBinop1125 = fmul <2 x float> %.sroa.10294.0.copyload.i, %i.qi
  %foldExtExtBinop1127 = fmul <2 x float> %.sroa.10294.0.copyload.i, %i.qi
  %shift1129 = shufflevector <2 x float> %foldExtExtBinop1127, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1130 = fadd <2 x float> %foldExtExtBinop1125, %shift1129
  %i.qr = extractelement <2 x float> %foldExtExtBinop1130, i64 0
  %i.qs = fadd float %i.qh, %i.qr                 ; 3 uses
  %i.qt = fmul float %.sroa.17.0.copyload.i, %i.qf
  %i.qu = extractelement <2 x float> %i.qo, i64 0
  %i.qv = fadd float %i.qt, %i.qu                 ; 3 uses
  %i.qw = fneg float %i.qv
  %i.qx = fmul <2 x float> %i.mg, %i.mn
  %i.qy = fmul <2 x float> %.sroa.10339.0.copyload.i, %i.mk
  %i.qz = fadd <2 x float> %i.qy, %i.qx
  %i.ra = fmul <2 x float> %i.ms, %i.mt
  %i.rb = fadd <2 x float> %i.ra, %i.qz           ; 4 uses
  %11 = fneg <2 x float> %i.rb                    ; 2 uses
  %12 = fcmp oge <2 x float> %i.rb, zeroinitializer ; 2 uses
  %13 = extractelement <2 x i1> %12, i64 0
  %14 = extractelement <2 x i1> %12, i64 1
  %or.cond.i537 = select i1 %13, i1 %14, i1 false
  %i.rc = fcmp oge float %i.pt, 0.000000e+00
  %or.cond5.i538 = select i1 %or.cond.i537, i1 %i.rc, i1 false
  br i1 %or.cond5.i538, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  store i32 1, ptr %i.ae, align 8, !tbaa !19
  store float 1.000000e+00, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  br label %b3SolveSimplex4.exit.thread

bb.aj:                                            ; preds = %bb.ah
  %i.rd = fcmp ole float %i.na, 0.000000e+00
  %i.re = fcmp ole float %i.qs, 0.000000e+00
  %or.cond8.i539 = select i1 %i.rd, i1 %i.re, i1 false
  %i.rf = fcmp oge float %i.ou, 0.000000e+00
  %or.cond11.i540 = select i1 %or.cond8.i539, i1 %i.rf, i1 false
  br i1 %or.cond11.i540, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  store i32 1, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i64 24, i1 false)
  store <2 x float> %.sroa.10294.0.copyload.i, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep733, ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep, i64 12, i1 false)
  %i.rg = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.sroa.17315.0.copyload.i, i64 0
  store <2 x float> %i.rg, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16
  br label %b3SolveSimplex4.exit.thread

bb.al:                                            ; preds = %bb.aj
  %i.rh = fcmp ole float %i.nl, 0.000000e+00
  %i.ri = fcmp ole float %i.op, 0.000000e+00
  %or.cond14.i541 = select i1 %i.rh, i1 %i.ri, i1 false
  %i.rj = fcmp oge float %i.qd, 0.000000e+00
  %or.cond17.i542 = select i1 %or.cond14.i541, i1 %i.rj, i1 false
  br i1 %or.cond17.i542, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  store i32 1, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false)
  store <2 x float> %.sroa.10249.0.copyload.i, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep733, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24285.0..sroa_idx.i, i64 12, i1 false)
  %i.rk = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.sroa.17270.0.copyload.i, i64 0
  store <2 x float> %i.rk, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16
  br label %b3SolveSimplex4.exit.thread

bb.an:                                            ; preds = %bb.al
  %15 = fcmp ole <2 x float> %i.py, zeroinitializer ; 2 uses
  %16 = extractelement <2 x i1> %15, i64 0
  %17 = extractelement <2 x i1> %15, i64 1
  %or.cond20.i543 = select i1 %17, i1 %16, i1 false
  %i.rl = fcmp oge float %i.qv, 0.000000e+00
  %or.cond23.i544 = select i1 %or.cond20.i543, i1 %i.rl, i1 false
  br i1 %or.cond23.i544, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i32 1, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false)
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep733, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24.0..sroa_idx.i, i64 12, i1 false)
  %i.rm = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.sroa.17.0.copyload.i, i64 0
  store <2 x float> %i.rm, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16
  br label %b3SolveSimplex4.exit.thread

bb.ap:                                            ; preds = %bb.an
  %i.rn = shufflevector <2 x float> %i.mp, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ro = shufflevector <2 x float> %.sroa.10249.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.rp = fmul <2 x float> %i.rn, %i.ro           ; 2 uses
  %i.rq = shufflevector <2 x float> %.sroa.10294.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.rr = insertelement <2 x float> %i.pc, float %.sroa.17.0.copyload.i, i64 1 ; 4 uses
  %i.rs = fmul <2 x float> %i.rq, %i.rr           ; 2 uses
  %i.rt = fmul <2 x float> %.sroa.10294.0.copyload.i, %i.rr ; 2 uses
  %i.ru = shufflevector <2 x float> %.sroa.10249.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.rv = fmul <2 x float> %i.rn, %i.ru           ; 2 uses
  %i.rw = shufflevector <2 x float> %.sroa.10294.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.rx = shufflevector <2 x float> %.sroa.10249.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, <2 x i32> <i32 0, i32 3>
  %i.ry = fmul <2 x float> %i.rw, %i.rx           ; 2 uses
  %i.rz = shufflevector <2 x float> %.sroa.10249.0.copyload.i, <2 x float> %.sroa.10294.0.copyload.i, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.sa = fmul <2 x float> %i.ms, %i.rz           ; 3 uses
  %i.sb = insertelement <2 x float> %i.pc, float %.sroa.17315.0.copyload.i, i64 1 ; 2 uses
  %i.sc = fmul <2 x float> %.sroa.10339.0.copyload.i, %i.sb ; 3 uses
  %i.sd = fmul <2 x float> %i.mg, %i.sb           ; 3 uses
  %i.se = fmul <2 x float> %i.ms, %i.mi           ; 3 uses
  %i.sf = fmul <2 x float> %.sroa.10339.0.copyload.i, %i.mi ; 3 uses
  %i.sg = fmul <2 x float> %i.mg, %i.rz           ; 3 uses
  %i.sh = fmul <2 x float> %i.mt, %i.mj
  %i.si = shufflevector <2 x float> %i.mt, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sj = fmul <2 x float> %i.mn, %i.si
  %i.sk = fmul float %i.mo, %i.nc
  %i.sl = fmul float %i.ml, %i.nd
  %i.sm = fsub <2 x float> %i.sd, %i.se
  %i.sn = fsub <2 x float> %i.sa, %i.sc
  %i.so = fsub <2 x float> %i.sf, %i.sg
  %i.sp = fsub <2 x float> %i.sh, %i.sj           ; 6 uses
  %i.sq = fsub float %i.sk, %i.sl                 ; 4 uses
  %i.sr = extractelement <2 x float> %i.sp, i64 0
  %foldExtExtBinop1132 = fmul <2 x float> %i.sp, %i.sp
  %i.ss = extractelement <2 x float> %foldExtExtBinop1132, i64 0
  %i.st = extractelement <2 x float> %i.sp, i64 1 ; 3 uses
  %i.su = fmul float %i.st, %i.st
  %i.sv = fadd float %i.ss, %i.su
  %i.sw = fmul float %i.sq, %i.sq
  %i.sx = fadd float %i.sw, %i.sv                 ; 3 uses
  %i.sy = fmul <2 x float> %i.sm, %i.sp
  %i.sz = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ta = fmul <2 x float> %i.sn, %i.sz
  %i.tb = fadd <2 x float> %i.sy, %i.ta
  %i.tc = insertelement <2 x float> poison, float %i.sq, i64 0
  %i.td = shufflevector <2 x float> %i.tc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.te = fmul <2 x float> %i.so, %i.td
  %i.tf = fadd <2 x float> %i.te, %i.tb           ; 3 uses
  %i.tg = shufflevector <2 x float> %i.rp, <2 x float> %i.rt, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.th = shufflevector <2 x float> %i.rs, <2 x float> %i.rv, <4 x i32> <i32 0, i32 2, i32 3, i32 1>
  %i.ti = fsub <4 x float> %i.tg, %i.th           ; 3 uses
  %i.tj = extractelement <4 x float> %i.ti, i64 0
  %i.tk = fmul float %i.tj, %i.sr
  %i.tl = extractelement <4 x float> %i.ti, i64 1
  %i.tm = fmul float %i.tl, %i.st
  %i.tn = fadd float %i.tk, %i.tm
  %i.to = fmul <2 x float> %.sroa.10294.0.copyload.i, %i.ro ; 2 uses
  %i.tp = fsub <2 x float> %i.ry, %i.to           ; 2 uses
  %i.tq = extractelement <2 x float> %i.tp, i64 0
  %i.tr = fmul float %i.tq, %i.sq
  %i.ts = fadd float %i.tr, %i.tn                 ; 3 uses
  %i.tt = fmul float %.sroa.17360.0.copyload.i, %.sroa.06.4.vec.extract.i.i480.i ; 2 uses
  %i.tu = fmul float %i.nb, %.sroa.17.0.copyload.i ; 2 uses
  %i.tv = extractelement <2 x float> %i.nr, i64 0
  %i.tw = extractelement <2 x float> %i.no, i64 0 ; 2 uses
  %i.tx = fsub float %i.tt, %i.tu
  %i.ty = fmul float %.sroa.03.0.vec.extract.i.i.i534, %.sroa.17.0.copyload.i ; 2 uses
  %i.tz = fmul float %.sroa.17360.0.copyload.i, %.sroa.06.0.vec.extract.i.i478.i ; 2 uses
  %i.ua = fsub float %i.ty, %i.tz
  %i.ub = fmul <2 x float> %i.mg, %.sroa.10.0.copyload.i ; 2 uses
  %i.uc = extractelement <2 x float> %i.ub, i64 0 ; 2 uses
  %i.ud = extractelement <2 x float> %i.ub, i64 1 ; 2 uses
  %i.ue = fsub float %i.uc, %i.ud
  %foldExtExtBinop1134 = fsub <2 x float> %i.sc, %i.sa
  %i.uf = extractelement <2 x float> %foldExtExtBinop1134, i64 1
  %foldExtExtBinop1136 = fsub <2 x float> %i.se, %i.sd
  %foldExtExtBinop1138 = fsub <2 x float> %i.sg, %i.sf
  %i.ug = shufflevector <2 x float> %i.mj, <2 x float> %i.mn, <4 x i32> <i32 1, i32 2, i32 poison, i32 1>
  %i.uh = insertelement <4 x float> %i.ug, float %i.mu, i64 2
  %i.ui = shufflevector <2 x float> %i.nr, <2 x float> %i.pe, <4 x i32> <i32 0, i32 3, i32 poison, i32 0>
  %i.uj = insertelement <4 x float> %i.ui, float %i.tw, i64 2
  %i.uk = fmul <4 x float> %i.uh, %i.uj
  %i.ul = shufflevector <2 x float> %i.mn, <2 x float> %i.mt, <4 x i32> <i32 0, i32 2, i32 poison, i32 0>
  %i.um = insertelement <4 x float> %i.ul, float %i.ml, i64 2
  %i.un = shufflevector <2 x float> %i.no, <2 x float> %i.nr, <4 x i32> <i32 0, i32 2, i32 poison, i32 0>
  %i.uo = insertelement <4 x float> %i.un, float %i.pf, i64 2
  %i.up = fmul <4 x float> %i.um, %i.uo
  %i.uq = fsub <4 x float> %i.uk, %i.up           ; 6 uses
  %i.ur = extractelement <4 x float> %i.uq, i64 1 ; 3 uses
  %i.us = fmul float %i.ur, %i.ur
  %i.ut = extractelement <4 x float> %i.uq, i64 2 ; 3 uses
  %i.uu = fmul float %i.ut, %i.ut
  %i.uv = fadd float %i.us, %i.uu
  %i.uw = shufflevector <2 x float> %i.tp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ux = shufflevector <4 x float> %i.ti, <4 x float> %i.uw, <4 x i32> <i32 poison, i32 2, i32 3, i32 5>
  %i.uy = shufflevector <4 x float> %i.uq, <4 x float> %i.ux, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.uz = fmul <4 x float> %i.uy, %i.uq           ; 4 uses
  %i.va = extractelement <4 x float> %i.uz, i64 0
  %i.vb = fadd float %i.va, %i.uv                 ; 3 uses
  %shift1140 = shufflevector <4 x float> %i.uz, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop1141 = fadd <4 x float> %i.uz, %shift1140
  %shift1143 = shufflevector <4 x float> %i.uz, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop1144 = fadd <4 x float> %shift1143, %foldExtExtBinop1141
  %i.vc = extractelement <4 x float> %foldExtExtBinop1144, i64 1 ; 3 uses
  %i.vd = fmul float %i.ua, %i.ut
  %i.ve = fmul float %i.uf, %i.ur
  %i.vf = shufflevector <2 x float> %foldExtExtBinop1136, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.vg = insertelement <2 x float> %i.vf, float %i.tx, i64 1
  %i.vh = shufflevector <4 x float> %i.uq, <4 x float> poison, <2 x i32> <i32 2, i32 1>
  %i.vi = fmul <2 x float> %i.vg, %i.vh
  %i.vj = insertelement <2 x float> poison, float %i.ve, i64 0
  %i.vk = insertelement <2 x float> %i.vj, float %i.vd, i64 1
  %i.vl = fadd <2 x float> %i.vk, %i.vi
  %i.vm = shufflevector <2 x float> %foldExtExtBinop1138, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.vn = insertelement <2 x float> %i.vm, float %i.ue, i64 1
  %i.vo = shufflevector <4 x float> %i.uq, <4 x float> poison, <2 x i32> zeroinitializer
  %i.vp = fmul <2 x float> %i.vn, %i.vo
  %i.vq = fadd <2 x float> %i.vp, %i.vl           ; 3 uses
  %i.vr = fmul <2 x float> %i.np, %i.rr           ; 2 uses
  %i.vs = fmul <2 x float> %i.rr, %i.nm           ; 2 uses
  %i.vt = shufflevector <2 x float> %i.vs, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.vu = fmul <2 x float> %i.mh, %.sroa.10.0.copyload.i ; 2 uses
  %foldExtExtBinop1146 = fsub <2 x float> %i.se, %i.sd
  %i.vv = extractelement <2 x float> %foldExtExtBinop1146, i64 0
  %foldExtExtBinop1148 = fsub <2 x float> %i.sc, %i.sa
  %i.vw = extractelement <2 x float> %foldExtExtBinop1148, i64 0
  %foldExtExtBinop1150 = fsub <2 x float> %i.sg, %i.sf
  %i.vx = fsub float %i.tu, %i.tt
  %i.vy = fsub float %i.tz, %i.ty
  %i.vz = fsub float %i.ud, %i.uc
  %i.wa = fmul float %i.ne, %i.tv
  %i.wb = fmul float %i.nd, %i.pf
  %i.wc = fsub float %i.wa, %i.wb                 ; 5 uses
  %i.wd = fmul float %i.nc, %i.pf
  %i.we = fmul float %i.ne, %i.tw
  %i.wf = fsub float %i.wd, %i.we                 ; 5 uses
  %i.wg = fmul float %i.wc, %i.wc
  %i.wh = fmul float %i.wf, %i.wf
  %i.wi = fadd float %i.wg, %i.wh
  %i.wj = fmul float %i.vv, %i.wc
  %i.wk = fmul float %i.vw, %i.wf
  %i.wl = fadd float %i.wj, %i.wk
  %i.wm = fmul float %i.vx, %i.wc
  %i.wn = fmul float %i.vy, %i.wf
  %i.wo = fadd float %i.wm, %i.wn
  %i.wp = shufflevector <2 x float> %.sroa.10.0.copyload.i, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.wq = insertelement <2 x float> %i.wp, float %.sroa.17.0.copyload.i, i64 0
  %i.wr = insertelement <2 x float> %i.rq, float %.sroa.17315.0.copyload.i, i64 0
  %i.ws = fsub <2 x float> %i.wq, %i.wr           ; 3 uses
  %i.wt = fsub <2 x float> %i.rs, %i.rp
  %i.wu = fsub <2 x float> %i.rv, %i.rt
  %i.wv = fsub <2 x float> %i.to, %i.ry
  %i.ww = shufflevector <2 x float> %i.nr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.wx = insertelement <2 x float> %i.ww, float %i.od, i64 1
  %i.wy = fmul <2 x float> %i.wx, %i.ws
  %i.wz = shufflevector <2 x float> %i.mn, <2 x float> %i.ws, <2 x i32> <i32 1, i32 3>
  %i.xa = fmul <2 x float> %i.nr, %i.wz
  %i.xb = shufflevector <2 x float> %i.vr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xc = fsub <2 x float> %i.vr, %i.xb
  %i.xd = fsub <2 x float> %i.vt, %i.vs
  %i.xe = shufflevector <2 x float> %i.vu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.xf = fsub <2 x float> %i.vu, %i.xe
  %i.xg = fsub float %.sroa.06.4.vec.extract.i.i480.i, %.sroa.06.4.vec.extract.i.i.i535 ; 2 uses
  %i.xh = insertelement <2 x float> %i.mj, float %i.xg, i64 1
  %i.xi = fmul <2 x float> %i.no, %i.xh
  %i.xj = fsub <2 x float> %i.xi, %i.xa           ; 7 uses
  %i.xk = extractelement <2 x float> %i.xj, i64 0
  %foldExtExtBinop1152 = fmul <2 x float> %i.xj, %i.xj
  %i.xl = extractelement <2 x float> %foldExtExtBinop1152, i64 0
  %i.xm = fadd float %i.xl, %i.wi                 ; 4 uses
  %i.xn = insertelement <2 x float> %i.no, float %i.od, i64 0
  %i.xo = shufflevector <2 x float> %i.ws, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.xp = insertelement <2 x float> %i.xo, float %i.xg, i64 0
  %i.xq = fmul <2 x float> %i.xn, %i.xp
  %i.xr = fsub <2 x float> %i.wy, %i.xq           ; 6 uses
  %i.xs = shufflevector <2 x float> %i.xr, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.xt = insertelement <2 x float> %i.xs, float %i.wc, i64 0
  %i.xu = fmul <2 x float> %i.xc, %i.xt
  %i.xv = insertelement <2 x float> %i.xr, float %i.wf, i64 0
  %i.xw = fmul <2 x float> %i.xd, %i.xv
  %i.xx = fadd <2 x float> %i.xu, %i.xw
  %i.xy = fmul <2 x float> %i.xf, %i.xj
  %foldExtExtBinop1154 = fmul <2 x float> %foldExtExtBinop1150, %i.xj
  %i.xz = extractelement <2 x float> %foldExtExtBinop1154, i64 0
  %i.ya = fadd float %i.xz, %i.wl                 ; 3 uses
  %i.yb = fmul float %i.vz, %i.xk
  %i.yc = fadd float %i.yb, %i.wo                 ; 3 uses
  %foldExtExtBinop1156 = fmul <2 x float> %i.xr, %i.xr
  %i.yd = shufflevector <2 x float> %i.xr, <2 x float> %i.xj, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ye = fmul <2 x float> %i.yd, %i.yd           ; 2 uses
  %foldExtExtBinop1158 = fadd <2 x float> %foldExtExtBinop1156, %i.ye
  %shift1160 = shufflevector <2 x float> %i.ye, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1161 = fadd <2 x float> %shift1160, %foldExtExtBinop1158 ; 2 uses
  %i.yf = extractelement <2 x float> %foldExtExtBinop1161, i64 0 ; 2 uses
  %i.yg = fadd <2 x float> %i.xy, %i.xx           ; 3 uses
  %i.yh = fmul <2 x float> %i.wt, %i.xr
  %i.yi = fmul <2 x float> %i.wu, %i.xs
  %i.yj = fadd <2 x float> %i.yh, %i.yi
  %i.yk = shufflevector <2 x float> %i.xj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yl = fmul <2 x float> %i.wv, %i.yk
  %i.ym = fadd <2 x float> %i.yl, %i.yj           ; 3 uses
  %i.yn = extractelement <2 x float> %i.vq, i64 0 ; 2 uses
  %i.yo = fcmp ole float %i.yn, 0.000000e+00
  %i.yp = extractelement <2 x float> %i.tf, i64 1 ; 2 uses
  %i.yq = fcmp ole float %i.yp, 0.000000e+00
  %or.cond26.i545 = select i1 %i.yo, i1 %i.yq, i1 false
  %i.yr = fcmp ogt float %i.na, 0.000000e+00
  %or.cond29.i = select i1 %or.cond26.i545, i1 %i.yr, i1 false
  %i.ys = extractelement <2 x float> %i.rb, i64 0
  %i.yt = fcmp olt float %i.ys, 0.000000e+00
  %or.cond32.i = select i1 %or.cond29.i, i1 %i.yt, i1 false
  br i1 %or.cond32.i, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  store i32 2, ptr %i.ae, align 8, !tbaa !19
  %i.yu = fcmp ugt float %i.oa, 0.000000e+00
  br i1 %i.yu, label %bb.ar, label %b3SolveSimplex4.exit.thread785

bb.ar:                                            ; preds = %bb.aq
  %i.yv = fdiv float %i.na, %i.oa
  store float %i.yv, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.yw = extractelement <2 x float> %11, i64 0
  %i.yx = fdiv float %i.yw, %i.oa
  store float %i.yx, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  br label %b3SolveSimplex4.exit.thread

bb.as:                                            ; preds = %bb.ap
  %i.yy = extractelement <2 x float> %i.tf, i64 0 ; 2 uses
  %i.yz = fcmp ole float %i.yy, 0.000000e+00
  %i.za = fcmp ole float %i.ya, 0.000000e+00
  %or.cond35.i = select i1 %i.yz, i1 %i.za, i1 false
  %i.zb = fcmp ogt float %i.nl, 0.000000e+00
  %or.cond38.i = select i1 %or.cond35.i, i1 %i.zb, i1 false
  %i.zc = extractelement <2 x float> %i.rb, i64 1
  %i.zd = fcmp olt float %i.zc, 0.000000e+00
  %or.cond41.i = select i1 %or.cond38.i, i1 %i.zd, i1 false
  br i1 %or.cond41.i, label %bb.at, label %bb.av

bb.at:                                            ; preds = %bb.as
  store i32 2, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false)
  store <2 x float> %.sroa.10249.0.copyload.i, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.17270.0.copyload.i, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24285.0..sroa_idx.i, i64 12, i1 false)
  %i.ze = fcmp ugt float %i.oc, 0.000000e+00
  br i1 %i.ze, label %bb.au, label %b3SolveSimplex4.exit.thread785

bb.au:                                            ; preds = %bb.at
  %i.zf = fdiv float %i.nl, %i.oc
  store float %i.zf, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.zg = extractelement <2 x float> %11, i64 1
  %i.zh = fdiv float %i.zg, %i.oc
  store float %i.zh, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  br label %b3SolveSimplex4.exit.thread

bb.av:                                            ; preds = %bb.as
  %i.zi = fcmp ole float %i.yc, 0.000000e+00
  %i.zj = extractelement <2 x float> %i.vq, i64 1 ; 2 uses
  %i.zk = fcmp ole float %i.zj, 0.000000e+00
  %or.cond44.i = select i1 %i.zi, i1 %i.zk, i1 false
  %i.zl = extractelement <2 x float> %i.py, i64 1 ; 2 uses
  %i.zm = fcmp ogt float %i.zl, 0.000000e+00
  %or.cond47.i = select i1 %or.cond44.i, i1 %i.zm, i1 false
  %i.zn = fcmp olt float %i.pt, 0.000000e+00
  %or.cond50.i = select i1 %or.cond47.i, i1 %i.zn, i1 false
  br i1 %or.cond50.i, label %bb.aw, label %bb.ay

bb.aw:                                            ; preds = %bb.av
  store i32 2, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false)
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24.0..sroa_idx.i, i64 12, i1 false)
  %i.zo = fcmp ugt float %i.pj, 0.000000e+00
  br i1 %i.zo, label %bb.ax, label %b3SolveSimplex4.exit.thread785

bb.ax:                                            ; preds = %bb.aw
  %i.zp = fdiv float %i.zl, %i.pj
  store float %i.zp, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.zq = fdiv float %i.pu, %i.pj
  store float %i.zq, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  br label %b3SolveSimplex4.exit.thread

bb.ay:                                            ; preds = %bb.av
  %i.zr = fcmp ole float %i.ts, 0.000000e+00
  %i.zs = extractelement <2 x float> %i.ym, i64 0 ; 2 uses
  %i.zt = fcmp ole float %i.zs, 0.000000e+00
  %or.cond53.i = select i1 %i.zr, i1 %i.zt, i1 false
  %i.zu = fcmp ogt float %i.op, 0.000000e+00
  %or.cond56.i = select i1 %or.cond53.i, i1 %i.zu, i1 false
  %i.zv = fcmp olt float %i.ou, 0.000000e+00
  %or.cond59.i = select i1 %or.cond56.i, i1 %i.zv, i1 false
  br i1 %or.cond59.i, label %bb.az, label %bb.bb

bb.az:                                            ; preds = %bb.ay
  store i32 2, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i64 24, i1 false)
  store <2 x float> %.sroa.10294.0.copyload.i, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.17315.0.copyload.i, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep733, ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false)
  store <2 x float> %.sroa.10249.0.copyload.i, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.17270.0.copyload.i, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24285.0..sroa_idx.i, i64 12, i1 false)
  %i.zw = fcmp ugt float %i.ok, 0.000000e+00
  br i1 %i.zw, label %bb.ba, label %b3SolveSimplex4.exit.thread785

bb.ba:                                            ; preds = %bb.az
  %i.zx = fdiv float %i.op, %i.ok
  store float %i.zx, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.zy = fdiv float %i.ov, %i.ok
  store float %i.zy, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  br label %b3SolveSimplex4.exit.thread

bb.bb:                                            ; preds = %bb.ay
  %18 = fcmp ole <2 x float> %i.yg, zeroinitializer ; 2 uses
  %19 = extractelement <2 x i1> %18, i64 0
  %20 = extractelement <2 x i1> %18, i64 1
  %or.cond62.i = select i1 %19, i1 %20, i1 false
  %i.zz = extractelement <2 x float> %i.py, i64 0 ; 2 uses
  %i.aaa = fcmp ogt float %i.zz, 0.000000e+00
  %or.cond65.i = select i1 %or.cond62.i, i1 %i.aaa, i1 false
  %i.aab = fcmp olt float %i.qd, 0.000000e+00
  %or.cond68.i = select i1 %or.cond65.i, i1 %i.aab, i1 false
  br i1 %or.cond68.i, label %bb.bc, label %bb.be

bb.bc:                                            ; preds = %bb.bb
  store i32 2, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false)
  store <2 x float> %.sroa.10249.0.copyload.i, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.17270.0.copyload.i, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep733, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24285.0..sroa_idx.i, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false)
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24.0..sroa_idx.i, i64 12, i1 false)
  %i.aac = fcmp ugt float %i.px, 0.000000e+00
  br i1 %i.aac, label %bb.bd, label %b3SolveSimplex4.exit.thread785

bb.bd:                                            ; preds = %bb.bc
  %i.aad = fdiv float %i.zz, %i.px
  store float %i.aad, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.aae = fdiv float %i.qe, %i.px
  store float %i.aae, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  br label %b3SolveSimplex4.exit.thread

bb.be:                                            ; preds = %bb.bb
  %i.aaf = fcmp ole float %i.vc, 0.000000e+00
  %i.aag = extractelement <2 x float> %i.ym, i64 1 ; 2 uses
  %i.aah = fcmp ole float %i.aag, 0.000000e+00
  %or.cond71.i = select i1 %i.aaf, i1 %i.aah, i1 false
  %i.aai = fcmp ogt float %i.qs, 0.000000e+00
  %or.cond74.i = select i1 %or.cond71.i, i1 %i.aai, i1 false
  %i.aaj = fcmp olt float %i.qv, 0.000000e+00
  %or.cond77.i = select i1 %or.cond74.i, i1 %i.aaj, i1 false
  br i1 %or.cond77.i, label %bb.bf, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  store i32 2, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false)
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep733, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24.0..sroa_idx.i, i64 12, i1 false)
  %i.aak = fcmp ugt float %i.qq, 0.000000e+00
  br i1 %i.aak, label %bb.bg, label %b3SolveSimplex4.exit.thread785

bb.bg:                                            ; preds = %bb.bf
  %i.aal = fdiv float %i.qs, %i.qq
  store float %i.aal, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.aam = fdiv float %i.qw, %i.qq
  store float %i.aam, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  br label %b3SolveSimplex4.exit.thread

bb.bh:                                            ; preds = %bb.be
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call fastcc void @b3BarycentricCoordsTet(ptr noundef %i.a, <2 x float> %.sroa.10339.0.copyload.i, float %.sroa.17360.0.copyload.i, <2 x float> %.sroa.10294.0.copyload.i, float %.sroa.17315.0.copyload.i, <2 x float> %.sroa.10249.0.copyload.i, float %.sroa.17270.0.copyload.i, <2 x float> %.sroa.10.0.copyload.i, float %.sroa.17.0.copyload.i)
  %i.aan = load float, ptr %i.fg, align 4, !tbaa !16 ; 2 uses
  %i.aao = fcmp olt float %i.aan, 0.000000e+00
  %i.aap = fcmp ogt float %i.ts, 0.000000e+00
  %or.cond80.i = select i1 %i.aao, i1 %i.aap, i1 false
  %i.aaq = fcmp ogt float %i.yp, 0.000000e+00
  %or.cond83.i = select i1 %or.cond80.i, i1 %i.aaq, i1 false
  %i.aar = fcmp ogt float %i.yy, 0.000000e+00
  %or.cond86.i = and i1 %or.cond83.i, %i.aar
  br i1 %or.cond86.i, label %bb.bi, label %bb.bk

bb.bi:                                            ; preds = %bb.bh
  store i32 3, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false)
  store <2 x float> %.sroa.10249.0.copyload.i, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.17270.0.copyload.i, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24285.0..sroa_idx.i, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.0293.i, i64 24, i1 false), !tbaa.struct !52
  store <2 x float> %.sroa.10294.0.copyload.i, ptr %.sroa.10249.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.17315.0.copyload.i, ptr %.sroa.17270.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24285.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(12) %.sroa.24330.i, i64 12, i1 false), !tbaa.struct !53
  %i.aas = fcmp ugt float %i.sx, 0.000000e+00
  br i1 %i.aas, label %bb.bj, label %b3SolveSimplex4.exit

bb.bj:                                            ; preds = %bb.bi
  %i.aat = fdiv float %i.ts, %i.sx
  store float %i.aat, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.aau = insertelement <2 x float> poison, float %i.sx, i64 0
  %i.aav = shufflevector <2 x float> %i.aau, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aaw = fdiv <2 x float> %i.tf, %i.aav         ; 2 uses
  %i.aax = extractelement <2 x float> %i.aaw, i64 1
  store float %i.aax, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  %i.aay = extractelement <2 x float> %i.aaw, i64 0
  store float %i.aay, ptr %.sroa.24285.0..sroa_idx.i, align 4, !tbaa !22
  br label %b3SolveSimplex4.exit.thread788

bb.bk:                                            ; preds = %bb.bh
  %i.aaz = load float, ptr %i.fh, align 8, !tbaa !16 ; 2 uses
  %i.aba = fcmp olt float %i.aaz, 0.000000e+00
  %i.abb = fcmp ogt float %i.vc, 0.000000e+00
  %or.cond89.i = select i1 %i.aba, i1 %i.abb, i1 false
  %i.abc = fcmp ogt float %i.zj, 0.000000e+00
  %or.cond92.i = select i1 %or.cond89.i, i1 %i.abc, i1 false
  %i.abd = fcmp ogt float %i.yn, 0.000000e+00
  %or.cond95.i = and i1 %or.cond92.i, %i.abd
  br i1 %or.cond95.i, label %bb.bl, label %bb.bn

bb.bl:                                            ; preds = %bb.bk
  store i32 3, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false)
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10249.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17270.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24285.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24.0..sroa_idx.i, i64 12, i1 false)
  %i.abe = fcmp ugt float %i.vb, 0.000000e+00
  br i1 %i.abe, label %bb.bm, label %b3SolveSimplex4.exit

bb.bm:                                            ; preds = %bb.bl
  %i.abf = fdiv float %i.vc, %i.vb
  store float %i.abf, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.abg = insertelement <2 x float> poison, float %i.vb, i64 0
  %i.abh = shufflevector <2 x float> %i.abg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.abi = fdiv <2 x float> %i.vq, %i.abh         ; 2 uses
  %i.abj = extractelement <2 x float> %i.abi, i64 1
  store float %i.abj, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  %i.abk = extractelement <2 x float> %i.abi, i64 0
  store float %i.abk, ptr %.sroa.24285.0..sroa_idx.i, align 4, !tbaa !22
  br label %b3SolveSimplex4.exit.thread788

bb.bn:                                            ; preds = %bb.bk
  %i.abl = load float, ptr %i.fi, align 4, !tbaa !16 ; 2 uses
  %i.abm = fcmp olt float %i.abl, 0.000000e+00
  %i.abn = extractelement <2 x float> %i.yg, i64 0 ; 2 uses
  %i.abo = fcmp ogt float %i.abn, 0.000000e+00
  %or.cond98.i = select i1 %i.abm, i1 %i.abo, i1 false
  %i.abp = fcmp ogt float %i.ya, 0.000000e+00
  %or.cond101.i = select i1 %or.cond98.i, i1 %i.abp, i1 false
  %i.abq = fcmp ogt float %i.yc, 0.000000e+00
  %or.cond104.i = select i1 %or.cond101.i, i1 %i.abq, i1 false
  br i1 %or.cond104.i, label %bb.bo, label %bb.bq

bb.bo:                                            ; preds = %bb.bn
  store i32 3, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false)
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24.0..sroa_idx.i, i64 12, i1 false)
  %i.abr = fcmp ugt float %i.xm, 0.000000e+00
  br i1 %i.abr, label %bb.bp, label %b3SolveSimplex4.exit

bb.bp:                                            ; preds = %bb.bo
  %i.abs = fdiv float %i.abn, %i.xm
  store float %i.abs, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.abt = fdiv float %i.ya, %i.xm
  store float %i.abt, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  %i.abu = fdiv float %i.yc, %i.xm
  store float %i.abu, ptr %.sroa.24285.0..sroa_idx.i, align 4, !tbaa !22
  br label %b3SolveSimplex4.exit.thread788

bb.bq:                                            ; preds = %bb.bn
  %i.abv = load float, ptr %i.a, align 16, !tbaa !16 ; 2 uses
  %i.abw = fcmp olt float %i.abv, 0.000000e+00
  %i.abx = extractelement <2 x float> %i.yg, i64 1 ; 2 uses
  %i.aby = fcmp ogt float %i.abx, 0.000000e+00
  %or.cond107.i = select i1 %i.abw, i1 %i.aby, i1 false
  %i.abz = fcmp ogt float %i.aag, 0.000000e+00
  %or.cond110.i = select i1 %or.cond107.i, i1 %i.abz, i1 false
  %i.aca = fcmp ogt float %i.zs, 0.000000e+00
  %or.cond113.i = select i1 %or.cond110.i, i1 %i.aca, i1 false
  br i1 %or.cond113.i, label %bb.br, label %bb.bt

bb.br:                                            ; preds = %bb.bq
  store i32 3, ptr %i.ae, align 8, !tbaa !19
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %i.fd, i64 24, i1 false)
  store <2 x float> %.sroa.10294.0.copyload.i, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.17315.0.copyload.i, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep733, ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fd, ptr noundef nonnull align 8 dereferenceable(24) %i.fe, i64 24, i1 false)
  store <2 x float> %.sroa.10249.0.copyload.i, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.17270.0.copyload.i, ptr %.sroa.17315.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sink59.i.sroa.gep, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24285.0..sroa_idx.i, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.fe, ptr noundef nonnull align 8 dereferenceable(24) %i.ff, i64 24, i1 false)
  store <2 x float> %.sroa.10.0.copyload.i, ptr %.sroa.10249.0..sroa_idx.i, align 8, !tbaa !16
  store float %.sroa.17.0.copyload.i, ptr %.sroa.17270.0..sroa_idx.i, align 8, !tbaa !16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24285.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.24.0..sroa_idx.i, i64 12, i1 false)
  %i.acb = fcmp ugt float %i.yf, 0.000000e+00
  br i1 %i.acb, label %bb.bs, label %b3SolveSimplex4.exit

bb.bs:                                            ; preds = %bb.br
  %i.acc = fdiv float %i.abx, %i.yf
  store float %i.acc, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.acd = shufflevector <2 x float> %foldExtExtBinop1161, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ace = fdiv <2 x float> %i.ym, %i.acd         ; 2 uses
  %i.acf = extractelement <2 x float> %i.ace, i64 1
  store float %i.acf, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  %i.acg = extractelement <2 x float> %i.ace, i64 0
  store float %i.acg, ptr %.sroa.24285.0..sroa_idx.i, align 4, !tbaa !22
  br label %b3SolveSimplex4.exit.thread788

bb.bt:                                            ; preds = %bb.bq
  %i.ach = load float, ptr %i.fj, align 16, !tbaa !16 ; 5 uses
  %i.aci = fcmp ugt float %i.ach, 0.000000e+00
  br i1 %i.aci, label %bb.bu, label %b3SolveSimplex4.exit

bb.bu:                                            ; preds = %bb.bt
  %i.acj = fdiv float %i.abv, %i.ach
  store float %i.acj, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22
  %i.ack = fdiv float %i.abl, %i.ach
  store float %i.ack, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22
  %i.acl = fdiv float %i.aaz, %i.ach
  store float %i.acl, ptr %.sroa.24285.0..sroa_idx.i, align 4, !tbaa !22
  %i.acm = fdiv float %i.aan, %i.ach
  store float %i.acm, ptr %.sroa.24.0..sroa_idx.i, align 4, !tbaa !22
  br label %b3SolveSimplex4.exit.thread788

b3SolveSimplex4.exit.thread:                      ; preds = %bb.ai, %bb.ak, %bb.am, %bb.ao, %bb.ar, %bb.au, %bb.ax, %bb.ba, %bb.bd, %bb.bg
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0293.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24330.i)
  br label %bb.bv

b3SolveSimplex4.exit.thread785:                   ; preds = %bb.az, %bb.bc, %bb.bf, %bb.aq, %bb.at, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0293.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24330.i)
  br label %.thread770.sink.split

b3SolveSimplex4.exit.thread788:                   ; preds = %bb.bs, %bb.bj, %bb.bm, %bb.bp, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0293.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24330.i)
  br label %bb.bv

b3SolveSimplex4.exit:                             ; preds = %bb.bi, %bb.bl, %bb.bo, %bb.br, %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0293.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24330.i)
  br label %.thread770.sink.split

b3SolveSimplex2.exit.thread768:                   ; preds = %bb.r, %bb.t, %bb.v, %bb.ae, %bb.y, %bb.ab, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.094.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12111.i)
  br label %bb.bv

b3SolveSimplex2.exit:                             ; preds = %bb.af, %bb.ad, %bb.aa, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.094.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12111.i)
  br label %.thread770.sink.split

bb.bv:                                            ; preds = %b3SolveSimplex4.exit.thread788, %b3SolveSimplex4.exit.thread, %b3SolveSimplex2.exit.thread768, %b3SolveSimplex2.exit.thread, %.critedge483
  %i.acn = icmp slt i32 %.1840, %4
  %or.cond485 = select i1 %.not, i1 %i.acn, i1 false
  br i1 %or.cond485, label %bb.bw, label %bb.bx

bb.bw:                                            ; preds = %bb.bv
  %i.aco = sext i32 %.1840 to i64
  %i.acp = getelementptr inbounds [196 x i8], ptr %3, i64 %i.aco
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(196) %i.acp, ptr noundef nonnull align 8 dereferenceable(196) %5, i64 196, i1 false), !tbaa.struct !51
  %i.acq = add nsw i32 %.1840, 1                  ; 2 uses
  store i32 %.0469836, ptr %i.fk, align 4, !tbaa !54
  store i32 %i.acq, ptr %i.fl, align 4, !tbaa !55
  br label %bb.bx

bb.bx:                                            ; preds = %bb.bw, %bb.bv
  %.2 = phi i32 [ %i.acq, %bb.bw ], [ %.1840, %bb.bv ] ; 6 uses
  %i.acr = load i32, ptr %i.ae, align 8, !tbaa !19 ; 6 uses
  switch i32 %i.acr, label %bb.cc [
    i32 4, label %bb.by
    i32 1, label %bb.bz
    i32 2, label %bb.ca
    i32 3, label %bb.cb
  ]

bb.by:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call fastcc void @b3ComputeWitnessPoints(ptr noundef %5, ptr noundef %0, ptr noundef %7)
  %i.acs = getelementptr inbounds nuw i8, ptr %0, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.acs, ptr noundef nonnull align 4 dereferenceable(12) %7, i64 12, i1 false), !tbaa.struct !25
  %i.act = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.act, i8 0, i64 16, i1 false)
  store i32 %.0469836, ptr %i.fk, align 4, !tbaa !54
  store i32 %.2, ptr %i.fl, align 4, !tbaa !55
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %.thread777

bb.bz:                                            ; preds = %bb.bx
  %.sroa.0284.0.copyload = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16
  %.sroa.9.0.copyload = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16
  br label %bb.cc

bb.ca:                                            ; preds = %bb.bx
  %i.acu = load float, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22 ; 2 uses
  %i.acv = load float, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22 ; 2 uses
  %.sroa.0280.0.copyload = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8
  %.sroa.2281.0.copyload = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8
  %.sroa.0278.0.copyload = load <2 x float>, ptr %.sroa.10294.0..sroa_idx.i, align 8
  %.sroa.2279.0.copyload = load float, ptr %.sroa.17315.0..sroa_idx.i, align 8
  %i.acw = insertelement <2 x float> poison, float %i.acu, i64 0
  %i.acx = shufflevector <2 x float> %i.acw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.acy = fmul <2 x float> %i.acx, %.sroa.0280.0.copyload
  %i.acz = insertelement <2 x float> poison, float %i.acv, i64 0
  %i.ada = shufflevector <2 x float> %i.acz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adb = fmul <2 x float> %i.ada, %.sroa.0278.0.copyload
  %i.adc = fadd <2 x float> %i.acy, %i.adb
  %i.add = fmul float %i.acu, %.sroa.2281.0.copyload
  %i.ade = fmul float %i.acv, %.sroa.2279.0.copyload
  %i.adf = fadd float %i.add, %i.ade
  br label %bb.cc

bb.cb:                                            ; preds = %bb.bx
  %i.adg = load float, ptr %.sink59.i.sroa.gep733, align 4, !tbaa !22 ; 2 uses
  %i.adh = load float, ptr %.sink59.i.sroa.gep, align 4, !tbaa !22 ; 2 uses
  %i.adi = load float, ptr %.sroa.24285.0..sroa_idx.i, align 4, !tbaa !22 ; 3 uses
  %.sroa.0270.0.copyload = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8
  %.sroa.2271.0.copyload = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8
  %.sroa.0268.0.copyload = load <2 x float>, ptr %.sroa.10294.0..sroa_idx.i, align 8
  %.sroa.2269.0.copyload = load float, ptr %.sroa.17315.0..sroa_idx.i, align 8
  %.sroa.5.0.copyload = load float, ptr %.sroa.17270.0..sroa_idx.i, align 8, !tbaa !16
  %i.adj = load <2 x float>, ptr %.sroa.10249.0..sroa_idx.i, align 8, !tbaa !16 ; 2 uses
  %i.adk = insertelement <2 x float> poison, float %i.adg, i64 0
  %i.adl = shufflevector <2 x float> %i.adk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adm = fmul <2 x float> %i.adl, %.sroa.0270.0.copyload
  %i.adn = insertelement <2 x float> poison, float %i.adh, i64 0
  %i.ado = shufflevector <2 x float> %i.adn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.adp = fmul <2 x float> %i.ado, %.sroa.0268.0.copyload
  %i.adq = fadd <2 x float> %i.adm, %i.adp
  %i.adr = insertelement <2 x float> %i.adj, float %i.adi, i64 1
  %i.ads = insertelement <2 x float> %i.adj, float %i.adi, i64 0
  %i.adt = fmul <2 x float> %i.adr, %i.ads
  %i.adu = fadd <2 x float> %i.adq, %i.adt
  %i.adv = fmul float %i.adg, %.sroa.2271.0.copyload
  %i.adw = fmul float %i.adh, %.sroa.2269.0.copyload
  %i.adx = fadd float %i.adv, %i.adw
  %i.ady = fmul float %i.adi, %.sroa.5.0.copyload
  %i.adz = fadd float %i.adx, %i.ady
  br label %bb.cc

bb.cc:                                            ; preds = %bb.bx, %bb.cb, %bb.ca, %bb.bz
  %.sroa.0284.0 = phi <2 x float> [ zeroinitializer, %bb.bx ], [ %.sroa.0284.0.copyload, %bb.bz ], [ %i.adc, %bb.ca ], [ %i.adu, %bb.cb ] ; 2 uses
  %.sroa.9.0 = phi float [ 0.000000e+00, %bb.bx ], [ %.sroa.9.0.copyload, %bb.bz ], [ %i.adf, %bb.ca ], [ %i.adz, %bb.cb ] ; 2 uses
  %i.aea = fmul <2 x float> %.sroa.0284.0, %.sroa.0284.0 ; 2 uses
  %shift1163 = shufflevector <2 x float> %i.aea, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop1164 = fadd <2 x float> %i.aea, %shift1163
  %i.aeb = extractelement <2 x float> %foldExtExtBinop1164, i64 0
  %i.aec = fmul float %.sroa.9.0, %.sroa.9.0
  %i.aed = fadd float %i.aec, %i.aeb              ; 2 uses
  %i.aee = fcmp ult float %i.aed, %.0467839
  br i1 %i.aee, label %bb.cd, label %.thread770.sink.split

bb.cd:                                            ; preds = %bb.cc
  switch i32 %i.acr, label %bb.ci [
    i32 1, label %bb.ce
    i32 2, label %bb.cf
    i32 3, label %bb.cg
  ]

bb.ce:                                            ; preds = %bb.cd
  %.sroa.0222.0.copyload = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8
  %.sroa.2223.0.copyload = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8
  %i.aef = fneg <2 x float> %.sroa.0222.0.copyload
  %i.aeg = fneg float %.sroa.2223.0.copyload
  br label %bb.ci

bb.cf:                                            ; preds = %bb.cd
  %.sroa.0215.0.copyload = load <2 x float>, ptr %.sroa.10339.0..sroa_idx.i, align 8, !tbaa !16 ; 4 uses
  %.sroa.5217.0.copyload = load float, ptr %.sroa.17360.0..sroa_idx.i, align 8, !tbaa !16 ; 2 uses
  %.sroa.0213.0.copyload = load <2 x float>, ptr %.sroa.10294.0..sroa_idx.i, align 8, !tbaa !16
end_hunk_0
