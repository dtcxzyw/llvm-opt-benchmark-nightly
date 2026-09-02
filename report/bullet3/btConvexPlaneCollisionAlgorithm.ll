Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexPlaneCollisionAlgorithm?download=true
inline.NumInlined: 310
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionPK24btCollisionObjectWrapperS5_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.co = load float, ptr %i.ab, align 4, !tbaa !35 ; 4 uses
  %i.cp = load float, ptr %i.aa, align 4, !tbaa !35 ; 5 uses
  %i.cq = fmul float %i.cp, %i.cp
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float %i.cq)
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.co, float %i.co, float %i.cr)
  %i.ct = tail call noundef float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %i.cs)
  %i.cu = fdiv float 2.000000e+00, %i.ct          ; 3 uses
  %i.cv = fmul float %i.cn, %i.cu                 ; 2 uses
  %i.cw = fmul float %i.cp, %i.cu                 ; 3 uses
  %i.cx = fmul float %i.ad, %i.cv                 ; 2 uses
  %i.cy = fmul float %i.ad, %i.cw                 ; 2 uses
  %i.cz = fmul float %i.cn, %i.cv                 ; 2 uses
  %i.da = fmul float %i.cn, %i.cw                 ; 2 uses
  %i.db = fmul float %i.co, %i.cu                 ; 4 uses
  %i.dc = fmul float %i.cp, %i.cw                 ; 2 uses
  %i.dd = fmul float %i.cp, %i.db                 ; 2 uses
  %i.de = fmul float %i.cn, %i.db                 ; 2 uses
  %i.df = fmul float %i.co, %i.db                 ; 2 uses
  %i.dg = fmul float %i.ad, %i.db                 ; 2 uses
  %i.dh = fadd float %i.dc, %i.df
  %i.di = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.da, i64 1
  %i.dj = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dk = insertelement <2 x float> %i.dj, float %i.dg, i64 1
  %i.dl = fsub <2 x float> %i.di, %i.dk           ; 3 uses
  %i.dm = fadd float %i.de, %i.cy                 ; 3 uses
  %i.dn = fadd float %i.cz, %i.df
  %i.do = fsub float 1.000000e+00, %i.dn
  %i.dp = fadd float %i.da, %i.dg
  %i.dq = fsub float %i.dd, %i.cx                 ; 3 uses
  %i.dr = fadd float %i.dd, %i.cx
  %i.ds = fsub float %i.de, %i.cy
  %i.dt = fadd float %i.cz, %i.dc
  %i.du = fsub float 1.000000e+00, %i.dt          ; 3 uses
  %i.dv = insertelement <2 x float> poison, float %.sroa.7163.0.copyload, i64 0
  %i.dw = shufflevector <2 x float> %i.dv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dx = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.do, i64 1 ; 3 uses
  %i.dz = fmul <2 x float> %i.dw, %i.dy
  %i.ea = insertelement <2 x float> poison, float %.sroa.0160.0.copyload, i64 0
  %i.eb = shufflevector <2 x float> %i.ea, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ec = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.eb, <2 x float> %i.dz)
  %i.ed = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %i.dr, i64 1 ; 3 uses
  %i.ef = insertelement <2 x float> poison, float %.sroa.11166.0.copyload, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.eg, <2 x float> %i.ec) ; 3 uses
  %i.ei = fmul float %.sroa.7163.0.copyload, %i.dq
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.dm, float %.sroa.0160.0.copyload, float %i.ei)
  %i.ek = tail call noundef float @llvm.fmuladd.f32(float %i.du, float %.sroa.11166.0.copyload, float %i.ej) ; 3 uses
  %i.el = insertelement <2 x float> poison, float %.sroa.21.16.copyload, i64 0
  %i.em = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer
  %i.en = fmul <2 x float> %i.em, %i.dy
  %i.eo = insertelement <2 x float> poison, float %.sroa.16170.16.copyload, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.ep, <2 x float> %i.en)
  %i.er = insertelement <2 x float> poison, float %.sroa.25.16.copyload, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.es, <2 x float> %i.eq) ; 3 uses
  %i.eu = fmul float %.sroa.21.16.copyload, %i.dq
  %i.ev = tail call float @llvm.fmuladd.f32(float %i.dm, float %.sroa.16170.16.copyload, float %i.eu)
  %i.ew = tail call noundef float @llvm.fmuladd.f32(float %i.du, float %.sroa.25.16.copyload, float %i.ev) ; 3 uses
  %i.ex = insertelement <2 x float> poison, float %.sroa.35.32.copyload, i64 0
  %i.ey = shufflevector <2 x float> %i.ex, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = fmul <2 x float> %i.ey, %i.dy
  %i.fa = insertelement <2 x float> poison, float %.sroa.30.32.copyload, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.fb, <2 x float> %i.ez)
  %i.fd = insertelement <2 x float> poison, float %.sroa.39.32.copyload, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.fe, <2 x float> %i.fc) ; 3 uses
  %i.fg = fmul float %.sroa.35.32.copyload, %i.dq
  %i.fh = tail call float @llvm.fmuladd.f32(float %i.dm, float %.sroa.30.32.copyload, float %i.fg)
  %i.fi = tail call noundef float @llvm.fmuladd.f32(float %i.du, float %.sroa.39.32.copyload, float %i.fh) ; 3 uses
  %i.fj = insertelement <2 x float> poison, float %i.al, i64 0
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fl = fmul <2 x float> %i.fk, %i.et
  %i.fm = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fn, <2 x float> %i.eh, <2 x float> %i.fl)
  %i.fp = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fq, <2 x float> %i.ff, <2 x float> %i.fo)
  %i.fs = shufflevector <3 x float> %i.aj, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ft = fmul <2 x float> %i.fs, %i.et
  %i.fu = shufflevector <3 x float> %i.ag, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fu, <2 x float> %i.eh, <2 x float> %i.ft)
  %i.fw = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.ff, <2 x float> %i.fv)
  %i.fy = shufflevector <3 x float> %i.aj, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fz = fmul <2 x float> %i.fy, %i.et
  %i.ga = shufflevector <3 x float> %i.ag, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ga, <2 x float> %i.eh, <2 x float> %i.fz)
  %i.gc = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gc, <2 x float> %i.ff, <2 x float> %i.gb)
  %i.ge = fmul float %i.al, %i.ew
  %i.gf = tail call float @llvm.fmuladd.f32(float %i.ai, float %i.ek, float %i.ge)
  %i.gg = tail call noundef float @llvm.fmuladd.f32(float %i.ao, float %i.fi, float %i.gf)
  %i.gh = fmul float %i.ch, %i.ew
  %i.gi = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.ek, float %i.gh)
  %i.gj = tail call noundef float @llvm.fmuladd.f32(float %i.cj, float %i.fi, float %i.gi)
  %i.gk = fmul float %i.ck, %i.ew
  %i.gl = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.ek, float %i.gk)
  %i.gm = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.fi, float %i.gl)
  %i.gn = load <3 x float>, ptr %i.j, align 4, !tbaa !35
  %i.go = fneg <3 x float> %i.gn                  ; 6 uses
  %i.gp = shufflevector <3 x float> %i.go, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gq = fmul <2 x float> %i.fx, %i.gp
  %i.gr = shufflevector <3 x float> %i.go, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.gr, <2 x float> %i.gq)
  %i.gt = shufflevector <3 x float> %i.go, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.gt, <2 x float> %i.gs)
  %i.gv = extractelement <3 x float> %i.go, i64 1
  %i.gw = fmul float %i.gj, %i.gv
  %i.gx = extractelement <3 x float> %i.go, i64 0
  %i.gy = tail call float @llvm.fmuladd.f32(float %i.gg, float %i.gx, float %i.gw)
  %i.gz = extractelement <3 x float> %i.go, i64 2
  %i.ha = tail call noundef float @llvm.fmuladd.f32(float %i.gm, float %i.gz, float %i.gy)
  %.sroa.3.12.vec.insert.i52 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ha, i64 0
  store <2 x float> %i.gu, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i52, ptr %i.af, align 8
  %i.hb = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.hc = getelementptr inbounds nuw i8, ptr %i.hb, i64 128
  %i.hd = load ptr, ptr %i.hc, align 8
  %i.he = call { <2 x float>, <2 x float> } %i.hd(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %6) ; 2 uses
  %i.hf = extractvalue { <2 x float>, <2 x float> } %i.he, 0 ; 2 uses
  %i.hg = extractvalue { <2 x float>, <2 x float> } %i.he, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.hh = shufflevector <2 x float> %i.hf, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.hi = fmul <3 x float> %i.bn, %i.hh
  %i.hj = shufflevector <2 x float> %i.hf, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hk = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hj, <3 x float> %i.be, <3 x float> %i.hi)
  %i.hl = shufflevector <2 x float> %i.hg, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hm = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hl, <3 x float> %i.bw, <3 x float> %i.hk)
  %i.hn = fadd <3 x float> %i.cg, %i.hm           ; 4 uses
  %i.ho = load float, ptr %i.ae, align 4, !tbaa !35
  %i.hp = load <3 x float>, ptr %i.j, align 4, !tbaa !35 ; 3 uses
  %i.hq = extractelement <3 x float> %i.hn, i64 2
  %i.hr = fmul float %i.ho, %i.hq
  %i.hs = extractelement <3 x float> %i.hn, i64 1
  %i.ht = extractelement <3 x float> %i.hp, i64 0
  %i.hu = call float @llvm.fmuladd.f32(float %i.ht, float %i.hs, float %i.hr)
  %i.hv = extractelement <3 x float> %i.hn, i64 0
  %i.hw = extractelement <3 x float> %i.hp, i64 2
  %i.hx = call noundef float @llvm.fmuladd.f32(float %i.hw, float %i.hv, float %i.hu)
  %i.hy = load float, ptr %i.k, align 4, !tbaa !35
  %i.hz = fsub float %i.hx, %i.hy                 ; 3 uses
  %i.ia = load ptr, ptr %i.q, align 8, !tbaa !32, !nonnull !30, !align !33 ; 9 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.ia, i64 16
  %i.ic = getelementptr inbounds nuw i8, ptr %i.ia, i64 32
  %i.id = load <2 x float>, ptr %i.ia, align 4, !tbaa !35 ; 2 uses
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ia, i64 8
  %i.if = load float, ptr %i.ie, align 4, !tbaa !35
  %i.ig = load <2 x float>, ptr %i.ib, align 4, !tbaa !35 ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ia, i64 24
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !35
  %i.ij = load float, ptr %i.ic, align 4, !tbaa !35
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ia, i64 36
  %i.il = load float, ptr %i.ik, align 4, !tbaa !35
  %i.im = getelementptr inbounds nuw i8, ptr %i.ia, i64 40
  %i.in = load float, ptr %i.im, align 4, !tbaa !35
  %i.io = getelementptr inbounds nuw i8, ptr %i.ia, i64 48
  %i.ip = load <2 x float>, ptr %i.io, align 4, !tbaa !35
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ia, i64 56
  %i.ir = load float, ptr %i.iq, align 4, !tbaa !35
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !18
  %i.iu = call noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(880) %i.it)
  %i.iv = fcmp olt float %i.hz, %i.iu
  %i.iw = load ptr, ptr %i.is, align 8, !tbaa !18
  %i.ix = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.iw, ptr %i.ix, align 8, !tbaa !38
  br i1 %i.iv, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.iy = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %i.iz = insertelement <3 x float> poison, float %i.hz, i64 0
  %i.ja = shufflevector <3 x float> %i.hp, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.jb = shufflevector <3 x float> %i.iz, <3 x float> poison, <3 x i32> zeroinitializer
  %i.jc = fmul <3 x float> %i.ja, %i.jb
  %i.jd = fsub <3 x float> %i.hn, %i.jc           ; 6 uses
  %i.je = extractelement <3 x float> %i.jd, i64 2
  %i.jf = fmul float %i.je, %i.il
  %i.jg = extractelement <3 x float> %i.jd, i64 1
  %i.jh = call float @llvm.fmuladd.f32(float %i.jg, float %i.ij, float %i.jf)
  %i.ji = extractelement <3 x float> %i.jd, i64 0
  %i.jj = call noundef float @llvm.fmuladd.f32(float %i.ji, float %i.in, float %i.jh)
  %i.jk = fadd float %i.jj, %i.ir
  %.sroa.3.12.vec.insert.i4.i.i62 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jk, i64 0
  %i.jl = shufflevector <2 x float> %i.id, <2 x float> %i.ig, <2 x i32> <i32 1, i32 3>
  %i.jm = shufflevector <3 x float> %i.jd, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jn = fmul <2 x float> %i.jl, %i.jm
  %i.jo = shufflevector <3 x float> %i.jd, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jp = shufflevector <2 x float> %i.id, <2 x float> %i.ig, <2 x i32> <i32 0, i32 2>
  %i.jq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jo, <2 x float> %i.jp, <2 x float> %i.jn)
  %i.jr = shufflevector <3 x float> %i.jd, <3 x float> poison, <2 x i32> zeroinitializer
  %i.js = insertelement <2 x float> poison, float %i.if, i64 0
  %i.jt = insertelement <2 x float> %i.js, float %i.ii, i64 1
  %i.ju = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.jt, <2 x float> %i.jq)
  %i.jv = fadd <2 x float> %i.ju, %i.ip
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.jw = load ptr, ptr %i.q, align 8, !tbaa !32, !nonnull !30, !align !33 ; 9 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.jw, i64 4
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 8
  %i.jy = load float, ptr %i.jx, align 4, !tbaa !35
  %10 = getelementptr inbounds nuw i8, ptr %i.jw, i64 16
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jw, i64 20
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jw, i64 24
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !35
  %i.kc = load <2 x float>, ptr %i.jw, align 4, !tbaa !35
  %11 = load float, ptr %9, align 4, !tbaa !35
  %i.kd = load float, ptr %i.ae, align 4, !tbaa !35 ; 3 uses
  %i.ke = load float, ptr %i.j, align 4, !tbaa !35 ; 2 uses
  %i.kf = load float, ptr %i.iy, align 4, !tbaa !35 ; 2 uses
  %i.kg = load <2 x float>, ptr %10, align 4, !tbaa !35
  %12 = load float, ptr %i.jz, align 4, !tbaa !35
  %13 = fmul float %i.kd, %12
  %14 = fmul float %11, %i.kd
  %15 = shufflevector <2 x float> %i.kc, <2 x float> %i.kg, <2 x i32> <i32 0, i32 2>
  %16 = insertelement <2 x float> poison, float %i.ke, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kh = insertelement <2 x float> poison, float %14, i64 0
  %18 = insertelement <2 x float> %i.kh, float %13, i64 1
  %i.ki = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %17, <2 x float> %18)
  %i.kj = insertelement <2 x float> poison, float %i.jy, i64 0
  %i.kk = insertelement <2 x float> %i.kj, float %i.kb, i64 1
  %i.kl = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.km, <2 x float> %i.ki)
  %i.ko = getelementptr inbounds nuw i8, ptr %i.jw, i64 32
  %i.kp = load float, ptr %i.ko, align 4, !tbaa !35
  %i.kq = getelementptr inbounds nuw i8, ptr %i.jw, i64 36
  %i.kr = load float, ptr %i.kq, align 4, !tbaa !35
  %i.ks = fmul float %i.kd, %i.kr
  %i.kt = call float @llvm.fmuladd.f32(float %i.kp, float %i.ke, float %i.ks)
  %i.ku = getelementptr inbounds nuw i8, ptr %i.jw, i64 40
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !35
  %i.kw = call noundef float @llvm.fmuladd.f32(float %i.kv, float %i.kf, float %i.kt)
  %.sroa.3.12.vec.insert.i65 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kw, i64 0
  store <2 x float> %i.kn, ptr %7, align 8
  %i.kx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i65, ptr %i.kx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  store <2 x float> %i.jv, ptr %8, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i62, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !39
  %i.ky = load ptr, ptr %5, align 8, !tbaa !10
  %i.kz = getelementptr inbounds nuw i8, ptr %i.ky, i64 32
  %i.la = load ptr, ptr %i.kz, align 8
  call void %i.la(ptr noundef nonnull align 8 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, float noundef %i.hz)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(880)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN31btConvexPlaneCollisionAlgorithm16processCollisionEPK24btCollisionObjectWrapperS2_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef %4) unnamed_addr #7 align 2 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 5 uses
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !19, !range !29, !noundef !30
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.e, ptr %2, ptr %1           ; 2 uses
  %i.g = select i1 %i.e, ptr %1, ptr %2           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 68 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 84
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !32, !nonnull !30, !align !33 ; 12 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 4
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 20
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 36
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %i.x = load float, ptr %i.o, align 4, !tbaa !35, !noalias !57
  %i.y = load float, ptr %i.p, align 4, !tbaa !35, !noalias !57
  %i.z = load float, ptr %i.q, align 4, !tbaa !35, !noalias !57
  %i.aa = load float, ptr %i.r, align 4, !tbaa !35, !noalias !57
  %i.ab = load float, ptr %i.s, align 4, !tbaa !35, !noalias !57
  %i.ac = load float, ptr %i.t, align 4, !tbaa !35, !noalias !57
  %i.ad = load float, ptr %i.u, align 4, !tbaa !35, !noalias !57
  %i.ae = load float, ptr %i.v, align 4, !tbaa !35, !noalias !57
  %i.af = load float, ptr %i.w, align 4, !tbaa !35, !noalias !57
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !35, !noalias !58
  %i.ai = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !35, !noalias !58
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  %i.al = load float, ptr %i.ak, align 4, !tbaa !35, !noalias !58
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 3 uses
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32, !nonnull !30, !align !33 ; 5 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  %i.ap = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.aq = getelementptr inbounds nuw i8, ptr %i.an, i64 48
  %i.ar = load float, ptr %i.aq, align 4, !tbaa !35, !noalias !59
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 52
  %i.at = fneg float %i.ar
  %i.au = load <2 x float>, ptr %i.as, align 4, !tbaa !35, !noalias !59
  %i.av = fneg <2 x float> %i.au                  ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 76 ; 3 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.az = load <3 x float>, ptr %i.an, align 4, !tbaa !35, !noalias !60
  %i.ba = shufflevector <3 x float> %i.az, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 5 uses
  %i.bb = load <3 x float>, ptr %i.ao, align 4, !tbaa !35, !noalias !60
  %i.bc = shufflevector <3 x float> %i.bb, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 5 uses
  %i.bd = insertelement <3 x float> poison, float %i.y, i64 0
  %i.be = shufflevector <3 x float> %i.bd, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bf = fmul <3 x float> %i.be, %i.bc
  %i.bg = insertelement <3 x float> poison, float %i.x, i64 0
  %i.bh = shufflevector <3 x float> %i.bg, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bi = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ba, <3 x float> %i.bh, <3 x float> %i.bf)
  %i.bj = load <3 x float>, ptr %i.ap, align 4, !tbaa !35, !noalias !60
  %i.bk = shufflevector <3 x float> %i.bj, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 5 uses
  %i.bl = insertelement <3 x float> poison, float %i.z, i64 0
  %i.bm = shufflevector <3 x float> %i.bl, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bk, <3 x float> %i.bm, <3 x float> %i.bi) ; 4 uses
  %i.bo = insertelement <3 x float> poison, float %i.ab, i64 0
  %i.bp = shufflevector <3 x float> %i.bo, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bq = fmul <3 x float> %i.bp, %i.bc
  %i.br = insertelement <3 x float> poison, float %i.aa, i64 0
  %i.bs = shufflevector <3 x float> %i.br, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bt = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ba, <3 x float> %i.bs, <3 x float> %i.bq)
  %i.bu = insertelement <3 x float> poison, float %i.ac, i64 0
  %i.bv = shufflevector <3 x float> %i.bu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bk, <3 x float> %i.bv, <3 x float> %i.bt) ; 4 uses
  %i.bx = insertelement <3 x float> poison, float %i.ae, i64 0
  %i.by = shufflevector <3 x float> %i.bx, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bz = fmul <3 x float> %i.by, %i.bc
  %i.ca = insertelement <3 x float> poison, float %i.ad, i64 0
  %i.cb = shufflevector <3 x float> %i.ca, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cc = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ba, <3 x float> %i.cb, <3 x float> %i.bz)
  %i.cd = insertelement <3 x float> poison, float %i.af, i64 0
  %i.ce = shufflevector <3 x float> %i.cd, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bk, <3 x float> %i.ce, <3 x float> %i.cc) ; 4 uses
  %i.cg = shufflevector <2 x float> %i.av, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ch = fmul <3 x float> %i.bc, %i.cg
  %i.ci = insertelement <3 x float> poison, float %i.at, i64 0
  %i.cj = shufflevector <3 x float> %i.ci, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ck = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ba, <3 x float> %i.cj, <3 x float> %i.ch)
  %i.cl = shufflevector <2 x float> %i.av, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.cm = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bk, <3 x float> %i.cl, <3 x float> %i.ck)
  %i.cn = insertelement <3 x float> poison, float %i.aj, i64 0
  %i.co = shufflevector <3 x float> %i.cn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cp = fmul <3 x float> %i.co, %i.bc
  %i.cq = insertelement <3 x float> poison, float %i.ah, i64 0
  %i.cr = shufflevector <3 x float> %i.cq, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cs = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cr, <3 x float> %i.ba, <3 x float> %i.cp)
  %i.ct = insertelement <3 x float> poison, float %i.al, i64 0
  %i.cu = shufflevector <3 x float> %i.ct, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cv = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.cu, <3 x float> %i.bk, <3 x float> %i.cs)
  %i.cw = fadd <3 x float> %i.cv, %i.cm
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  %i.cx = load <3 x float>, ptr %i.l, align 4, !tbaa !35
  %i.cy = fneg <3 x float> %i.cx                  ; 6 uses
  %i.cz = shufflevector <3 x float> %i.cy, <3 x float> poison, <3 x i32> <i32 poison, i32 poison, i32 1>
  %i.da = shufflevector <3 x float> %i.bn, <3 x float> %i.bw, <2 x i32> <i32 2, i32 5>
  %i.db = shufflevector <3 x float> %i.cy, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dc = fmul <2 x float> %i.da, %i.db
  %i.dd = shufflevector <3 x float> %i.bn, <3 x float> %i.bw, <2 x i32> <i32 1, i32 4>
  %i.de = shufflevector <3 x float> %i.cy, <3 x float> poison, <2 x i32> zeroinitializer
  %i.df = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dd, <2 x float> %i.de, <2 x float> %i.dc)
  %i.dg = shufflevector <3 x float> %i.bn, <3 x float> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.dh = shufflevector <3 x float> %i.cy, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.di = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dg, <2 x float> %i.dh, <2 x float> %i.df)
  %foldExtExtBinop = fmul <3 x float> %i.cf, %i.cz
  %i.dj = extractelement <3 x float> %foldExtExtBinop, i64 2
  %i.dk = extractelement <3 x float> %i.cf, i64 1
  %i.dl = extractelement <3 x float> %i.cy, i64 0
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.dl, float %i.dj)
  %i.dn = extractelement <3 x float> %i.cf, i64 0
  %i.do = extractelement <3 x float> %i.cy, i64 2
  %i.dp = tail call noundef float @llvm.fmuladd.f32(float %i.dn, float %i.do, float %i.dm)
  %.sroa.3.12.vec.insert.i68 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dp, i64 0
  store <2 x float> %i.di, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i68, ptr %i.ay, align 8
  %i.dq = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 128
  %i.ds = load ptr, ptr %i.dr, align 8
  %i.dt = call { <2 x float>, <2 x float> } %i.ds(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %5) ; 2 uses
  %i.du = extractvalue { <2 x float>, <2 x float> } %i.dt, 0 ; 2 uses
  %i.dv = extractvalue { <2 x float>, <2 x float> } %i.dt, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.dw = shufflevector <2 x float> %i.du, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.dx = fmul <3 x float> %i.bw, %i.dw
  %i.dy = shufflevector <2 x float> %i.du, <2 x float> poison, <3 x i32> zeroinitializer
  %i.dz = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.dy, <3 x float> %i.bn, <3 x float> %i.dx)
  %i.ea = shufflevector <2 x float> %i.dv, <2 x float> poison, <3 x i32> zeroinitializer
  %i.eb = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ea, <3 x float> %i.cf, <3 x float> %i.dz)
  %i.ec = fadd <3 x float> %i.cw, %i.eb           ; 4 uses
  %i.ed = load float, ptr %i.aw, align 4, !tbaa !35
  %i.ee = load <3 x float>, ptr %i.l, align 4, !tbaa !35 ; 3 uses
  %i.ef = extractelement <3 x float> %i.ec, i64 2
  %i.eg = fmul float %i.ed, %i.ef
  %i.eh = extractelement <3 x float> %i.ec, i64 1
  %i.ei = extractelement <3 x float> %i.ee, i64 0
  %i.ej = call float @llvm.fmuladd.f32(float %i.ei, float %i.eh, float %i.eg)
  %i.ek = extractelement <3 x float> %i.ec, i64 0
  %i.el = extractelement <3 x float> %i.ee, i64 2
  %i.em = call noundef float @llvm.fmuladd.f32(float %i.el, float %i.ek, float %i.ej)
  %i.en = load float, ptr %i.m, align 4, !tbaa !35
  %i.eo = fsub float %i.em, %i.en                 ; 3 uses
  %i.ep = load ptr, ptr %i.am, align 8, !tbaa !32, !nonnull !30, !align !33 ; 9 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.ep, i64 32
  %i.es = load <2 x float>, ptr %i.ep, align 4, !tbaa !35 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 8
  %i.eu = load float, ptr %i.et, align 4, !tbaa !35
  %i.ev = load <2 x float>, ptr %i.eq, align 4, !tbaa !35 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ep, i64 24
  %i.ex = load float, ptr %i.ew, align 4, !tbaa !35
  %i.ey = load float, ptr %i.er, align 4, !tbaa !35
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ep, i64 36
  %i.fa = load float, ptr %i.ez, align 4, !tbaa !35
  %i.fb = getelementptr inbounds nuw i8, ptr %i.ep, i64 40
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !35
  %i.fd = getelementptr inbounds nuw i8, ptr %i.ep, i64 48
  %i.fe = load <2 x float>, ptr %i.fd, align 4, !tbaa !35
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ep, i64 56
  %i.fg = load float, ptr %i.ff, align 4, !tbaa !35
  %i.fh = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fi = call noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(880) %i.fh)
  %i.fj = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fk = load float, ptr %i.fj, align 8, !tbaa !61
  %i.fl = fadd float %i.fi, %i.fk
  %i.fm = fcmp olt float %i.eo, %i.fl
  %i.fn = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.fn, ptr %i.fo, align 8, !tbaa !38
  br i1 %i.fm, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fp = insertelement <3 x float> poison, float %i.eo, i64 0
  %i.fq = shufflevector <3 x float> %i.ee, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.fr = shufflevector <3 x float> %i.fp, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fs = fmul <3 x float> %i.fq, %i.fr
  %i.ft = fsub <3 x float> %i.ec, %i.fs           ; 6 uses
  %i.fu = extractelement <3 x float> %i.ft, i64 2
  %i.fv = fmul float %i.fu, %i.fa
  %i.fw = extractelement <3 x float> %i.ft, i64 1
  %i.fx = call float @llvm.fmuladd.f32(float %i.fw, float %i.ey, float %i.fv)
  %i.fy = extractelement <3 x float> %i.ft, i64 0
  %i.fz = call noundef float @llvm.fmuladd.f32(float %i.fy, float %i.fc, float %i.fx)
  %i.ga = fadd float %i.fz, %i.fg
  %.sroa.3.12.vec.insert.i4.i.i78 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ga, i64 0
  %i.gb = shufflevector <2 x float> %i.es, <2 x float> %i.ev, <2 x i32> <i32 1, i32 3>
  %i.gc = shufflevector <3 x float> %i.ft, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gd = fmul <2 x float> %i.gb, %i.gc
  %i.ge = shufflevector <3 x float> %i.ft, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gf = shufflevector <2 x float> %i.es, <2 x float> %i.ev, <2 x i32> <i32 0, i32 2>
  %i.gg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.gf, <2 x float> %i.gd)
  %i.gh = shufflevector <3 x float> %i.ft, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gi = insertelement <2 x float> poison, float %i.eu, i64 0
  %i.gj = insertelement <2 x float> %i.gi, float %i.ex, i64 1
  %i.gk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.gj, <2 x float> %i.gg)
  %i.gl = fadd <2 x float> %i.gk, %i.fe
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.gm = load ptr, ptr %i.am, align 8, !tbaa !32, !nonnull !30, !align !33 ; 9 uses
  %9 = getelementptr inbounds nuw i8, ptr %i.gm, i64 4
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.go = load float, ptr %i.gn, align 4, !tbaa !35
  %10 = getelementptr inbounds nuw i8, ptr %i.gm, i64 16
  %i.gp = getelementptr inbounds nuw i8, ptr %i.gm, i64 20
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gm, i64 24
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !35
  %i.gs = load <2 x float>, ptr %i.gm, align 4, !tbaa !35
  %11 = load float, ptr %9, align 4, !tbaa !35
  %i.gt = load float, ptr %i.aw, align 4, !tbaa !35 ; 3 uses
  %i.gu = load float, ptr %i.l, align 4, !tbaa !35 ; 2 uses
  %i.gv = load float, ptr %i.ax, align 4, !tbaa !35 ; 2 uses
  %i.gw = load <2 x float>, ptr %10, align 4, !tbaa !35
  %12 = load float, ptr %i.gp, align 4, !tbaa !35
  %13 = fmul float %i.gt, %12
  %14 = fmul float %11, %i.gt
  %15 = shufflevector <2 x float> %i.gs, <2 x float> %i.gw, <2 x i32> <i32 0, i32 2>
  %16 = insertelement <2 x float> poison, float %i.gu, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gx = insertelement <2 x float> poison, float %14, i64 0
  %18 = insertelement <2 x float> %i.gx, float %13, i64 1
  %i.gy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %17, <2 x float> %18)
  %i.gz = insertelement <2 x float> poison, float %i.go, i64 0
  %i.ha = insertelement <2 x float> %i.gz, float %i.gr, i64 1
  %i.hb = insertelement <2 x float> poison, float %i.gv, i64 0
  %i.hc = shufflevector <2 x float> %i.hb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ha, <2 x float> %i.hc, <2 x float> %i.gy)
  %i.he = getelementptr inbounds nuw i8, ptr %i.gm, i64 32
  %i.hf = load float, ptr %i.he, align 4, !tbaa !35
  %i.hg = getelementptr inbounds nuw i8, ptr %i.gm, i64 36
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !35
  %i.hi = fmul float %i.gt, %i.hh
  %i.hj = call float @llvm.fmuladd.f32(float %i.hf, float %i.gu, float %i.hi)
  %i.hk = getelementptr inbounds nuw i8, ptr %i.gm, i64 40
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !35
  %i.hm = call noundef float @llvm.fmuladd.f32(float %i.hl, float %i.gv, float %i.hj)
  %.sroa.3.12.vec.insert.i81 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hm, i64 0
  store <2 x float> %i.hd, ptr %6, align 8
  %i.hn = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i81, ptr %i.hn, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store <2 x float> %i.gl, ptr %7, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i78, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !39
  %i.ho = load ptr, ptr %4, align 8, !tbaa !10
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 32
  %i.hq = load ptr, ptr %i.hp, align 8
  call void %i.hq(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.eo)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.hr = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.hs = load i32, ptr %i.hr, align 8, !tbaa !63
  %i.ht = icmp slt i32 %i.hs, 7
  br i1 %i.ht, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.hu = load ptr, ptr %i.fo, align 8, !tbaa !38
  %i.hv = getelementptr inbounds nuw i8, ptr %i.hu, i64 856
  %i.hw = load i32, ptr %i.hv, align 8, !tbaa !66
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.hy = load i32, ptr %i.hx, align 8, !tbaa !21
  %i.hz = icmp slt i32 %i.hw, %i.hy
  br i1 %i.hz, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.ia = load float, ptr %i.ax, align 4, !tbaa !35 ; 4 uses
  %i.ib = call noundef float @llvm.fabs.f32(float %i.ia)
  %i.ic = fcmp ogt float %i.ib, f0x3F3504F3
  br i1 %i.ic, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.id = load float, ptr %i.aw, align 4, !tbaa !35 ; 3 uses
  %i.ie = fmul nnan float %i.ia, %i.ia
  %i.if = call float @llvm.fmuladd.f32(float %i.id, float %i.id, float %i.ie)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.if)
  %i.ig = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.ih = fneg float %i.ia
  %i.ii = fmul float %i.ig, %i.ih
  %i.ij = fmul float %i.id, %i.ig
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

bb.h:                                             ; preds = %bb.f
  %i.ik = load float, ptr %i.l, align 4, !tbaa !35 ; 3 uses
  %i.il = load float, ptr %i.aw, align 4, !tbaa !35 ; 3 uses
  %i.im = fmul float %i.il, %i.il
  %i.in = call float @llvm.fmuladd.f32(float %i.ik, float %i.ik, float %i.im)
  %sqrt43.i = call float @llvm.sqrt.f32(float %i.in)
  %i.io = fdiv float 1.000000e+00, %sqrt43.i      ; 2 uses
  %i.ip = fneg float %i.il
  %i.iq = fmul float %i.io, %i.ip
  %i.ir = fmul float %i.ik, %i.io
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit:   ; preds = %bb.g, %bb.h
  %.sroa.10.0 = phi float [ %i.ij, %bb.g ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %.sroa.6119.0 = phi float [ %i.ii, %bb.g ], [ %i.ir, %bb.h ] ; 3 uses
  %.sroa.0117.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.iq, %bb.h ] ; 3 uses
  %i.is = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.it = getelementptr inbounds nuw i8, ptr %i.is, i64 32
  %i.iu = load ptr, ptr %i.it, align 8
  %i.iv = call noundef float %i.iu(ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  %i.iw = load float, ptr @gContactBreakingThreshold, align 4, !tbaa !35
  %i.ix = fdiv float %i.iw, %i.iv                 ; 2 uses
  %i.iy = fcmp ogt float %i.ix, f0x3EC90FDB
  %spec.store.select = select i1 %i.iy, float f0x3EC90FDB, float %i.ix
  %i.iz = fmul float %.sroa.6119.0, %.sroa.6119.0
  %i.ja = call float @llvm.fmuladd.f32(float %.sroa.0117.0, float %.sroa.0117.0, float %i.iz)
  %i.jb = call noundef float @llvm.fmuladd.f32(float %.sroa.10.0, float %.sroa.10.0, float %i.ja)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.jb)
  %i.jc = fmul float %spec.store.select, 5.000000e-01 ; 2 uses
  %i.jd = call noundef float @sinf(float noundef %i.jc) #12
  %i.je = fdiv float %i.jd, %sqrt.i.i.i           ; 2 uses
  %i.jf = fmul float %.sroa.6119.0, %i.je         ; 4 uses
  %i.jg = insertelement <2 x float> poison, float %i.je, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = insertelement <2 x float> poison, float %.sroa.10.0, i64 0
  %i.jj = insertelement <2 x float> %i.ji, float %.sroa.0117.0, i64 1
  %i.jk = fmul <2 x float> %i.jj, %i.jh           ; 5 uses
  %i.jl = call noundef float @cosf(float noundef %i.jc) #12 ; 3 uses
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.jn = load i32, ptr %i.jm, align 4, !tbaa !20 ; 2 uses
  %i.jo = icmp sgt i32 %i.jn, 0
  br i1 %i.jo, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit
  %i.jp = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jq = insertelement <2 x float> poison, float %i.jf, i64 1
  %i.jr = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.js = insertelement <2 x float> %i.jr, float %i.jf, i64 0
  %i.jt = insertelement <2 x float> poison, float %i.jl, i64 0
  %i.ju = shufflevector <2 x float> %i.jt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jv = extractelement <2 x float> %i.jk, i64 0 ; 2 uses
  %i.jw = extractelement <2 x float> %i.jk, i64 1 ; 2 uses
  %i.jx = shufflevector <2 x float> %i.jq, <2 x float> %i.jk, <2 x i32> <i32 3, i32 1>
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %i.jy = phi i32 [ %i.jn, %.lr.ph ], [ %i.mq, %bb.i ]
  %.0212 = phi i32 [ 0, %.lr.ph ], [ %i.mp, %bb.i ] ; 2 uses
  %i.jz = uitofp nneg i32 %.0212 to float
  %i.ka = sitofp i32 %i.jy to float
  %i.kb = fdiv nnan float f0x40C90FDB, %i.ka
  %i.kc = fmul float %i.kb, %i.jz
  %i.kd = fmul float %i.kc, 5.000000e-01          ; 2 uses
  %i.ke = call noundef float @sinf(float noundef %i.kd) #12
  %i.kf = call noundef float @cosf(float noundef %i.kd) #12 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.kg = load <2 x float>, ptr %i.l, align 4, !tbaa !35 ; 4 uses
  %i.kh = load float, ptr %i.ax, align 4, !tbaa !35 ; 3 uses
  %foldExtExtBinop217 = fmul <2 x float> %i.kg, %i.kg
  %i.ki = extractelement <2 x float> %foldExtExtBinop217, i64 1
  %i.kj = extractelement <2 x float> %i.kg, i64 0 ; 2 uses
  %i.kk = call float @llvm.fmuladd.f32(float %i.kj, float %i.kj, float %i.ki)
  %i.kl = call noundef float @llvm.fmuladd.f32(float %i.kh, float %i.kh, float %i.kk)
  %sqrt.i.i.i84 = call noundef float @llvm.sqrt.f32(float %i.kl)
  %i.km = fdiv float %i.ke, %sqrt.i.i.i84         ; 2 uses
  %i.kn = insertelement <2 x float> poison, float %i.km, i64 0
  %i.ko = shufflevector <2 x float> %i.kn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kp = fmul <2 x float> %i.kg, %i.ko           ; 6 uses
  %i.kq = extractelement <2 x float> %i.kp, i64 0 ; 4 uses
  %i.kr = fmul float %i.kh, %i.km                 ; 8 uses
  %i.ks = fneg float %i.kq                        ; 2 uses
  %i.kt = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ku = insertelement <2 x float> %i.kt, float %i.kr, i64 0
  %i.kv = fneg <2 x float> %i.ku
  %i.kw = insertelement <2 x float> %i.kt, float %i.kr, i64 1
  %i.kx = fneg <2 x float> %i.kw                  ; 2 uses
  %i.ky = fmul float %i.jl, %i.ks
  %i.kz = fmul <2 x float> %i.ju, %i.kx
  %i.la = insertelement <2 x float> poison, float %i.kf, i64 0
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lc = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lb, <2 x float> %i.js, <2 x float> %i.kz)
  %i.ld = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kv, <2 x float> %i.jx, <2 x float> %i.lc)
  %i.le = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %i.jk, <2 x float> %i.ld) ; 3 uses
  %i.lf = extractelement <2 x float> %i.le, i64 1 ; 3 uses
  %i.lg = fmul float %i.jw, %i.kq
  %i.lh = call float @llvm.fmuladd.f32(float %i.kf, float %i.jl, float %i.lg)
  %i.li = extractelement <2 x float> %i.kp, i64 1 ; 3 uses
  %i.lj = call float @llvm.fmuladd.f32(float %i.li, float %i.jf, float %i.lh)
  %i.lk = call float @llvm.fmuladd.f32(float %i.kr, float %i.jv, float %i.lj) ; 3 uses
  %i.ll = fneg float %i.lf
  %i.lm = fneg <2 x float> %i.le                  ; 2 uses
  %i.ln = call float @llvm.fmuladd.f32(float %i.kf, float %i.jw, float %i.ky)
  %i.lo = extractelement <2 x float> %i.kx, i64 0
  %i.lp = call float @llvm.fmuladd.f32(float %i.lo, float %i.jv, float %i.ln)
  %i.lq = call float @llvm.fmuladd.f32(float %i.kr, float %i.jf, float %i.lp) ; 4 uses
  %i.lr = fmul float %i.kf, %i.lq
  %i.ls = call float @llvm.fmuladd.f32(float %i.lk, float %i.kq, float %i.lr)
  %i.lt = extractelement <2 x float> %i.le, i64 0 ; 2 uses
  %i.lu = call float @llvm.fmuladd.f32(float %i.lt, float %i.kr, float %i.ls)
  %i.lv = call float @llvm.fmuladd.f32(float %i.ll, float %i.li, float %i.lu)
  %i.lw = fmul float %i.kf, %i.lt
  %i.lx = call float @llvm.fmuladd.f32(float %i.lk, float %i.li, float %i.lw)
  %i.ly = call float @llvm.fmuladd.f32(float %i.lf, float %i.kq, float %i.lx)
  %i.lz = fneg float %i.lq
  %i.ma = call float @llvm.fmuladd.f32(float %i.lz, float %i.kr, float %i.ly)
  %i.mb = fmul float %i.lq, %i.ks
  %i.mc = fmul float %i.kf, %i.lf
  %i.md = insertelement <2 x float> poison, float %i.lk, i64 0
  %i.me = shufflevector <2 x float> %i.md, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mf = insertelement <2 x float> %i.lb, float %i.kr, i64 0
  %i.mg = insertelement <2 x float> poison, float %i.mc, i64 0
  %i.mh = insertelement <2 x float> %i.mg, float %i.mb, i64 1
  %i.mi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.me, <2 x float> %i.mf, <2 x float> %i.mh)
  %i.mj = shufflevector <2 x float> %i.lm, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mk = insertelement <2 x float> %i.mj, float %i.lq, i64 0
  %i.ml = shufflevector <2 x float> %i.kp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.mm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mk, <2 x float> %i.ml, <2 x float> %i.mi)
  %i.mn = insertelement <2 x float> %i.kp, float %i.kr, i64 1
  %i.mo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> %i.mn, <2 x float> %i.mm)
  %.sroa.0.0.vec.insert.i96 = insertelement <2 x float> poison, float %i.lv, i64 0
  %.sroa.0.4.vec.insert.i97 = insertelement <2 x float> %.sroa.0.0.vec.insert.i96, float %i.ma, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i97, ptr %8, align 8
  store <2 x float> %i.mo, ptr %i.jp, align 8
  call void @_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionPK24btCollisionObjectWrapperS5_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, ptr noundef %2, ptr nonnull align 8 poison, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.mp = add nuw nsw i32 %.0212, 1               ; 2 uses
  %i.mq = load i32, ptr %i.jm, align 4, !tbaa !20 ; 2 uses
  %i.mr = icmp slt i32 %i.mp, %i.mq
end_hunk_0
