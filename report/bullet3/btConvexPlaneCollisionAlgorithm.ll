Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btConvexPlaneCollisionAlgorithm?download=true
inline.NumInlined: 310
inline.NumDeleted: 87
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionPK24btCollisionObjectWrapperS5_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.ey = insertelement <2 x float> poison, float %.sroa.35.32.copyload, i64 0
  %i.ez = shufflevector <2 x float> %i.ey, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fa = fmul <2 x float> %i.ez, %i.dz
  %i.fb = insertelement <2 x float> poison, float %.sroa.30.32.copyload, i64 0
  %i.fc = shufflevector <2 x float> %i.fb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dm, <2 x float> %i.fc, <2 x float> %i.fa)
  %i.fe = insertelement <2 x float> poison, float %.sroa.39.32.copyload, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> %i.ff, <2 x float> %i.fd) ; 3 uses
  %i.fh = fmul float %.sroa.35.32.copyload, %i.dr
  %i.fi = tail call float @llvm.fmuladd.f32(float %i.dn, float %.sroa.30.32.copyload, float %i.fh)
  %i.fj = tail call noundef float @llvm.fmuladd.f32(float %i.dv, float %.sroa.39.32.copyload, float %i.fi) ; 3 uses
  %i.fk = insertelement <2 x float> poison, float %i.am, i64 0
  %i.fl = shufflevector <2 x float> %i.fk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fm = fmul <2 x float> %i.fl, %i.eu
  %i.fn = insertelement <2 x float> poison, float %i.aj, i64 0
  %i.fo = shufflevector <2 x float> %i.fn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fo, <2 x float> %i.ei, <2 x float> %i.fm)
  %i.fq = insertelement <2 x float> poison, float %i.ap, i64 0
  %i.fr = shufflevector <2 x float> %i.fq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fr, <2 x float> %i.fg, <2 x float> %i.fp)
  %i.ft = shufflevector <3 x float> %i.ak, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fu = fmul <2 x float> %i.ft, %i.eu
  %i.fv = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.ei, <2 x float> %i.fu)
  %i.fx = shufflevector <3 x float> %i.an, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.fg, <2 x float> %i.fw)
  %i.fz = shufflevector <3 x float> %i.ak, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ga = fmul <2 x float> %i.fz, %i.eu
  %i.gb = shufflevector <3 x float> %i.ah, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.ei, <2 x float> %i.ga)
  %i.gd = shufflevector <3 x float> %i.an, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ge = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gd, <2 x float> %i.fg, <2 x float> %i.gc)
  %i.gf = fmul float %i.am, %i.ex
  %i.gg = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.el, float %i.gf)
  %i.gh = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.fj, float %i.gg)
  %i.gi = fmul float %i.ci, %i.ex
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.el, float %i.gi)
  %i.gk = tail call noundef float @llvm.fmuladd.f32(float %i.ck, float %i.fj, float %i.gj)
  %i.gl = fmul float %i.cl, %i.ex
  %i.gm = tail call float @llvm.fmuladd.f32(float %i.cm, float %i.el, float %i.gl)
  %i.gn = tail call noundef float @llvm.fmuladd.f32(float %i.cn, float %i.fj, float %i.gm)
  %i.go = load float, ptr %i.j, align 4, !tbaa !35
  %i.gp = fneg float %i.go                        ; 2 uses
  %i.gq = load float, ptr %i.ae, align 4, !tbaa !35
  %i.gr = fneg float %i.gq                        ; 2 uses
  %i.gs = load float, ptr %i.af, align 4, !tbaa !35
  %i.gt = fneg float %i.gs                        ; 2 uses
  %i.gu = insertelement <2 x float> poison, float %i.gr, i64 0
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x float> %i.fy, %i.gv
  %i.gx = insertelement <2 x float> poison, float %i.gp, i64 0
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.gy, <2 x float> %i.gw)
  %i.ha = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.hb = shufflevector <2 x float> %i.ha, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ge, <2 x float> %i.hb, <2 x float> %i.gz)
  %i.hd = fmul float %i.gk, %i.gr
  %i.he = tail call float @llvm.fmuladd.f32(float %i.gh, float %i.gp, float %i.hd)
  %i.hf = tail call noundef float @llvm.fmuladd.f32(float %i.gn, float %i.gt, float %i.he)
  %.sroa.3.12.vec.insert.i52 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hf, i64 0
  store <2 x float> %i.hc, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i52, ptr %i.ag, align 8
  %i.hg = load ptr, ptr %i.g, align 8, !tbaa !10
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  %i.hi = load ptr, ptr %i.hh, align 8
  %i.hj = call { <2 x float>, <2 x float> } %i.hi(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %6) ; 2 uses
  %i.hk = extractvalue { <2 x float>, <2 x float> } %i.hj, 0 ; 2 uses
  %i.hl = extractvalue { <2 x float>, <2 x float> } %i.hj, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  %i.hm = shufflevector <2 x float> %i.hk, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.hn = fmul <3 x float> %i.bo, %i.hm
  %i.ho = shufflevector <2 x float> %i.hk, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hp = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ho, <3 x float> %i.bf, <3 x float> %i.hn)
  %i.hq = shufflevector <2 x float> %i.hl, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hr = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.hq, <3 x float> %i.bx, <3 x float> %i.hp)
  %i.hs = fadd <3 x float> %i.ch, %i.hr           ; 4 uses
  %i.ht = load float, ptr %i.ae, align 4, !tbaa !35
  %i.hu = load <3 x float>, ptr %i.j, align 4, !tbaa !35 ; 3 uses
  %i.hv = extractelement <3 x float> %i.hs, i64 2
  %i.hw = fmul float %i.ht, %i.hv
  %i.hx = extractelement <3 x float> %i.hs, i64 1
  %i.hy = extractelement <3 x float> %i.hu, i64 0
  %i.hz = call float @llvm.fmuladd.f32(float %i.hy, float %i.hx, float %i.hw)
  %i.ia = extractelement <3 x float> %i.hs, i64 0
  %i.ib = extractelement <3 x float> %i.hu, i64 2
  %i.ic = call noundef float @llvm.fmuladd.f32(float %i.ib, float %i.ia, float %i.hz)
  %i.id = load float, ptr %i.k, align 4, !tbaa !35
  %i.ie = fsub float %i.ic, %i.id                 ; 3 uses
  %i.if = load ptr, ptr %i.q, align 8, !tbaa !32, !nonnull !30, !align !33 ; 9 uses
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 16
  %i.ih = getelementptr inbounds nuw i8, ptr %i.if, i64 32
  %i.ii = load <2 x float>, ptr %i.if, align 4, !tbaa !35 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 8
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !35
  %i.il = load <2 x float>, ptr %i.ig, align 4, !tbaa !35 ; 2 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.if, i64 24
  %i.in = load float, ptr %i.im, align 4, !tbaa !35
  %i.io = load float, ptr %i.ih, align 4, !tbaa !35
  %i.ip = getelementptr inbounds nuw i8, ptr %i.if, i64 36
  %i.iq = load float, ptr %i.ip, align 4, !tbaa !35
  %i.ir = getelementptr inbounds nuw i8, ptr %i.if, i64 40
  %i.is = load float, ptr %i.ir, align 4, !tbaa !35
  %i.it = getelementptr inbounds nuw i8, ptr %i.if, i64 48
  %i.iu = load <2 x float>, ptr %i.it, align 4, !tbaa !35
  %i.iv = getelementptr inbounds nuw i8, ptr %i.if, i64 56
  %i.iw = load float, ptr %i.iv, align 4, !tbaa !35
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !18
  %i.iz = call noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(880) %i.iy)
  %i.ja = fcmp olt float %i.ie, %i.iz
  %i.jb = load ptr, ptr %i.ix, align 8, !tbaa !18
  %i.jc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.jb, ptr %i.jc, align 8, !tbaa !38
  br i1 %i.ja, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.jd = insertelement <3 x float> poison, float %i.ie, i64 0
  %i.je = shufflevector <3 x float> %i.hu, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.jf = shufflevector <3 x float> %i.jd, <3 x float> poison, <3 x i32> zeroinitializer
  %i.jg = fmul <3 x float> %i.je, %i.jf
  %i.jh = fsub <3 x float> %i.hs, %i.jg           ; 6 uses
  %i.ji = extractelement <3 x float> %i.jh, i64 2
  %i.jj = fmul float %i.ji, %i.iq
  %i.jk = extractelement <3 x float> %i.jh, i64 1
  %i.jl = call float @llvm.fmuladd.f32(float %i.jk, float %i.io, float %i.jj)
  %i.jm = extractelement <3 x float> %i.jh, i64 0
  %i.jn = call noundef float @llvm.fmuladd.f32(float %i.jm, float %i.is, float %i.jl)
  %i.jo = fadd float %i.jn, %i.iw
  %.sroa.3.12.vec.insert.i4.i.i62 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jo, i64 0
  %i.jp = shufflevector <2 x float> %i.ii, <2 x float> %i.il, <2 x i32> <i32 1, i32 3>
  %i.jq = shufflevector <3 x float> %i.jh, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jr = fmul <2 x float> %i.jp, %i.jq
  %i.js = shufflevector <3 x float> %i.jh, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jt = shufflevector <2 x float> %i.ii, <2 x float> %i.il, <2 x i32> <i32 0, i32 2>
  %i.ju = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.jt, <2 x float> %i.jr)
  %i.jv = shufflevector <3 x float> %i.jh, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jw = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.jx = insertelement <2 x float> %i.jw, float %i.in, i64 1
  %i.jy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jv, <2 x float> %i.jx, <2 x float> %i.ju)
  %i.jz = fadd <2 x float> %i.jy, %i.iu
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  %i.ka = load ptr, ptr %i.q, align 8, !tbaa !32, !nonnull !30, !align !33 ; 7 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.ka, i64 8
  %i.kc = load float, ptr %i.kb, align 4, !tbaa !35
  %i.kd = getelementptr inbounds nuw i8, ptr %i.ka, i64 16
  %i.ke = getelementptr inbounds nuw i8, ptr %i.ka, i64 24
  %i.kf = load float, ptr %i.ke, align 4, !tbaa !35
  %i.kg = load float, ptr %i.j, align 4, !tbaa !35 ; 2 uses
  %i.kh = load <2 x float>, ptr %i.ka, align 4, !tbaa !35 ; 2 uses
  %i.ki = load float, ptr %i.ae, align 4, !tbaa !35 ; 2 uses
  %i.kj = load float, ptr %i.af, align 4, !tbaa !35 ; 2 uses
  %i.kk = load <2 x float>, ptr %i.kd, align 4, !tbaa !35 ; 2 uses
  %i.kl = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.km = shufflevector <2 x float> %i.kl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kn = shufflevector <2 x float> %i.kh, <2 x float> %i.kk, <2 x i32> <i32 1, i32 3>
  %i.ko = fmul <2 x float> %i.km, %i.kn
  %i.kp = shufflevector <2 x float> %i.kh, <2 x float> %i.kk, <2 x i32> <i32 0, i32 2>
  %i.kq = insertelement <2 x float> poison, float %i.kg, i64 0
  %i.kr = shufflevector <2 x float> %i.kq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ks = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %i.kr, <2 x float> %i.ko)
  %i.kt = insertelement <2 x float> poison, float %i.kc, i64 0
  %i.ku = insertelement <2 x float> %i.kt, float %i.kf, i64 1
  %i.kv = insertelement <2 x float> poison, float %i.kj, i64 0
  %i.kw = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ku, <2 x float> %i.kw, <2 x float> %i.ks)
  %i.ky = getelementptr inbounds nuw i8, ptr %i.ka, i64 32
  %i.kz = load float, ptr %i.ky, align 4, !tbaa !35
  %i.la = getelementptr inbounds nuw i8, ptr %i.ka, i64 36
  %i.lb = load float, ptr %i.la, align 4, !tbaa !35
  %i.lc = fmul float %i.ki, %i.lb
  %i.ld = call float @llvm.fmuladd.f32(float %i.kz, float %i.kg, float %i.lc)
  %i.le = getelementptr inbounds nuw i8, ptr %i.ka, i64 40
  %i.lf = load float, ptr %i.le, align 4, !tbaa !35
  %i.lg = call noundef float @llvm.fmuladd.f32(float %i.lf, float %i.kj, float %i.ld)
  %.sroa.3.12.vec.insert.i65 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lg, i64 0
  store <2 x float> %i.kx, ptr %7, align 8
  %i.lh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i65, ptr %i.lh, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  store <2 x float> %i.jz, ptr %8, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i62, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !39
  %i.li = load ptr, ptr %5, align 8, !tbaa !10
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 32
  %i.lk = load ptr, ptr %i.lj, align 8
  call void %i.lk(ptr noundef nonnull align 8 dereferenceable(52) %5, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, float noundef %i.ie)
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
  %sincos.sin.i.i84 = alloca float, align 4       ; 4 uses
  %sincos.cos.i.i85 = alloca float, align 4       ; 4 uses
  %sincos.sin.i.i = alloca float, align 4         ; 4 uses
  %sincos.cos.i.i = alloca float, align 4         ; 4 uses
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
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 72 ; 5 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.k, i64 76 ; 4 uses
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
  %i.cx = load float, ptr %i.l, align 4, !tbaa !35
  %i.cy = fneg float %i.cx                        ; 2 uses
  %i.cz = load float, ptr %i.aw, align 4, !tbaa !35
  %i.da = fneg float %i.cz                        ; 2 uses
  %i.db = load float, ptr %i.ax, align 4, !tbaa !35
  %i.dc = fneg float %i.db                        ; 2 uses
  %i.dd = shufflevector <3 x float> %i.bn, <3 x float> %i.bw, <2 x i32> <i32 2, i32 5>
  %i.de = insertelement <2 x float> poison, float %i.da, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = fmul <2 x float> %i.dd, %i.df
  %i.dh = shufflevector <3 x float> %i.bn, <3 x float> %i.bw, <2 x i32> <i32 1, i32 4>
  %i.di = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dh, <2 x float> %i.dj, <2 x float> %i.dg)
  %i.dl = shufflevector <3 x float> %i.bn, <3 x float> %i.bw, <2 x i32> <i32 0, i32 3>
  %i.dm = insertelement <2 x float> poison, float %i.dc, i64 0
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.do = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dl, <2 x float> %i.dn, <2 x float> %i.dk)
  %i.dp = extractelement <3 x float> %i.cf, i64 2
  %i.dq = fmul float %i.dp, %i.da
  %i.dr = extractelement <3 x float> %i.cf, i64 1
  %i.ds = tail call float @llvm.fmuladd.f32(float %i.dr, float %i.cy, float %i.dq)
  %i.dt = extractelement <3 x float> %i.cf, i64 0
  %i.du = tail call noundef float @llvm.fmuladd.f32(float %i.dt, float %i.dc, float %i.ds)
  %.sroa.3.12.vec.insert.i68 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.du, i64 0
  store <2 x float> %i.do, ptr %5, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i68, ptr %i.ay, align 8
  %i.dv = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dv, i64 128
  %i.dx = load ptr, ptr %i.dw, align 8
  %i.dy = call { <2 x float>, <2 x float> } %i.dx(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 4 dereferenceable(16) %5) ; 2 uses
  %i.dz = extractvalue { <2 x float>, <2 x float> } %i.dy, 0 ; 2 uses
  %i.ea = extractvalue { <2 x float>, <2 x float> } %i.dy, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ec = fmul <3 x float> %i.bw, %i.eb
  %i.ed = shufflevector <2 x float> %i.dz, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ee = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ed, <3 x float> %i.bn, <3 x float> %i.ec)
  %i.ef = shufflevector <2 x float> %i.ea, <2 x float> poison, <3 x i32> zeroinitializer
  %i.eg = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ef, <3 x float> %i.cf, <3 x float> %i.ee)
  %i.eh = fadd <3 x float> %i.cw, %i.eg           ; 4 uses
  %i.ei = load float, ptr %i.aw, align 4, !tbaa !35
  %i.ej = load <3 x float>, ptr %i.l, align 4, !tbaa !35 ; 3 uses
  %i.ek = extractelement <3 x float> %i.eh, i64 2
  %i.el = fmul float %i.ei, %i.ek
  %i.em = extractelement <3 x float> %i.eh, i64 1
  %i.en = extractelement <3 x float> %i.ej, i64 0
  %i.eo = call float @llvm.fmuladd.f32(float %i.en, float %i.em, float %i.el)
  %i.ep = extractelement <3 x float> %i.eh, i64 0
  %i.eq = extractelement <3 x float> %i.ej, i64 2
  %i.er = call noundef float @llvm.fmuladd.f32(float %i.eq, float %i.ep, float %i.eo)
  %i.es = load float, ptr %i.m, align 4, !tbaa !35
  %i.et = fsub float %i.er, %i.es                 ; 3 uses
  %i.eu = load ptr, ptr %i.am, align 8, !tbaa !32, !nonnull !30, !align !33 ; 9 uses
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 16
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 32
  %i.ex = load <2 x float>, ptr %i.eu, align 4, !tbaa !35 ; 2 uses
  %i.ey = getelementptr inbounds nuw i8, ptr %i.eu, i64 8
  %i.ez = load float, ptr %i.ey, align 4, !tbaa !35
  %i.fa = load <2 x float>, ptr %i.ev, align 4, !tbaa !35 ; 2 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.fc = load float, ptr %i.fb, align 4, !tbaa !35
  %i.fd = load float, ptr %i.ew, align 4, !tbaa !35
  %i.fe = getelementptr inbounds nuw i8, ptr %i.eu, i64 36
  %i.ff = load float, ptr %i.fe, align 4, !tbaa !35
  %i.fg = getelementptr inbounds nuw i8, ptr %i.eu, i64 40
  %i.fh = load float, ptr %i.fg, align 4, !tbaa !35
  %i.fi = getelementptr inbounds nuw i8, ptr %i.eu, i64 48
  %i.fj = load <2 x float>, ptr %i.fi, align 4, !tbaa !35
  %i.fk = getelementptr inbounds nuw i8, ptr %i.eu, i64 56
  %i.fl = load float, ptr %i.fk, align 4, !tbaa !35
  %i.fm = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.fn = call noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(880) %i.fm)
  %i.fo = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.fp = load float, ptr %i.fo, align 8, !tbaa !61
  %i.fq = fadd float %i.fn, %i.fp
  %i.fr = fcmp olt float %i.et, %i.fq
  %i.fs = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.ft = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 3 uses
  store ptr %i.fs, ptr %i.ft, align 8, !tbaa !38
  br i1 %i.fr, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.fu = insertelement <3 x float> poison, float %i.et, i64 0
  %i.fv = shufflevector <3 x float> %i.ej, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.fw = shufflevector <3 x float> %i.fu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fx = fmul <3 x float> %i.fv, %i.fw
  %i.fy = fsub <3 x float> %i.eh, %i.fx           ; 6 uses
  %i.fz = extractelement <3 x float> %i.fy, i64 2
  %i.ga = fmul float %i.fz, %i.ff
  %i.gb = extractelement <3 x float> %i.fy, i64 1
  %i.gc = call float @llvm.fmuladd.f32(float %i.gb, float %i.fd, float %i.ga)
  %i.gd = extractelement <3 x float> %i.fy, i64 0
  %i.ge = call noundef float @llvm.fmuladd.f32(float %i.gd, float %i.fh, float %i.gc)
  %i.gf = fadd float %i.ge, %i.fl
  %.sroa.3.12.vec.insert.i4.i.i78 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gf, i64 0
  %i.gg = shufflevector <2 x float> %i.ex, <2 x float> %i.fa, <2 x i32> <i32 1, i32 3>
  %i.gh = shufflevector <3 x float> %i.fy, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gi = fmul <2 x float> %i.gg, %i.gh
  %i.gj = shufflevector <3 x float> %i.fy, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gk = shufflevector <2 x float> %i.ex, <2 x float> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.gl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gj, <2 x float> %i.gk, <2 x float> %i.gi)
  %i.gm = shufflevector <3 x float> %i.fy, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gn = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.go = insertelement <2 x float> %i.gn, float %i.fc, i64 1
  %i.gp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gm, <2 x float> %i.go, <2 x float> %i.gl)
  %i.gq = fadd <2 x float> %i.gp, %i.fj
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %i.gr = load ptr, ptr %i.am, align 8, !tbaa !32, !nonnull !30, !align !33 ; 7 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !35
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %i.gv = getelementptr inbounds nuw i8, ptr %i.gr, i64 24
  %i.gw = load float, ptr %i.gv, align 4, !tbaa !35
  %i.gx = load float, ptr %i.l, align 4, !tbaa !35 ; 2 uses
  %i.gy = load <2 x float>, ptr %i.gr, align 4, !tbaa !35 ; 2 uses
  %i.gz = load float, ptr %i.aw, align 4, !tbaa !35 ; 2 uses
  %i.ha = load float, ptr %i.ax, align 4, !tbaa !35 ; 2 uses
  %i.hb = load <2 x float>, ptr %i.gu, align 4, !tbaa !35 ; 2 uses
  %i.hc = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.hd = shufflevector <2 x float> %i.hc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.he = shufflevector <2 x float> %i.gy, <2 x float> %i.hb, <2 x i32> <i32 1, i32 3>
  %i.hf = fmul <2 x float> %i.hd, %i.he
  %i.hg = shufflevector <2 x float> %i.gy, <2 x float> %i.hb, <2 x i32> <i32 0, i32 2>
  %i.hh = insertelement <2 x float> poison, float %i.gx, i64 0
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hg, <2 x float> %i.hi, <2 x float> %i.hf)
  %i.hk = insertelement <2 x float> poison, float %i.gt, i64 0
  %i.hl = insertelement <2 x float> %i.hk, float %i.gw, i64 1
  %i.hm = insertelement <2 x float> poison, float %i.ha, i64 0
  %i.hn = shufflevector <2 x float> %i.hm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ho = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.hl, <2 x float> %i.hn, <2 x float> %i.hj)
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gr, i64 32
  %i.hq = load float, ptr %i.hp, align 4, !tbaa !35
  %i.hr = getelementptr inbounds nuw i8, ptr %i.gr, i64 36
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !35
  %i.ht = fmul float %i.gz, %i.hs
  %i.hu = call float @llvm.fmuladd.f32(float %i.hq, float %i.gx, float %i.ht)
  %i.hv = getelementptr inbounds nuw i8, ptr %i.gr, i64 40
  %i.hw = load float, ptr %i.hv, align 4, !tbaa !35
  %i.hx = call noundef float @llvm.fmuladd.f32(float %i.hw, float %i.ha, float %i.hu)
  %.sroa.3.12.vec.insert.i81 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hx, i64 0
  store <2 x float> %i.ho, ptr %6, align 8
  %i.hy = getelementptr inbounds nuw i8, ptr %6, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i81, ptr %i.hy, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store <2 x float> %i.gq, ptr %7, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i78, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !39
  %i.hz = load ptr, ptr %4, align 8, !tbaa !10
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 32
  %i.ib = load ptr, ptr %i.ia, align 8
  call void %i.ib(ptr noundef nonnull align 8 dereferenceable(52) %4, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.et)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ic = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.id = load i32, ptr %i.ic, align 8, !tbaa !63
  %i.ie = icmp slt i32 %i.id, 7
  br i1 %i.ie, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d
  %i.if = load ptr, ptr %i.ft, align 8, !tbaa !38
  %i.ig = getelementptr inbounds nuw i8, ptr %i.if, i64 856
  %i.ih = load i32, ptr %i.ig, align 8, !tbaa !66
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ij = load i32, ptr %i.ii, align 8, !tbaa !21
  %i.ik = icmp slt i32 %i.ih, %i.ij
  br i1 %i.ik, label %bb.f, label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.il = load float, ptr %i.ax, align 4, !tbaa !35 ; 4 uses
  %i.im = call noundef float @llvm.fabs.f32(float %i.il)
  %i.in = fcmp ogt float %i.im, f0x3F3504F3
  br i1 %i.in, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.io = load float, ptr %i.aw, align 4, !tbaa !35 ; 3 uses
  %i.ip = fmul nnan float %i.il, %i.il
  %i.iq = call float @llvm.fmuladd.f32(float %i.io, float %i.io, float %i.ip)
  %sqrt.i = call float @llvm.sqrt.f32(float %i.iq)
  %i.ir = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.is = fneg float %i.il
  %i.it = fmul float %i.ir, %i.is
  %i.iu = fmul float %i.io, %i.ir
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

bb.h:                                             ; preds = %bb.f
  %i.iv = load float, ptr %i.l, align 4, !tbaa !35 ; 3 uses
  %i.iw = load float, ptr %i.aw, align 4, !tbaa !35 ; 3 uses
  %i.ix = fmul float %i.iw, %i.iw
  %i.iy = call float @llvm.fmuladd.f32(float %i.iv, float %i.iv, float %i.ix)
  %sqrt43.i = call float @llvm.sqrt.f32(float %i.iy)
  %i.iz = fdiv float 1.000000e+00, %sqrt43.i      ; 2 uses
  %i.ja = fneg float %i.iw
  %i.jb = fmul float %i.iz, %i.ja
  %i.jc = fmul float %i.iv, %i.iz
  br label %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit

_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit:   ; preds = %bb.g, %bb.h
  %.sroa.10.0 = phi float [ %i.iu, %bb.g ], [ 0.000000e+00, %bb.h ] ; 3 uses
  %.sroa.6119.0 = phi float [ %i.it, %bb.g ], [ %i.jc, %bb.h ] ; 3 uses
  %.sroa.0117.0 = phi float [ 0.000000e+00, %bb.g ], [ %i.jb, %bb.h ] ; 3 uses
  %i.jd = load ptr, ptr %i.i, align 8, !tbaa !10
  %i.je = getelementptr inbounds nuw i8, ptr %i.jd, i64 32
  %i.jf = load ptr, ptr %i.je, align 8
  %i.jg = call noundef float %i.jf(ptr noundef nonnull align 8 dereferenceable(32) %i.i)
  %i.jh = load float, ptr @gContactBreakingThreshold, align 4, !tbaa !35
  %i.ji = fdiv float %i.jh, %i.jg                 ; 2 uses
  %i.jj = fcmp ogt float %i.ji, f0x3EC90FDB
  %spec.store.select = select i1 %i.jj, float f0x3EC90FDB, float %i.ji
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i.i)
  %i.jk = fmul float %.sroa.6119.0, %.sroa.6119.0
  %i.jl = call float @llvm.fmuladd.f32(float %.sroa.0117.0, float %.sroa.0117.0, float %i.jk)
  %i.jm = call noundef float @llvm.fmuladd.f32(float %.sroa.10.0, float %.sroa.10.0, float %i.jl)
  %sqrt.i.i.i = call noundef float @llvm.sqrt.f32(float %i.jm)
  %i.jn = fmul float %spec.store.select, 5.000000e-01
  call void @sincosf(float %i.jn, ptr nonnull %sincos.sin.i.i, ptr nonnull %sincos.cos.i.i)
  %sin.i.i = load float, ptr %sincos.sin.i.i, align 4
  %cos.i.i = load float, ptr %sincos.cos.i.i, align 4 ; 3 uses
  %i.jo = fdiv float %sin.i.i, %sqrt.i.i.i        ; 2 uses
  %i.jp = fmul float %.sroa.6119.0, %i.jo         ; 4 uses
  %i.jq = insertelement <2 x float> poison, float %i.jo, i64 0
  %i.jr = shufflevector <2 x float> %i.jq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.js = insertelement <2 x float> poison, float %.sroa.10.0, i64 0
  %i.jt = insertelement <2 x float> %i.js, float %.sroa.0117.0, i64 1
  %i.ju = fmul <2 x float> %i.jt, %i.jr           ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i.i)
  %i.jv = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.jw = load i32, ptr %i.jv, align 4, !tbaa !20 ; 2 uses
  %i.jx = icmp sgt i32 %i.jw, 0
  br i1 %i.jx, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit
  %i.jy = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.jz = insertelement <2 x float> poison, float %i.jp, i64 1
  %i.ka = shufflevector <2 x float> %i.ju, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kb = insertelement <2 x float> %i.ka, float %i.jp, i64 0
  %i.kc = insertelement <2 x float> poison, float %cos.i.i, i64 0
  %i.kd = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ke = extractelement <2 x float> %i.ju, i64 0 ; 2 uses
  %i.kf = extractelement <2 x float> %i.ju, i64 1 ; 2 uses
  %i.kg = shufflevector <2 x float> %i.jz, <2 x float> %i.ju, <2 x i32> <i32 3, i32 1>
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %bb.i
  %i.kh = phi i32 [ %i.jw, %.lr.ph ], [ %i.mw, %bb.i ]
  %.0212 = phi i32 [ 0, %.lr.ph ], [ %i.mv, %bb.i ] ; 2 uses
  %i.ki = uitofp nneg i32 %.0212 to float
  %i.kj = sitofp i32 %i.kh to float
  %i.kk = fdiv nnan float f0x40C90FDB, %i.kj
  %i.kl = fmul float %i.kk, %i.ki
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.sin.i.i84)
  call void @llvm.lifetime.start.p0(ptr nonnull %sincos.cos.i.i85)
  %9 = fmul float %i.kl, 5.000000e-01
  %i.km = load <2 x float>, ptr %i.l, align 4, !tbaa !35 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.km, %i.km
  %i.kn = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ko = extractelement <2 x float> %i.km, i64 0 ; 2 uses
  %i.kp = call float @llvm.fmuladd.f32(float %i.ko, float %i.ko, float %i.kn)
  %i.kq = load float, ptr %i.ax, align 4, !tbaa !35 ; 3 uses
  %i.kr = call noundef float @llvm.fmuladd.f32(float %i.kq, float %i.kq, float %i.kp)
  %sqrt.i.i.i84 = call noundef float @llvm.sqrt.f32(float %i.kr)
  call void @sincosf(float %9, ptr nonnull %sincos.sin.i.i84, ptr nonnull %sincos.cos.i.i85)
  %sin.i.i87 = load float, ptr %sincos.sin.i.i84, align 4
  %cos.i.i88 = load float, ptr %sincos.cos.i.i85, align 4 ; 6 uses
  %i.ks = fdiv float %sin.i.i87, %sqrt.i.i.i84    ; 2 uses
  %i.kt = insertelement <2 x float> poison, float %i.ks, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = fmul <2 x float> %i.km, %i.ku           ; 6 uses
  %i.kw = extractelement <2 x float> %i.kv, i64 0 ; 4 uses
  %i.kx = fmul float %i.kq, %i.ks                 ; 8 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.sin.i.i84)
  call void @llvm.lifetime.end.p0(ptr nonnull %sincos.cos.i.i85)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #12
  %i.ky = fneg float %i.kw                        ; 2 uses
  %i.kz = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.la = insertelement <2 x float> %i.kz, float %i.kx, i64 0
  %i.lb = fneg <2 x float> %i.la
  %i.lc = insertelement <2 x float> %i.kz, float %i.kx, i64 1
  %i.ld = fneg <2 x float> %i.lc                  ; 2 uses
  %i.le = fmul float %cos.i.i, %i.ky
  %i.lf = call float @llvm.fmuladd.f32(float %cos.i.i88, float %i.kf, float %i.le)
  %i.lg = extractelement <2 x float> %i.ld, i64 0
  %i.lh = call float @llvm.fmuladd.f32(float %i.lg, float %i.ke, float %i.lf)
  %i.li = call float @llvm.fmuladd.f32(float %i.kx, float %i.jp, float %i.lh) ; 4 uses
  %i.lj = fmul <2 x float> %i.kd, %i.ld
  %i.lk = insertelement <2 x float> poison, float %cos.i.i88, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.lm = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ll, <2 x float> %i.kb, <2 x float> %i.lj)
  %i.ln = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lb, <2 x float> %i.kg, <2 x float> %i.lm)
  %i.lo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kv, <2 x float> %i.ju, <2 x float> %i.ln) ; 3 uses
  %i.lp = extractelement <2 x float> %i.lo, i64 1 ; 3 uses
  %i.lq = fmul float %i.kf, %i.kw
  %i.lr = call float @llvm.fmuladd.f32(float %cos.i.i88, float %cos.i.i, float %i.lq)
  %i.ls = extractelement <2 x float> %i.kv, i64 1 ; 3 uses
  %i.lt = call float @llvm.fmuladd.f32(float %i.ls, float %i.jp, float %i.lr)
  %i.lu = call float @llvm.fmuladd.f32(float %i.kx, float %i.ke, float %i.lt) ; 3 uses
  %i.lv = fmul float %cos.i.i88, %i.li
  %i.lw = call float @llvm.fmuladd.f32(float %i.lu, float %i.kw, float %i.lv)
  %i.lx = extractelement <2 x float> %i.lo, i64 0 ; 2 uses
  %i.ly = call float @llvm.fmuladd.f32(float %i.lx, float %i.kx, float %i.lw)
  %i.lz = fneg float %i.lp
  %i.ma = fneg <2 x float> %i.lo                  ; 2 uses
  %i.mb = call float @llvm.fmuladd.f32(float %i.lz, float %i.ls, float %i.ly)
  %i.mc = fmul float %cos.i.i88, %i.lx
  %i.md = call float @llvm.fmuladd.f32(float %i.lu, float %i.ls, float %i.mc)
  %i.me = call float @llvm.fmuladd.f32(float %i.lp, float %i.kw, float %i.md)
  %i.mf = fneg float %i.li
  %i.mg = call float @llvm.fmuladd.f32(float %i.mf, float %i.kx, float %i.me)
  %i.mh = fmul float %cos.i.i88, %i.lp
  %i.mi = fmul float %i.li, %i.ky
  %i.mj = insertelement <2 x float> poison, float %i.lu, i64 0
  %i.mk = shufflevector <2 x float> %i.mj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ml = insertelement <2 x float> %i.ll, float %i.kx, i64 0
  %i.mm = insertelement <2 x float> poison, float %i.mh, i64 0
  %i.mn = insertelement <2 x float> %i.mm, float %i.mi, i64 1
  %i.mo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mk, <2 x float> %i.ml, <2 x float> %i.mn)
  %i.mp = shufflevector <2 x float> %i.ma, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.mq = insertelement <2 x float> %i.mp, float %i.li, i64 0
  %i.mr = shufflevector <2 x float> %i.kv, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ms = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.mq, <2 x float> %i.mr, <2 x float> %i.mo)
  %i.mt = insertelement <2 x float> %i.kv, float %i.kx, i64 1
  %i.mu = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ma, <2 x float> %i.mt, <2 x float> %i.ms)
  %.sroa.0.0.vec.insert.i96 = insertelement <2 x float> poison, float %i.mb, i64 0
  %.sroa.0.4.vec.insert.i97 = insertelement <2 x float> %.sroa.0.0.vec.insert.i96, float %i.mg, i64 1
  store <2 x float> %.sroa.0.4.vec.insert.i97, ptr %8, align 8
  store <2 x float> %i.mu, ptr %i.jy, align 8
  call void @_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionPK24btCollisionObjectWrapperS5_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef %1, ptr noundef %2, ptr nonnull align 8 poison, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #12
  %i.mv = add nuw nsw i32 %.0212, 1               ; 2 uses
  %i.mw = load i32, ptr %i.jv, align 4, !tbaa !20 ; 2 uses
  %i.mx = icmp slt i32 %i.mv, %i.mw
  br i1 %i.mx, label %bb.i, label %.loopexit, !llvm.loop !56

.loopexit:                                        ; preds = %bb.i, %_Z13btPlaneSpace1I9btVector3EvRKT_RS1_S4_.exit, %bb.e, %bb.d
  %i.my = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.mz = load i8, ptr %i.my, align 8, !tbaa !17, !range !29, !noundef !30
  %i.na = trunc nuw i8 %i.mz to i1
  br i1 %i.na, label %bb.j, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.j:                                             ; preds = %.loopexit
  %i.nb = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.nc = getelementptr inbounds nuw i8, ptr %i.nb, i64 856
  %i.nd = load i32, ptr %i.nc, align 8, !tbaa !66
  %.not38 = icmp eq i32 %i.nd, 0
  br i1 %.not38, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ne = load ptr, ptr %i.ft, align 8, !tbaa !38 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 856
  %i.ng = load i32, ptr %i.nf, align 8, !tbaa !66
  %.not.i = icmp eq i32 %i.ng, 0
  br i1 %.not.i, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.k
  %i.nh = getelementptr inbounds nuw i8, ptr %i.ne, i64 840
  %i.ni = load ptr, ptr %i.nh, align 8, !tbaa !67
  %i.nj = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.nk = load ptr, ptr %i.nj, align 8, !tbaa !68
  %i.nl = getelementptr inbounds nuw i8, ptr %i.nk, i64 16
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !28 ; 3 uses
  %.not1.i = icmp eq ptr %i.ni, %i.nm             ; 2 uses
  %i.nn = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.no = load ptr, ptr %i.nn, align 8, !tbaa !69
  %i.np = getelementptr inbounds nuw i8, ptr %i.no, i64 16
  %i.nq = load ptr, ptr %i.np, align 8, !tbaa !28 ; 2 uses
  %. = select i1 %.not1.i, ptr %i.nq, ptr %i.nm
  %.215 = select i1 %.not1.i, ptr %i.nm, ptr %i.nq
  %.sink.i102 = getelementptr inbounds nuw i8, ptr %.215, i64 8
  %i.nr = getelementptr inbounds nuw i8, ptr %., i64 8
  call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880) %i.ne, ptr noundef nonnull align 4 dereferenceable(64) %.sink.i102, ptr noundef nonnull align 4 dereferenceable(64) %i.nr)
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %.loopexit, %bb.j, %bb.k, %.sink.split.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef float @_ZN31btConvexPlaneCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #8 align 2 {
bb.a:
  ret float 1.000000e+00
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 8 dereferenceable(25) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 3 uses
  %.not = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !29
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond = select i1 %.not, i1 %i.e, i1 false
  br i1 %or.cond, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 4 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !77   ; 7 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !tbaa !78
  %i.j = icmp eq i32 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  %i.k = shl nsw i32 %i.g, 1
  %i.l = select i1 %.not.i.i, i32 1, i32 %i.k     ; 4 uses
  %i.m = icmp slt i32 %i.g, %i.l
  br i1 %i.m, label %bb.d, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = sext i32 %i.l to i64
  %i.o = shl nsw i64 %i.n, 3
  %i.p = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.o, i32 noundef 16)
  %.pre.i = load i32, ptr %i.f, align 4, !tbaa !77
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i: ; preds = %bb.e, %bb.d
  %i.q = phi i32 [ %.pre.i, %bb.e ], [ %i.g, %bb.d ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.p, %bb.e ], [ null, %bb.d ] ; 8 uses
  %i.r = icmp sgt i32 %i.q, 0
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !79   ; 9 uses
  br i1 %i.r, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %i.u = ptrtoaddr ptr %i.t to i64
  %.0.i.i.i9 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.q to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.q, 8
  %i.v = sub i64 %i.u, %.0.i.i.i9
  %diff.check = icmp ugt i64 %i.v, -32
  %or.cond11 = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond11, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x ptr>, ptr %i.x, align 8, !tbaa !80
  %wide.load10 = load <2 x ptr>, ptr %i.y, align 8, !tbaa !80
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x ptr> %wide.load, ptr %i.w, align 8, !tbaa !80
  store <2 x ptr> %wide.load10, ptr %i.z, align 8, !tbaa !80
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.aa = icmp eq i64 %index.next, %n.vec
  br i1 %i.aa, label %middle.block, label %vector.body, !llvm.loop !70

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i.prol
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !80
  store ptr %i.ad, ptr %i.ab, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !71

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ae = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.af = icmp ugt i64 %i.ae, -4
  br i1 %i.af, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.i.i.i
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !80
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !80
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !80
  store ptr %i.al, ptr %i.aj, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.1
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !80
  store ptr %i.ao, ptr %i.am, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv.next.i.i.i.2
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !80
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !80
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !72

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.at = load i8, ptr %i.as, align 8, !tbaa !84, !range !29, !noundef !30
  %i.au = trunc nuw i8 %i.at to i1
  br i1 %i.au, label %bb.f, label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

bb.f:                                             ; preds = %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.t)
  %.pre2.pre.pre.i = load i32, ptr %i.f, align 4, !tbaa !77
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i: ; preds = %bb.f, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.f ], [ %i.q, %_ZNK20btAlignedObjectArrayIP20btPersistentManifoldE4copyEiiPS1_.exit.thread.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 24
  store i8 1, ptr %i.av, align 8, !tbaa !84
  store ptr %.0.i.i.i, ptr %i.s, align 8, !tbaa !79
  store i32 %i.l, ptr %i.h, align 8, !tbaa !78
  %.pre = load ptr, ptr %i.a, align 8, !tbaa !80
  br label %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit: ; preds = %bb.b, %bb.c, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i
  %i.aw = phi ptr [ %.pre, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.b, %bb.c ], [ %i.b, %bb.b ]
  %i.ax = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE10deallocateEv.exit.i.i ], [ %i.g, %bb.c ], [ %i.g, %bb.b ] ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !79
  %i.ba = sext i32 %i.ax to i64
  %i.bb = getelementptr inbounds [8 x i8], ptr %i.az, i64 %i.ba
  store ptr %i.aw, ptr %i.bb, align 8, !tbaa !80
  %i.bc = add nsw i32 %i.ax, 1
  store i32 %i.bc, ptr %i.f, align 4, !tbaa !77
  br label %bb.g

bb.g:                                             ; preds = %_ZN20btAlignedObjectArrayIP20btPersistentManifoldE9push_backERKS1_.exit, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(880), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64)) local_unnamed_addr #1

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincosf(float noundef, ptr, ptr) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 _ZTS12btDispatcher", !11, i64 0}
!13 = !{!"_ZTS20btCollisionAlgorithm", !12, i64 8}
!14 = !{!"bool", !5, i64 0}
!15 = !{!"p1 _ZTS20btPersistentManifold", !11, i64 0}
!16 = !{!"_ZTS31btConvexPlaneCollisionAlgorithm", !13, i64 0, !14, i64 16, !15, i64 24, !14, i64 32, !6, i64 36, !6, i64 40}
!17 = !{!16, !14, i64 16}
!18 = !{!16, !15, i64 24}
!19 = !{!16, !14, i64 32}
!20 = !{!16, !6, i64 36}
!21 = !{!16, !6, i64 40}
!22 = !{!13, !12, i64 8}
!23 = !{!"p1 _ZTS24btCollisionObjectWrapper", !11, i64 0}
!24 = !{!"p1 _ZTS16btCollisionShape", !11, i64 0}
!25 = !{!"p1 _ZTS17btCollisionObject", !11, i64 0}
!26 = !{!"p1 _ZTS11btTransform", !11, i64 0}
!27 = !{!"_ZTS24btCollisionObjectWrapper", !23, i64 0, !24, i64 8, !25, i64 16, !26, i64 24, !26, i64 32, !6, i64 40, !6, i64 44}
!28 = !{!27, !25, i64 16}
!29 = !{i8 0, i8 2}
!30 = !{}
!31 = !{!27, !24, i64 8}
!32 = !{!27, !26, i64 24}
!33 = !{i64 4}
!34 = !{!"float", !5, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!37 = !{!"_ZTS16btManifoldResult", !36, i64 0, !15, i64 8, !23, i64 16, !23, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44, !34, i64 48}
!38 = !{!37, !15, i64 8}
!39 = !{!5, !5, i64 0}
!40 = !{!"llvm.loop.mustprogress"}
!41 = !{ptr @_ZN31btConvexPlaneCollisionAlgorithmD2Ev}
!42 = distinct !{!42, i1 true, !"_ZNK11btTransform7inverseEv"}
!43 = distinct !{!43, !42, !"_ZNK11btTransform7inverseEv: argument 0"}
!44 = distinct !{!44, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!45 = distinct !{!45, !44, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!46 = !{!43}
!47 = !{!45, !43}
!48 = distinct !{!48, i1 true, !"_ZNK11btTransform7inverseEv"}
!49 = distinct !{!49, !48, !"_ZNK11btTransform7inverseEv: argument 0"}
!50 = distinct !{!50, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!51 = distinct !{!51, !50, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!52 = distinct !{!52, i1 true, !"_ZNK11btTransformmlERKS_"}
!53 = distinct !{!53, !52, !"_ZNK11btTransformmlERKS_: argument 0"}
!54 = distinct !{!54, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!55 = distinct !{!55, !54, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!56 = distinct !{!56, !40}
!57 = !{!51, !49}
!58 = !{!49}
!59 = !{!53}
!60 = !{!55, !53}
!61 = !{!37, !34, i64 48}
!62 = !{!"_ZTS16btCollisionShape", !6, i64 8, !11, i64 16, !6, i64 24, !6, i64 28}
!63 = !{!62, !6, i64 8}
!64 = !{!"_ZTS13btTypedObject", !6, i64 0}
!65 = !{!"_ZTS20btPersistentManifold", !64, i64 0, !5, i64 8, !25, i64 840, !25, i64 848, !6, i64 856, !34, i64 860, !34, i64 864, !6, i64 868, !6, i64 872, !6, i64 876}
!66 = !{!65, !6, i64 856}
!67 = !{!65, !25, i64 840}
!68 = !{!37, !23, i64 16}
!69 = !{!37, !23, i64 24}
!70 = distinct !{!70, !40, !81, !82}
!71 = distinct !{!71, !83}
!72 = distinct !{!72, !40, !81}
!73 = !{!"_ZTS18btAlignedAllocatorIP20btPersistentManifoldLj16EE"}
!74 = !{!"any p2 pointer", !11, i64 0}
!75 = !{!"p2 _ZTS20btPersistentManifold", !74, i64 0}
!76 = !{!"_ZTS20btAlignedObjectArrayIP20btPersistentManifoldE", !73, i64 0, !6, i64 4, !6, i64 8, !75, i64 16, !14, i64 24}
!77 = !{!76, !6, i64 4}
!78 = !{!76, !6, i64 8}
!79 = !{!76, !75, i64 16}
!80 = !{!15, !15, i64 0}
!81 = !{!"llvm.loop.isvectorized", i32 1}
!82 = !{!"llvm.loop.unroll.runtime.disable"}
!83 = !{!"llvm.loop.unroll.disable"}
!84 = !{!76, !14, i64 24}
end_hunk_0
