inline.NumInlined: 82
inline.NumDeleted: 21
begin_hunk_0_@_ZN24btSolve2LinearConstraint31resolveUnilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_:bb.a
  %i.hq = insertelement <2 x float> %i.hp, float %i.dm, i64 0
  %i.hr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ho, <2 x float> %i.hq, <2 x float> %i.fd) ; 3 uses
  %i.hs = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ht = fmul <2 x float> %i.cy, %i.hs
  %i.hu = insertelement <2 x float> %i.ey, float %i.bb, i64 1
  %i.hv = insertelement <2 x float> %i.ho, float %i.hn, i64 1
  %i.hw = fmul <2 x float> %i.hu, %i.hv
  %i.hx = shufflevector <2 x float> %i.fa, <2 x float> %i.ew, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hy = insertelement <2 x float> %i.ey, float %i.ez, i64 0
  %i.hz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hx, <2 x float> %i.hy, <2 x float> %i.hw) ; 3 uses
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ib = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.ia, <2 x float> %i.ht)
  %i.ic = shufflevector <2 x float> %i.dk, <2 x float> %i.ew, <2 x i32> <i32 0, i32 3>
  %i.id = insertelement <2 x float> %i.hx, float %i.dm, i64 1
  %i.ie = fmul <2 x float> %i.ic, %i.id
  %i.if = shufflevector <2 x float> %i.fa, <2 x float> %i.ew, <2 x i32> <i32 0, i32 2>
  %i.ig = insertelement <2 x float> poison, float %i.hn, i64 0
  %i.ih = shufflevector <2 x float> %i.ig, <2 x float> %i.ey, <2 x i32> <i32 0, i32 2>
  %i.ii = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.if, <2 x float> %i.ih, <2 x float> %i.ie) ; 3 uses
  %i.ij = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ik = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.ij, <2 x float> %i.ib) ; 5 uses
  %i.il = fmul <2 x float> %i.en, %i.hr
  %i.im = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ep, <2 x float> %i.hz, <2 x float> %i.il)
  %i.in = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.er, <2 x float> %i.ii, <2 x float> %i.im) ; 5 uses
  %i.io = shufflevector <2 x float> %i.hr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ip = fmul <2 x float> %i.dd, %i.io
  %i.iq = shufflevector <2 x float> %i.hz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ir = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.de, <2 x float> %i.iq, <2 x float> %i.ip)
  %i.is = shufflevector <2 x float> %i.ii, <2 x float> poison, <2 x i32> zeroinitializer
  %i.it = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.df, <2 x float> %i.is, <2 x float> %i.ir) ; 5 uses
  %i.iu = extractelement <2 x float> %i.ik, i64 0
  %i.iv = fmul float %i.ap, %i.iu
  %i.iw = extractelement <2 x float> %i.in, i64 1
  %i.ix = fmul float %i.ar, %i.iw
  %i.iy = extractelement <2 x float> %i.ik, i64 1
  %i.iz = fmul float %i.at, %i.iy
  %i.ja = extractelement <2 x float> %i.it, i64 0
  %i.jb = fmul float %i.au, %i.ja
  %i.jc = extractelement <2 x float> %i.in, i64 0
  %i.jd = fmul float %i.aw, %i.jc
  %i.je = extractelement <2 x float> %i.it, i64 1
  %i.jf = fmul float %i.ay, %i.je
  %i.jg = shufflevector <2 x float> %i.dk, <2 x float> %i.ey, <2 x i32> <i32 0, i32 3>
  %i.jh = fmul <2 x float> %i.dn, %i.jg           ; 2 uses
  %i.ji = fmul <2 x float> %i.hk, %i.ik
  %i.jj = fmul <2 x float> %i.ev, %i.in           ; 2 uses
  %i.jk = fmul <2 x float> %i.hl, %i.it
  %i.jl = insertelement <2 x float> poison, float %6, i64 0
  %i.jm = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.jn = fmul <2 x float> %i.jm, %i.jh
  %i.jo = insertelement <2 x float> %i.ec, float %11, i64 1
  %i.jp = shufflevector <2 x float> %i.jo, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.jq = shufflevector <2 x float> %i.dk, <2 x float> %i.jh, <4 x i32> <i32 1, i32 1, i32 2, i32 3>
  %i.jr = fmul <4 x float> %i.jp, %i.jq           ; 2 uses
  %i.js = fadd <2 x float> %i.ji, %i.jk
  %i.jt = fadd <2 x float> %i.jn, %i.js
  %i.ju = insertelement <4 x float> poison, float %6, i64 0
  %i.jv = insertelement <4 x float> %i.ju, float %11, i64 1
  %i.jw = shufflevector <2 x float> %i.jt, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jx = shufflevector <4 x float> %i.jv, <4 x float> %i.jw, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.jy = fmul <4 x float> %i.jx, %i.jr
  %i.jz = fadd <4 x float> %i.jx, %i.jr
  %i.ka = shufflevector <4 x float> %i.jy, <4 x float> %i.jz, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %shift = shufflevector <2 x float> %i.jj, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop123 = fadd <2 x float> %i.jj, %shift
  %op.rdx = extractelement <2 x float> %foldExtExtBinop123, i64 0
  %i.kb = tail call float @llvm.vector.reduce.fadd.v4f32(float %op.rdx, <4 x float> %i.ka) ; 2 uses
  %i.kc = fneg float %i.kb                        ; 2 uses
  %i.kd = fmul float %i.kb, %i.kc
  %i.ke = fadd float %6, %11
  %i.kf = insertelement <2 x float> poison, float %i.ke, i64 0
  %i.kg = insertelement <2 x float> poison, float %19, i64 0
  %i.kh = insertelement <2 x float> %i.kg, float %15, i64 1
  %i.ki = insertelement <2 x float> poison, float %i.cs, i64 0
  %i.kj = shufflevector <2 x float> %i.ki, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kk = fmul <2 x float> %i.kh, %i.kj
  %i.kl = shufflevector <2 x float> %i.gq, <2 x float> %i.fq, <2 x i32> <i32 0, i32 2>
  %i.km = shufflevector <2 x float> %i.gq, <2 x float> %i.fq, <2 x i32> <i32 1, i32 3>
  %i.kn = fsub <2 x float> %i.kl, %i.km
  %i.ko = shufflevector <2 x float> %i.gw, <2 x float> %i.ga, <2 x i32> <i32 0, i32 2>
  %i.kp = shufflevector <2 x float> %i.gw, <2 x float> %i.ga, <2 x i32> <i32 1, i32 3>
  %i.kq = fsub <2 x float> %i.ko, %i.kp
  %i.kr = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ks = insertelement <2 x float> %i.kr, float %i.gh, i64 0
  %i.kt = insertelement <2 x float> %i.gb, float %i.gx, i64 0
  %i.ku = fsub <2 x float> %i.ks, %i.kt
  %i.kv = shufflevector <2 x float> %i.in, <2 x float> %i.es, <2 x i32> <i32 1, i32 3>
  %i.kw = insertelement <2 x float> %i.ev, float %i.ix, i64 0
  %i.kx = fmul <2 x float> %i.kv, %i.kw
  %i.ky = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kz = insertelement <2 x float> %i.ky, float %i.iv, i64 0
  %i.la = shufflevector <2 x float> %i.ik, <2 x float> %i.hd, <2 x i32> <i32 0, i32 2>
  %i.lb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kz, <2 x float> %i.la, <2 x float> %i.kx)
  %i.lc = insertelement <2 x float> %i.hk, float %i.iz, i64 0
  %i.ld = shufflevector <2 x float> %i.ik, <2 x float> %i.hd, <2 x i32> <i32 1, i32 3>
  %i.le = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lc, <2 x float> %i.ld, <2 x float> %i.lb)
  %i.lf = fadd <2 x float> %i.jm, %i.le
  %i.lg = insertelement <2 x float> poison, float %11, i64 0
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.li = fadd <2 x float> %i.lh, %i.lf
  %i.lj = shufflevector <2 x float> %i.in, <2 x float> %i.es, <2 x i32> <i32 0, i32 2>
  %i.lk = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ll = insertelement <2 x float> %i.lk, float %i.jd, i64 0
  %i.lm = fmul <2 x float> %i.lj, %i.ll
  %i.ln = shufflevector <2 x float> %i.hl, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lo = insertelement <2 x float> %i.ln, float %i.jb, i64 0
  %i.lp = shufflevector <2 x float> %i.it, <2 x float> %i.hj, <2 x i32> <i32 0, i32 2>
  %i.lq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lo, <2 x float> %i.lp, <2 x float> %i.lm)
  %i.lr = insertelement <2 x float> %i.hl, float %i.jf, i64 0
  %i.ls = shufflevector <2 x float> %i.it, <2 x float> %i.hj, <2 x i32> <i32 1, i32 3>
  %i.lt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lr, <2 x float> %i.ls, <2 x float> %i.lq)
  %i.lu = fadd <2 x float> %i.li, %i.lt           ; 3 uses
  %i.lv = shufflevector <2 x float> %i.ey, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.lw = fmul <2 x float> %i.lv, %i.kq
  %i.lx = shufflevector <2 x float> %i.dk, <2 x float> %i.b, <2 x i32> <i32 0, i32 2>
  %i.ly = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lx, <2 x float> %i.kn, <2 x float> %i.lw)
  %i.lz = insertelement <2 x float> poison, float %.sroa.7.0.copyload, i64 0
  %i.ma = insertelement <2 x float> %i.lz, float %i.f, i64 1
  %i.mb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.ku, <2 x float> %i.ly)
  %i.mc = insertelement <2 x float> poison, float %i.cv, i64 0
  %i.md = shufflevector <2 x float> %i.mc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.me = fmul <2 x float> %i.mb, %i.md
  %i.mf = extractelement <2 x float> %i.lu, i64 0
  %i.mg = extractelement <2 x float> %i.lu, i64 1
  %i.mh = tail call float @llvm.fmuladd.f32(float %i.mg, float %i.mf, float %i.kd)
  %i.mi = insertelement <2 x float> %i.kf, float %i.mh, i64 1
  %i.mj = fdiv <2 x float> splat (float 1.000000e+00), %i.mi ; 2 uses
  %i.mk = shufflevector <2 x float> %i.mj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ml = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kk, <2 x float> %i.mk, <2 x float> %i.me) ; 2 uses
  %i.mm = fmul <2 x float> %i.lu, %i.ml
  %i.mn = insertelement <2 x float> poison, float %i.kc, i64 0
  %i.mo = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mp = fmul <2 x float> %i.ml, %i.mo
  %i.mq = shufflevector <2 x float> %i.mj, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.mr = fmul <2 x float> %i.mq, %i.mp
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mm, <2 x float> %i.mq, <2 x float> %i.ms) ; 2 uses
  %i.mu = extractelement <2 x float> %i.mt, i64 1
  store float %i.mu, ptr %21, align 4, !tbaa !9
  %i.mv = extractelement <2 x float> %i.mt, i64 0
  store float %i.mv, ptr %22, align 4, !tbaa !9
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN24btSolve2LinearConstraint30resolveBilateralPairConstraintEP11btRigidBodyS1_RK11btMatrix3x3S4_RK9btVector3fS7_S7_S7_S7_fS7_S7_S7_fS7_S7_S7_fS7_RfS8_(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, float noundef %6, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(16) %7, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(16) %8, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %9, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %10, float noundef %11, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(16) %12, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(16) %13, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %14, float noundef %15, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %16, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %17, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %18, float noundef %19, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %20, ptr nofree noundef nonnull align 4 captures(none) dereferenceable(4) initializes((0, 4)) %21, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(4) initializes((0, 4)) %22) local_unnamed_addr #0 align 2 {
bb.a:
  store float 0.000000e+00, ptr %21, align 4, !tbaa !9
  store float 0.000000e+00, ptr %22, align 4, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %16, i64 4
  %i.b = load <2 x float>, ptr %16, align 4, !tbaa !9 ; 4 uses
  %i.c = extractelement <2 x float> %i.b, i64 0   ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %16, i64 8
  %i.e = load <2 x float>, ptr %i.a, align 4, !tbaa !9 ; 9 uses
  %i.f = load float, ptr %i.d, align 4, !tbaa !9  ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.e, %i.e
  %i.g = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.h = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.g)
  %i.i = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.f, float %i.h)
  %sqrt.i = tail call noundef float @llvm.sqrt.f32(float %i.i)
  %i.j = tail call noundef float @llvm.fabs.f32(float %sqrt.i)
  %i.k = fadd float %i.j, -1.000000e+00
  %i.l = tail call noundef float @llvm.fabs.f32(float %i.k)
  %i.m = fcmp ult float %i.l, f0x34000000
  br i1 %i.m, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.n = extractelement <2 x float> %i.e, i64 0
  %i.o = getelementptr inbounds nuw i8, ptr %9, i64 4
  %i.p = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !9  ; 4 uses
  %i.r = fneg float %i.n                          ; 2 uses
  %i.s = fneg float %i.f                          ; 2 uses
  %i.t = fneg float %i.c                          ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.v = load <4 x float>, ptr %i.u, align 4
  %i.w = shufflevector <4 x float> %i.v, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.z = load float, ptr %i.y, align 4, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !9
  %i.ad = load <4 x float>, ptr %14, align 4
  %i.ae = shufflevector <4 x float> %i.ad, <4 x float> poison, <2 x i32> <i32 2, i32 poison> ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ag = load <4 x float>, ptr %i.af, align 4
  %i.ah = shufflevector <4 x float> %i.ag, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.ai = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = load <4 x float>, ptr %i.aj, align 4
  %i.al = shufflevector <4 x float> %i.ak, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ao = load float, ptr %i.an, align 4, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aq = load float, ptr %i.ap, align 4, !tbaa !9 ; 2 uses
  %i.ar = load float, ptr %10, align 4, !tbaa !9  ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 4
  %.sroa.5117.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 4
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %20, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %17, i64 4
  %i.au = getelementptr inbounds nuw i8, ptr %17, i64 8
  %i.av = load float, ptr %i.au, align 4, !tbaa !9 ; 4 uses
  %i.aw = load <4 x float>, ptr %18, align 4
  %i.ax = shufflevector <4 x float> %i.aw, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 420
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 436
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 444
  %i.bc = fneg float %i.q
  %i.bd = load float, ptr %i.ay, align 4, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 424
  %i.bf = load float, ptr %i.be, align 4, !tbaa !9
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 428
  %i.bh = load float, ptr %i.bg, align 4, !tbaa !9 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 420
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 436
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 440
  %i.bl = getelementptr inbounds nuw i8, ptr %2, i64 444
  %i.bm = load float, ptr %i.bi, align 4, !tbaa !9
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 424
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !9
  %i.bp = getelementptr inbounds nuw i8, ptr %2, i64 428
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !9 ; 2 uses
  %i.br = load <2 x float>, ptr %i.az, align 4, !tbaa !9 ; 3 uses
  %i.bs = extractelement <2 x float> %i.br, i64 0
  %i.bt = load <2 x float>, ptr %i.bj, align 4, !tbaa !9 ; 3 uses
  %i.bu = extractelement <2 x float> %i.bt, i64 0
  %i.bv = shufflevector <2 x float> %i.br, <2 x float> %i.bt, <2 x i32> <i32 1, i32 3>
  %i.bw = shufflevector <2 x float> %i.br, <2 x float> %i.bt, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.bx = load <2 x float>, ptr %i.ba, align 4, !tbaa !9 ; 3 uses
  %i.by = load float, ptr %i.bb, align 4, !tbaa !9
  %i.bz = load <2 x float>, ptr %i.bk, align 4, !tbaa !9 ; 3 uses
  %i.ca = load float, ptr %i.bl, align 4, !tbaa !9
  %i.cb = shufflevector <2 x float> %i.bx, <2 x float> %i.bz, <2 x i32> <i32 1, i32 3>
  %i.cc = shufflevector <2 x float> %i.bx, <2 x float> %i.bz, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cd = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.cg = insertelement <2 x float> %i.cf, float %i.bm, i64 1 ; 2 uses
  %i.ch = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.ci = insertelement <2 x float> %i.ch, float %i.bq, i64 1
  %i.cj = extractelement <2 x float> %i.bx, i64 0
  %i.ck = fneg float %i.av
  %i.cl = extractelement <2 x float> %i.bz, i64 0
  %i.cm = load float, ptr %0, align 4, !tbaa !11  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.co = load float, ptr %i.cn, align 4, !tbaa !13
  %i.cp = fneg float %i.co                        ; 2 uses
  %i.cq = load <2 x float>, ptr %3, align 4, !tbaa !9 ; 2 uses
  %i.cr = load <2 x float>, ptr %i.aa, align 4, !tbaa !9 ; 2 uses
  %i.cs = shufflevector <2 x float> %i.cq, <2 x float> %i.cr, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ct = shufflevector <2 x float> %i.cq, <2 x float> %i.cr, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cu = insertelement <2 x float> %i.w, float %i.ac, i64 1 ; 2 uses
  %i.cv = load <2 x float>, ptr %4, align 4, !tbaa !9 ; 2 uses
  %i.cw = load <2 x float>, ptr %i.am, align 4, !tbaa !9 ; 2 uses
  %i.cx = shufflevector <2 x float> %i.cv, <2 x float> %i.cw, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.cy = shufflevector <2 x float> %i.cv, <2 x float> %i.cw, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.cz = insertelement <2 x float> %i.ah, float %i.ao, i64 1 ; 2 uses
  %i.da = load <2 x float>, ptr %20, align 4      ; 5 uses
  %i.db = extractelement <2 x float> %i.da, i64 0 ; 2 uses
  %i.dc = fneg float %i.db                        ; 2 uses
  %i.dd = shufflevector <2 x float> %i.b, <2 x float> %i.e, <2 x i32> <i32 0, i32 3>
  %i.de = load <2 x float>, ptr %9, align 4, !tbaa !9 ; 7 uses
  %i.df = load float, ptr %i.o, align 4, !tbaa !9
  %i.dg = load <2 x float>, ptr %i.x, align 4, !tbaa !9 ; 2 uses
  %i.dh = insertelement <2 x float> %i.e, float %i.q, i64 1
  %i.di = insertelement <2 x float> %i.ae, float %i.r, i64 1
  %i.dj = fmul <2 x float> %i.dh, %i.di
  %i.dk = load <2 x float>, ptr %14, align 4, !tbaa !9 ; 3 uses
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> %i.de, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.dm = insertelement <2 x float> %i.e, float %i.s, i64 0
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dm, <2 x float> %i.dj) ; 3 uses
  %i.do = shufflevector <2 x float> %i.e, <2 x float> %i.de, <2 x i32> <i32 1, i32 2>
  %i.dp = insertelement <2 x float> %i.dk, float %i.s, i64 1
  %i.dq = fmul <2 x float> %i.do, %i.dp
  %i.dr = insertelement <2 x float> %i.ae, float %i.q, i64 1
  %i.ds = shufflevector <2 x float> %i.b, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.dt = insertelement <2 x float> %i.ds, float %i.t, i64 0
  %i.du = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dr, <2 x float> %i.dt, <2 x float> %i.dq) ; 3 uses
  %i.dv = shufflevector <2 x float> %i.b, <2 x float> %i.de, <2 x i32> <i32 0, i32 3>
  %i.dw = insertelement <2 x float> %i.dl, float %i.t, i64 1
  %i.dx = fmul <2 x float> %i.dv, %i.dw
  %i.dy = shufflevector <2 x float> %i.dk, <2 x float> %i.de, <2 x i32> <i32 0, i32 2>
  %i.dz = insertelement <2 x float> poison, float %i.r, i64 0
  %i.ea = shufflevector <2 x float> %i.dz, <2 x float> %i.e, <2 x i32> <i32 0, i32 2>
  %i.eb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.ea, <2 x float> %i.dx) ; 3 uses
  %i.ec = load <2 x float>, ptr %i.ai, align 4, !tbaa !9 ; 2 uses
  %i.ed = shufflevector <2 x float> %i.ec, <2 x float> %i.dg, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ee = fmul <2 x float> %i.du, %i.ed
  %i.ef = shufflevector <2 x float> %i.ec, <2 x float> %i.dg, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.eg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.dn, <2 x float> %i.ee)
  %i.eh = insertelement <2 x float> %i.al, float %i.z, i64 1 ; 2 uses
  %i.ei = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.eb, <2 x float> %i.eg) ; 2 uses
  %i.ej = load <2 x float>, ptr %17, align 4, !tbaa !9 ; 6 uses
  %i.ek = load float, ptr %i.at, align 4, !tbaa !9 ; 3 uses
  %i.el = load <2 x float>, ptr %.sroa.5117.0..sroa_idx, align 4 ; 7 uses
  %.sroa.7.0.copyload = load float, ptr %.sroa.7.0..sroa_idx, align 4 ; 2 uses
  %i.em = fneg float %.sroa.7.0.copyload          ; 2 uses
  %i.en = load <2 x float>, ptr %18, align 4, !tbaa !9 ; 3 uses
  %i.eo = shufflevector <2 x float> %i.el, <2 x float> %i.ej, <2 x i32> <i32 1, i32 2>
  %i.ep = insertelement <2 x float> %i.en, float %i.em, i64 1
  %i.eq = fmul <2 x float> %i.eo, %i.ep
  %i.er = fneg float %i.df
  %i.es = extractelement <2 x float> %i.de, i64 0
  %i.et = fneg float %i.es
  %i.eu = insertelement <2 x float> poison, float %i.et, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = fmul <2 x float> %i.bv, %i.ev
  %i.ex = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ey = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.ex, <2 x float> %i.ew)
  %i.ez = insertelement <2 x float> poison, float %i.er, i64 0
  %i.fa = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = fmul <2 x float> %i.cb, %i.fa
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.ce, <2 x float> %i.fb)
  %i.fd = fadd <2 x float> %i.fc, %i.cg           ; 2 uses
  %i.fe = insertelement <2 x float> poison, float %i.bc, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = fmul <2 x float> %i.bw, %i.ff
  %i.fh = insertelement <2 x float> poison, float %i.by, i64 0
  %i.fi = insertelement <2 x float> %i.fh, float %i.ca, i64 1 ; 3 uses
  %i.fj = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.fj, <2 x float> %i.fg)
  %i.fl = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.fm = insertelement <2 x float> %i.fl, float %i.bo, i64 1 ; 2 uses
  %i.fn = fadd <2 x float> %i.fm, %i.fk           ; 2 uses
  %i.fo = fadd <2 x float> %i.ey, %i.ci           ; 2 uses
  %shift = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop138 = fsub <2 x float> %i.fd, %shift
  %i.fp = extractelement <2 x float> %foldExtExtBinop138, i64 0
  %shift140 = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop141 = fsub <2 x float> %i.fn, %shift140
  %shift143 = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop144 = fsub <2 x float> %i.fo, %shift143
  %i.fq = extractelement <2 x float> %foldExtExtBinop144, i64 0
  %foldExtExtBinop146 = fmul <2 x float> %i.e, %foldExtExtBinop141
  %i.fr = extractelement <2 x float> %foldExtExtBinop146, i64 0
  %i.fs = tail call float @llvm.fmuladd.f32(float %i.c, float %i.fp, float %i.fr)
  %i.ft = fneg float %i.ek
  %i.fu = extractelement <2 x float> %i.ej, i64 0
  %i.fv = fneg float %i.fu                        ; 2 uses
  %i.fw = fmul float %i.cj, %i.fv
  %i.fx = tail call float @llvm.fmuladd.f32(float %i.bs, float %i.ek, float %i.fw)
  %i.fy = fadd float %i.fx, %i.bh
  %i.fz = fmul float %i.cl, %i.fv
  %i.ga = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.ek, float %i.fz)
  %i.gb = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.gc = shufflevector <2 x float> %i.gb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gd = fmul <2 x float> %i.fi, %i.gc
  %i.ge = insertelement <2 x float> poison, float %i.av, i64 0
  %i.gf = shufflevector <2 x float> %i.ge, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.gf, <2 x float> %i.gd)
  %i.gh = fadd <2 x float> %i.gg, %i.cg           ; 2 uses
  %i.gi = insertelement <2 x float> poison, float %i.ck, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = fmul <2 x float> %i.bw, %i.gj
  %i.gl = shufflevector <2 x float> %i.ej, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.gl, <2 x float> %i.gk)
  %i.gn = fadd <2 x float> %i.fm, %i.gm           ; 2 uses
  %i.go = fadd float %i.ga, %i.bq
  %shift148 = shufflevector <2 x float> %i.gh, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop149 = fsub <2 x float> %i.gh, %shift148
  %i.gp = extractelement <2 x float> %foldExtExtBinop149, i64 0
  %shift151 = shufflevector <2 x float> %i.gn, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop152 = fsub <2 x float> %i.gn, %shift151
  %i.gq = fsub float %i.fy, %i.go
  %i.gr = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gs = fmul <2 x float> %i.cs, %i.gr
  %i.gt = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.gt, <2 x float> %i.gs)
  %i.gv = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.gv, <2 x float> %i.gu) ; 3 uses
  %i.gx = shufflevector <2 x float> %i.du, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gy = fmul <2 x float> %i.cx, %i.gx
  %i.gz = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ha = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.gz, <2 x float> %i.gy)
  %i.hb = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.hb, <2 x float> %i.ha) ; 3 uses
  %i.hd = extractelement <2 x float> %i.gw, i64 1
  %i.he = extractelement <2 x float> %i.hc, i64 1
  %i.hf = extractelement <2 x float> %i.el, i64 0
  %i.hg = fneg float %i.hf                        ; 2 uses
  %i.hh = insertelement <2 x float> %i.ax, float %i.av, i64 1 ; 2 uses
  %i.hi = shufflevector <2 x float> %i.da, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.hj = insertelement <2 x float> %i.hi, float %i.dc, i64 0
  %i.hk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hh, <2 x float> %i.hj, <2 x float> %i.eq) ; 3 uses
  %i.hl = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hm = fmul <2 x float> %i.cs, %i.hl
  %i.hn = insertelement <2 x float> %i.el, float %i.av, i64 1
  %i.ho = insertelement <2 x float> %i.hh, float %i.hg, i64 1
  %i.hp = fmul <2 x float> %i.hn, %i.ho
  %i.hq = shufflevector <2 x float> %i.en, <2 x float> %i.ej, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.hr = insertelement <2 x float> %i.el, float %i.em, i64 0
  %i.hs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hq, <2 x float> %i.hr, <2 x float> %i.hp) ; 3 uses
  %i.ht = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.hu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.ht, <2 x float> %i.hm)
  %i.hv = shufflevector <2 x float> %i.da, <2 x float> %i.ej, <2 x i32> <i32 0, i32 3>
  %i.hw = insertelement <2 x float> %i.hq, float %i.dc, i64 1
  %i.hx = fmul <2 x float> %i.hv, %i.hw
  %i.hy = shufflevector <2 x float> %i.en, <2 x float> %i.ej, <2 x i32> <i32 0, i32 2>
  %i.hz = insertelement <2 x float> poison, float %i.hg, i64 0
  %i.ia = shufflevector <2 x float> %i.hz, <2 x float> %i.el, <2 x i32> <i32 0, i32 2>
  %i.ib = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hy, <2 x float> %i.ia, <2 x float> %i.hx) ; 3 uses
  %i.ic = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.id = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.ic, <2 x float> %i.hu) ; 4 uses
  %23 = shufflevector <2 x float> %i.id, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.if = fmul <2 x float> %i.ed, %i.hk
  %i.ig = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.hs, <2 x float> %i.if)
  %i.ih = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.ib, <2 x float> %i.ig) ; 4 uses
  %i.ii = shufflevector <2 x float> %i.hk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x float> %i.cx, %i.ii
  %i.ik = shufflevector <2 x float> %i.hs, <2 x float> poison, <2 x i32> zeroinitializer
  %i.il = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.ik, <2 x float> %i.ij)
  %i.im = shufflevector <2 x float> %i.ib, <2 x float> poison, <2 x i32> zeroinitializer
  %i.in = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.im, <2 x float> %i.il) ; 4 uses
  %i.io = extractelement <2 x float> %i.id, i64 1 ; 2 uses
  %i.ip = fmul float %i.aq, %i.io
  %i.iq = extractelement <2 x float> %i.in, i64 0 ; 2 uses
  %i.ir = fmul float %i.ar, %i.iq
  %i.is = extractelement <2 x float> %i.in, i64 1
  %24 = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.fq, float %i.fs)
  %25 = shufflevector <2 x float> %i.ei, <2 x float> %i.ih, <4 x i32> <i32 poison, i32 1, i32 0, i32 3>
  %26 = insertelement <4 x float> %25, float %24, i64 0
  %27 = shufflevector <2 x float> %i.gw, <2 x float> %i.hc, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %28 = insertelement <4 x float> %27, float %i.cm, i64 0
  %29 = shufflevector <4 x float> %28, <4 x float> %i.ie, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %30 = load <2 x float>, ptr %5, align 4, !tbaa !9 ; 3 uses
  %31 = load <2 x float>, ptr %i.as, align 4, !tbaa !9 ; 3 uses
  %32 = insertelement <2 x float> %30, float %i.aq, i64 1
  %33 = insertelement <2 x float> %31, float %i.ar, i64 0
  %34 = shufflevector <2 x float> %31, <2 x float> %30, <2 x i32> <i32 0, i32 3>
  %35 = fmul <2 x float> %i.ei, %34               ; 2 uses
  %36 = fmul <2 x float> %i.gw, %32               ; 3 uses
  %37 = fmul <2 x float> %i.hc, %33               ; 3 uses
  %i.it = extractelement <2 x float> %36, i64 1
  %38 = extractelement <2 x float> %37, i64 1
  %39 = shufflevector <2 x float> %31, <2 x float> %30, <4 x i32> <i32 1, i32 2, i32 3, i32 0>
  %40 = shufflevector <2 x float> %i.ih, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 0>
  %41 = shufflevector <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float poison>, <4 x float> %40, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %42 = fmul <4 x float> %39, %41
  %i.iu = shufflevector <2 x float> %35, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 0, i32 poison>
  %i.iv = insertelement <4 x float> %i.iu, float %i.cp, i64 0
  %43 = shufflevector <2 x float> %i.in, <2 x float> %i.ih, <4 x i32> <i32 1, i32 poison, i32 3, i32 2>
  %44 = shufflevector <4 x float> %43, <4 x float> %23, <4 x i32> <i32 0, i32 4, i32 2, i32 3>
  %45 = fmul <4 x float> %44, %42                 ; 4 uses
  %46 = shufflevector <4 x float> %i.iv, <4 x float> %45, <4 x i32> <i32 0, i32 1, i32 2, i32 6>
  %47 = fmul <4 x float> %26, %46
  %i.iw = shufflevector <2 x float> %36, <2 x float> %37, <4 x i32> <i32 poison, i32 0, i32 2, i32 poison>
  %i.ix = insertelement <4 x float> %i.iw, float %15, i64 0
  %48 = shufflevector <4 x float> %i.ix, <4 x float> %45, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.iy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %48, <4 x float> %29, <4 x float> %47) ; 5 uses
  %i.iz = extractelement <4 x float> %i.iy, i64 1
  %i.ja = extractelement <4 x float> %i.iy, i64 3
  %foldExtExtBinop154 = fmul <2 x float> %i.el, %foldExtExtBinop152
  %i.jb = extractelement <2 x float> %foldExtExtBinop154, i64 0
  %i.jc = tail call float @llvm.fmuladd.f32(float %i.db, float %i.gp, float %i.jb)
  %i.jd = tail call noundef float @llvm.fmuladd.f32(float %.sroa.7.0.copyload, float %i.gq, float %i.jc)
  %i.je = fmul float %i.jd, %i.cp
  %i.jf = shufflevector <2 x float> %i.da, <2 x float> %i.el, <2 x i32> <i32 0, i32 3>
  %i.jg = fmul <2 x float> %i.dd, %i.jf           ; 2 uses
  %i.jh = fmul <2 x float> %36, %i.id
  %i.ji = fmul <2 x float> %35, %i.ih             ; 2 uses
  %i.jj = fmul <2 x float> %37, %i.in
  %i.jk = insertelement <2 x float> poison, float %6, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = fmul <2 x float> %i.jl, %i.jg
  %i.jn = insertelement <2 x float> %i.ds, float %11, i64 1
  %i.jo = shufflevector <2 x float> %i.jn, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.jp = shufflevector <2 x float> %i.da, <2 x float> %i.jg, <4 x i32> <i32 1, i32 1, i32 2, i32 3>
  %i.jq = fmul <4 x float> %i.jo, %i.jp           ; 2 uses
  %i.jr = fadd <2 x float> %i.jh, %i.jj
  %i.js = fadd <2 x float> %i.jm, %i.jr
  %i.jt = insertelement <4 x float> poison, float %6, i64 0
  %i.ju = insertelement <4 x float> %i.jt, float %11, i64 1
  %i.jv = shufflevector <2 x float> %i.js, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.jw = shufflevector <4 x float> %i.ju, <4 x float> %i.jv, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.jx = fmul <4 x float> %i.jw, %i.jq
  %i.jy = fadd <4 x float> %i.jw, %i.jq
  %i.jz = shufflevector <4 x float> %i.jx, <4 x float> %i.jy, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %shift156 = shufflevector <2 x float> %i.ji, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop157 = fadd <2 x float> %i.ji, %shift156
  %op.rdx = extractelement <2 x float> %foldExtExtBinop157, i64 0
  %i.ka = tail call float @llvm.vector.reduce.fadd.v4f32(float %op.rdx, <4 x float> %i.jz) ; 2 uses
  %i.kb = fneg float %i.ka                        ; 2 uses
  %i.kc = fmul float %i.ka, %i.kb
  %i.kd = extractelement <4 x float> %i.iy, i64 2
  %i.ke = tail call noundef float @llvm.fmuladd.f32(float %i.ip, float %i.io, float %i.ja)
  %i.kf = tail call noundef float @llvm.fmuladd.f32(float %i.it, float %i.hd, float %i.iz)
  %i.kg = fadd float %6, %i.ke
  %i.kh = fadd float %6, %i.kf
  %i.ki = fadd float %11, %i.kg
  %i.kj = fadd float %11, %i.kh
  %49 = extractelement <4 x float> %45, i64 3
  %i.kk = tail call float @llvm.fmuladd.f32(float %i.ir, float %i.iq, float %49)
  %50 = extractelement <4 x float> %45, i64 0
  %i.kl = tail call noundef float @llvm.fmuladd.f32(float %50, float %i.is, float %i.kk)
  %i.km = tail call noundef float @llvm.fmuladd.f32(float %38, float %i.he, float %i.kd)
  %i.kn = fadd float %i.ki, %i.kl                 ; 3 uses
  %i.ko = fadd float %i.kj, %i.km                 ; 4 uses
  %i.kp = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.kn, float %i.kc)
  %i.kq = fdiv float 1.000000e+00, %i.kp
  %i.kr = extractelement <4 x float> %i.iy, i64 0 ; 3 uses
  %i.ks = tail call float @llvm.fmuladd.f32(float %19, float %i.cm, float %i.je) ; 3 uses
  %i.kt = fmul float %i.kn, %i.ks
  %i.ku = fmul float %i.ko, %i.kr
  %i.kv = shufflevector <4 x float> %i.iy, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kw = insertelement <2 x float> %i.kv, float %i.ks, i64 0
  %i.kx = insertelement <2 x float> poison, float %i.kb, i64 0
  %i.ky = shufflevector <2 x float> %i.kx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kz = fmul <2 x float> %i.kw, %i.ky
  %i.la = insertelement <2 x float> poison, float %i.kq, i64 0
  %i.lb = shufflevector <2 x float> %i.la, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lc = fmul <2 x float> %i.lb, %i.kz
  %i.ld = insertelement <2 x float> poison, float %i.ku, i64 0
  %i.le = insertelement <2 x float> %i.ld, float %i.kt, i64 1
  %i.lf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.le, <2 x float> %i.lb, <2 x float> %i.lc) ; 2 uses
  %i.lg = extractelement <2 x float> %i.lf, i64 0
  store float %i.lg, ptr %21, align 4, !tbaa !9
  %i.lh = extractelement <2 x float> %i.lf, i64 1 ; 2 uses
  store float %i.lh, ptr %22, align 4, !tbaa !9
  %i.li = load float, ptr %21, align 4, !tbaa !9
  %i.lj = fcmp ogt float %i.li, 0.000000e+00
  br i1 %i.lj, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.lk = fcmp ogt float %i.lh, 0.000000e+00
  br i1 %i.lk, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  store float 0.000000e+00, ptr %22, align 4, !tbaa !9
  %i.ll = fdiv float %i.kr, %i.ko                 ; 2 uses
  store float %i.ll, ptr %21, align 4, !tbaa !9
  %i.lm = fcmp ogt float %i.ll, 0.000000e+00
  br i1 %i.lm, label %bb.g, label %.sink.split

bb.e:                                             ; preds = %bb.b
  store float 0.000000e+00, ptr %21, align 4, !tbaa !9
  %i.ln = fdiv float %i.ks, %i.kn                 ; 2 uses
  store float %i.ln, ptr %22, align 4, !tbaa !9
  %i.lo = fcmp ugt float %i.ln, 0.000000e+00
  br i1 %i.lo, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  store float 0.000000e+00, ptr %22, align 4, !tbaa !9
  %i.lp = fdiv float %i.kr, %i.ko                 ; 2 uses
  store float %i.lp, ptr %21, align 4, !tbaa !9
  %i.lq = fcmp ogt float %i.lp, 0.000000e+00
  br i1 %i.lq, label %bb.g, label %.sink.split

.sink.split:                                      ; preds = %bb.f, %bb.d
  store float 0.000000e+00, ptr %21, align 4, !tbaa !9
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.d, %bb.c, %bb.e, %bb.f, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #1

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"float", !7, i64 0}
!11 = !{!12, !10, i64 0}
!12 = !{!"_ZTS24btSolve2LinearConstraint", !10, i64 0, !10, i64 4}
!13 = !{!12, !10, i64 4}
end_hunk_0
