Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSequentialImpulseConstraintSolver?download=true
inline.NumInlined: 720
inline.NumDeleted: 168
loop-unroll.NumRuntimeUnrolled: 20
loop-unroll.NumUnrolled: 20
begin_hunk_0_@_ZN35btSequentialImpulseConstraintSolver14convertContactEP20btPersistentManifoldRK19btContactSolverInfo:bb.a
  %i.fw = insertelement <2 x float> %i.fv, float %i.fc, i64 1
  %i.fx = shufflevector <3 x float> %i.fm, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fx, <2 x float> %i.fu)
  %i.fz = extractelement <3 x float> %i.fm, i64 2
  %i.ga = fmul float %i.fz, %i.fe
  %i.gb = extractelement <3 x float> %i.fm, i64 1
  %i.gc = tail call float @llvm.fmuladd.f32(float %i.fd, float %i.gb, float %i.ga)
  %i.gd = extractelement <3 x float> %i.fm, i64 0
  %i.ge = tail call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.gd, float %i.gc)
  %i.gf = load <2 x float>, ptr %i.ag, align 4, !tbaa !51
  %i.gg = fmul <2 x float> %i.fy, %i.gf
  %i.gh = load float, ptr %i.ah, align 4, !tbaa !51
  %i.gi = fmul float %i.ge, %i.gh
  %.sroa.3.12.vec.insert.i323 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gi, i64 0
  br label %bb.n

bb.n:                                             ; preds = %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit, %bb.m
  %.sroa.0601.0 = phi <2 x float> [ %i.gg, %bb.m ], [ zeroinitializer, %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit ] ; 3 uses
  %.sroa.6602.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i323, %bb.m ], [ zeroinitializer, %_ZN20btAlignedObjectArrayI18btSolverConstraintE6expandERKS0_.exit ] ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.eq, i64 48 ; 2 uses
  store <2 x float> %.sroa.0601.0, ptr %i.gj, align 8
  %.sroa.6602.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 56 ; 2 uses
  store <2 x float> %.sroa.6602.0, ptr %.sroa.6602.0..sroa_idx, align 8, !tbaa !73
  %.not293 = select i1 %i.eu, i1 true, i1 %.not293626 ; 7 uses
  %i.gk = extractelement <2 x float> %.sroa.0601.0, i64 1 ; 2 uses
  %i.gl = extractelement <2 x float> %.sroa.6602.0, i64 0 ; 2 uses
  %i.gm = extractelement <2 x float> %.sroa.0601.0, i64 0 ; 2 uses
  br i1 %.not293, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.gn = load float, ptr %i.aj, align 8, !tbaa !51
  %i.go = load float, ptr %i.al, align 8, !tbaa !51
  %i.gp = load float, ptr %i.am, align 8, !tbaa !51
  %i.gq = load float, ptr %i.an, align 4, !tbaa !51
  %i.gr = load float, ptr %i.ao, align 8, !tbaa !51
  %i.gs = load <3 x float>, ptr %i.ey, align 8, !tbaa !51 ; 2 uses
  %i.gt = shufflevector <3 x float> %i.gs, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.gu = fneg <3 x float> %i.gs
  %i.gv = shufflevector <2 x float> %i.dj, <2 x float> %i.di, <3 x i32> <i32 0, i32 2, i32 3>
  %i.gw = fmul <3 x float> %i.gv, %i.gu
  %i.gx = shufflevector <2 x float> %i.di, <2 x float> %i.dj, <3 x i32> <i32 1, i32 2, i32 0>
  %i.gy = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.gx, <3 x float> %i.gt, <3 x float> %i.gw)
  %i.gz = fneg <3 x float> %i.gy                  ; 6 uses
  %i.ha = load <2 x float>, ptr %i.ai, align 8, !tbaa !51 ; 2 uses
  %i.hb = load <2 x float>, ptr %i.ak, align 8, !tbaa !51 ; 2 uses
  %i.hc = shufflevector <2 x float> %i.ha, <2 x float> %i.hb, <2 x i32> <i32 1, i32 3>
  %i.hd = shufflevector <3 x float> %i.gz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.he = fmul <2 x float> %i.hc, %i.hd
  %i.hf = shufflevector <2 x float> %i.ha, <2 x float> %i.hb, <2 x i32> <i32 0, i32 2>
  %i.hg = shufflevector <3 x float> %i.gz, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hf, <2 x float> %i.hg, <2 x float> %i.he)
  %i.hi = insertelement <2 x float> poison, float %i.gn, i64 0
  %i.hj = insertelement <2 x float> %i.hi, float %i.go, i64 1
  %i.hk = shufflevector <3 x float> %i.gz, <3 x float> poison, <2 x i32> zeroinitializer
  %i.hl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hj, <2 x float> %i.hk, <2 x float> %i.hh)
  %i.hm = extractelement <3 x float> %i.gz, i64 2
  %i.hn = fmul float %i.gq, %i.hm
  %i.ho = extractelement <3 x float> %i.gz, i64 1
  %i.hp = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.ho, float %i.hn)
  %i.hq = extractelement <3 x float> %i.gz, i64 0
  %i.hr = tail call noundef float @llvm.fmuladd.f32(float %i.gr, float %i.hq, float %i.hp)
  %i.hs = load <2 x float>, ptr %i.ap, align 4, !tbaa !51
  %i.ht = fmul <2 x float> %i.hl, %i.hs
  %i.hu = load float, ptr %i.aq, align 4, !tbaa !51
  %i.hv = fmul float %i.hr, %i.hu
  %.sroa.3.12.vec.insert.i343 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hv, i64 0
  br label %bb.p

bb.p:                                             ; preds = %bb.n, %bb.o
  %.sroa.0593.0 = phi <2 x float> [ %i.ht, %bb.o ], [ zeroinitializer, %bb.n ] ; 4 uses
  %.sroa.6.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i343, %bb.o ], [ zeroinitializer, %bb.n ] ; 3 uses
  %i.hw = getelementptr inbounds nuw i8, ptr %i.eq, i64 64 ; 2 uses
  store <2 x float> %.sroa.0593.0, ptr %i.hw, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 72 ; 2 uses
  store <2 x float> %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !73
  %i.hx = extractelement <2 x float> %.sroa.0593.0, i64 0
  %i.hy = extractelement <2 x float> %.sroa.0593.0, i64 1 ; 2 uses
  %i.hz = extractelement <2 x float> %.sroa.6.0, i64 0
  br i1 %.not292, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ia = extractelement <2 x float> %i.cw, i64 0 ; 2 uses
  %i.ib = fneg float %i.ia
  %i.ic = fmul float %i.gl, %i.ib
  %i.id = extractelement <2 x float> %i.cv, i64 0 ; 2 uses
  %i.ie = tail call float @llvm.fmuladd.f32(float %i.gk, float %i.id, float %i.ic)
  %i.if = fneg float %i.id
  %i.ig = fmul float %i.gm, %i.if
  %i.ih = extractelement <2 x float> %i.cv, i64 1 ; 2 uses
  %i.ii = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.ih, float %i.ig)
  %i.ij = fneg float %i.ih
  %i.ik = fmul float %i.gk, %i.ij
  %i.il = tail call float @llvm.fmuladd.f32(float %i.gm, float %i.ia, float %i.ik)
  %i.im = load float, ptr %i.ar, align 8, !tbaa !72
  %i.in = load float, ptr %i.ey, align 8, !tbaa !51
  %i.io = load float, ptr %i.fa, align 4, !tbaa !51
  %i.ip = fmul float %i.ii, %i.io
  %i.iq = tail call float @llvm.fmuladd.f32(float %i.in, float %i.ie, float %i.ip)
  %i.ir = load float, ptr %i.ez, align 8, !tbaa !51
  %i.is = tail call noundef float @llvm.fmuladd.f32(float %i.ir, float %i.il, float %i.iq)
  %i.it = fadd float %i.im, %i.is
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.0280 = phi float [ %i.it, %bb.q ], [ 0.000000e+00, %bb.p ]
  br i1 %.not293, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.iu = fneg float %i.hx
  %i.iv = fneg float %i.hy
  %i.iw = fneg float %i.hz
  %i.ix = extractelement <2 x float> %i.dj, i64 0
  %foldExtExtBinop = fmul <2 x float> %i.dj, %.sroa.6.0
  %i.iy = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.iz = extractelement <2 x float> %i.di, i64 0
  %i.ja = tail call float @llvm.fmuladd.f32(float %i.iv, float %i.iz, float %i.iy)
  %foldExtExtBinop652 = fmul <2 x float> %i.di, %.sroa.0593.0
  %i.jb = extractelement <2 x float> %foldExtExtBinop652, i64 0
  %i.jc = extractelement <2 x float> %i.di, i64 1 ; 2 uses
  %i.jd = tail call float @llvm.fmuladd.f32(float %i.iw, float %i.jc, float %i.jb)
  %i.je = fmul float %i.jc, %i.hy
  %i.jf = tail call float @llvm.fmuladd.f32(float %i.iu, float %i.ix, float %i.je)
  %i.jg = load float, ptr %i.as, align 8, !tbaa !72
  %i.jh = load float, ptr %i.ey, align 8, !tbaa !51
  %i.ji = load float, ptr %i.fa, align 4, !tbaa !51
  %i.jj = fmul float %i.jd, %i.ji
  %i.jk = tail call float @llvm.fmuladd.f32(float %i.jh, float %i.ja, float %i.jj)
  %i.jl = load float, ptr %i.ez, align 8, !tbaa !51
  %i.jm = tail call noundef float @llvm.fmuladd.f32(float %i.jl, float %i.jf, float %i.jk)
  %i.jn = fadd float %i.jg, %i.jm
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %.0281 = phi float [ %i.jn, %bb.s ], [ 0.000000e+00, %bb.r ]
  %i.jo = fadd float %.0280, %.0281
  %i.jp = fdiv float 1.000000e+00, %i.jo
  %i.jq = getelementptr inbounds nuw i8, ptr %i.eq, i64 92 ; 2 uses
  store float %i.jp, ptr %i.jq, align 4, !tbaa !52
  %i.jr = getelementptr inbounds nuw i8, ptr %i.eq, i64 16 ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.jr, ptr noundef nonnull align 8 dereferenceable(16) %i.ey, i64 16, i1 false), !tbaa.struct !74
  %i.js = extractelement <2 x float> %i.cw, i64 0 ; 2 uses
  %i.jt = load float, ptr %i.ey, align 8, !tbaa !51 ; 2 uses
  %i.ju = extractelement <2 x float> %i.cv, i64 1 ; 2 uses
  %i.jv = load <2 x float>, ptr %i.fa, align 4, !tbaa !51 ; 3 uses
  %i.jw = fneg <2 x float> %i.jv
  %i.jx = fmul <2 x float> %i.cv, %i.jw
  %i.jy = shufflevector <2 x float> %i.cw, <2 x float> %i.cv, <2 x i32> <i32 0, i32 2>
  %i.jz = shufflevector <2 x float> %i.jv, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ka = insertelement <2 x float> %i.jz, float %i.jt, i64 1
  %i.kb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jy, <2 x float> %i.ka, <2 x float> %i.jx)
  %i.kc = fneg float %i.jt
  %i.kd = fmul float %i.js, %i.kc
  %i.ke = extractelement <2 x float> %i.jv, i64 0
  %i.kf = tail call float @llvm.fmuladd.f32(float %i.ju, float %i.ke, float %i.kd)
  %.sroa.3.12.vec.insert.i363 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kf, i64 0
  store <2 x float> %i.kb, ptr %i.eq, align 8
  %.sroa.443.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i363, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !73
  %i.kg = load float, ptr %i.ey, align 8, !tbaa !51 ; 2 uses
  %i.kh = extractelement <2 x float> %i.dj, i64 0 ; 2 uses
  %i.ki = extractelement <2 x float> %i.di, i64 1 ; 2 uses
  %i.kj = load <2 x float>, ptr %i.fa, align 4, !tbaa !51 ; 3 uses
  %i.kk = extractelement <2 x float> %i.kj, i64 0
  %i.kl = fneg float %i.kk
  %i.km = shufflevector <2 x float> %i.kj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.kn = insertelement <2 x float> %i.km, float %i.kg, i64 1
  %i.ko = fneg <2 x float> %i.kn
  %i.kp = fmul <2 x float> %i.di, %i.kj
  %i.kq = shufflevector <2 x float> %i.dj, <2 x float> %i.di, <2 x i32> <i32 0, i32 2>
  %i.kr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kq, <2 x float> %i.ko, <2 x float> %i.kp)
  %i.ks = fmul float %i.kh, %i.kg
  %i.kt = tail call float @llvm.fmuladd.f32(float %i.ki, float %i.kl, float %i.ks)
  %.sroa.3.12.vec.insert.i373 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kt, i64 0
  %i.ku = getelementptr inbounds nuw i8, ptr %i.eq, i64 32 ; 2 uses
  store <2 x float> %i.kr, ptr %i.ku, align 8
  %.sroa.441.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.eq, i64 40 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i373, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !73
  br i1 %.not292, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.kv = fneg <2 x float> %i.cw
  %i.kw = load float, ptr %i.au, align 8, !tbaa !51 ; 2 uses
  %i.kx = fneg float %i.ju
  %i.ky = load <2 x float>, ptr %i.av, align 4, !tbaa !51 ; 3 uses
  %i.kz = shufflevector <2 x float> %i.ky, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.la = insertelement <2 x float> %i.kz, float %i.kw, i64 1
  %i.lb = fmul <2 x float> %i.la, %i.kv
  %i.lc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ky, <2 x float> %i.cv, <2 x float> %i.lb)
  %i.ld = extractelement <2 x float> %i.ky, i64 0
  %i.le = fmul float %i.ld, %i.kx
  %i.lf = tail call float @llvm.fmuladd.f32(float %i.kw, float %i.js, float %i.le)
  %i.lg = load <2 x float>, ptr %i.at, align 8, !tbaa !51
  %i.lh = fadd <2 x float> %i.lc, %i.lg
  %i.li = load float, ptr %i.ay, align 8, !tbaa !51
  %i.lj = fadd float %i.lf, %i.li
  %.sroa.3.12.vec.insert.i4.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lj, i64 0
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.sroa.0570.0 = phi <2 x float> [ %i.lh, %bb.u ], [ zeroinitializer, %bb.t ] ; 2 uses
  %.sroa.7573.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i4.i, %bb.u ], [ zeroinitializer, %bb.t ] ; 2 uses
  br i1 %.not293, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.lk = fneg <2 x float> %i.dj
  %i.ll = load float, ptr %i.ba, align 8, !tbaa !51 ; 2 uses
  %i.lm = fneg float %i.ki
  %i.ln = load <2 x float>, ptr %i.bb, align 4, !tbaa !51 ; 3 uses
  %i.lo = shufflevector <2 x float> %i.ln, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lp = insertelement <2 x float> %i.lo, float %i.ll, i64 1
  %i.lq = fmul <2 x float> %i.lp, %i.lk
  %i.lr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ln, <2 x float> %i.di, <2 x float> %i.lq)
  %i.ls = extractelement <2 x float> %i.ln, i64 0
  %i.lt = fmul float %i.ls, %i.lm
  %i.lu = tail call float @llvm.fmuladd.f32(float %i.ll, float %i.kh, float %i.lt)
  %i.lv = load <2 x float>, ptr %i.az, align 8, !tbaa !51
  %i.lw = fadd <2 x float> %i.lr, %i.lv
  %i.lx = load float, ptr %i.be, align 8, !tbaa !51
  %i.ly = fadd float %i.lu, %i.lx
  %.sroa.3.12.vec.insert.i4.i378 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ly, i64 0
  br label %bb.x

bb.x:                                             ; preds = %bb.v, %bb.w
  %.sroa.0562.0 = phi <2 x float> [ %i.lw, %bb.w ], [ zeroinitializer, %bb.v ] ; 2 uses
  %.sroa.7565.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i4.i378, %bb.w ], [ zeroinitializer, %bb.v ] ; 2 uses
  %i.lz = shufflevector <2 x float> %.sroa.0570.0, <2 x float> %.sroa.7573.0, <2 x i32> <i32 1, i32 2>
  %i.ma = shufflevector <2 x float> %.sroa.0562.0, <2 x float> %.sroa.7565.0, <2 x i32> <i32 1, i32 2>
  %i.mb = fsub <2 x float> %i.lz, %i.ma           ; 3 uses
  %5 = shufflevector <2 x float> %.sroa.7573.0, <2 x float> %.sroa.0570.0, <2 x i32> <i32 0, i32 2>
  %6 = shufflevector <2 x float> %.sroa.7565.0, <2 x float> %.sroa.0562.0, <2 x i32> <i32 0, i32 2>
  %7 = fsub <2 x float> %5, %6                    ; 2 uses
  %i.mc = load float, ptr %i.ey, align 8, !tbaa !51
  %i.md = load float, ptr %i.fa, align 4, !tbaa !51
  %i.me = extractelement <2 x float> %i.mb, i64 0
  %i.mf = fmul float %i.me, %i.md
  %8 = extractelement <2 x float> %7, i64 1
  %i.mg = tail call float @llvm.fmuladd.f32(float %i.mc, float %8, float %i.mf)
  %i.mh = load float, ptr %i.ez, align 8, !tbaa !51
  %i.mi = extractelement <2 x float> %i.mb, i64 1
  %i.mj = tail call noundef float @llvm.fmuladd.f32(float %i.mh, float %i.mi, float %i.mg) ; 2 uses
  %i.mk = load float, ptr %i.cg, align 8, !tbaa !105
  %i.ml = load float, ptr %i.bf, align 4, !tbaa !107
  %i.mm = fadd float %i.mk, %i.ml                 ; 2 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %i.cf, i64 84
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !79
  %i.mp = getelementptr inbounds nuw i8, ptr %i.eq, i64 88
  store float %i.mo, ptr %i.mp, align 8, !tbaa !80
  %i.mq = getelementptr inbounds nuw i8, ptr %i.cf, i64 136
  %i.mr = load i32, ptr %i.mq, align 8, !tbaa !108
  %i.ms = load i32, ptr %i.bg, align 4, !tbaa !109
  %i.mt = icmp sgt i32 %i.mr, %i.ms
  br i1 %i.mt, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.mu = getelementptr inbounds nuw i8, ptr %i.cf, i64 88
  %i.mv = load float, ptr %i.mu, align 8, !tbaa !110
  %i.mw = fneg float %i.mj
  %i.mx = fmul float %i.mv, %i.mw                 ; 2 uses
  %i.my = fcmp ole float %i.mx, 0.000000e+00
  %spec.store.select = select i1 %i.my, float 0.000000e+00, float %i.mx
  br label %bb.z

bb.z:                                             ; preds = %bb.x, %bb.y
  %.0278 = phi float [ %spec.store.select, %bb.y ], [ 0.000000e+00, %bb.x ]
  %i.mz = load i32, ptr %i.bh, align 4, !tbaa !86
  %i.na = and i32 %i.mz, 4
  %.not294 = icmp eq i32 %i.na, 0
  br i1 %.not294, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.nb = getelementptr inbounds nuw i8, ptr %i.cf, i64 120
  %i.nc = load float, ptr %i.nb, align 8, !tbaa !87
  %i.nd = load float, ptr %i.bi, align 4, !tbaa !111
  %i.ne = fmul float %i.nc, %i.nd                 ; 4 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.eq, i64 84 ; 2 uses
  store float %i.ne, ptr %i.nf, align 4, !tbaa !49
  br i1 %.not292, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ng = load ptr, ptr %i.bj, align 8, !tbaa !16
  %i.nh = getelementptr inbounds [112 x i8], ptr %i.ng, i64 %i.bk ; 7 uses
  %i.ni = load float, ptr %i.ar, align 8, !tbaa !72 ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.nk = load float, ptr %i.nj, align 8, !tbaa !51
  %i.nl = fmul float %i.ni, %i.nk
  %i.nm = load float, ptr %i.bm, align 4, !tbaa !51
  %i.nn = fmul float %i.nl, %i.nm
  %i.no = fmul float %i.ne, %i.nn
  %i.np = load <2 x float>, ptr %i.jr, align 8, !tbaa !51
  %i.nq = insertelement <2 x float> poison, float %i.ni, i64 0
  %i.nr = shufflevector <2 x float> %i.nq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ns = fmul <2 x float> %i.nr, %i.np
  %i.nt = load <2 x float>, ptr %i.bl, align 4, !tbaa !51
  %i.nu = fmul <2 x float> %i.ns, %i.nt
  %i.nv = insertelement <2 x float> poison, float %i.ne, i64 0
  %i.nw = shufflevector <2 x float> %i.nv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nx = fmul <2 x float> %i.nw, %i.nu
  %i.ny = load <2 x float>, ptr %i.nh, align 4, !tbaa !51
  %i.nz = fadd <2 x float> %i.nx, %i.ny
  store <2 x float> %i.nz, ptr %i.nh, align 4, !tbaa !51
  %i.oa = getelementptr inbounds nuw i8, ptr %i.nh, i64 8 ; 2 uses
  %i.ob = load float, ptr %i.oa, align 4, !tbaa !51
  %i.oc = fadd float %i.no, %i.ob
  store float %i.oc, ptr %i.oa, align 4, !tbaa !51
  %i.od = getelementptr inbounds nuw i8, ptr %i.nh, i64 32
  %i.oe = getelementptr inbounds nuw i8, ptr %i.nh, i64 40
  %i.of = load float, ptr %i.oe, align 4, !tbaa !51
  %i.og = fmul float %i.ne, %i.of
  %i.oh = load float, ptr %.sroa.6602.0..sroa_idx, align 8, !tbaa !51
  %i.oi = fmul float %i.og, %i.oh
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nh, i64 16 ; 2 uses
  %i.ok = load <2 x float>, ptr %i.od, align 4, !tbaa !51
  %i.ol = fmul <2 x float> %i.nw, %i.ok
  %i.om = load <2 x float>, ptr %i.gj, align 8, !tbaa !51
  %i.on = fmul <2 x float> %i.ol, %i.om
  %i.oo = load <2 x float>, ptr %i.oj, align 4, !tbaa !51
  %i.op = fadd <2 x float> %i.on, %i.oo
  store <2 x float> %i.op, ptr %i.oj, align 4, !tbaa !51
  %i.oq = getelementptr inbounds nuw i8, ptr %i.nh, i64 24 ; 2 uses
  %i.or = load float, ptr %i.oq, align 4, !tbaa !51
  %i.os = fadd float %i.oi, %i.or
  store float %i.os, ptr %i.oq, align 4, !tbaa !51
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  br i1 %.not293, label %bb.af, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ot = load i32, ptr %i.ew, align 4, !tbaa !73
  %i.ou = load ptr, ptr %i.bj, align 8, !tbaa !16
  %i.ov = sext i32 %i.ot to i64
  %i.ow = getelementptr inbounds [112 x i8], ptr %i.ou, i64 %i.ov ; 7 uses
  %i.ox = load float, ptr %i.as, align 8, !tbaa !72 ; 2 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.oz = load float, ptr %i.oy, align 8, !tbaa !51
  %i.pa = fmul float %i.ox, %i.oz
  %i.pb = load float, ptr %i.bo, align 4, !tbaa !51
  %i.pc = fmul float %i.pa, %i.pb
  %i.pd = load float, ptr %.sroa.6.0..sroa_idx, align 8, !tbaa !51
  %i.pe = load float, ptr %i.nf, align 4, !tbaa !49 ; 3 uses
  %i.pf = fneg float %i.pe                        ; 2 uses
  %i.pg = load <2 x float>, ptr %i.jr, align 8, !tbaa !51
  %i.ph = insertelement <2 x float> poison, float %i.ox, i64 0
  %i.pi = shufflevector <2 x float> %i.ph, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pj = fmul <2 x float> %i.pi, %i.pg
  %i.pk = load <2 x float>, ptr %i.bn, align 4, !tbaa !51
  %i.pl = fmul <2 x float> %i.pj, %i.pk
  %i.pm = load <2 x float>, ptr %i.ow, align 4, !tbaa !51
  %i.pn = insertelement <2 x float> poison, float %i.pe, i64 0
  %i.po = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pp = fmul <2 x float> %i.pl, %i.po
  %i.pq = fsub <2 x float> %i.pm, %i.pp
  %i.pr = getelementptr inbounds nuw i8, ptr %i.ow, i64 8 ; 2 uses
  %i.ps = load float, ptr %i.pr, align 4, !tbaa !51
  %i.pt = fmul float %i.pc, %i.pe
  %i.pu = fsub float %i.ps, %i.pt
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ow, i64 32
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ow, i64 40
  %i.px = load float, ptr %i.pw, align 4, !tbaa !51
  %i.py = fmul float %i.px, %i.pf
  %i.pz = getelementptr inbounds nuw i8, ptr %i.ow, i64 16 ; 2 uses
  %i.qa = load <2 x float>, ptr %i.hw, align 8, !tbaa !51
  store <2 x float> %i.pq, ptr %i.ow, align 4, !tbaa !51
  store float %i.pu, ptr %i.pr, align 4, !tbaa !51
  %i.qb = load <2 x float>, ptr %i.pv, align 4, !tbaa !51
  %i.qc = insertelement <2 x float> poison, float %i.pf, i64 0
  %i.qd = shufflevector <2 x float> %i.qc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qe = fmul <2 x float> %i.qb, %i.qd
  %i.qf = load <2 x float>, ptr %i.pz, align 4, !tbaa !51
  %i.qg = fmul <2 x float> %i.qa, %i.qe
  %i.qh = fsub <2 x float> %i.qf, %i.qg
  store <2 x float> %i.qh, ptr %i.pz, align 4, !tbaa !51
  %i.qi = getelementptr inbounds nuw i8, ptr %i.ow, i64 24 ; 2 uses
  %i.qj = load float, ptr %i.qi, align 4, !tbaa !51
  %i.qk = fmul float %i.pd, %i.py
  %i.ql = fsub float %i.qj, %i.qk
  store float %i.ql, ptr %i.qi, align 4, !tbaa !51
  br label %bb.af

bb.ae:                                            ; preds = %bb.z
  %i.qm = getelementptr inbounds nuw i8, ptr %i.eq, i64 84
  store float 0.000000e+00, ptr %i.qm, align 4, !tbaa !49
  br label %bb.af

bb.af:                                            ; preds = %bb.ac, %bb.ad, %bb.ae
  %i.qn = getelementptr inbounds nuw i8, ptr %i.eq, i64 80
  store float 0.000000e+00, ptr %i.qn, align 8, !tbaa !56
  br i1 %.not292, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.0543.0.copyload = load float, ptr %i.at, align 8
  %.sroa.5544.0.copyload = load float, ptr %i.ax, align 4
  %.sroa.7545.0.copyload = load float, ptr %i.ay, align 8
  br label %bb.ah

bb.ah:                                            ; preds = %bb.af, %bb.ag
  %.sroa.7545.0 = phi float [ %.sroa.7545.0.copyload, %bb.ag ], [ 0.000000e+00, %bb.af ]
  %.sroa.5544.0 = phi float [ %.sroa.5544.0.copyload, %bb.ag ], [ 0.000000e+00, %bb.af ]
  %.sroa.0543.0 = phi float [ %.sroa.0543.0.copyload, %bb.ag ], [ 0.000000e+00, %bb.af ]
  %i.qo = load float, ptr %i.jr, align 8, !tbaa !51 ; 3 uses
  %i.qp = getelementptr inbounds nuw i8, ptr %i.eq, i64 20
  %i.qq = load float, ptr %i.qp, align 4, !tbaa !51 ; 3 uses
  %i.qr = fmul float %.sroa.5544.0, %i.qq
  %i.qs = tail call float @llvm.fmuladd.f32(float %i.qo, float %.sroa.0543.0, float %i.qr)
  %i.qt = getelementptr inbounds nuw i8, ptr %i.eq, i64 24
  %i.qu = load float, ptr %i.qt, align 8, !tbaa !51 ; 3 uses
  %i.qv = tail call noundef float @llvm.fmuladd.f32(float %i.qu, float %.sroa.7545.0, float %i.qs)
  br i1 %.not292, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %.sroa.0536.0.copyload = load float, ptr %i.au, align 8
  %.sroa.5537.0.copyload = load float, ptr %i.av, align 4
  %.sroa.7538.0.copyload = load float, ptr %i.aw, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ah, %bb.ai
  %.sroa.7538.0 = phi float [ %.sroa.7538.0.copyload, %bb.ai ], [ 0.000000e+00, %bb.ah ]
  %.sroa.5537.0 = phi float [ %.sroa.5537.0.copyload, %bb.ai ], [ 0.000000e+00, %bb.ah ]
  %.sroa.0536.0 = phi float [ %.sroa.0536.0.copyload, %bb.ai ], [ 0.000000e+00, %bb.ah ]
  %i.qw = load float, ptr %i.eq, align 8, !tbaa !51
  %i.qx = getelementptr inbounds nuw i8, ptr %i.eq, i64 4
  %i.qy = load float, ptr %i.qx, align 4, !tbaa !51
  %i.qz = fmul float %.sroa.5537.0, %i.qy
  %i.ra = tail call float @llvm.fmuladd.f32(float %i.qw, float %.sroa.0536.0, float %i.qz)
  %i.rb = load float, ptr %.sroa.443.0..sroa_idx, align 8, !tbaa !51
  %i.rc = tail call noundef float @llvm.fmuladd.f32(float %i.rb, float %.sroa.7538.0, float %i.ra)
  %i.rd = fadd float %i.qv, %i.rc
  br i1 %.not293, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.sroa.0529.0.copyload = load float, ptr %i.az, align 8
  %.sroa.5530.0.copyload = load float, ptr %i.bd, align 4
  %.sroa.7531.0.copyload = load float, ptr %i.be, align 8
  %i.re = fmul float %i.qq, %.sroa.5530.0.copyload
  %i.rf = tail call float @llvm.fmuladd.f32(float %i.qo, float %.sroa.0529.0.copyload, float %i.re)
  %i.rg = tail call noundef float @llvm.fmuladd.f32(float %i.qu, float %.sroa.7531.0.copyload, float %i.rf)
  %.sroa.0524.0.copyload = load float, ptr %i.ba, align 8
  %.sroa.5525.0.copyload = load float, ptr %i.bb, align 4
  %.sroa.7.0.copyload = load float, ptr %i.bc, align 8
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.rh = fmul float %i.qq, 0.000000e+00
  %i.ri = tail call float @llvm.fmuladd.f32(float %i.qo, float 0.000000e+00, float %i.rh)
  %i.rj = tail call noundef float @llvm.fmuladd.f32(float %i.qu, float 0.000000e+00, float %i.ri)
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.ak
  %i.rk = phi float [ %i.rj, %bb.al ], [ %i.rg, %bb.ak ]
  %.sroa.7.0 = phi float [ 0.000000e+00, %bb.al ], [ %.sroa.7.0.copyload, %bb.ak ]
  %.sroa.5525.0 = phi float [ 0.000000e+00, %bb.al ], [ %.sroa.5525.0.copyload, %bb.ak ]
  %.sroa.0524.0 = phi float [ 0.000000e+00, %bb.al ], [ %.sroa.0524.0.copyload, %bb.ak ]
  %i.rl = load float, ptr %i.ku, align 8, !tbaa !51
  %i.rm = getelementptr inbounds nuw i8, ptr %i.eq, i64 36
  %i.rn = load float, ptr %i.rm, align 4, !tbaa !51
  %i.ro = fmul float %.sroa.5525.0, %i.rn
  %i.rp = tail call float @llvm.fmuladd.f32(float %i.rl, float %.sroa.0524.0, float %i.ro)
  %i.rq = load float, ptr %.sroa.441.0..sroa_idx, align 8, !tbaa !51
  %i.rr = tail call noundef float @llvm.fmuladd.f32(float %i.rq, float %.sroa.7.0, float %i.rp)
  %i.rs = fsub float %i.rr, %i.rk
  %i.rt = fadd float %i.rd, %i.rs
  %i.ru = fneg float %i.mm
  %i.rv = load float, ptr %i.bp, align 4, !tbaa !88
  %i.rw = fmul float %i.rv, %i.ru
  %i.rx = load float, ptr %i.bq, align 4, !tbaa !89
  %i.ry = fdiv float %i.rw, %i.rx
  %i.rz = fsub float %.0278, %i.rt
  %i.sa = load float, ptr %i.jq, align 4, !tbaa !52 ; 2 uses
  %i.sb = fmul float %i.ry, %i.sa                 ; 2 uses
  %i.sc = fmul float %i.sa, %i.rz                 ; 2 uses
  %i.sd = load i32, ptr %i.br, align 4, !tbaa !90
  %.not295 = icmp eq i32 %i.sd, 0
  br i1 %.not295, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.se = load float, ptr %i.bs, align 4, !tbaa !112
  %i.sf = fcmp ogt float %i.mm, %i.se
  br i1 %i.sf, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an, %bb.am
  %i.sg = fadd float %i.sb, %i.sc
  br label %bb.ap

bb.ap:                                            ; preds = %bb.an, %bb.ao
  %.sink649 = phi float [ %i.sg, %bb.ao ], [ %i.sc, %bb.an ]
  %.sink647 = phi float [ 0.000000e+00, %bb.ao ], [ %i.sb, %bb.an ]
  %i.sh = getelementptr inbounds nuw i8, ptr %i.eq, i64 120
  store float %.sink649, ptr %i.sh, align 8, !tbaa !48
  %i.si = getelementptr inbounds nuw i8, ptr %i.eq, i64 136
  store float %.sink647, ptr %i.si, align 8, !tbaa !55
  %i.sj = getelementptr inbounds nuw i8, ptr %i.eq, i64 124
  store <2 x float> zeroinitializer, ptr %i.sj, align 4, !tbaa !51
  %i.sk = getelementptr inbounds nuw i8, ptr %i.eq, i64 132
  store float 1.000000e+10, ptr %i.sk, align 4, !tbaa !54
  %i.sl = load i32, ptr %i.bt, align 4, !tbaa !24
  %i.sm = getelementptr inbounds nuw i8, ptr %i.eq, i64 100 ; 5 uses
  store i32 %i.sl, ptr %i.sm, align 4, !tbaa !73
  %i.sn = load i32, ptr %i.bh, align 4, !tbaa !86
  %i.so = and i32 %i.sn, 32
  %.not296 = icmp eq i32 %i.so, 0
  br i1 %.not296, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.sp = getelementptr inbounds nuw i8, ptr %i.cf, i64 124
  %i.sq = load i8, ptr %i.sp, align 4, !tbaa !113, !range !44, !noundef !76
  %i.sr = trunc nuw i8 %i.sq to i1
  br i1 %i.sr, label %bb.bi, label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %bb.ap
  %i.ss = load float, ptr %i.ey, align 8, !tbaa !51 ; 7 uses
  %i.st = load <2 x float>, ptr %i.fa, align 4, !tbaa !51 ; 10 uses
  %i.su = insertelement <2 x float> poison, float %i.mj, i64 0
  %i.sv = shufflevector <2 x float> %i.su, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.sw = fmul <2 x float> %i.sv, %i.st
  %9 = shufflevector <2 x float> %i.st, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %10 = insertelement <2 x float> %9, float %i.ss, i64 1 ; 2 uses
  %11 = fmul <2 x float> %i.sv, %10
  %12 = fsub <2 x float> %i.mb, %i.sw             ; 6 uses
  %13 = fsub <2 x float> %7, %11                  ; 3 uses
  %14 = shufflevector <2 x float> %12, <2 x float> %13, <2 x i32> <i32 3, i32 0>
  %i.sx = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %12, <2 x i32> <i32 3, i32 1>
  %i.sy = getelementptr inbounds nuw i8, ptr %i.cf, i64 140 ; 13 uses
  store <2 x float> %14, ptr %i.sy, align 4
  %.sroa.424.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 148 ; 10 uses
  store <2 x float> %i.sx, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !73
  %i.sz = getelementptr inbounds nuw i8, ptr %i.cf, i64 144 ; 6 uses
  %foldExtExtBinop654.a = fmul <2 x float> %12, %12
  %15 = extractelement <2 x float> %foldExtExtBinop654.a, i64 0
  %i.ta = extractelement <2 x float> %13, i64 1   ; 2 uses
  %i.tb = tail call float @llvm.fmuladd.f32(float %i.ta, float %i.ta, float %15)
  %i.tc = extractelement <2 x float> %12, i64 1   ; 2 uses
  %i.td = tail call noundef float @llvm.fmuladd.f32(float %i.tc, float %i.tc, float %i.tb) ; 2 uses
  %i.te = load i32, ptr %i.bh, align 4, !tbaa !86 ; 3 uses
  %i.tf = and i32 %i.te, 64
  %i.tg = icmp eq i32 %i.tf, 0
  %i.th = fcmp ogt float %i.td, f0x34000000
  %or.cond3 = and i1 %i.tg, %i.th
  br i1 %or.cond3, label %bb.as, label %bb.az

bb.as:                                            ; preds = %bb.ar
  %sqrt = tail call float @llvm.sqrt.f32(float %i.td)
  %i.ti = fdiv float 1.000000e+00, %sqrt
  %16 = insertelement <2 x float> poison, float %i.ti, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %18 = fmul <2 x float> %13, %17                 ; 2 uses
  %19 = extractelement <2 x float> %18, i64 1     ; 2 uses
  store float %19, ptr %i.sy, align 4, !tbaa !51
  %i.tj = fmul <2 x float> %12, %17               ; 3 uses
  store <2 x float> %i.tj, ptr %i.sz, align 8, !tbaa !51
  %i.tk = and i32 %i.te, 16
  %.not298 = icmp eq i32 %i.tk, 0
  br i1 %.not298, label %bb.aw, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.tl = fneg <2 x float> %i.st
  %i.tm = fneg float %i.ss
  %i.tn = extractelement <2 x float> %i.tj, i64 0
  %i.to = fmul float %i.tn, %i.tm
  %i.tp = extractelement <2 x float> %i.st, i64 0
  %i.tq = tail call float @llvm.fmuladd.f32(float %19, float %i.tp, float %i.to) ; 4 uses
  %.sroa.3.12.vec.insert.i423 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.tq, i64 0
  %i.tr = getelementptr inbounds nuw i8, ptr %i.cf, i64 156 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.cf, i64 164 ; 4 uses
  store <2 x float> %.sroa.3.12.vec.insert.i423, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !73
  %i.ts = fmul <2 x float> %18, %i.tl
  %i.tt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.tj, <2 x float> %10, <2 x float> %i.ts) ; 4 uses
  %foldExtExtBinop656 = fmul <2 x float> %i.tt, %i.tt
  %i.tu = extractelement <2 x float> %foldExtExtBinop656, i64 1
  %i.tv = extractelement <2 x float> %i.tt, i64 0 ; 2 uses
  %i.tw = tail call float @llvm.fmuladd.f32(float %i.tv, float %i.tv, float %i.tu)
  %i.tx = tail call noundef float @llvm.fmuladd.f32(float %i.tq, float %i.tq, float %i.tw)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.tx)
  %i.ty = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.tz = insertelement <2 x float> poison, float %i.ty, i64 0
  %i.ua = shufflevector <2 x float> %i.tz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ub = fmul <2 x float> %i.tt, %i.ua           ; 4 uses
  store <2 x float> %i.ub, ptr %i.tr, align 4, !tbaa !51
  %i.uc = fmul float %i.tq, %i.ty                 ; 3 uses
  store float %i.uc, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !51
  %i.ud = load i8, ptr %i.bu, align 8, !tbaa !75, !range !44, !noundef !76
  %i.ue = trunc nuw i8 %i.ud to i1
  br i1 %i.ue, label %bb.au, label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit

bb.au:                                            ; preds = %bb.at
  %i.uf = load <3 x float>, ptr %i.n, align 8, !tbaa !51 ; 4 uses
  %i.ug = load <3 x float>, ptr %i.bv, align 8, !tbaa !51 ; 4 uses
  %i.uh = shufflevector <2 x float> %i.ub, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ui = fmul <3 x float> %i.uh, %i.ug
  %i.uj = shufflevector <2 x float> %i.ub, <2 x float> poison, <3 x i32> zeroinitializer
  %i.uk = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.uf, <3 x float> %i.uj, <3 x float> %i.ui)
  %i.ul = load float, ptr %i.bx, align 4, !tbaa !51
  %i.um = load <3 x float>, ptr %i.bw, align 8, !tbaa !51 ; 3 uses
  %i.un = insertelement <3 x float> poison, float %i.uc, i64 0
  %i.uo = shufflevector <3 x float> %i.un, <3 x float> poison, <3 x i32> zeroinitializer
  %i.up = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.um, <3 x float> %i.uo, <3 x float> %i.uk)
  %i.uq = load <3 x float>, ptr %i.by, align 8, !tbaa !51
  %i.ur = fmul <3 x float> %i.up, %i.uq           ; 6 uses
  %i.us = shufflevector <3 x float> %i.uf, <3 x float> %i.ug, <2 x i32> <i32 1, i32 4>
  %i.ut = shufflevector <3 x float> %i.ur, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.uu = fmul <2 x float> %i.us, %i.ut
  %i.uv = shufflevector <3 x float> %i.uf, <3 x float> %i.ug, <2 x i32> <i32 0, i32 3>
  %i.uw = shufflevector <3 x float> %i.ur, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ux = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uv, <2 x float> %i.uw, <2 x float> %i.uu)
  %i.uy = shufflevector <3 x float> %i.uf, <3 x float> %i.ug, <2 x i32> <i32 2, i32 5>
  %i.uz = shufflevector <3 x float> %i.ur, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.va = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.uy, <2 x float> %i.uz, <2 x float> %i.ux) ; 2 uses
  %i.vb = extractelement <3 x float> %i.ur, i64 1
  %i.vc = fmul float %i.ul, %i.vb
  %i.vd = extractelement <3 x float> %i.ur, i64 0
  %i.ve = extractelement <3 x float> %i.um, i64 0
  %i.vf = tail call float @llvm.fmuladd.f32(float %i.ve, float %i.vd, float %i.vc)
  %i.vg = extractelement <3 x float> %i.ur, i64 2
  %i.vh = extractelement <3 x float> %i.um, i64 2
  %i.vi = tail call noundef float @llvm.fmuladd.f32(float %i.vh, float %i.vg, float %i.vf) ; 2 uses
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.vi, i64 0
  store <2 x float> %i.va, ptr %i.tr, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !73
  br label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit

_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit: ; preds = %bb.au, %bb.at
  %i.vj = phi float [ %i.vi, %bb.au ], [ %i.uc, %bb.at ]
  %i.vk = phi <2 x float> [ %i.va, %bb.au ], [ %i.ub, %bb.at ] ; 2 uses
  %i.vl = load i8, ptr %i.bz, align 8, !tbaa !75, !range !44, !noundef !76
  %i.vm = trunc nuw i8 %i.vl to i1
  br i1 %i.vm, label %bb.av, label %.thread618

bb.av:                                            ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit
  %i.vn = load <3 x float>, ptr %i.q, align 8, !tbaa !51 ; 4 uses
  %i.vo = load <3 x float>, ptr %i.ca, align 8, !tbaa !51 ; 4 uses
  %i.vp = shufflevector <2 x float> %i.vk, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.vq = fmul <3 x float> %i.vo, %i.vp
  %i.vr = shufflevector <2 x float> %i.vk, <2 x float> poison, <3 x i32> zeroinitializer
  %i.vs = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.vn, <3 x float> %i.vr, <3 x float> %i.vq)
  %i.vt = load float, ptr %i.cc, align 4, !tbaa !51
  %i.vu = load <3 x float>, ptr %i.cb, align 8, !tbaa !51 ; 3 uses
  %i.vv = insertelement <3 x float> poison, float %i.vj, i64 0
  %i.vw = shufflevector <3 x float> %i.vv, <3 x float> poison, <3 x i32> zeroinitializer
  %i.vx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.vu, <3 x float> %i.vw, <3 x float> %i.vs)
  %i.vy = load <3 x float>, ptr %i.cd, align 8, !tbaa !51
  %i.vz = fmul <3 x float> %i.vx, %i.vy           ; 6 uses
  %i.wa = shufflevector <3 x float> %i.vn, <3 x float> %i.vo, <2 x i32> <i32 1, i32 4>
  %i.wb = shufflevector <3 x float> %i.vz, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.wc = fmul <2 x float> %i.wa, %i.wb
  %i.wd = shufflevector <3 x float> %i.vn, <3 x float> %i.vo, <2 x i32> <i32 0, i32 3>
  %i.we = shufflevector <3 x float> %i.vz, <3 x float> poison, <2 x i32> zeroinitializer
  %i.wf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wd, <2 x float> %i.we, <2 x float> %i.wc)
  %i.wg = shufflevector <3 x float> %i.vn, <3 x float> %i.vo, <2 x i32> <i32 2, i32 5>
  %i.wh = shufflevector <3 x float> %i.vz, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.wi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wg, <2 x float> %i.wh, <2 x float> %i.wf)
  %i.wj = extractelement <3 x float> %i.vz, i64 1
  %i.wk = fmul float %i.vt, %i.wj
  %i.wl = extractelement <3 x float> %i.vz, i64 0
  %i.wm = extractelement <3 x float> %i.vu, i64 0
  %i.wn = tail call float @llvm.fmuladd.f32(float %i.wm, float %i.wl, float %i.wk)
  %i.wo = extractelement <3 x float> %i.vz, i64 2
  %i.wp = extractelement <3 x float> %i.vu, i64 2
  %i.wq = tail call noundef float @llvm.fmuladd.f32(float %i.wp, float %i.wo, float %i.wn)
  %.sroa.3.12.vec.insert.i10.i429 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.wq, i64 0
  store <2 x float> %i.wi, ptr %i.tr, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i429, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !73
  br label %.thread618

.thread618:                                       ; preds = %bb.av, %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit
  %i.wr = call noundef nonnull align 8 dereferenceable(140) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.tr, i32 noundef %.0, i32 noundef %.0277, i32 noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(172) %i.cf, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, float noundef 1.000000e+00) ; 0 uses
  br label %bb.aw

bb.aw:                                            ; preds = %bb.as, %.thread618
  %i.ws = load i8, ptr %i.bu, align 8, !tbaa !75, !range !44, !noundef !76
  %i.wt = trunc nuw i8 %i.ws to i1
  br i1 %i.wt, label %bb.ax, label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit435

bb.ax:                                            ; preds = %bb.aw
  %i.wu = load float, ptr %i.sy, align 4, !tbaa !51
  %i.wv = load float, ptr %i.sz, align 8, !tbaa !51
  %i.ww = load float, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !51
  %i.wx = load <3 x float>, ptr %i.n, align 8, !tbaa !51 ; 4 uses
  %i.wy = load <3 x float>, ptr %i.bv, align 8, !tbaa !51 ; 4 uses
  %i.wz = insertelement <3 x float> poison, float %i.wv, i64 0
  %i.xa = shufflevector <3 x float> %i.wz, <3 x float> poison, <3 x i32> zeroinitializer
  %i.xb = fmul <3 x float> %i.xa, %i.wy
  %i.xc = insertelement <3 x float> poison, float %i.wu, i64 0
  %i.xd = shufflevector <3 x float> %i.xc, <3 x float> poison, <3 x i32> zeroinitializer
  %i.xe = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.wx, <3 x float> %i.xd, <3 x float> %i.xb)
  %i.xf = load float, ptr %i.bx, align 4, !tbaa !51
  %i.xg = load <3 x float>, ptr %i.bw, align 8, !tbaa !51 ; 3 uses
  %i.xh = insertelement <3 x float> poison, float %i.ww, i64 0
  %i.xi = shufflevector <3 x float> %i.xh, <3 x float> poison, <3 x i32> zeroinitializer
  %i.xj = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.xg, <3 x float> %i.xi, <3 x float> %i.xe)
  %i.xk = load <3 x float>, ptr %i.by, align 8, !tbaa !51
  %i.xl = fmul <3 x float> %i.xj, %i.xk           ; 6 uses
  %i.xm = shufflevector <3 x float> %i.wx, <3 x float> %i.wy, <2 x i32> <i32 1, i32 4>
  %i.xn = shufflevector <3 x float> %i.xl, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.xo = fmul <2 x float> %i.xm, %i.xn
  %i.xp = shufflevector <3 x float> %i.wx, <3 x float> %i.wy, <2 x i32> <i32 0, i32 3>
  %i.xq = shufflevector <3 x float> %i.xl, <3 x float> poison, <2 x i32> zeroinitializer
  %i.xr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xp, <2 x float> %i.xq, <2 x float> %i.xo)
  %i.xs = shufflevector <3 x float> %i.wx, <3 x float> %i.wy, <2 x i32> <i32 2, i32 5>
  %i.xt = shufflevector <3 x float> %i.xl, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.xu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xs, <2 x float> %i.xt, <2 x float> %i.xr)
  %i.xv = extractelement <3 x float> %i.xl, i64 1
  %i.xw = fmul float %i.xf, %i.xv
  %i.xx = extractelement <3 x float> %i.xl, i64 0
  %i.xy = extractelement <3 x float> %i.xg, i64 0
  %i.xz = tail call float @llvm.fmuladd.f32(float %i.xy, float %i.xx, float %i.xw)
  %i.ya = extractelement <3 x float> %i.xl, i64 2
  %i.yb = extractelement <3 x float> %i.xg, i64 2
  %i.yc = tail call noundef float @llvm.fmuladd.f32(float %i.yb, float %i.ya, float %i.xz)
  %.sroa.3.12.vec.insert.i10.i434 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.yc, i64 0
  store <2 x float> %i.xu, ptr %i.sy, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i434, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !73
  br label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit435

_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit435: ; preds = %bb.ax, %bb.aw
  %i.yd = load i8, ptr %i.bz, align 8, !tbaa !75, !range !44, !noundef !76
  %i.ye = trunc nuw i8 %i.yd to i1
  br i1 %i.ye, label %bb.ay, label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit440

bb.ay:                                            ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit435
  %i.yf = load float, ptr %i.sy, align 4, !tbaa !51
  %i.yg = load float, ptr %i.sz, align 8, !tbaa !51
  %i.yh = load float, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !51
  %i.yi = load <3 x float>, ptr %i.q, align 8, !tbaa !51 ; 4 uses
  %i.yj = load <3 x float>, ptr %i.ca, align 8, !tbaa !51 ; 4 uses
  %i.yk = insertelement <3 x float> poison, float %i.yg, i64 0
  %i.yl = shufflevector <3 x float> %i.yk, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ym = fmul <3 x float> %i.yl, %i.yj
  %i.yn = insertelement <3 x float> poison, float %i.yf, i64 0
  %i.yo = shufflevector <3 x float> %i.yn, <3 x float> poison, <3 x i32> zeroinitializer
  %i.yp = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.yi, <3 x float> %i.yo, <3 x float> %i.ym)
  %i.yq = load float, ptr %i.cc, align 4, !tbaa !51
  %i.yr = load <3 x float>, ptr %i.cb, align 8, !tbaa !51 ; 3 uses
  %i.ys = insertelement <3 x float> poison, float %i.yh, i64 0
  %i.yt = shufflevector <3 x float> %i.ys, <3 x float> poison, <3 x i32> zeroinitializer
  %i.yu = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.yr, <3 x float> %i.yt, <3 x float> %i.yp)
  %i.yv = load <3 x float>, ptr %i.cd, align 8, !tbaa !51
  %i.yw = fmul <3 x float> %i.yu, %i.yv           ; 6 uses
  %i.yx = shufflevector <3 x float> %i.yi, <3 x float> %i.yj, <2 x i32> <i32 1, i32 4>
  %i.yy = shufflevector <3 x float> %i.yw, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.yz = fmul <2 x float> %i.yx, %i.yy
  %i.za = shufflevector <3 x float> %i.yi, <3 x float> %i.yj, <2 x i32> <i32 0, i32 3>
  %i.zb = shufflevector <3 x float> %i.yw, <3 x float> poison, <2 x i32> zeroinitializer
  %i.zc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.za, <2 x float> %i.zb, <2 x float> %i.yz)
  %i.zd = shufflevector <3 x float> %i.yi, <3 x float> %i.yj, <2 x i32> <i32 2, i32 5>
  %i.ze = shufflevector <3 x float> %i.yw, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.zf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.zd, <2 x float> %i.ze, <2 x float> %i.zc)
  %i.zg = extractelement <3 x float> %i.yw, i64 1
  %i.zh = fmul float %i.yq, %i.zg
  %i.zi = extractelement <3 x float> %i.yw, i64 0
  %i.zj = extractelement <3 x float> %i.yr, i64 0
  %i.zk = tail call float @llvm.fmuladd.f32(float %i.zj, float %i.zi, float %i.zh)
  %i.zl = extractelement <3 x float> %i.yw, i64 2
  %i.zm = extractelement <3 x float> %i.yr, i64 2
  %i.zn = tail call noundef float @llvm.fmuladd.f32(float %i.zm, float %i.zl, float %i.zk)
  %.sroa.3.12.vec.insert.i10.i439 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.zn, i64 0
  store <2 x float> %i.zf, ptr %i.sy, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i10.i439, ptr %.sroa.424.0..sroa_idx, align 4, !tbaa !73
  br label %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit440

_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit440: ; preds = %_Z24applyAnisotropicFrictionP17btCollisionObjectR9btVector3.exit435, %bb.ay
  %i.zo = call noundef nonnull align 8 dereferenceable(140) ptr @_ZN35btSequentialImpulseConstraintSolver21addFrictionConstraintERK9btVector3iiiR15btManifoldPointS2_S2_P17btCollisionObjectS6_f(ptr noundef nonnull align 8 dereferenceable(240) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.sy, i32 noundef %.0, i32 noundef %.0277, i32 noundef %i.dm, ptr noundef nonnull align 8 dereferenceable(172) %i.cf, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull %i.b, ptr noundef nonnull %i.d, float noundef 1.000000e+00) ; 0 uses
  %i.zp = getelementptr inbounds nuw i8, ptr %i.cf, i64 124
  store i8 1, ptr %i.zp, align 4, !tbaa !113
  br label %bb.bk

bb.az:                                            ; preds = %bb.ar
  %i.zq = getelementptr inbounds nuw i8, ptr %i.cf, i64 156 ; 3 uses
end_hunk_0
