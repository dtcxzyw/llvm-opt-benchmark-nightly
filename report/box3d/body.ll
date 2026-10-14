Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/body?download=true
inline.NumInlined: 305
inline.NumDeleted: 45
begin_hunk_0_@b3UpdateBodyMassData:bb.a
  br i1 %exitcond.not, label %._crit_edge484, label %bb.n, !llvm.loop !284

._crit_edge484:                                   ; preds = %bb.p, %bb.m
  call void @b3StackFree(ptr noundef nonnull %0, ptr noundef %i.bk) #10
  %.sroa.0336.0.copyload = load <2 x float>, ptr %i.w, align 4, !tbaa !84 ; 6 uses
  %.sroa.4337.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 76
  %.sroa.4337.0.copyload = load float, ptr %.sroa.4337.0..sroa_idx, align 4, !tbaa !84 ; 3 uses
  %.sroa.5338.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.5338.0.copyload = load <2 x float>, ptr %.sroa.5338.0..sroa_idx, align 8, !tbaa !84 ; 4 uses
  %.sroa.6339.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6339.0.copyload = load float, ptr %.sroa.6339.0..sroa_idx, align 8, !tbaa !84 ; 3 uses
  %.sroa.7340.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 92
  %.sroa.7340.0.copyload = load <2 x float>, ptr %.sroa.7340.0..sroa_idx, align 4, !tbaa !84 ; 4 uses
  %.sroa.8341.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 100
  %.sroa.8341.0.copyload = load float, ptr %.sroa.8341.0..sroa_idx, align 4, !tbaa !84 ; 3 uses
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %.sroa.5338.0.copyload, i64 1 ; 3 uses
  %i.df = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.8341.0.copyload
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %.sroa.7340.0.copyload, i64 1 ; 3 uses
  %i.dg = fmul float %.sroa.6339.0.copyload, %.sroa.03.4.vec.extract.i.i
  %i.dh = fsub float %i.df, %i.dg                 ; 2 uses
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.7340.0.copyload, i64 0 ; 3 uses
  %i.di = fmul float %.sroa.6339.0.copyload, %.sroa.03.0.vec.extract.i.i
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5338.0.copyload, i64 0 ; 3 uses
  %i.dj = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.8341.0.copyload
  %i.dk = fsub float %i.di, %i.dj                 ; 2 uses
  %i.dl = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.03.4.vec.extract.i.i
  %i.dm = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.03.0.vec.extract.i.i
  %i.dn = fsub float %i.dl, %i.dm                 ; 2 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0336.0.copyload, i64 0 ; 3 uses
  %i.do = fmul float %.sroa.04.0.vec.extract.i.i, %i.dh
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0336.0.copyload, i64 1 ; 3 uses
  %i.dp = fmul float %.sroa.04.4.vec.extract.i.i, %i.dk
  %i.dq = fadd float %i.do, %i.dp
  %i.dr = fmul float %.sroa.4337.0.copyload, %i.dn
  %i.ds = fadd float %i.dr, %i.dq                 ; 3 uses
  %i.dt = fcmp ogt float %i.ds, 0.000000e+00
  br i1 %i.dt, label %bb.q, label %bb.s

bb.q:                                             ; preds = %._crit_edge484
  %i.du = fcmp ogt float %i.ds, f0x057A0000
  br i1 %i.du, label %bb.r, label %b3InvertT.exit

bb.r:                                             ; preds = %bb.q
  %i.dv = fdiv float 1.000000e+00, %i.ds          ; 4 uses
  %i.dw = fmul float %i.dh, %i.dv
  %.sroa.06.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.dx = fmul float %i.dk, %i.dv
  %.sroa.06.4.vec.insert.i.i = insertelement <2 x float> %.sroa.06.0.vec.insert.i.i, float %i.dx, i64 1
  %i.dy = insertelement <2 x float> poison, float %.sroa.4337.0.copyload, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %.sroa.8341.0.copyload, i64 1 ; 2 uses
  %i.ea = shufflevector <2 x float> %.sroa.7340.0.copyload, <2 x float> %.sroa.0336.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.eb = fmul <2 x float> %i.dz, %i.ea
  %i.ec = shufflevector <2 x float> %.sroa.7340.0.copyload, <2 x float> %.sroa.0336.0.copyload, <2 x i32> <i32 3, i32 0>
  %i.ed = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ee = fmul <2 x float> %i.ec, %i.ed
  %i.ef = fmul float %.sroa.04.4.vec.extract.i.i, %.sroa.03.0.vec.extract.i.i
  %i.eg = fmul float %.sroa.04.0.vec.extract.i.i, %.sroa.03.4.vec.extract.i.i
  %i.eh = fsub float %i.ef, %i.eg
  %i.ei = fsub <2 x float> %i.eb, %i.ee
  %i.ej = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.el = fmul <2 x float> %i.ei, %i.ek
  %i.em = insertelement <2 x float> poison, float %i.dn, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.eh, i64 1
  %i.eo = fmul <2 x float> %i.en, %i.ek
  %i.ep = shufflevector <2 x float> %.sroa.0336.0.copyload, <2 x float> %.sroa.5338.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.eq = insertelement <2 x float> poison, float %.sroa.6339.0.copyload, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %.sroa.4337.0.copyload, i64 1 ; 2 uses
  %i.es = fmul <2 x float> %i.ep, %i.er
  %i.et = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eu = shufflevector <2 x float> %.sroa.0336.0.copyload, <2 x float> %.sroa.5338.0.copyload, <2 x i32> <i32 3, i32 0>
  %i.ev = fmul <2 x float> %i.et, %i.eu
  %i.ew = fmul float %.sroa.04.0.vec.extract.i.i, %.sroa.011.4.vec.extract.i.i
  %i.ex = fmul float %.sroa.04.4.vec.extract.i.i, %.sroa.011.0.vec.extract.i.i
  %i.ey = fsub float %i.ew, %i.ex
  %i.ez = fsub <2 x float> %i.es, %i.ev
  %i.fa = fmul <2 x float> %i.ez, %i.ek
  %i.fb = fmul float %i.ey, %i.dv
  br label %b3InvertT.exit

b3InvertT.exit:                                   ; preds = %bb.q, %bb.r
  %.sroa.0330.0 = phi <2 x float> [ %.sroa.06.4.vec.insert.i.i, %bb.r ], [ zeroinitializer, %bb.q ] ; 7 uses
  %.sroa.6332.0 = phi <2 x float> [ %i.el, %bb.r ], [ zeroinitializer, %bb.q ] ; 7 uses
  %.sroa.8334.0 = phi <2 x float> [ %i.fa, %bb.r ], [ zeroinitializer, %bb.q ] ; 5 uses
  %.sroa.9335.0 = phi float [ %i.fb, %bb.r ], [ 0.000000e+00, %bb.q ] ; 3 uses
  %i.fc = phi <2 x float> [ %i.eo, %bb.r ], [ zeroinitializer, %bb.q ] ; 5 uses
  %i.fd = shufflevector <2 x float> %.sroa.0330.0, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  store <2 x float> %.sroa.0330.0, ptr %i.y, align 4, !tbaa !84
  %.sroa.5331.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 116
  %i.fe = extractelement <2 x float> %i.fc, i64 0
  store float %i.fe, ptr %.sroa.5331.0..sroa_idx, align 4, !tbaa !84
  %.sroa.6332.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  store <2 x float> %.sroa.6332.0, ptr %.sroa.6332.0..sroa_idx, align 4, !tbaa !84
  %.sroa.7333.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 128
  %i.ff = extractelement <2 x float> %i.fc, i64 1
  store float %i.ff, ptr %.sroa.7333.0..sroa_idx, align 4, !tbaa !84
  %.sroa.8334.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 132
  store <2 x float> %.sroa.8334.0, ptr %.sroa.8334.0..sroa_idx, align 4, !tbaa !84
  %.sroa.9335.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 140
  store float %.sroa.9335.0, ptr %.sroa.9335.0..sroa_idx, align 4, !tbaa !84
  %i.fg = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.fh = load <2 x float>, ptr %i.fg, align 4    ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %i.fj = load <2 x float>, ptr %i.fi, align 4    ; 6 uses
  %i.fk = fmul <2 x float> %i.fh, %i.fh           ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.fj, %i.fj
  %shift = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop509 = fmul <2 x float> %i.fh, %shift ; 2 uses
  %i.fl = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fm = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fn = fmul <2 x float> %i.fl, %i.fm           ; 2 uses
  %i.fo = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fp = fmul <2 x float> %i.fh, %i.fo           ; 2 uses
  %shift511 = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop512 = fmul <2 x float> %i.fj, %shift511 ; 2 uses
  %foldExtExtBinop514 = fadd <2 x float> %foldExtExtBinop509, %foldExtExtBinop512
  %foldExtExtBinop516 = fsub <2 x float> %foldExtExtBinop509, %foldExtExtBinop512
  %i.fq = shufflevector <2 x float> %foldExtExtBinop514, <2 x float> %foldExtExtBinop516, <2 x i32> <i32 0, i32 2>
  %i.fr = fmul <2 x float> %i.fq, splat (float 2.000000e+00) ; 8 uses
  %i.fs = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = fadd <2 x float> %i.fk, %i.fs
  %i.fu = fmul <2 x float> %i.ft, splat (float 2.000000e+00)
  %i.fv = fsub <2 x float> splat (float 1.000000e+00), %i.fu ; 9 uses
  %i.fw = shufflevector <2 x float> %i.fv, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fx = fadd <2 x float> %i.fn, %i.fp           ; 2 uses
  %i.fy = fsub <2 x float> %i.fn, %i.fp           ; 2 uses
  %i.fz = shufflevector <2 x float> %i.fx, <2 x float> %i.fy, <2 x i32> <i32 3, i32 0>
  %i.ga = fmul <2 x float> %i.fz, splat (float 2.000000e+00) ; 5 uses
  %i.gb = shufflevector <2 x float> %i.fy, <2 x float> %i.fx, <2 x i32> <i32 0, i32 3>
  %i.gc = fmul <2 x float> %i.gb, splat (float 2.000000e+00) ; 7 uses
  %i.gd = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fk)
  %i.ge = fmul float %i.gd, 2.000000e+00
  %i.gf = fsub float 1.000000e+00, %i.ge          ; 3 uses
  %i.gg = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gh = shufflevector <2 x float> %.sroa.0330.0, <2 x float> %.sroa.6332.0, <2 x i32> <i32 1, i32 2>
  %i.gi = fmul <2 x float> %i.gh, %i.fv
  %i.gj = shufflevector <2 x float> %.sroa.0330.0, <2 x float> %.sroa.6332.0, <2 x i32> <i32 0, i32 3>
  %i.gk = fmul <2 x float> %i.gj, %i.fr
  %i.gl = fadd <2 x float> %i.gk, %i.gi
  %i.gm = fmul <2 x float> %i.fc, %i.gc
  %i.gn = fadd <2 x float> %i.gm, %i.gl           ; 3 uses
  %i.go = shufflevector <2 x float> %.sroa.6332.0, <2 x float> %.sroa.0330.0, <2 x i32> <i32 0, i32 3>
  %i.gp = fmul <2 x float> %i.go, %i.fr
  %i.gq = shufflevector <2 x float> %.sroa.6332.0, <2 x float> %.sroa.0330.0, <2 x i32> <i32 1, i32 2>
  %i.gr = fmul <2 x float> %i.gq, %i.fv
  %i.gs = fadd <2 x float> %i.gp, %i.gr
  %i.gt = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gu = fmul <2 x float> %i.gt, %i.gc
  %i.gv = fadd <2 x float> %i.gu, %i.gs           ; 3 uses
  %i.gw = fmul <2 x float> %.sroa.8334.0, %i.fr
  %i.gx = shufflevector <2 x float> %.sroa.8334.0, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gy = fmul <2 x float> %i.gx, %i.fv
  %i.gz = fadd <2 x float> %i.gw, %i.gy
  %i.ha = insertelement <2 x float> poison, float %.sroa.9335.0, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = fmul <2 x float> %i.hb, %i.gc
  %i.hd = fadd <2 x float> %i.hc, %i.gz           ; 3 uses
  %i.he = extractelement <2 x float> %i.fv, i64 1
  %i.hf = shufflevector <2 x float> %i.fv, <2 x float> %i.fr, <2 x i32> <i32 1, i32 3>
  %i.hg = fmul <2 x float> %i.hf, %i.gn
  %i.hh = shufflevector <2 x float> %i.fr, <2 x float> %i.fv, <2 x i32> <i32 1, i32 3>
  %i.hi = fmul <2 x float> %i.hh, %i.gv
  %i.hj = fadd <2 x float> %i.hg, %i.hi
  %i.hk = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hl = fmul <2 x float> %i.hk, %i.hd
  %i.hm = fadd <2 x float> %i.hl, %i.hj
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ho = shufflevector <2 x float> %i.fr, <2 x float> %i.fv, <2 x i32> <i32 0, i32 2>
  %i.hp = fmul <2 x float> %i.ho, %i.gn
  %i.hq = shufflevector <2 x float> %i.fv, <2 x float> %i.fr, <2 x i32> <i32 0, i32 2>
  %i.hr = fmul <2 x float> %i.hq, %i.gv
  %i.hs = fadd <2 x float> %i.hp, %i.hr
  %i.ht = shufflevector <2 x float> %i.gc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hu = fmul <2 x float> %i.ht, %i.hd
  %i.hv = fadd <2 x float> %i.hu, %i.hs
  %i.hw = shufflevector <2 x float> %i.hv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hx = shufflevector <2 x float> %.sroa.8334.0, <2 x float> %.sroa.6332.0, <4 x i32> <i32 0, i32 3, i32 2, i32 poison>
  %i.hy = shufflevector <2 x float> %.sroa.0330.0, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hz = shufflevector <4 x float> %i.hx, <4 x float> %i.hy, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ia = fmul <4 x float> %i.hz, %i.gg
  %i.ib = shufflevector <2 x float> %.sroa.8334.0, <2 x float> %.sroa.6332.0, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.ic = shufflevector <4 x float> %i.ib, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.id = shufflevector <2 x float> %i.ga, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.ie = fmul <4 x float> %i.ic, %i.id
  %i.if = fadd <4 x float> %i.ia, %i.ie
  %i.ig = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 0>
  %i.ih = insertelement <4 x float> %i.ig, float %.sroa.9335.0, i64 0
  %i.ii = insertelement <4 x float> poison, float %i.gf, i64 0
  %i.ij = shufflevector <4 x float> %i.ii, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ik = fmul <4 x float> %i.ih, %i.ij
  %i.il = fadd <4 x float> %i.ik, %i.if           ; 3 uses
  %i.im = extractelement <4 x float> %i.il, i64 3
  %i.in = fmul float %i.he, %i.im
  %i.io = shufflevector <2 x float> %i.gc, <2 x float> %i.fr, <4 x i32> <i32 1, i32 3, i32 poison, i32 2>
  %i.ip = shufflevector <4 x float> %i.io, <4 x float> %i.fw, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.iq = fmul <4 x float> %i.ip, %i.il           ; 4 uses
  %i.ir = extractelement <4 x float> %i.iq, i64 1
  %i.is = fadd float %i.in, %i.ir
  %i.it = extractelement <4 x float> %i.iq, i64 0
  %i.iu = fadd float %i.it, %i.is
  %shift518 = shufflevector <4 x float> %i.iq, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop519 = fadd <4 x float> %shift518, %i.iq
  %i.iv = fmul <2 x float> %i.ga, %i.gn
  %i.iw = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ix = fmul <2 x float> %i.iw, %i.gv
  %i.iy = fadd <2 x float> %i.iv, %i.ix
  %i.iz = insertelement <2 x float> poison, float %i.gf, i64 0
  %i.ja = shufflevector <2 x float> %i.iz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jb = fmul <2 x float> %i.ja, %i.hd
  %i.jc = fadd <2 x float> %i.jb, %i.iy
  %i.jd = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.je = shufflevector <2 x float> %i.gc, <2 x float> %i.ga, <4 x i32> <i32 0, i32 3, i32 poison, i32 2>
  %i.jf = insertelement <4 x float> %i.je, float %i.gf, i64 2
  %i.jg = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.jh = fmul <4 x float> %i.jf, %i.jg           ; 4 uses
  %shift521.a = shufflevector <4 x float> %foldExtExtBinop519, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop522 = fadd <4 x float> %i.jh, %shift521.a
  %i.ji = extractelement <4 x float> %foldExtExtBinop522, i64 0
  %shift524 = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop525 = fadd <4 x float> %shift524, %i.jh
  %shift527 = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop528 = fadd <4 x float> %shift527, %foldExtExtBinop525
  %i.jj = extractelement <4 x float> %foldExtExtBinop528, i64 1
  store <2 x float> %i.hn, ptr %i.z, align 4, !tbaa !84
  %.sroa.4301.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 152
  store float %i.iu, ptr %.sroa.4301.0..sroa_idx, align 4, !tbaa !84
  %.sroa.5302.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 156
  store <2 x float> %i.hw, ptr %.sroa.5302.0..sroa_idx, align 4, !tbaa !84
  %.sroa.6303.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 164
  store float %i.ji, ptr %.sroa.6303.0..sroa_idx, align 4, !tbaa !84
  %.sroa.7304.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 168
  store <2 x float> %i.jd, ptr %.sroa.7304.0..sroa_idx, align 4, !tbaa !84
  %.sroa.8305.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 176
  store float %i.jj, ptr %.sroa.8305.0..sroa_idx, align 4, !tbaa !84
  br label %bb.s

bb.s:                                             ; preds = %b3InvertT.exit, %._crit_edge484
  %i.jk = getelementptr inbounds nuw i8, ptr %i.k, i64 28 ; 3 uses
  %.sroa.052.0.copyload = load <2 x float>, ptr %i.jk, align 4, !tbaa !84 ; 2 uses
  %.sroa.453.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 36 ; 2 uses
  %.sroa.453.0.copyload = load float, ptr %.sroa.453.0..sroa_idx, align 4, !tbaa !84
  store <2 x float> %.sroa.0100.2, ptr %i.aa, align 4, !tbaa !84
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 76
  store float %.sroa.10.2, ptr %.sroa.10.0..sroa_idx, align 4, !tbaa !84
  %.sroa.0.0.copyload = load float, ptr %i.k, align 4, !tbaa !84
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %.sroa.5.0..sroa_idx284 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.6.0..sroa_idx286 = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %.sroa.6.0.copyload287 = load <2 x float>, ptr %.sroa.6.0..sroa_idx286, align 4, !tbaa !84 ; 5 uses
  %.sroa.7288.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 20
  %.sroa.7288.0.copyload = load <2 x float>, ptr %.sroa.7288.0..sroa_idx, align 4, !tbaa !84 ; 5 uses
  %.sroa.3.8.vec.extract.i.i = extractelement <2 x float> %.sroa.7288.0.copyload, i64 0
  %.sroa.011.4.vec.extract.i.i.i248 = extractelement <2 x float> %.sroa.6.0.copyload287, i64 1 ; 2 uses
  %i.jl = fmul float %.sroa.10.2, %.sroa.011.4.vec.extract.i.i.i248
  %.sroa.03.4.vec.extract.i.i.i249 = extractelement <2 x float> %.sroa.0100.2, i64 1 ; 3 uses
  %i.jm = fmul float %.sroa.03.4.vec.extract.i.i.i249, %.sroa.3.8.vec.extract.i.i
  %.sroa.03.0.vec.extract.i.i.i250 = extractelement <2 x float> %.sroa.0100.2, i64 0
  %foldExtExtBinop530 = fmul <2 x float> %.sroa.0100.2, %.sroa.7288.0.copyload
  %i.jn = extractelement <2 x float> %foldExtExtBinop530, i64 0
  %.sroa.011.0.vec.extract.i.i.i251 = extractelement <2 x float> %.sroa.6.0.copyload287, i64 0 ; 2 uses
  %i.jo = fmul float %.sroa.10.2, %.sroa.011.0.vec.extract.i.i.i251
  %i.jp = fmul float %.sroa.03.4.vec.extract.i.i.i249, %.sroa.011.0.vec.extract.i.i.i251
  %i.jq = fmul float %.sroa.03.0.vec.extract.i.i.i250, %.sroa.011.4.vec.extract.i.i.i248
  %.sroa.4.0.copyload = load float, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !84
  %.sroa.5.0.copyload285 = load float, ptr %.sroa.5.0..sroa_idx284, align 4, !tbaa !84
  %i.jr = fsub float %i.jl, %i.jm
  %i.js = fsub float %i.jn, %i.jo                 ; 2 uses
  %i.jt = fsub float %i.jp, %i.jq
  %i.ju = shufflevector <2 x float> %.sroa.7288.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.jv = fmul <2 x float> %.sroa.0100.2, %i.ju
  %i.jw = shufflevector <2 x float> %.sroa.0100.2, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jx = insertelement <2 x float> %i.jw, float %.sroa.10.2, i64 1
  %i.jy = fmul <2 x float> %i.jx, %i.ju
  %i.jz = insertelement <2 x float> poison, float %i.jr, i64 0
  %i.ka = insertelement <2 x float> %i.jz, float %i.js, i64 1
  %i.kb = fadd <2 x float> %i.jv, %i.ka           ; 2 uses
  %i.kc = insertelement <2 x float> poison, float %i.js, i64 0
  %i.kd = insertelement <2 x float> %i.kc, float %i.jt, i64 1
  %i.ke = fadd <2 x float> %i.jy, %i.kd           ; 2 uses
  %foldExtExtBinop532 = fmul <2 x float> %.sroa.7288.0.copyload, %i.kb
  %shift534 = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop535 = fmul <2 x float> %.sroa.6.0.copyload287, %shift534
  %foldExtExtBinop537 = fsub <2 x float> %foldExtExtBinop532, %foldExtExtBinop535
  %i.kf = extractelement <2 x float> %foldExtExtBinop537, i64 0
  %i.kg = fmul <2 x float> %.sroa.6.0.copyload287, %i.ke
  %i.kh = shufflevector <2 x float> %.sroa.6.0.copyload287, <2 x float> %.sroa.7288.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.ki = fmul <2 x float> %i.kh, %i.kb
  %i.kj = fsub <2 x float> %i.kg, %i.ki
  %i.kk = fmul float %i.kf, 2.000000e+00
  %i.kl = fadd float %.sroa.03.4.vec.extract.i.i.i249, %i.kk
  %i.km = fmul <2 x float> %i.kj, splat (float 2.000000e+00)
  %i.kn = insertelement <2 x float> %i.jw, float %.sroa.10.2, i64 0
  %i.ko = fadd <2 x float> %i.kn, %i.km
  %i.kp = insertelement <2 x float> poison, float %.sroa.5.0.copyload285, i64 0
  %i.kq = insertelement <2 x float> %i.kp, float %.sroa.0.0.copyload, i64 1
  %i.kr = fadd <2 x float> %i.kq, %i.ko           ; 3 uses
  %i.ks = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kt = fadd float %.sroa.4.0.copyload, %i.kl   ; 2 uses
  %.sroa.010.4.vec.insert.i253 = insertelement <2 x float> %i.ks, float %i.kt, i64 1
  store <2 x float> %.sroa.010.4.vec.insert.i253, ptr %i.jk, align 4, !tbaa !84
  %i.ku = extractelement <2 x float> %i.kr, i64 0
  store float %i.ku, ptr %.sroa.453.0..sroa_idx, align 4, !tbaa !84
  %i.kv = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.kv, ptr noundef nonnull align 4 dereferenceable(12) %i.jk, i64 12, i1 false), !tbaa.struct !101
  %i.kw = load i32, ptr %i.c, align 8, !tbaa !72
  %i.kx = icmp eq i32 %i.kw, 2
  br i1 %i.kx, label %b3GetBodyState.exit, label %b3GetBodyState.exit.thread

b3GetBodyState.exit:                              ; preds = %bb.s
  %i.ky = load ptr, ptr %i.a, align 8, !tbaa !69
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 192
  %i.la = load ptr, ptr %i.kz, align 8, !tbaa !88 ; 2 uses
  %.not200 = icmp eq ptr %i.la, null
  br i1 %.not200, label %b3GetBodyState.exit.thread, label %bb.t

bb.t:                                             ; preds = %b3GetBodyState.exit
  %i.lb = load i32, ptr %i.h, align 4, !tbaa !83
  %i.lc = sext i32 %i.lb to i64
  %i.ld = getelementptr inbounds [56 x i8], ptr %i.la, i64 %i.lc ; 5 uses
  %i.le = getelementptr inbounds nuw i8, ptr %i.ld, i64 12
  %.sroa.03.4.vec.extract.i260 = extractelement <2 x float> %.sroa.052.0.copyload, i64 1
  %.sroa.026.0.copyload = load <2 x float>, ptr %i.le, align 4 ; 2 uses
  %.sroa.227.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ld, i64 20
  %.sroa.227.0.copyload = load float, ptr %.sroa.227.0..sroa_idx, align 4 ; 2 uses
  %.sroa.016.0.copyload = load <2 x float>, ptr %i.ld, align 4
  %.sroa.217.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ld, i64 8 ; 2 uses
  %.sroa.217.0.copyload = load float, ptr %.sroa.217.0..sroa_idx, align 4
  %i.lf = fsub float %i.kt, %.sroa.03.4.vec.extract.i260 ; 2 uses
  %i.lg = shufflevector <2 x float> %.sroa.052.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lh = insertelement <2 x float> %i.lg, float %.sroa.453.0.copyload, i64 0
  %i.li = fsub <2 x float> %i.kr, %i.lh           ; 3 uses
  %i.lj = shufflevector <2 x float> %.sroa.026.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lk = insertelement <2 x float> %i.lj, float %.sroa.227.0.copyload, i64 1
  %i.ll = fmul <2 x float> %i.li, %i.lk
  %i.lm = shufflevector <2 x float> %i.li, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ln = insertelement <2 x float> %i.lm, float %i.lf, i64 0
  %i.lo = insertelement <2 x float> %i.lj, float %.sroa.227.0.copyload, i64 0
  %i.lp = fmul <2 x float> %i.ln, %i.lo
  %i.lq = fsub <2 x float> %i.ll, %i.lp
  %i.lr = insertelement <2 x float> %i.li, float %i.lf, i64 0
  %i.ls = fmul <2 x float> %i.lr, %.sroa.026.0.copyload ; 2 uses
  %shift539 = shufflevector <2 x float> %i.ls, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop540 = fsub <2 x float> %i.ls, %shift539
  %i.lt = extractelement <2 x float> %foldExtExtBinop540, i64 0
  %i.lu = fadd <2 x float> %.sroa.016.0.copyload, %i.lq
  %i.lv = fadd float %.sroa.217.0.copyload, %i.lt
  store <2 x float> %i.lu, ptr %i.ld, align 4, !tbaa !84
  store float %i.lv, ptr %.sroa.217.0..sroa_idx, align 4, !tbaa !84
  br label %b3GetBodyState.exit.thread

b3GetBodyState.exit.thread:                       ; preds = %bb.s, %bb.t, %b3GetBodyState.exit
  %i.lw = load i32, ptr %i.af, align 8, !tbaa !145 ; 2 uses
  %.not201485 = icmp eq i32 %i.lw, -1
  br i1 %.not201485, label %._crit_edge488, label %.lr.ph487

.lr.ph487:                                        ; preds = %b3GetBodyState.exit.thread
  %i.lx = getelementptr inbounds nuw i8, ptr %0, i64 4080
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 192 ; 2 uses
  %.8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph487, %bb.u
  %.1486 = phi i32 [ %i.lw, %.lr.ph487 ], [ %i.mo, %bb.u ]
  %i.ly = load ptr, ptr %i.lx, align 8, !tbaa !135
  %i.lz = sext i32 %.1486 to i64
  %i.ma = getelementptr inbounds [232 x i8], ptr %i.ly, i64 %i.lz ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  %i.mb = call { <2 x float>, <2 x float> } @b3ComputeShapeExtent(ptr noundef %i.ma, <2 x float> %.sroa.0100.2, float %.sroa.10.2) #10 ; 2 uses
  %i.mc = extractvalue { <2 x float>, <2 x float> } %i.mb, 0 ; 2 uses
  store <2 x float> %i.mc, ptr %5, align 8
  %i.md = extractvalue { <2 x float>, <2 x float> } %i.mb, 1 ; 2 uses
  store <2 x float> %i.md, ptr %.8..8..8..8..sroa_idx, align 8
  %i.me = load float, ptr %i.ad, align 4, !tbaa !103 ; 2 uses
  %i.mf = extractelement <2 x float> %i.mc, i64 0 ; 2 uses
  %i.mg = fcmp olt float %i.me, %i.mf
  %i.mh = select i1 %i.mg, float %i.me, float %i.mf
  store float %i.mh, ptr %i.ad, align 4, !tbaa !103
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.ae, align 4 ; 2 uses
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4 ; 2 uses
  %.4..4..4..4..sroa.01.0.copyload = load <2 x float>, ptr %.4..4..4..4..sroa_idx, align 4 ; 2 uses
  %i.mi = extractelement <2 x float> %i.md, i64 1 ; 2 uses
  %i.mj = fcmp ogt <2 x float> %.sroa.03.0.copyload, %.4..4..4..4..sroa.01.0.copyload
  %i.mk = select <2 x i1> %i.mj, <2 x float> %.sroa.03.0.copyload, <2 x float> %.4..4..4..4..sroa.01.0.copyload
  %i.ml = fcmp ogt float %.sroa.24.0.copyload, %i.mi
  %i.mm = select i1 %i.ml, float %.sroa.24.0.copyload, float %i.mi
  store <2 x float> %i.mk, ptr %i.ae, align 4, !tbaa !84
  store float %i.mm, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !84
  %i.mn = getelementptr inbounds nuw i8, ptr %i.ma, i64 12
  %i.mo = load i32, ptr %i.mn, align 4, !tbaa !147 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.not201 = icmp eq i32 %i.mo, -1
  br i1 %.not201, label %._crit_edge488, label %bb.u, !llvm.loop !285

._crit_edge488:                                   ; preds = %bb.u, %b3GetBodyState.exit.thread
  %i.mp = load i32, ptr %i.p, align 4, !tbaa !93
  %i.mq = and i32 %i.mp, 56
  %i.mr = icmp eq i32 %i.mq, 56
  br i1 %i.mr, label %bb.v, label %.loopexit

bb.v:                                             ; preds = %._crit_edge488
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.w, i8 0, i64 36, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.y, i8 0, i64 72, i1 false)
  br label %.loopexit

.loopexit:                                        ; preds = %bb.f, %bb.e, %._crit_edge488, %bb.v, %bb.d, %b3SyncBodyFlags.exit
  ret void
}

declare { <2 x float>, <2 x float> } @b3ComputeShapeExtent(ptr noundef, <2 x float>, float) local_unnamed_addr #5

declare ptr @b3StackAlloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

declare void @b3ComputeShapeMass(ptr dead_on_unwind writable sret(%struct.b3MassData) align 4, ptr noundef) local_unnamed_addr #5

declare void @b3Steiner(ptr dead_on_unwind writable sret(%struct.b3Matrix3) align 4, float noundef, <2 x float>, float) local_unnamed_addr #5

end_hunk_0
begin_hunk_1_@b3Body_SetLinearVelocity:bb.a
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !83
  %i.ah = sext i32 %i.ag to i64
  %i.ai = getelementptr inbounds [56 x i8], ptr %i.ad, i64 %i.ah ; 2 uses
  store <2 x float> %1, ptr %i.ai, align 4, !tbaa !84
  %.sroa.4.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store float %2, ptr %.sroa.4.0..sroa_idx14, align 4, !tbaa !84
  br label %b3GetBodyState.exit.thread

b3GetBodyState.exit.thread:                       ; preds = %bb.g, %bb.h, %b3GetBodyState.exit, %bb.c
  ret void
}

declare void @b3RecWrite_BodySetLinearVelocity(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3Body_SetAngularVelocity(i64 %0, <2 x float> %1, float %2) local_unnamed_addr #7 {
bb.a:
  %3 = alloca %struct.b3RecArgs_BodySetAngularVelocity, align 8 ; 6 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #10 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #10
  store i64 %0, ptr %3, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %1, ptr %i.f, align 8, !tbaa !84
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  store float %2, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !84
  call void @b3RecWrite_BodySetAngularVelocity(ptr noundef nonnull %i.e, ptr noundef nonnull %3) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = shl i64 %0, 32
  %sext.i = add i64 %i.i, -4294967296
  %i.j = ashr exact i64 %sext.i, 25
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %i.m = load i32, ptr %i.l, align 8, !tbaa !112
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %b3GetBodyState.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %i.p = load i32, ptr %i.o, align 8, !tbaa !89   ; 2 uses
  %i.q = insertelement <2 x i32> poison, i32 %i.p, i64 0
  %i.r = shufflevector <2 x i32> %i.q, <2 x i32> poison, <2 x i32> zeroinitializer
  %i.s = and <2 x i32> %i.r, <i32 8, i32 16>
  %i.t = icmp eq <2 x i32> %i.s, zeroinitializer
  %i.u = select <2 x i1> %i.t, <2 x float> %1, <2 x float> zeroinitializer ; 3 uses
  %i.v = and i32 %i.p, 32
  %.not22 = icmp eq i32 %i.v, 0
  %i.w = select i1 %.not22, float %2, float 0.000000e+00 ; 3 uses
  %i.x = fmul <2 x float> %i.u, %i.u              ; 2 uses
  %shift = shufflevector <2 x float> %i.x, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.x, %shift
  %i.y = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.z = fmul float %i.w, %i.w
  %i.aa = fadd float %i.z, %i.y
  %i.ab = fcmp une float %i.aa, 0.000000e+00
  br i1 %i.ab, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 4763 ; 2 uses
  store i8 1, ptr %i.ac, align 1, !tbaa !96
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ae = load i32, ptr %i.ad, align 8, !tbaa !72 ; 2 uses
  %i.af = icmp sgt i32 %i.ae, 2
  br i1 %i.af, label %bb.f, label %b3WakeBodyWithLock.exit

bb.f:                                             ; preds = %bb.e
  call void @b3WakeSolverSet(ptr noundef nonnull %i.c, i32 noundef %i.ae) #10
  call void @b3ValidateSolverSets(ptr noundef nonnull %i.c) #10
  br label %b3WakeBodyWithLock.exit

b3WakeBodyWithLock.exit:                          ; preds = %bb.e, %bb.f
  store i8 0, ptr %i.ac, align 1, !tbaa !96
  br label %bb.g

bb.g:                                             ; preds = %b3WakeBodyWithLock.exit, %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ah = load i32, ptr %i.ag, align 8, !tbaa !72
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %b3GetBodyState.exit, label %b3GetBodyState.exit.thread

b3GetBodyState.exit:                              ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 3920
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !69
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 192
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !88 ; 2 uses
  %i.an = icmp eq ptr %i.am, null
  br i1 %i.an, label %b3GetBodyState.exit.thread, label %bb.h

bb.h:                                             ; preds = %b3GetBodyState.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.ap = load i32, ptr %i.ao, align 4, !tbaa !83
  %i.aq = sext i32 %i.ap to i64
  %i.ar = getelementptr inbounds [56 x i8], ptr %i.am, i64 %i.aq ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 12
  store <2 x float> %i.u, ptr %i.as, align 4, !tbaa !84
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ar, i64 20
  store float %i.w, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !84
  br label %b3GetBodyState.exit.thread

b3GetBodyState.exit.thread:                       ; preds = %bb.g, %bb.h, %b3GetBodyState.exit, %bb.c
  ret void
}

declare void @b3RecWrite_BodySetAngularVelocity(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3Body_SetTargetTransform(i64 %0, ptr nofree noundef readonly byval(%struct.b3Transform) align 8 captures(none) %1, float noundef %2, i1 noundef zeroext %3) local_unnamed_addr #7 {
bb.a:
  %4 = alloca %struct.b3RecArgs_BodySetTargetTransform, align 8 ; 8 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #10 ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i1 %3 to i8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  store i64 %0, ptr %4, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %i.g, ptr noundef nonnull align 8 dereferenceable(28) %1, i64 28, i1 false), !tbaa.struct !85
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %2, ptr %i.h, align 4, !tbaa !312
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  store i8 %i.f, ptr %i.i, align 8, !tbaa !313
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 41
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.j, i8 0, i64 3, i1 false)
  call void @b3RecWrite_BodySetTargetTransform(ptr noundef nonnull %i.e, ptr noundef nonnull %4) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !68
  %i.m = shl i64 %0, 32
  %sext.i = add i64 %i.m, -4294967296
  %i.n = ashr exact i64 %sext.i, 25
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load i32, ptr %i.p, align 8, !tbaa !72   ; 5 uses
  %i.r = icmp eq i32 %i.q, 1
  br i1 %i.r, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  %i.t = load i32, ptr %i.s, align 8, !tbaa !112
  %i.u = icmp ne i32 %i.t, 0
  %i.v = fcmp ugt float %2, 0.000000e+00
  %or.cond.not154 = and i1 %i.v, %i.u
  %.not104 = icmp eq i32 %i.q, 2                  ; 2 uses
  %brmerge = or i1 %3, %.not104
  %or.cond106 = and i1 %brmerge, %or.cond.not154
  br i1 %or.cond106, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 3920 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !69   ; 3 uses
  %i.y = sext i32 %i.q to i64
  %i.z = getelementptr inbounds [88 x i8], ptr %i.x, i64 %i.y
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !82
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 12 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 4, !tbaa !83
  %i.ad = sext i32 %i.ac to i64                   ; 3 uses
  %i.ae = getelementptr inbounds [216 x i8], ptr %i.aa, i64 %i.ad ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %.sroa.075.0.copyload = load <2 x float>, ptr %i.af, align 4, !tbaa !84 ; 2 uses
  %.sroa.476.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 36
  %.sroa.476.0.copyload = load float, ptr %.sroa.476.0..sroa_idx, align 4, !tbaa !84
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 68
  %.sroa.071.0.copyload = load <2 x float>, ptr %i.ag, align 4 ; 4 uses
  %.sroa.272.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 76
  %.sroa.272.0.copyload = load float, ptr %.sroa.272.0..sroa_idx, align 4 ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ai = load <2 x float>, ptr %i.ah, align 4    ; 7 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ak = load <2 x float>, ptr %i.aj, align 4    ; 7 uses
  %.sroa.3.8.vec.extract.i.i = extractelement <2 x float> %i.ak, i64 0
  %.sroa.011.4.vec.extract.i.i.i = extractelement <2 x float> %i.ai, i64 1 ; 3 uses
  %.sroa.03.4.vec.extract.i.i.i = extractelement <2 x float> %.sroa.071.0.copyload, i64 1 ; 2 uses
  %.sroa.3.12.vec.extract.i.i = extractelement <2 x float> %i.ak, i64 1 ; 2 uses
  %i.al = load float, ptr %1, align 8, !tbaa !314
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.an = load float, ptr %i.am, align 4, !tbaa !315
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 8
  %5 = load <4 x float>, ptr %i.ao, align 8
  %6 = shufflevector <4 x float> %5, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ap = fdiv float 1.000000e+00, %2             ; 3 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.075.0.copyload, i64 1
  %i.aq = fmul float %.sroa.272.0.copyload, %.sroa.011.4.vec.extract.i.i.i
  %i.ar = fmul float %.sroa.03.4.vec.extract.i.i.i, %.sroa.3.8.vec.extract.i.i
  %i.as = shufflevector <2 x float> %i.ak, <2 x float> %i.ai, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.at = fmul <2 x float> %.sroa.071.0.copyload, %i.as ; 2 uses
  %i.au = shufflevector <2 x float> %.sroa.071.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.av = insertelement <2 x float> %i.au, float %.sroa.272.0.copyload, i64 0 ; 2 uses
  %i.aw = fmul <2 x float> %i.av, %i.ai           ; 2 uses
  %i.ax = shufflevector <2 x float> %i.at, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ay = insertelement <2 x float> %i.ax, float %i.aq, i64 0
  %i.az = shufflevector <2 x float> %i.aw, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ba = insertelement <2 x float> %i.az, float %i.ar, i64 0
  %i.bb = fsub <2 x float> %i.ay, %i.ba
  %i.bc = fsub <2 x float> %i.at, %i.aw
  %i.bd = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.be = fmul <2 x float> %.sroa.071.0.copyload, %i.bd
  %i.bf = insertelement <2 x float> %i.au, float %.sroa.272.0.copyload, i64 1
  %i.bg = fmul <2 x float> %i.bf, %i.bd
  %i.bh = fadd <2 x float> %i.be, %i.bb           ; 2 uses
  %i.bi = fadd <2 x float> %i.bg, %i.bc           ; 2 uses
  %foldExtExtBinop = fmul <2 x float> %i.ak, %i.bh
  %shift = shufflevector <2 x float> %i.bi, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop169 = fmul <2 x float> %i.ai, %shift
  %foldExtExtBinop171 = fsub <2 x float> %foldExtExtBinop, %foldExtExtBinop169
  %i.bj = extractelement <2 x float> %foldExtExtBinop171, i64 0
  %i.bk = fmul <2 x float> %i.ai, %i.bi
  %i.bl = shufflevector <2 x float> %i.ai, <2 x float> %i.ak, <2 x i32> <i32 1, i32 2>
  %i.bm = fmul <2 x float> %i.bl, %i.bh
  %i.bn = fsub <2 x float> %i.bk, %i.bm
  %i.bo = fmul float %i.bj, 2.000000e+00
  %i.bp = fadd float %.sroa.03.4.vec.extract.i.i.i, %i.bo
  %i.bq = fmul <2 x float> %i.bn, splat (float 2.000000e+00)
  %i.br = fadd <2 x float> %i.av, %i.bq
  %i.bs = fadd float %i.an, %i.bp
  %i.bt = insertelement <2 x float> %6, float %i.al, i64 1
  %i.bu = fadd <2 x float> %i.bt, %i.br
  %i.bv = fsub float %i.bs, %.sroa.03.4.vec.extract.i
  %i.bw = shufflevector <2 x float> %.sroa.075.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bx = insertelement <2 x float> %i.bw, float %.sroa.476.0.copyload, i64 0
  %i.by = fsub <2 x float> %i.bu, %i.bx
  %i.bz = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = fmul <2 x float> %i.ca, %i.by           ; 4 uses
  %i.cc = shufflevector <2 x float> %i.cb, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cd = fmul float %i.ap, %i.bv                 ; 3 uses
  %.sroa.06.4.vec.insert.i = insertelement <2 x float> %i.cc, float %i.cd, i64 1
  %i.ce = getelementptr inbounds nuw i8, ptr %i.ae, i64 12
  %.sroa.042.0.copyload = load <2 x float>, ptr %i.ce, align 4, !tbaa !84 ; 6 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 20
  %.sroa.6.0.copyload = load <2 x float>, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !84 ; 6 uses
  %.sroa.01.4.vec.extract.i = extractelement <2 x float> %.sroa.042.0.copyload, i64 1 ; 2 uses
  %.sroa.32.12.vec.extract.i = extractelement <2 x float> %.sroa.6.0.copyload, i64 1 ; 2 uses
  %i.cf = shufflevector <2 x float> %i.ai, <2 x float> %i.ak, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cg = shufflevector <2 x float> %.sroa.042.0.copyload, <2 x float> %.sroa.6.0.copyload, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.ch = fmul <4 x float> %i.cf, %i.cg           ; 4 uses
  %shift173 = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop174 = fadd <4 x float> %i.ch, %shift173
  %shift176 = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop177 = fadd <4 x float> %foldExtExtBinop174, %shift176
  %shift179 = shufflevector <4 x float> %i.ch, <4 x float> poison, <4 x i32> <i32 3, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop180 = fadd <4 x float> %shift179, %foldExtExtBinop177
  %i.ci = extractelement <4 x float> %foldExtExtBinop180, i64 0
  %i.cj = fcmp olt float %i.ci, 0.000000e+00      ; 3 uses
  %i.ck = fneg float %.sroa.011.4.vec.extract.i.i.i
  %i.cl = fneg <2 x float> %i.as
  %i.cm = fneg float %.sroa.3.12.vec.extract.i.i
  %.sroa.7.12.vec.extract.pre-phi = select i1 %i.cj, float %i.cm, float %.sroa.3.12.vec.extract.i.i
  %.sroa.06.4.vec.extract.i120.pre-phi = select i1 %i.cj, float %i.ck, float %.sroa.011.4.vec.extract.i.i.i
  %i.cn = select i1 %i.cj, <2 x float> %i.cl, <2 x float> %i.as
  %i.co = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> %.sroa.042.0.copyload, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cp = fsub <2 x float> %i.cn, %i.co           ; 4 uses
  %i.cq = fsub float %.sroa.06.4.vec.extract.i120.pre-phi, %.sroa.01.4.vec.extract.i ; 3 uses
  %i.cr = fsub float %.sroa.7.12.vec.extract.pre-phi, %.sroa.32.12.vec.extract.i ; 2 uses
  %shift182 = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop183 = fmul <2 x float> %.sroa.6.0.copyload, %shift182
  %foldExtExtBinop185 = fmul <2 x float> %.sroa.042.0.copyload, %i.cp
  %foldExtExtBinop187 = fsub <2 x float> %foldExtExtBinop183, %foldExtExtBinop185
  %i.cs = extractelement <2 x float> %foldExtExtBinop187, i64 0
  %i.ct = fmul float %.sroa.01.4.vec.extract.i, %i.cr
  %i.cu = fsub float %i.cs, %i.ct
  %i.cv = fmul float %.sroa.32.12.vec.extract.i, %i.cq
  %i.cw = fadd float %i.cv, %i.cu
  %i.cx = fmul float %i.ap, 2.000000e+00          ; 2 uses
  %i.cy = fmul float %i.cx, %i.cw                 ; 2 uses
  %i.cz = shufflevector <2 x float> %i.cp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.da = insertelement <2 x float> %i.cz, float %i.cq, i64 0
  %i.db = fmul <2 x float> %.sroa.042.0.copyload, %i.da
  %i.dc = shufflevector <2 x float> %.sroa.042.0.copyload, <2 x float> %.sroa.6.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.dd = insertelement <2 x float> %i.cz, float %i.cq, i64 1
  %i.de = fmul <2 x float> %i.dc, %i.dd
  %i.df = fsub <2 x float> %i.db, %i.de
  %i.dg = insertelement <2 x float> poison, float %i.cr, i64 0
  %i.dh = shufflevector <2 x float> %i.dg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.di = fmul <2 x float> %i.co, %i.dh
  %i.dj = fsub <2 x float> %i.df, %i.di
  %i.dk = shufflevector <2 x float> %.sroa.6.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dl = fmul <2 x float> %i.dk, %i.cp
  %i.dm = fadd <2 x float> %i.dl, %i.dj
  %i.dn = insertelement <2 x float> poison, float %i.cx, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = fmul <2 x float> %i.do, %i.dm           ; 3 uses
  %i.dq = shufflevector <2 x float> %i.dp, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %.sroa.06.4.vec.insert.i138 = insertelement <2 x float> %i.dq, float %i.cy, i64 1
  br i1 %.not104, label %b3GetBodyState.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.dr = fmul <2 x float> %i.cb, %i.cb           ; 2 uses
  %i.ds = fmul float %i.cd, %i.cd
  %i.dt = extractelement <2 x float> %i.dr, i64 1
  %i.du = fadd float %i.dt, %i.ds
  %i.dv = extractelement <2 x float> %i.dr, i64 0
  %i.dw = fadd float %i.dv, %i.du
  %sqrt.i = call float @llvm.sqrt.f32(float %i.dw)
  %i.dx = getelementptr inbounds nuw i8, ptr %i.ae, i64 184
  %.sroa.05.0.copyload = load <2 x float>, ptr %i.dx, align 4 ; 2 uses
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 192
  %.sroa.26.0.copyload = load float, ptr %.sroa.26.0..sroa_idx, align 4
  %.sroa.03.4.vec.extract.i145 = extractelement <2 x float> %.sroa.05.0.copyload, i64 1
  %i.dy = fmul float %i.cy, %.sroa.03.4.vec.extract.i145 ; 2 uses
  %i.dz = fmul float %i.dy, %i.dy
  %i.ea = shufflevector <2 x float> %.sroa.05.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.eb = insertelement <2 x float> %i.ea, float %.sroa.26.0.copyload, i64 0
  %i.ec = fmul <2 x float> %i.dp, %i.eb           ; 2 uses
  %i.ed = fmul <2 x float> %i.ec, %i.ec           ; 2 uses
  %i.ee = extractelement <2 x float> %i.ed, i64 1
  %i.ef = fadd float %i.ee, %i.dz
  %i.eg = extractelement <2 x float> %i.ed, i64 0
  %i.eh = fadd float %i.eg, %i.ef
  %sqrt.i151 = call float @llvm.sqrt.f32(float %i.eh)
  %i.ei = fadd float %sqrt.i, %sqrt.i151
  %i.ej = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.ek = load float, ptr %i.ej, align 4, !tbaa !110
  %i.el = fcmp uge float %i.ei, %i.ek
  br i1 %i.el, label %bb.g, label %.critedge

bb.g:                                             ; preds = %bb.f
  %i.em = getelementptr inbounds nuw i8, ptr %i.c, i64 4763 ; 2 uses
  store i8 1, ptr %i.em, align 1, !tbaa !96
  %i.en = icmp sgt i32 %i.q, 2
  br i1 %i.en, label %bb.h, label %b3WakeBodyWithLock.exit

bb.h:                                             ; preds = %bb.g
  call void @b3WakeSolverSet(ptr noundef nonnull %i.c, i32 noundef %i.q) #10
  call void @b3ValidateSolverSets(ptr noundef nonnull %i.c) #10
  %.pre155.pre = load ptr, ptr %i.w, align 8, !tbaa !69
  %.pre156.pre = load i32, ptr %i.ab, align 4, !tbaa !83
  %.pre165 = sext i32 %.pre156.pre to i64
  br label %b3WakeBodyWithLock.exit

b3WakeBodyWithLock.exit:                          ; preds = %bb.g, %bb.h
  %.pre164.pre-phi = phi i64 [ %i.ad, %bb.g ], [ %.pre165, %bb.h ]
  %.pre155 = phi ptr [ %i.x, %bb.g ], [ %.pre155.pre, %bb.h ]
  store i8 0, ptr %i.em, align 1, !tbaa !96
  br label %b3GetBodyState.exit

b3GetBodyState.exit:                              ; preds = %b3WakeBodyWithLock.exit, %bb.e
  %.pre-phi = phi i64 [ %.pre164.pre-phi, %b3WakeBodyWithLock.exit ], [ %i.ad, %bb.e ]
  %i.eo = phi ptr [ %.pre155, %b3WakeBodyWithLock.exit ], [ %i.x, %bb.e ]
  %i.ep = getelementptr inbounds nuw i8, ptr %i.eo, i64 192
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !88
  %i.er = getelementptr inbounds [56 x i8], ptr %i.eq, i64 %.pre-phi ; 4 uses
  store <2 x float> %.sroa.06.4.vec.insert.i, ptr %i.er, align 4, !tbaa !84
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.es = extractelement <2 x float> %i.cb, i64 0
  store float %i.es, ptr %.sroa.564.0..sroa_idx, align 4, !tbaa !84
  %i.et = getelementptr inbounds nuw i8, ptr %i.er, i64 12
  store <2 x float> %.sroa.06.4.vec.insert.i138, ptr %i.et, align 4, !tbaa !84
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.er, i64 20
  %i.eu = extractelement <2 x float> %i.dp, i64 0
  store float %i.eu, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !84
  br label %.critedge

.critedge:                                        ; preds = %b3GetBodyState.exit, %bb.f, %bb.d, %bb.c
  ret void
}

declare void @b3RecWrite_BodySetTargetTransform(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define { <2 x float>, float } @b3Body_GetLocalPointVelocity(i64 %0, <2 x float> %1, float %2) local_unnamed_addr #7 {
bb.a:
  %.sroa.250.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.250.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = shl i64 %0, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 25
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load i32, ptr %i.i, align 8, !tbaa !72
  %i.k = icmp eq i32 %i.j, 2
  br i1 %i.k, label %b3GetBodyState.exit, label %b3GetBodyState.exit.thread

b3GetBodyState.exit:                              ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 3920
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !69   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 192
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !88   ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %b3GetBodyState.exit.thread, label %bb.b

bb.b:                                             ; preds = %b3GetBodyState.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.r = load i32, ptr %i.q, align 4, !tbaa !83
  %i.s = sext i32 %i.r to i64                     ; 2 uses
  %i.t = getelementptr inbounds [56 x i8], ptr %i.o, i64 %i.s ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 176
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !82
  %i.w = getelementptr inbounds [216 x i8], ptr %i.v, i64 %i.s ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 12
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 68
  %.sroa.027.0.copyload = load <2 x float>, ptr %i.y, align 4 ; 2 uses
  %.sroa.228.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 76
  %.sroa.228.0.copyload = load float, ptr %.sroa.228.0..sroa_idx, align 4
  %i.z = load <2 x float>, ptr %i.x, align 4      ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 20
  %i.ab = load <2 x float>, ptr %i.aa, align 4    ; 4 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.t, i64 12
  %.sroa.013.0.copyload = load <2 x float>, ptr %i.ac, align 4 ; 4 uses
  %.sroa.214.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 20
  %.sroa.214.0.copyload = load float, ptr %.sroa.214.0..sroa_idx, align 4 ; 2 uses
  %.sroa.011.0.vec.extract.i = extractelement <2 x float> %.sroa.013.0.copyload, i64 0
  %i.ad = fsub <2 x float> %1, %.sroa.027.0.copyload ; 4 uses
  %i.ae = shufflevector <2 x float> %1, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.af = insertelement <2 x float> %i.ae, float %2, i64 0
  %i.ag = shufflevector <2 x float> %.sroa.027.0.copyload, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ah = insertelement <2 x float> %i.ag, float %.sroa.228.0.copyload, i64 0
  %i.ai = fsub <2 x float> %i.af, %i.ah           ; 4 uses
  %i.aj = shufflevector <2 x float> %i.z, <2 x float> %i.ab, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.ak = fmul <2 x float> %i.ai, %i.aj
  %i.al = shufflevector <2 x float> %i.ad, <2 x float> %i.ai, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.am = shufflevector <2 x float> %i.ab, <2 x float> %i.z, <2 x i32> <i32 0, i32 2> ; 2 uses
end_hunk_1
begin_hunk_2_@b3Body_SetMassData:bb.a
  store float %i.dd, ptr %.sroa.219.0..sroa_idx, align 4, !tbaa !84
  br label %b3GetBodyState.exit.thread

b3GetBodyState.exit.thread:                       ; preds = %b3SyncBodyFlags.exit, %bb.f, %b3GetBodyState.exit
  %.sroa.0206.0.copyload = load <2 x float>, ptr %i.aj, align 4, !tbaa !84 ; 6 uses
  %.sroa.4207.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 76
  %.sroa.4207.0.copyload = load float, ptr %.sroa.4207.0..sroa_idx, align 4, !tbaa !84 ; 3 uses
  %.sroa.5208.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 80
  %.sroa.5208.0.copyload = load <2 x float>, ptr %.sroa.5208.0..sroa_idx, align 8, !tbaa !84 ; 4 uses
  %.sroa.6209.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 88
  %.sroa.6209.0.copyload = load float, ptr %.sroa.6209.0..sroa_idx, align 8, !tbaa !84 ; 3 uses
  %.sroa.7210.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 92
  %.sroa.7210.0.copyload = load <2 x float>, ptr %.sroa.7210.0..sroa_idx, align 4, !tbaa !84 ; 4 uses
  %.sroa.8211.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 100
  %.sroa.8211.0.copyload = load float, ptr %.sroa.8211.0..sroa_idx, align 4, !tbaa !84 ; 3 uses
  %.sroa.011.4.vec.extract.i.i = extractelement <2 x float> %.sroa.5208.0.copyload, i64 1 ; 3 uses
  %i.de = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.8211.0.copyload
  %.sroa.03.4.vec.extract.i.i = extractelement <2 x float> %.sroa.7210.0.copyload, i64 1 ; 3 uses
  %i.df = fmul float %.sroa.6209.0.copyload, %.sroa.03.4.vec.extract.i.i
  %i.dg = fsub float %i.de, %i.df                 ; 2 uses
  %.sroa.03.0.vec.extract.i.i = extractelement <2 x float> %.sroa.7210.0.copyload, i64 0 ; 3 uses
  %i.dh = fmul float %.sroa.6209.0.copyload, %.sroa.03.0.vec.extract.i.i
  %.sroa.011.0.vec.extract.i.i = extractelement <2 x float> %.sroa.5208.0.copyload, i64 0 ; 3 uses
  %i.di = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.8211.0.copyload
  %i.dj = fsub float %i.dh, %i.di                 ; 2 uses
  %i.dk = fmul float %.sroa.011.0.vec.extract.i.i, %.sroa.03.4.vec.extract.i.i
  %i.dl = fmul float %.sroa.011.4.vec.extract.i.i, %.sroa.03.0.vec.extract.i.i
  %i.dm = fsub float %i.dk, %i.dl                 ; 2 uses
  %.sroa.04.0.vec.extract.i.i = extractelement <2 x float> %.sroa.0206.0.copyload, i64 0 ; 3 uses
  %i.dn = fmul float %.sroa.04.0.vec.extract.i.i, %i.dg
  %.sroa.04.4.vec.extract.i.i = extractelement <2 x float> %.sroa.0206.0.copyload, i64 1 ; 3 uses
  %i.do = fmul float %.sroa.04.4.vec.extract.i.i, %i.dj
  %i.dp = fadd float %i.dn, %i.do
  %i.dq = fmul float %.sroa.4207.0.copyload, %i.dm
  %i.dr = fadd float %i.dq, %i.dp                 ; 3 uses
  %i.ds = fcmp ogt float %i.dr, 0.000000e+00
  %i.dt = getelementptr inbounds nuw i8, ptr %i.w, i64 108 ; 2 uses
  br i1 %i.ds, label %bb.g, label %bb.i

bb.g:                                             ; preds = %b3GetBodyState.exit.thread
  %i.du = fcmp ogt float %i.dr, f0x057A0000
  br i1 %i.du, label %bb.h, label %b3InvertT.exit

bb.h:                                             ; preds = %bb.g
  %i.dv = fdiv float 1.000000e+00, %i.dr          ; 4 uses
  %i.dw = fmul float %i.dg, %i.dv
  %.sroa.06.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.dx = fmul float %i.dj, %i.dv
  %.sroa.06.4.vec.insert.i.i = insertelement <2 x float> %.sroa.06.0.vec.insert.i.i, float %i.dx, i64 1
  %i.dy = insertelement <2 x float> poison, float %.sroa.4207.0.copyload, i64 0
  %i.dz = insertelement <2 x float> %i.dy, float %.sroa.8211.0.copyload, i64 1 ; 2 uses
  %i.ea = shufflevector <2 x float> %.sroa.7210.0.copyload, <2 x float> %.sroa.0206.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.eb = fmul <2 x float> %i.dz, %i.ea
  %i.ec = shufflevector <2 x float> %.sroa.7210.0.copyload, <2 x float> %.sroa.0206.0.copyload, <2 x i32> <i32 3, i32 0>
  %i.ed = shufflevector <2 x float> %i.dz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ee = fmul <2 x float> %i.ec, %i.ed
  %i.ef = fmul float %.sroa.04.4.vec.extract.i.i, %.sroa.03.0.vec.extract.i.i
  %i.eg = fmul float %.sroa.04.0.vec.extract.i.i, %.sroa.03.4.vec.extract.i.i
  %i.eh = fsub float %i.ef, %i.eg
  %i.ei = fsub <2 x float> %i.eb, %i.ee
  %i.ej = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.el = fmul <2 x float> %i.ei, %i.ek
  %i.em = insertelement <2 x float> poison, float %i.dm, i64 0
  %i.en = insertelement <2 x float> %i.em, float %i.eh, i64 1
  %i.eo = fmul <2 x float> %i.en, %i.ek
  %i.ep = shufflevector <2 x float> %.sroa.0206.0.copyload, <2 x float> %.sroa.5208.0.copyload, <2 x i32> <i32 1, i32 2>
  %i.eq = insertelement <2 x float> poison, float %.sroa.6209.0.copyload, i64 0
  %i.er = insertelement <2 x float> %i.eq, float %.sroa.4207.0.copyload, i64 1 ; 2 uses
  %i.es = fmul <2 x float> %i.ep, %i.er
  %i.et = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.eu = shufflevector <2 x float> %.sroa.0206.0.copyload, <2 x float> %.sroa.5208.0.copyload, <2 x i32> <i32 3, i32 0>
  %i.ev = fmul <2 x float> %i.et, %i.eu
  %i.ew = fmul float %.sroa.04.0.vec.extract.i.i, %.sroa.011.4.vec.extract.i.i
  %i.ex = fmul float %.sroa.04.4.vec.extract.i.i, %.sroa.011.0.vec.extract.i.i
  %i.ey = fsub float %i.ew, %i.ex
  %i.ez = fsub <2 x float> %i.es, %i.ev
  %i.fa = fmul <2 x float> %i.ez, %i.ek
  %i.fb = fmul float %i.ey, %i.dv
  br label %b3InvertT.exit

b3InvertT.exit:                                   ; preds = %bb.g, %bb.h
  %.sroa.0200.0 = phi <2 x float> [ %.sroa.06.4.vec.insert.i.i, %bb.h ], [ zeroinitializer, %bb.g ] ; 7 uses
  %.sroa.6202.0 = phi <2 x float> [ %i.el, %bb.h ], [ zeroinitializer, %bb.g ] ; 7 uses
  %.sroa.8204.0 = phi <2 x float> [ %i.fa, %bb.h ], [ zeroinitializer, %bb.g ] ; 5 uses
  %.sroa.9205.0 = phi float [ %i.fb, %bb.h ], [ 0.000000e+00, %bb.g ] ; 3 uses
  %i.fc = phi <2 x float> [ %i.eo, %bb.h ], [ zeroinitializer, %bb.g ] ; 5 uses
  %i.fd = shufflevector <2 x float> %.sroa.0200.0, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  store <2 x float> %.sroa.0200.0, ptr %i.dt, align 4, !tbaa !84
  %.sroa.5201.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 116
  %i.fe = extractelement <2 x float> %i.fc, i64 0
  store float %i.fe, ptr %.sroa.5201.0..sroa_idx, align 4, !tbaa !84
  %.sroa.6202.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 120
  store <2 x float> %.sroa.6202.0, ptr %.sroa.6202.0..sroa_idx, align 4, !tbaa !84
  %.sroa.7203.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 128
  %i.ff = extractelement <2 x float> %i.fc, i64 1
  store float %i.ff, ptr %.sroa.7203.0..sroa_idx, align 4, !tbaa !84
  %.sroa.8204.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 132
  store <2 x float> %.sroa.8204.0, ptr %.sroa.8204.0..sroa_idx, align 4, !tbaa !84
  %.sroa.9205.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 140
  store float %.sroa.9205.0, ptr %.sroa.9205.0..sroa_idx, align 4, !tbaa !84
  %i.fg = load <2 x float>, ptr %.sroa.6215.0..sroa_idx, align 4 ; 6 uses
  %i.fh = load <2 x float>, ptr %.sroa.7216.0..sroa_idx, align 4 ; 6 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %i.w, i64 144
  %i.fj = fmul <2 x float> %i.fg, %i.fg           ; 2 uses
  %foldExtExtBinop291 = fmul <2 x float> %i.fh, %i.fh
  %shift293 = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop294 = fmul <2 x float> %i.fg, %shift293 ; 2 uses
  %i.fk = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fl = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fk, %i.fl           ; 2 uses
  %i.fn = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fo = fmul <2 x float> %i.fg, %i.fn           ; 2 uses
  %shift296 = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop297 = fmul <2 x float> %i.fh, %shift296 ; 2 uses
  %foldExtExtBinop299 = fadd <2 x float> %foldExtExtBinop294, %foldExtExtBinop297
  %foldExtExtBinop301 = fsub <2 x float> %foldExtExtBinop294, %foldExtExtBinop297
  %i.fp = shufflevector <2 x float> %foldExtExtBinop299, <2 x float> %foldExtExtBinop301, <2 x i32> <i32 0, i32 2>
  %i.fq = fmul <2 x float> %i.fp, splat (float 2.000000e+00) ; 8 uses
  %i.fr = shufflevector <2 x float> %foldExtExtBinop291, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = fadd <2 x float> %i.fj, %i.fr
  %i.ft = fmul <2 x float> %i.fs, splat (float 2.000000e+00)
  %i.fu = fsub <2 x float> splat (float 1.000000e+00), %i.ft ; 9 uses
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.fw = fadd <2 x float> %i.fm, %i.fo           ; 2 uses
  %i.fx = fsub <2 x float> %i.fm, %i.fo           ; 2 uses
  %i.fy = shufflevector <2 x float> %i.fw, <2 x float> %i.fx, <2 x i32> <i32 3, i32 0>
  %i.fz = fmul <2 x float> %i.fy, splat (float 2.000000e+00) ; 5 uses
  %i.ga = shufflevector <2 x float> %i.fx, <2 x float> %i.fw, <2 x i32> <i32 0, i32 3>
  %i.gb = fmul <2 x float> %i.ga, splat (float 2.000000e+00) ; 7 uses
  %i.gc = call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.fj)
  %i.gd = fmul float %i.gc, 2.000000e+00
  %i.ge = fsub float 1.000000e+00, %i.gd          ; 3 uses
  %i.gf = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.gg = shufflevector <2 x float> %.sroa.0200.0, <2 x float> %.sroa.6202.0, <2 x i32> <i32 1, i32 2>
  %i.gh = fmul <2 x float> %i.gg, %i.fu
  %i.gi = shufflevector <2 x float> %.sroa.0200.0, <2 x float> %.sroa.6202.0, <2 x i32> <i32 0, i32 3>
  %i.gj = fmul <2 x float> %i.gi, %i.fq
  %i.gk = fadd <2 x float> %i.gj, %i.gh
  %i.gl = fmul <2 x float> %i.fc, %i.gb
  %i.gm = fadd <2 x float> %i.gl, %i.gk           ; 3 uses
  %i.gn = shufflevector <2 x float> %.sroa.6202.0, <2 x float> %.sroa.0200.0, <2 x i32> <i32 0, i32 3>
  %i.go = fmul <2 x float> %i.gn, %i.fq
  %i.gp = shufflevector <2 x float> %.sroa.6202.0, <2 x float> %.sroa.0200.0, <2 x i32> <i32 1, i32 2>
  %i.gq = fmul <2 x float> %i.gp, %i.fu
  %i.gr = fadd <2 x float> %i.go, %i.gq
  %i.gs = shufflevector <2 x float> %i.fc, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gt = fmul <2 x float> %i.gs, %i.gb
  %i.gu = fadd <2 x float> %i.gt, %i.gr           ; 3 uses
  %i.gv = fmul <2 x float> %.sroa.8204.0, %i.fq
  %i.gw = shufflevector <2 x float> %.sroa.8204.0, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gx = fmul <2 x float> %i.gw, %i.fu
  %i.gy = fadd <2 x float> %i.gv, %i.gx
  %i.gz = insertelement <2 x float> poison, float %.sroa.9205.0, i64 0
  %i.ha = shufflevector <2 x float> %i.gz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hb = fmul <2 x float> %i.ha, %i.gb
  %i.hc = fadd <2 x float> %i.hb, %i.gy           ; 3 uses
  %i.hd = extractelement <2 x float> %i.fu, i64 1
  %i.he = shufflevector <2 x float> %i.fu, <2 x float> %i.fq, <2 x i32> <i32 1, i32 3>
  %i.hf = fmul <2 x float> %i.he, %i.gm
  %i.hg = shufflevector <2 x float> %i.fq, <2 x float> %i.fu, <2 x i32> <i32 1, i32 3>
  %i.hh = fmul <2 x float> %i.hg, %i.gu
  %i.hi = fadd <2 x float> %i.hf, %i.hh
  %i.hj = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hk = fmul <2 x float> %i.hj, %i.hc
  %i.hl = fadd <2 x float> %i.hk, %i.hi
  %i.hm = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hn = shufflevector <2 x float> %i.fq, <2 x float> %i.fu, <2 x i32> <i32 0, i32 2>
  %i.ho = fmul <2 x float> %i.hn, %i.gm
  %i.hp = shufflevector <2 x float> %i.fu, <2 x float> %i.fq, <2 x i32> <i32 0, i32 2>
  %i.hq = fmul <2 x float> %i.hp, %i.gu
  %i.hr = fadd <2 x float> %i.ho, %i.hq
  %i.hs = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ht = fmul <2 x float> %i.hs, %i.hc
  %i.hu = fadd <2 x float> %i.ht, %i.hr
  %i.hv = shufflevector <2 x float> %i.hu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hw = shufflevector <2 x float> %.sroa.8204.0, <2 x float> %.sroa.6202.0, <4 x i32> <i32 0, i32 3, i32 2, i32 poison>
  %i.hx = shufflevector <2 x float> %.sroa.0200.0, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.hy = shufflevector <4 x float> %i.hw, <4 x float> %i.hx, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.hz = fmul <4 x float> %i.hy, %i.gf
  %i.ia = shufflevector <2 x float> %.sroa.8204.0, <2 x float> %.sroa.6202.0, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.ib = shufflevector <4 x float> %i.ia, <4 x float> %i.fd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.ic = shufflevector <2 x float> %i.fz, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.id = fmul <4 x float> %i.ib, %i.ic
  %i.ie = fadd <4 x float> %i.hz, %i.id
  %i.if = shufflevector <2 x float> %i.fc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 1, i32 0>
  %i.ig = insertelement <4 x float> %i.if, float %.sroa.9205.0, i64 0
  %i.ih = insertelement <4 x float> poison, float %i.ge, i64 0
  %i.ii = shufflevector <4 x float> %i.ih, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ij = fmul <4 x float> %i.ig, %i.ii
  %i.ik = fadd <4 x float> %i.ij, %i.ie           ; 3 uses
  %i.il = extractelement <4 x float> %i.ik, i64 3
  %i.im = fmul float %i.hd, %i.il
  %i.in = shufflevector <2 x float> %i.gb, <2 x float> %i.fq, <4 x i32> <i32 1, i32 3, i32 poison, i32 2>
  %i.io = shufflevector <4 x float> %i.in, <4 x float> %i.fv, <4 x i32> <i32 0, i32 1, i32 4, i32 3>
  %i.ip = fmul <4 x float> %i.io, %i.ik           ; 4 uses
  %i.iq = extractelement <4 x float> %i.ip, i64 1
  %i.ir = fadd float %i.im, %i.iq
  %i.is = extractelement <4 x float> %i.ip, i64 0
  %i.it = fadd float %i.is, %i.ir
  %shift303 = shufflevector <4 x float> %i.ip, <4 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 3, i32 poison>
  %foldExtExtBinop304 = fadd <4 x float> %shift303, %i.ip
  %i.iu = fmul <2 x float> %i.fz, %i.gm
  %i.iv = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.iw = fmul <2 x float> %i.iv, %i.gu
  %i.ix = fadd <2 x float> %i.iu, %i.iw
  %i.iy = insertelement <2 x float> poison, float %i.ge, i64 0
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = fmul <2 x float> %i.iz, %i.hc
  %i.jb = fadd <2 x float> %i.ja, %i.ix
  %i.jc = shufflevector <2 x float> %i.jb, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.jd = shufflevector <2 x float> %i.gb, <2 x float> %i.fz, <4 x i32> <i32 0, i32 3, i32 poison, i32 2>
  %i.je = insertelement <4 x float> %i.jd, float %i.ge, i64 2
  %i.jf = shufflevector <4 x float> %i.ik, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 3>
  %i.jg = fmul <4 x float> %i.je, %i.jf           ; 4 uses
  %shift306.a = shufflevector <4 x float> %foldExtExtBinop304, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop307 = fadd <4 x float> %i.jg, %shift306.a
  %i.jh = extractelement <4 x float> %foldExtExtBinop307, i64 0
  %shift309 = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop310 = fadd <4 x float> %shift309, %i.jg
  %shift312 = shufflevector <4 x float> %i.jg, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop313 = fadd <4 x float> %shift312, %foldExtExtBinop310
  %i.ji = extractelement <4 x float> %foldExtExtBinop313, i64 1
  store <2 x float> %i.hm, ptr %i.fi, align 4, !tbaa !84
  %.sroa.4172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 152
  store float %i.it, ptr %.sroa.4172.0..sroa_idx, align 4, !tbaa !84
  %.sroa.5173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 156
  store <2 x float> %i.hv, ptr %.sroa.5173.0..sroa_idx, align 4, !tbaa !84
  %.sroa.6174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 164
  store float %i.jh, ptr %.sroa.6174.0..sroa_idx, align 4, !tbaa !84
  %.sroa.7175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  store <2 x float> %i.jc, ptr %.sroa.7175.0..sroa_idx, align 4, !tbaa !84
  %.sroa.8176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 176
  store float %i.ji, ptr %.sroa.8176.0..sroa_idx, align 4, !tbaa !84
  br label %bb.j

bb.i:                                             ; preds = %b3GetBodyState.exit.thread
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.dt, i8 0, i64 72, i1 false)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %b3InvertT.exit
  %i.jj = load i32, ptr %i.ab, align 4, !tbaa !93
  %i.jk = and i32 %i.jj, 56
  %i.jl = icmp eq i32 %i.jk, 56
  br i1 %i.jl, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.aj, i8 0, i64 36, i1 false)
  %i.jm = getelementptr inbounds nuw i8, ptr %i.w, i64 108
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(72) %i.jm, i8 0, i64 72, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.jn = call float @b3GetLengthUnitsPerMeter() #10
  %i.jo = fmul float %i.jn, 1.000000e+05
  %i.jp = getelementptr inbounds nuw i8, ptr %i.w, i64 180 ; 3 uses
  store float %i.jo, ptr %i.jp, align 4, !tbaa !103
  %i.jq = getelementptr inbounds nuw i8, ptr %i.w, i64 184 ; 3 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.jq, i8 0, i64 12, i1 false)
  %i.jr = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.js = load i32, ptr %i.jr, align 8, !tbaa !145 ; 2 uses
  %.not106272 = icmp eq i32 %i.js, -1
  br i1 %.not106272, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.l
  %i.jt = getelementptr inbounds nuw i8, ptr %i.c, i64 4080
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 192 ; 2 uses
  %.8..8..8..8..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.4..4..4..4..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 4
  br label %bb.m

bb.m:                                             ; preds = %.lr.ph, %bb.m
  %.0273 = phi i32 [ %i.js, %.lr.ph ], [ %i.kk, %bb.m ]
  %i.ju = load ptr, ptr %i.jt, align 8, !tbaa !135
  %i.jv = sext i32 %.0273 to i64
  %i.jw = getelementptr inbounds [232 x i8], ptr %i.ju, i64 %i.jv ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.jx = call { <2 x float>, <2 x float> } @b3ComputeShapeExtent(ptr noundef %i.jw, <2 x float> %.sroa.050.0.copyload, float %.sroa.251.0.copyload) #10 ; 2 uses
  %i.jy = extractvalue { <2 x float>, <2 x float> } %i.jx, 0 ; 2 uses
  store <2 x float> %i.jy, ptr %3, align 8
  %i.jz = extractvalue { <2 x float>, <2 x float> } %i.jx, 1 ; 2 uses
  store <2 x float> %i.jz, ptr %.8..8..8..8..sroa_idx, align 8
  %i.ka = load float, ptr %i.jp, align 4, !tbaa !103 ; 2 uses
  %i.kb = extractelement <2 x float> %i.jy, i64 0 ; 2 uses
  %i.kc = fcmp olt float %i.ka, %i.kb
  %i.kd = select i1 %i.kc, float %i.ka, float %i.kb
  store float %i.kd, ptr %i.jp, align 4, !tbaa !103
  %.sroa.03.0.copyload = load <2 x float>, ptr %i.jq, align 4 ; 2 uses
  %.sroa.24.0.copyload = load float, ptr %.sroa.24.0..sroa_idx, align 4 ; 2 uses
  %.4..4..4..4..sroa.01.0.copyload = load <2 x float>, ptr %.4..4..4..4..sroa_idx, align 4 ; 2 uses
  %i.ke = extractelement <2 x float> %i.jz, i64 1 ; 2 uses
  %i.kf = fcmp ogt <2 x float> %.sroa.03.0.copyload, %.4..4..4..4..sroa.01.0.copyload
  %i.kg = select <2 x i1> %i.kf, <2 x float> %.sroa.03.0.copyload, <2 x float> %.4..4..4..4..sroa.01.0.copyload
  %i.kh = fcmp ogt float %.sroa.24.0.copyload, %i.ke
  %i.ki = select i1 %i.kh, float %.sroa.24.0.copyload, float %i.ke
  store <2 x float> %i.kg, ptr %i.jq, align 4, !tbaa !84
  store float %i.ki, ptr %.sroa.24.0..sroa_idx, align 4, !tbaa !84
  %i.kj = getelementptr inbounds nuw i8, ptr %i.jw, i64 12
  %i.kk = load i32, ptr %i.kj, align 4, !tbaa !147 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %.not106 = icmp eq i32 %i.kk, -1
  br i1 %.not106, label %.loopexit, label %bb.m, !llvm.loop !328

.loopexit:                                        ; preds = %bb.m, %bb.l, %bb.a
  ret void
}

declare void @b3RecWrite_BodySetMassData(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3Body_GetMassData(ptr dead_on_unwind noalias nofree writable writeonly sret(%struct.b3MassData) align 4 captures(none) initializes((0, 52)) %0, i64 %1) local_unnamed_addr #4 {
bb.a:
  %.sroa.2.0.extract.shift = lshr i64 %1, 32
  %i.a = trunc nuw i64 %.sroa.2.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetWorld(i32 noundef %i.b) #10 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !68
  %i.f = shl i64 %1, 32
  %sext.i = add i64 %i.f, -4294967296
  %i.g = ashr exact i64 %sext.i, 25
  %i.h = getelementptr inbounds i8, ptr %i.e, i64 %i.g ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3920
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !69
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.l = load i32, ptr %i.k, align 8, !tbaa !72
  %i.m = sext i32 %i.l to i64
  %i.n = getelementptr inbounds [88 x i8], ptr %i.j, i64 %i.m
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !82
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !83
  %i.r = sext i32 %i.q to i64
  %i.s = getelementptr inbounds [216 x i8], ptr %i.o, i64 %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.u = load float, ptr %i.t, align 8, !tbaa !168
  store float %i.u, ptr %0, align 4, !tbaa !167
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.v, ptr noundef nonnull align 4 dereferenceable(12) %i.w, i64 12, i1 false), !tbaa.struct !101
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 68
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %i.x, ptr noundef nonnull align 4 dereferenceable(36) %i.y, i64 36, i1 false), !tbaa.struct !180
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3Body_ApplyMassFromShapes(i64 %0) local_unnamed_addr #4 {
bb.a:
  %1 = alloca %struct.b3RecArgs_BodyApplyMassFromShapes, align 8 ; 4 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #10 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #10
  store i64 %0, ptr %1, align 8
  call void @b3RecWrite_BodyApplyMassFromShapes(ptr noundef nonnull %i.f, ptr noundef nonnull %1) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !68
  %i.i = shl i64 %0, 32
  %sext.i = add i64 %i.i, -4294967296
  %i.j = ashr exact i64 %sext.i, 25
  %i.k = getelementptr inbounds i8, ptr %i.h, i64 %i.j
  call void @b3UpdateBodyMassData(ptr noundef nonnull %i.c, ptr noundef %i.k)
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  ret void
}

declare void @b3RecWrite_BodyApplyMassFromShapes(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define void @b3Body_SetLinearDamping(i64 %0, float noundef %1) local_unnamed_addr #4 {
bb.a:
  %2 = alloca %struct.b3RecArgs_BodySetLinearDamping, align 8 ; 5 uses
  %.sroa.3.0.extract.shift = lshr i64 %0, 32
  %i.a = trunc nuw i64 %.sroa.3.0.extract.shift to i32
  %i.b = and i32 %i.a, 65535
  %i.c = tail call ptr @b3GetUnlockedWorld(i32 noundef %i.b) #10 ; 4 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 4736
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !123  ; 2 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #10
  store i64 %0, ptr %2, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  store float %1, ptr %i.g, align 8, !tbaa !182
  call void @b3RecWrite_BodySetLinearDamping(ptr noundef nonnull %i.f, ptr noundef nonnull %2) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #10
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 3880
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !68
  %i.j = shl i64 %0, 32
  %sext.i = add i64 %i.j, -4294967296
  %i.k = ashr exact i64 %sext.i, 25
end_hunk_2
