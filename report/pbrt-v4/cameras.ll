Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pbrt-v4/original/cameras?download=true
inline.NumInlined: 4489
inline.NumDeleted: 964
loop-unroll.NumCompletelyUnrolled: 20
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 30
begin_hunk_0_@_ZN4pbrt10CameraBase24FindMinimumDifferentialsENS_6CameraE:bb.a
  %i.bw = extractelement <2 x float> %i.bt, i64 1
  %i.bx = fadd float %i.bv, %i.bw
  %i.by = load float, ptr %i.n, align 8, !tbaa !14
  %i.bz = fmul float %i.bi, %i.by
  %i.ca = load <2 x float>, ptr %i.o, align 4, !tbaa !14
  %i.cb = fmul <2 x float> %i.bm, %i.ca           ; 2 uses
  %i.cc = extractelement <2 x float> %i.cb, i64 0
  %i.cd = fadd float %i.bz, %i.cc
  %i.ce = extractelement <2 x float> %i.cb, i64 1
  %i.cf = fadd float %i.cd, %i.ce
  %i.cg = load float, ptr %i.q, align 8, !tbaa !14
  %i.ch = fmul float %i.bi, %i.cg
  %i.ci = load <2 x float>, ptr %i.r, align 4, !tbaa !14
  %i.cj = fmul <2 x float> %i.bm, %i.ci           ; 2 uses
  %i.ck = extractelement <2 x float> %i.cj, i64 0
  %i.cl = fadd float %i.ch, %i.ck
  %i.cm = extractelement <2 x float> %i.cj, i64 1
  %i.cn = fadd float %i.cl, %i.cm
  %.sroa.045.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.bx, i64 0
  %.sroa.045.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.045.0.vec.insert.i.i.i.i, float %i.cf, i64 1
  br label %bb.j

.noexc219:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #29
  call void @_ZNK4pbrt17AnimatedTransform11InterpolateEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %5, ptr noundef nonnull align 8 dereferenceable(896) %0, float noundef %i.bn)
  %i.co = load float, ptr %i.t, align 4, !tbaa !14
  %i.cp = fmul float %i.bi, %i.co
  %i.cq = load <2 x float>, ptr %i.u, align 4, !tbaa !14
  %i.cr = fmul <2 x float> %i.bm, %i.cq           ; 2 uses
  %i.cs = extractelement <2 x float> %i.cr, i64 0
  %i.ct = fadd float %i.cp, %i.cs
  %i.cu = extractelement <2 x float> %i.cr, i64 1
  %i.cv = fadd float %i.ct, %i.cu
  %i.cw = load float, ptr %i.v, align 4, !tbaa !14
  %i.cx = fmul float %i.bi, %i.cw
  %i.cy = load <2 x float>, ptr %i.w, align 4, !tbaa !14
  %i.cz = fmul <2 x float> %i.bm, %i.cy           ; 2 uses
  %i.da = extractelement <2 x float> %i.cz, i64 0
  %i.db = fadd float %i.cx, %i.da
  %i.dc = extractelement <2 x float> %i.cz, i64 1
  %i.dd = fadd float %i.db, %i.dc
  %i.de = load float, ptr %i.x, align 4, !tbaa !14
  %i.df = fmul float %i.bi, %i.de
  %i.dg = load <2 x float>, ptr %i.y, align 4, !tbaa !14
  %i.dh = fmul <2 x float> %i.bm, %i.dg           ; 2 uses
  %i.di = extractelement <2 x float> %i.dh, i64 0
  %i.dj = fadd float %i.df, %i.di
  %i.dk = extractelement <2 x float> %i.dh, i64 1
  %i.dl = fadd float %i.dj, %i.dk
  %.sroa.045.0.vec.insert.i25.i.i.i = insertelement <2 x float> poison, float %i.cv, i64 0
  %.sroa.045.4.vec.insert.i26.i.i.i = insertelement <2 x float> %.sroa.045.0.vec.insert.i25.i.i.i, float %i.dd, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #29
  br label %bb.j

bb.j:                                             ; preds = %.noexc219, %bb.i
  %.sroa.045.4.vec.insert.i26.pn.i.i.i = phi <2 x float> [ %.sroa.045.4.vec.insert.i26.i.i.i, %.noexc219 ], [ %.sroa.045.4.vec.insert.i.i.i.i, %bb.i ] ; 3 uses
  %.pn29.i.i.i = phi float [ %i.dl, %.noexc219 ], [ %i.cn, %bb.i ] ; 2 uses
  %i.dm = fmul <2 x float> %.sroa.045.4.vec.insert.i26.pn.i.i.i, %.sroa.045.4.vec.insert.i26.pn.i.i.i ; 2 uses
  %.sroa.0153.0.copyload = load <2 x float>, ptr %i.d, align 8 ; 2 uses
  %.sroa.2154.0.copyload = load float, ptr %.sroa.2154.0..sroa_idx, align 8
  %i.dn = fmul <2 x float> %.sroa.0153.0.copyload, %.sroa.0153.0.copyload ; 2 uses
  %i.do = shufflevector <2 x float> %i.dm, <2 x float> %i.dn, <2 x i32> <i32 0, i32 2>
  %i.dp = shufflevector <2 x float> %i.dm, <2 x float> %i.dn, <2 x i32> <i32 1, i32 3>
  %i.dq = fadd <2 x float> %i.do, %i.dp
  %i.dr = insertelement <2 x float> poison, float %.pn29.i.i.i, i64 0
  %i.ds = insertelement <2 x float> %i.dr, float %.sroa.2154.0.copyload, i64 1 ; 2 uses
  %i.dt = fmul <2 x float> %i.ds, %i.ds
  %i.du = fadd <2 x float> %i.dt, %i.dq
  %i.dv = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.du) ; 2 uses
  %shift = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dw = fcmp olt <2 x float> %i.dv, %shift
  %i.dx = extractelement <2 x i1> %i.dw, i64 0
  br i1 %i.dx, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store <2 x float> %.sroa.045.4.vec.insert.i26.pn.i.i.i, ptr %i.d, align 8
  store float %.pn29.i.i.i, ptr %.sroa.2154.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %i.dy = load <2 x float>, ptr %i.z, align 8, !tbaa !14
  %i.dz = fsub <2 x float> %i.dy, %.sroa.0171.0.copyload ; 6 uses
  %i.ea = load float, ptr %i.aa, align 8, !tbaa !66
  %i.eb = fsub float %i.ea, %.sroa.2172.0.copyload ; 6 uses
  %i.ec = load i8, ptr %i.j, align 8, !tbaa !19, !range !57, !noundef !58
  %i.ed = trunc nuw i8 %i.ec to i1
  br i1 %i.ed, label %.noexc241, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ee = load <2 x float>, ptr %i.k, align 8, !tbaa !14
  %i.ef = fmul <2 x float> %i.dz, %i.ee           ; 2 uses
  %shift413 = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ef, %shift413
  %i.eg = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.eh = load float, ptr %i.m, align 8, !tbaa !14
  %i.ei = fmul float %i.eb, %i.eh
  %i.ej = fadd float %i.eg, %i.ei
  %i.ek = load <2 x float>, ptr %i.n, align 8, !tbaa !14
  %i.el = fmul <2 x float> %i.dz, %i.ek           ; 2 uses
  %shift415 = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop416 = fadd <2 x float> %i.el, %shift415
  %i.em = extractelement <2 x float> %foldExtExtBinop416, i64 0
  %i.en = load float, ptr %i.p, align 8, !tbaa !14
  %i.eo = fmul float %i.eb, %i.en
  %i.ep = fadd float %i.em, %i.eo
  %i.eq = load <2 x float>, ptr %i.q, align 8, !tbaa !14
  %i.er = fmul <2 x float> %i.dz, %i.eq           ; 2 uses
  %shift418 = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop419 = fadd <2 x float> %i.er, %shift418
  %i.es = extractelement <2 x float> %foldExtExtBinop419, i64 0
  %i.et = load float, ptr %i.s, align 8, !tbaa !14
  %i.eu = fmul float %i.eb, %i.et
  %i.ev = fadd float %i.es, %i.eu
  %.sroa.045.0.vec.insert.i.i.i.i231 = insertelement <2 x float> poison, float %i.ej, i64 0
  %.sroa.045.4.vec.insert.i.i.i.i232 = insertelement <2 x float> %.sroa.045.0.vec.insert.i.i.i.i231, float %i.ep, i64 1
  br label %bb.n

.noexc241:                                        ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #29
  call void @_ZNK4pbrt17AnimatedTransform11InterpolateEf(ptr dead_on_unwind nonnull writable sret(%"class.pbrt::Transform") align 4 %4, ptr noundef nonnull align 8 dereferenceable(896) %0, float noundef %i.bn)
  %i.ew = load <2 x float>, ptr %i.ab, align 4, !tbaa !14
  %i.ex = fmul <2 x float> %i.dz, %i.ew           ; 2 uses
  %shift421 = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop422 = fadd <2 x float> %i.ex, %shift421
  %i.ey = extractelement <2 x float> %foldExtExtBinop422, i64 0
  %i.ez = load float, ptr %i.ac, align 4, !tbaa !14
  %i.fa = fmul float %i.eb, %i.ez
  %i.fb = fadd float %i.ey, %i.fa
  %i.fc = load <2 x float>, ptr %i.ad, align 4, !tbaa !14
  %i.fd = fmul <2 x float> %i.dz, %i.fc           ; 2 uses
  %shift424 = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop425 = fadd <2 x float> %i.fd, %shift424
  %i.fe = extractelement <2 x float> %foldExtExtBinop425, i64 0
  %i.ff = load float, ptr %i.ae, align 4, !tbaa !14
  %i.fg = fmul float %i.eb, %i.ff
  %i.fh = fadd float %i.fe, %i.fg
  %i.fi = load <2 x float>, ptr %i.af, align 4, !tbaa !14
  %i.fj = fmul <2 x float> %i.dz, %i.fi           ; 2 uses
  %shift427 = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop428 = fadd <2 x float> %i.fj, %shift427
  %i.fk = extractelement <2 x float> %foldExtExtBinop428, i64 0
  %i.fl = load float, ptr %i.ag, align 4, !tbaa !14
  %i.fm = fmul float %i.eb, %i.fl
  %i.fn = fadd float %i.fk, %i.fm
  %.sroa.045.0.vec.insert.i25.i.i.i239 = insertelement <2 x float> poison, float %i.fb, i64 0
  %.sroa.045.4.vec.insert.i26.i.i.i240 = insertelement <2 x float> %.sroa.045.0.vec.insert.i25.i.i.i239, float %i.fh, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #29
  br label %bb.n

bb.n:                                             ; preds = %.noexc241, %bb.m
  %.sroa.045.4.vec.insert.i26.pn.i.i.i233 = phi <2 x float> [ %.sroa.045.4.vec.insert.i26.i.i.i240, %.noexc241 ], [ %.sroa.045.4.vec.insert.i.i.i.i232, %bb.m ] ; 3 uses
  %.pn29.i.i.i234 = phi float [ %i.fn, %.noexc241 ], [ %i.ev, %bb.m ] ; 2 uses
  %i.fo = fmul <2 x float> %.sroa.045.4.vec.insert.i26.pn.i.i.i233, %.sroa.045.4.vec.insert.i26.pn.i.i.i233 ; 2 uses
  %.sroa.0128.0.copyload = load <2 x float>, ptr %i.c, align 4 ; 2 uses
  %.sroa.2129.0.copyload = load float, ptr %.sroa.2129.0..sroa_idx, align 4
  %i.fp = fmul <2 x float> %.sroa.0128.0.copyload, %.sroa.0128.0.copyload ; 2 uses
  %i.fq = shufflevector <2 x float> %i.fo, <2 x float> %i.fp, <2 x i32> <i32 0, i32 2>
  %i.fr = shufflevector <2 x float> %i.fo, <2 x float> %i.fp, <2 x i32> <i32 1, i32 3>
  %i.fs = fadd <2 x float> %i.fq, %i.fr
  %i.ft = insertelement <2 x float> poison, float %.pn29.i.i.i234, i64 0
  %i.fu = insertelement <2 x float> %i.ft, float %.sroa.2129.0.copyload, i64 1 ; 2 uses
  %i.fv = fmul <2 x float> %i.fu, %i.fu
  %i.fw = fadd <2 x float> %i.fv, %i.fs
  %i.fx = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.fw) ; 2 uses
  %shift430 = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.fy = fcmp olt <2 x float> %i.fx, %shift430
  %i.fz = extractelement <2 x i1> %i.fy, i64 0
  br i1 %i.fz, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store <2 x float> %.sroa.045.4.vec.insert.i26.pn.i.i.i233, ptr %i.c, align 4
  store float %.pn29.i.i.i234, ptr %.sroa.2129.0..sroa_idx, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.0122.0.copyload = load <2 x float>, ptr %i.ah, align 4 ; 3 uses
  %.sroa.2123.0.copyload = load float, ptr %.sroa.2123.0..sroa_idx, align 4
  %.sroa.0112.0.copyload = load <2 x float>, ptr %i.ai, align 4 ; 3 uses
  %.sroa.2113.0.copyload = load float, ptr %.sroa.2113.0..sroa_idx, align 4 ; 3 uses
  %i.ga = fmul <2 x float> %.sroa.0112.0.copyload, %.sroa.0112.0.copyload ; 2 uses
  %shift431 = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop432 = fadd <2 x float> %i.ga, %shift431
  %i.gb = extractelement <2 x float> %foldExtExtBinop432, i64 0
  %i.gc = fmul float %.sroa.2113.0.copyload, %.sroa.2113.0.copyload
  %i.gd = fadd float %i.gc, %i.gb
  %.sroa.0102.0.copyload = load <2 x float>, ptr %i.aj, align 8 ; 2 uses
  %i.ge = load <2 x float>, ptr %.sroa.2103.0..sroa_idx, align 8
  %i.gf = shufflevector <2 x float> %.sroa.0102.0.copyload, <2 x float> %.sroa.0122.0.copyload, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.gg = fmul <2 x float> %i.gf, %i.gf
  %i.gh = shufflevector <2 x float> %.sroa.0102.0.copyload, <2 x float> %.sroa.0122.0.copyload, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.gi = fmul <2 x float> %i.gh, %i.gh
  %i.gj = fadd <2 x float> %i.gg, %i.gi
  %i.gk = insertelement <2 x float> %i.ge, float %.sroa.2123.0.copyload, i64 1 ; 3 uses
  %i.gl = fmul <2 x float> %i.gk, %i.gk
  %i.gm = fadd <2 x float> %i.gl, %i.gj
  %i.gn = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gm) ; 4 uses
  %i.go = fdiv <2 x float> %i.gf, %i.gn           ; 8 uses
  %i.gp = extractelement <2 x float> %i.go, i64 1 ; 5 uses
  %i.gq = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gr = fdiv <2 x float> %.sroa.0122.0.copyload, %i.gq
  %i.gs = fdiv <2 x float> %i.gh, %i.gn           ; 10 uses
  %i.gt = extractelement <2 x float> %i.gs, i64 1 ; 5 uses
  %11 = shufflevector <2 x float> %i.go, <2 x float> %i.gs, <2 x i32> <i32 1, i32 3>
  store <2 x float> %11, ptr %i.ah, align 4
  %i.gu = fdiv <2 x float> %i.gk, %i.gn           ; 7 uses
  %i.gv = extractelement <2 x float> %i.gu, i64 1 ; 4 uses
  store float %i.gv, ptr %.sroa.2123.0..sroa_idx, align 4
  %i.gw = shufflevector <2 x float> %i.go, <2 x float> %i.gs, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.gw, ptr %i.aj, align 8
  %i.gx = extractelement <2 x float> %i.gu, i64 0
  store float %i.gx, ptr %.sroa.2103.0..sroa_idx, align 8
  %i.gy = call noundef float @llvm.copysign.f32(float 1.000000e+00, float %i.gv) ; 5 uses
  %i.gz = fadd float %i.gv, %i.gy
  %i.ha = fdiv float -1.000000e+00, %i.gz         ; 3 uses
  %i.hb = fmul float %i.gp, %i.gt
  %i.hc = fmul float %i.hb, %i.ha                 ; 4 uses
  %i.hd = fmul float %i.gy, %i.hc                 ; 2 uses
  %i.he = shufflevector <2 x float> %i.gs, <2 x float> %i.go, <2 x i32> <i32 1, i32 3>
  %i.hf = insertelement <2 x float> %i.go, float %i.hd, i64 0 ; 2 uses
  %i.hg = fmul <2 x float> %i.he, %i.hf
  %i.hh = fmul float %i.gp, %i.gp
  %i.hi = fmul float %i.gy, %i.hh
  %i.hj = fmul float %i.hi, %i.ha
  %i.hk = shufflevector <2 x float> %i.go, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hl = insertelement <2 x float> %i.hk, float %i.hj, i64 0
  %i.hm = fadd <2 x float> %i.hl, <float 1.000000e+00, float -0.000000e+00> ; 3 uses
  %i.hn = fneg float %i.gy
  %i.ho = fmul float %i.gp, %i.hn                 ; 2 uses
  %i.hp = shufflevector <2 x float> %i.hm, <2 x float> %i.gs, <2 x i32> <i32 0, i32 3>
  %i.hq = fmul <2 x float> %i.gr, %i.hp
  %i.hr = fmul float %i.gt, %i.gt
  %i.hs = fmul float %i.hr, %i.ha
  %i.ht = fadd float %i.gy, %i.hs                 ; 3 uses
  %i.hu = fmul float %i.gp, %i.hc
  %i.hv = fmul float %i.gt, %i.ht
  %i.hw = fadd float %i.hu, %i.hv
  %i.hx = fmul float %i.gt, %i.gv
  %i.hy = fsub float %i.hw, %i.hx                 ; 2 uses
  %i.hz = fadd <2 x float> %i.hq, %i.hg
  %i.ia = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ib = insertelement <2 x float> %i.gu, float %i.ho, i64 0 ; 2 uses
  %i.ic = fmul <2 x float> %i.ia, %i.ib
  %i.id = fadd <2 x float> %i.ic, %i.hz           ; 3 uses
  %i.ie = fmul <2 x float> %i.go, %i.hm
  %i.if = shufflevector <2 x float> %i.hf, <2 x float> %i.gs, <2 x i32> <i32 0, i32 2>
  %i.ig = fmul <2 x float> %i.gs, %i.if
  %i.ih = fadd <2 x float> %i.ie, %i.ig
  %i.ii = shufflevector <2 x float> %i.ib, <2 x float> %i.gu, <2 x i32> <i32 0, i32 2>
  %i.ij = fmul <2 x float> %i.gu, %i.ii
  %i.ik = fadd <2 x float> %i.ij, %i.ih           ; 3 uses
  %i.il = fmul <2 x float> %i.ik, %i.ik           ; 2 uses
  %sqrt.i.i251 = call noundef float @llvm.sqrt.f32(float %i.gd) ; 2 uses
  %i.im = insertelement <2 x float> poison, float %sqrt.i.i251, i64 0
  %i.in = shufflevector <2 x float> %i.im, <2 x float> poison, <2 x i32> zeroinitializer
  %i.io = fdiv <2 x float> %.sroa.0112.0.copyload, %i.in ; 5 uses
  %i.ip = fdiv float %.sroa.2113.0.copyload, %sqrt.i.i251 ; 3 uses
  store <2 x float> %i.io, ptr %i.ai, align 4
  store float %i.ip, ptr %.sroa.2113.0..sroa_idx, align 4
  %i.iq = insertelement <2 x float> poison, float %i.hc, i64 0
  %i.ir = insertelement <2 x float> %i.iq, float %i.hd, i64 1
  %i.is = fmul <2 x float> %i.io, %i.ir
  %i.it = shufflevector <2 x float> %i.is, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iu = insertelement <2 x float> %i.hm, float %i.ht, i64 1
  %i.iv = fmul <2 x float> %i.io, %i.iu
  %i.iw = fadd <2 x float> %i.it, %i.iv           ; 2 uses
  %i.ix = insertelement <2 x float> %i.gs, float %i.ho, i64 0
  %i.iy = insertelement <2 x float> poison, float %i.ip, i64 0
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = fmul <2 x float> %i.ix, %i.iz           ; 2 uses
  %i.jb = fadd <2 x float> %i.iw, %i.ja
  %i.jc = fsub <2 x float> %i.iw, %i.ja
  %i.jd = shufflevector <2 x float> %i.jb, <2 x float> %i.jc, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.je = fmul <2 x float> %i.jd, %i.jd           ; 2 uses
  %12 = shufflevector <2 x float> %i.io, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %13 = insertelement <2 x float> %12, float %i.hc, i64 0
  %i.jf = fmul <2 x float> %13, %i.go
  %i.jg = insertelement <2 x float> %i.io, float %i.ht, i64 0
  %i.jh = fmul <2 x float> %i.jg, %i.gs
  %i.ji = fadd <2 x float> %i.jf, %i.jh           ; 2 uses
  %i.jj = shufflevector <2 x float> %i.gs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.jk = insertelement <2 x float> %i.jj, float %i.ip, i64 1
  %i.jl = fmul <2 x float> %i.gu, %i.jk           ; 2 uses
  %i.jm = fsub <2 x float> %i.ji, %i.jl
  %i.jn = fadd <2 x float> %i.ji, %i.jl
  %i.jo = shufflevector <2 x float> %i.jm, <2 x float> %i.jn, <2 x i32> <i32 0, i32 3> ; 5 uses
  %foldExtExtBinop434 = fmul <2 x float> %i.jo, %i.jo
  %i.jp = shufflevector <2 x float> %i.il, <2 x float> %i.je, <2 x i32> <i32 0, i32 2>
  %i.jq = shufflevector <2 x float> %foldExtExtBinop434, <2 x float> %i.je, <2 x i32> <i32 0, i32 3>
  %i.jr = fadd <2 x float> %i.jp, %i.jq
  %foldExtExtBinop436 = fmul <2 x float> %i.jo, %i.jo
  %i.js = shufflevector <2 x float> %i.il, <2 x float> %foldExtExtBinop436, <2 x i32> <i32 1, i32 3>
  %i.jt = fadd <2 x float> %i.js, %i.jr
  %i.ju = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.jt) ; 3 uses
  %i.jv = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jw = fdiv <2 x float> %i.ik, %i.jv
  %i.jx = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jy = fdiv <2 x float> %i.jd, %i.jx
  %i.jz = fdiv <2 x float> %i.jo, %i.ju           ; 2 uses
  %i.ka = insertelement <2 x float> %i.id, float %i.hy, i64 1
  %i.kb = fsub <2 x float> %i.jy, %i.ka           ; 3 uses
  %foldExtExtBinop438 = fsub <2 x float> %i.jz, %i.id
  %i.kc = extractelement <2 x float> %foldExtExtBinop438, i64 1 ; 2 uses
  %i.kd = fmul <2 x float> %i.kb, %i.kb           ; 2 uses
  %.sroa.034.0.copyload = load <2 x float>, ptr %i.b, align 8 ; 2 uses
  %.sroa.235.0.copyload = load float, ptr %.sroa.235.0..sroa_idx, align 8
  %i.ke = fmul <2 x float> %.sroa.034.0.copyload, %.sroa.034.0.copyload ; 2 uses
  %i.kf = shufflevector <2 x float> %i.kd, <2 x float> %i.ke, <2 x i32> <i32 0, i32 2>
  %i.kg = shufflevector <2 x float> %i.kd, <2 x float> %i.ke, <2 x i32> <i32 1, i32 3>
  %i.kh = fadd <2 x float> %i.kf, %i.kg
  %i.ki = insertelement <2 x float> poison, float %i.kc, i64 0
  %i.kj = insertelement <2 x float> %i.ki, float %.sroa.235.0.copyload, i64 1 ; 2 uses
  %i.kk = fmul <2 x float> %i.kj, %i.kj
  %i.kl = fadd <2 x float> %i.kk, %i.kh
  %i.km = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.kl) ; 2 uses
  %shift440 = shufflevector <2 x float> %i.km, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kn = fcmp olt <2 x float> %i.km, %shift440
  %i.ko = extractelement <2 x i1> %i.kn, i64 0
  br i1 %i.ko, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  store <2 x float> %i.kb, ptr %i.b, align 8
  store float %i.kc, ptr %.sroa.235.0..sroa_idx, align 8
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.kp = fsub <2 x float> %i.jw, %i.id           ; 4 uses
  %i.kq = extractelement <2 x float> %i.jz, i64 0
  %i.kr = fsub float %i.kq, %i.hy                 ; 3 uses
  %i.ks = fmul float %i.kr, %i.kr
  %i.kt = fmul <2 x float> %i.kp, %i.kp           ; 2 uses
  %.sroa.08.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 2 uses
  %.sroa.29.0.copyload = load float, ptr %.sroa.5401.0..sroa_idx, align 4 ; 2 uses
  %i.ku = fmul <2 x float> %.sroa.08.0.copyload, %.sroa.08.0.copyload ; 2 uses
  %i.kv = fmul float %.sroa.29.0.copyload, %.sroa.29.0.copyload
  %i.kw = shufflevector <2 x float> %i.kt, <2 x float> %i.ku, <2 x i32> <i32 0, i32 2>
  %i.kx = insertelement <2 x float> %i.ku, float %i.ks, i64 0
  %i.ky = fadd <2 x float> %i.kw, %i.kx
  %i.kz = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.la = insertelement <2 x float> %i.kz, float %i.kv, i64 1
  %i.lb = fadd <2 x float> %i.la, %i.ky
  %i.lc = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.lb) ; 2 uses
  %shift441 = shufflevector <2 x float> %i.lc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ld = fcmp olt <2 x float> %i.lc, %shift441
  %i.le = extractelement <2 x i1> %i.ld, i64 0
  br i1 %i.le, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %.sroa.0.4.vec.insert.i346 = insertelement <2 x float> %i.kp, float %i.kr, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i346, ptr %i.a, align 4
  %i.lf = extractelement <2 x float> %i.kp, i64 1
  store float %i.lf, ptr %.sroa.5401.0..sroa_idx, align 4
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %_ZNK4pbrt6Camera23GenerateRayDifferentialENS_12CameraSampleERNS_18SampledWavelengthsE.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #29
  %i.lg = add nuw nsw i32 %.0402, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.lg, 512
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !281

common.resume:                                    ; preds = %bb.z, %bb.v, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i361, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i367, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i
  %common.resume.op = phi { ptr, i32 } [ %i.lj, %bb.v ], [ %i.mb, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i361 ], [ %i.lt, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i ], [ %i.lj, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i ], [ %i.ml, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i367 ], [ %i.mb, %bb.z ]
  resume { ptr, i32 } %common.resume.op

bb.u:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #29
  %i.lh = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 8 uses
  store ptr %i.lh, ptr %3, align 8, !tbaa !31, !alias.scope !291
  %i.li = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.li, align 8, !tbaa !34, !alias.scope !291
  store i8 0, ptr %i.lh, align 8, !tbaa !25, !alias.scope !291
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNS_7Vector3IfEEJS4_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %3, ptr noundef nonnull @.str.7, ptr noundef nonnull align 4 dereferenceable(12) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %i.c)
          to label %_ZN4pbrt12StringPrintfIJRNS_7Vector3IfEES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.lj = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.lk = load ptr, ptr %3, align 8, !tbaa !35, !alias.scope !291 ; 2 uses
  %i.ll = icmp eq ptr %i.lk, %i.lh
  br i1 %i.ll, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.v
  %i.lm = load i64, ptr %i.lh, align 8, !tbaa !25, !alias.scope !291
  %i.ln = add i64 %i.lm, 1
  call void @_ZdlPvm(ptr noundef %i.lk, i64 noundef %i.ln) #31
  br label %common.resume

_ZN4pbrt12StringPrintfIJRNS_7Vector3IfEES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i: ; preds = %bb.u
  %i.lo = load ptr, ptr %3, align 8, !tbaa !35
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 197, ptr noundef %i.lo)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNS_7Vector3IfEES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.lp = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.lq = icmp eq ptr %i.lp, %i.lh
  br i1 %i.lq, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i: ; preds = %bb.w
  %i.lr = load i64, ptr %i.lh, align 8, !tbaa !25
  %i.ls = add i64 %i.lr, 1
  call void @_ZdlPvm(ptr noundef %i.lp, i64 noundef %i.ls) #31
  br label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i

bb.x:                                             ; preds = %_ZN4pbrt12StringPrintfIJRNS_7Vector3IfEES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i
  %i.lt = landingpad { ptr, i32 }
          cleanup
  %i.lu = load ptr, ptr %3, align 8, !tbaa !35    ; 2 uses
  %i.lv = icmp eq ptr %i.lu, %i.lh
  br i1 %i.lv, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i: ; preds = %bb.x
  %i.lw = load i64, ptr %i.lh, align 8, !tbaa !25
  %i.lx = add i64 %i.lw, 1
  call void @_ZdlPvm(ptr noundef %i.lu, i64 noundef %i.lx) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i: ; preds = %bb.x, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  br label %common.resume

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i: ; preds = %bb.w, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #29
  %.pr = load i32, ptr @_ZN4pbrt7logging8logLevelE, align 4, !tbaa !28
  %i.ly = icmp slt i32 %.pr, 1
  br i1 %i.ly, label %bb.y, label %.thread

bb.y:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.thread.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #29
  %i.lz = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  store ptr %i.lz, ptr %2, align 8, !tbaa !31, !alias.scope !292
  %i.ma = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 0, ptr %i.ma, align 8, !tbaa !34, !alias.scope !292
  store i8 0, ptr %i.lz, align 8, !tbaa !25, !alias.scope !292
  invoke void @_ZN4pbrt6detail21stringPrintfRecursiveIRNS_7Vector3IfEEJS4_EEEvPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcOT_DpOT0_(ptr noundef nonnull align 8 %2, ptr noundef nonnull @.str.8, ptr noundef nonnull align 4 dereferenceable(12) %i.b, ptr noundef nonnull align 4 dereferenceable(12) %i.a)
          to label %_ZN4pbrt12StringPrintfIJRNS_7Vector3IfEES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i365 unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.mb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.mc = load ptr, ptr %2, align 8, !tbaa !35, !alias.scope !292 ; 2 uses
  %i.md = icmp eq ptr %i.mc, %i.lz
  br i1 %i.md, label %common.resume, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i361

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i361: ; preds = %bb.z
  %i.me = load i64, ptr %i.lz, align 8, !tbaa !25, !alias.scope !292
  %i.mf = add i64 %i.me, 1
  call void @_ZdlPvm(ptr noundef %i.mc, i64 noundef %i.mf) #31
  br label %common.resume

_ZN4pbrt12StringPrintfIJRNS_7Vector3IfEES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i365: ; preds = %bb.y
  %i.mg = load ptr, ptr %2, align 8, !tbaa !35
  invoke void @_ZN4pbrt3LogENS_8LogLevelEPKciS2_(i32 noundef 0, ptr noundef nonnull @.str, i32 noundef 199, ptr noundef %i.mg)
          to label %bb.aa unwind label %bb.ab

bb.aa:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNS_7Vector3IfEES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i365
  %i.mh = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.mi = icmp eq ptr %i.mh, %i.lz
  br i1 %i.mi, label %_ZN4pbrt3LogIJRNS_7Vector3IfEES3_EEEvNS_8LogLevelEPKciS6_DpOT_.exit371, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i369

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i369: ; preds = %bb.aa
  %i.mj = load i64, ptr %i.lz, align 8, !tbaa !25
  %i.mk = add i64 %i.mj, 1
  call void @_ZdlPvm(ptr noundef %i.mh, i64 noundef %i.mk) #31
  br label %_ZN4pbrt3LogIJRNS_7Vector3IfEES3_EEEvNS_8LogLevelEPKciS6_DpOT_.exit371

bb.ab:                                            ; preds = %_ZN4pbrt12StringPrintfIJRNS_7Vector3IfEES3_EEENSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPKcDpOT_.exit.i365
  %i.ml = landingpad { ptr, i32 }
          cleanup
  %i.mm = load ptr, ptr %2, align 8, !tbaa !35    ; 2 uses
  %i.mn = icmp eq ptr %i.mm, %i.lz
  br i1 %i.mn, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i367, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i366

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i7.i366: ; preds = %bb.ab
  %i.mo = load i64, ptr %i.lz, align 8, !tbaa !25
  %i.mp = add i64 %i.mo, 1
  call void @_ZdlPvm(ptr noundef %i.mm, i64 noundef %i.mp) #31
  br label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit9.i367
end_hunk_0
