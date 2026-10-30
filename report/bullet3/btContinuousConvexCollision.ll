Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btContinuousConvexCollision?download=true
inline.NumInlined: 407
inline.NumDeleted: 85
begin_hunk_0_@_ZN27btContinuousConvexCollision20computeClosestPointsERK11btTransformS2_R16btPointCollector:bb.a
  %i.dt = fmul <2 x float> %i.bo, %i.ds
  %i.du = shufflevector <3 x float> %i.cd, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bn, <2 x float> %i.du, <2 x float> %i.dt)
  %i.dw = shufflevector <3 x float> %i.ch, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.dx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.dw, <2 x float> %i.dv) ; 3 uses
  %i.dy = fmul <2 x float> %i.dq, %i.bx
  %i.dz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> %i.bz, <2 x float> %i.dy)
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dx, <2 x float> %i.cb, <2 x float> %i.dz)
  %i.eb = extractelement <3 x float> %i.cv, i64 2
  %i.ec = fmul float %i.eb, %i.bt
  %i.ed = extractelement <3 x float> %i.cv, i64 1
  %i.ee = tail call float @llvm.fmuladd.f32(float %i.ed, float %i.br, float %i.ec)
  %i.ef = extractelement <3 x float> %i.cv, i64 0
  %i.eg = tail call noundef float @llvm.fmuladd.f32(float %i.ef, float %i.bv, float %i.ee)
  %.sroa.3.12.vec.insert.i48 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.eg, i64 0
  store <2 x float> %i.ea, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i48, ptr %i.cc, align 8
  %i.eh = load ptr, ptr %i.am, align 8, !tbaa !10
  %i.ei = getelementptr inbounds nuw i8, ptr %i.eh, i64 128
  %i.ej = load ptr, ptr %i.ei, align 8
  %i.ek = call { <2 x float>, <2 x float> } %i.ej(ptr noundef nonnull align 8 dereferenceable(32) %i.am, ptr noundef nonnull align 4 dereferenceable(16) %6) ; 2 uses
  %i.el = extractvalue { <2 x float>, <2 x float> } %i.ek, 0 ; 2 uses
  %i.em = extractvalue { <2 x float>, <2 x float> } %i.ek, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.en = shufflevector <2 x float> %i.dx, <2 x float> %i.dk, <3 x i32> <i32 1, i32 3, i32 poison>
  %i.eo = shufflevector <2 x float> %i.dq, <2 x float> poison, <3 x i32> <i32 poison, i32 1, i32 poison>
  %i.ep = shufflevector <3 x float> %i.en, <3 x float> %i.eo, <3 x i32> <i32 0, i32 1, i32 4>
  %i.eq = shufflevector <2 x float> %i.el, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.er = fmul <3 x float> %i.ep, %i.eq
  %i.es = shufflevector <2 x float> %i.el, <2 x float> poison, <3 x i32> zeroinitializer
  %i.et = shufflevector <2 x float> %i.dx, <2 x float> %i.dk, <3 x i32> <i32 0, i32 2, i32 poison>
  %i.eu = shufflevector <3 x float> %i.et, <3 x float> %i.dr, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ev = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.es, <3 x float> %i.eu, <3 x float> %i.er)
  %i.ew = shufflevector <2 x float> %i.em, <2 x float> poison, <3 x i32> zeroinitializer
  %i.ex = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ew, <3 x float> %i.cv, <3 x float> %i.ev)
  %i.ey = fadd <3 x float> %i.de, %i.ex           ; 4 uses
  %i.ez = load float, ptr %i.bl, align 4, !tbaa !29 ; 3 uses
  %i.fa = load <3 x float>, ptr %i.ap, align 4, !tbaa !29 ; 5 uses
  %i.fb = extractelement <3 x float> %i.ey, i64 2
  %i.fc = fmul float %i.ez, %i.fb
  %i.fd = extractelement <3 x float> %i.ey, i64 1
  %i.fe = extractelement <3 x float> %i.fa, i64 0 ; 2 uses
  %i.ff = call float @llvm.fmuladd.f32(float %i.fe, float %i.fd, float %i.fc)
  %i.fg = extractelement <3 x float> %i.ey, i64 0
  %i.fh = extractelement <3 x float> %i.fa, i64 2 ; 2 uses
  %i.fi = call noundef float @llvm.fmuladd.f32(float %i.fh, float %i.fg, float %i.ff)
  %i.fj = load float, ptr %i.aq, align 4, !tbaa !29
  %i.fk = fsub float %i.fi, %i.fj                 ; 2 uses
  %i.fl = insertelement <3 x float> poison, float %i.fk, i64 0
  %i.fm = shufflevector <3 x float> %i.fa, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.fn = shufflevector <3 x float> %i.fl, <3 x float> poison, <3 x i32> zeroinitializer
  %i.fo = fmul <3 x float> %i.fm, %i.fn
  %i.fp = fsub <3 x float> %i.ey, %i.fo           ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.fq = load <2 x float>, ptr %2, align 4, !tbaa !29 ; 2 uses
  %i.fr = load <2 x float>, ptr %i.ay, align 4, !tbaa !29 ; 2 uses
  %i.fs = shufflevector <2 x float> %i.fq, <2 x float> %i.fr, <2 x i32> <i32 1, i32 3>
  %i.ft = shufflevector <3 x float> %i.fp, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fu = fmul <2 x float> %i.fs, %i.ft
  %i.fv = shufflevector <3 x float> %i.fp, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fw = shufflevector <2 x float> %i.fq, <2 x float> %i.fr, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.fw, <2 x float> %i.fu)
  %i.fy = shufflevector <3 x float> %i.fp, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fz = load float, ptr %i.az, align 4, !tbaa !29 ; 2 uses
  %i.ga = load float, ptr %i.bc, align 4, !tbaa !29 ; 2 uses
  %i.gb = extractelement <3 x float> %i.fp, i64 2
  %i.gc = fmul float %i.gb, %i.ga
  %i.gd = extractelement <3 x float> %i.fp, i64 1
  %i.ge = call float @llvm.fmuladd.f32(float %i.gd, float %i.fz, float %i.gc)
  %i.gf = load float, ptr %i.bd, align 4, !tbaa !29 ; 2 uses
  %i.gg = extractelement <3 x float> %i.fp, i64 0
  %i.gh = call noundef float @llvm.fmuladd.f32(float %i.gg, float %i.gf, float %i.ge)
  %i.gi = load <2 x float>, ptr %i.be, align 4, !tbaa !29
  %i.gj = load float, ptr %i.bi, align 4, !tbaa !29
  %i.gk = fadd float %i.gh, %i.gj
  %.sroa.3.12.vec.insert.i4.i.i58 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gk, i64 0
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i4.i.i58, ptr %i.gl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.gm = load <2 x float>, ptr %i.ba, align 4, !tbaa !29 ; 2 uses
  %i.gn = load <2 x float>, ptr %i.bb, align 4, !tbaa !29 ; 2 uses
  %i.go = shufflevector <2 x float> %i.gm, <2 x float> %i.gn, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.go, <2 x float> %i.fx)
  %i.gq = fadd <2 x float> %i.gp, %i.gi
  store <2 x float> %i.gq, ptr %7, align 8
  %i.gr = insertelement <2 x float> poison, float %i.ez, i64 0
  %i.gs = shufflevector <2 x float> %i.gr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gt = shufflevector <2 x float> %i.gm, <2 x float> %i.gn, <2 x i32> <i32 0, i32 2>
  %i.gu = fmul <2 x float> %i.gs, %i.gt
  %i.gv = shufflevector <3 x float> %i.fa, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.gv, <2 x float> %i.gu)
  %i.gx = shufflevector <3 x float> %i.fa, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.go, <2 x float> %i.gx, <2 x float> %i.gw)
  %i.gz = fmul float %i.ez, %i.ga
  %i.ha = call float @llvm.fmuladd.f32(float %i.fz, float %i.fe, float %i.gz)
  %i.hb = call noundef float @llvm.fmuladd.f32(float %i.gf, float %i.fh, float %i.ha)
  %.sroa.3.12.vec.insert.i61 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hb, i64 0
  store <2 x float> %i.gy, ptr %8, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i61, ptr %i.hc, align 8
  %i.hd = load ptr, ptr %3, align 8, !tbaa !10
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 32
  %i.hf = load ptr, ptr %i.he, align 8
  call void %i.hf(ptr noundef nonnull align 8 dereferenceable(45) %3, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %7, float noundef %i.fk)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN22btVoronoiSimplexSolver5resetEv(ptr noundef nonnull align 4 dereferenceable(357)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare void @_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef, ptr noundef, i32 noundef, i32 noundef, float noundef, float noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(100), ptr noundef nonnull align 4 dereferenceable(132), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(196) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %8 = alloca %class.btVector3, align 8           ; 6 uses
  %9 = alloca %class.btVector3, align 8           ; 5 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %12 = alloca %class.btVector3, align 4          ; 6 uses
  %13 = alloca %struct.btPointCollector, align 8  ; 10 uses
  %14 = alloca %class.btVector3, align 16         ; 4 uses
  %15 = alloca %class.btTransform, align 4        ; 6 uses
  %16 = alloca %class.btTransform, align 4        ; 5 uses
  %17 = alloca %class.btVector3, align 16         ; 4 uses
  %18 = alloca %struct.btPointCollector, align 8  ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.e = load <2 x float>, ptr %i.c, align 4, !tbaa !29
  %i.f = load <2 x float>, ptr %i.d, align 4, !tbaa !29
  %i.g = fsub <2 x float> %i.e, %i.f              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.i = load float, ptr %i.h, align 4, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.k = load float, ptr %i.j, align 4, !tbaa !29
  %i.l = fsub float %i.i, %i.k
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.l, i64 0
  store <2 x float> %i.g, ptr %8, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  call void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.b)
  %i.m = load float, ptr %i.b, align 4, !tbaa !29 ; 2 uses
  %i.n = load <2 x float>, ptr %7, align 8, !tbaa !29
  %i.o = insertelement <2 x float> poison, float %i.m, i64 0
  %i.p = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> zeroinitializer
  %i.q = fmul <2 x float> %i.p, %i.n              ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.s = load float, ptr %i.r, align 8, !tbaa !29
  %i.t = fmul float %i.m, %i.s                    ; 3 uses
  %.sroa.3.12.vec.insert.i.i15.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.t, i64 0
  store <2 x float> %i.q, ptr %9, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %9, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i15.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.u = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.w = load <2 x float>, ptr %i.u, align 4, !tbaa !29
  %i.x = load <2 x float>, ptr %i.v, align 4, !tbaa !29
  %i.y = fsub <2 x float> %i.w, %i.x              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 56
  %i.aa = load float, ptr %i.z, align 4, !tbaa !29
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !29
  %i.ad = fsub float %i.aa, %i.ac                 ; 2 uses
  %.sroa.3.12.vec.insert.i.i.i98 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  store <2 x float> %i.y, ptr %10, align 8
  %.sroa.42.0..sroa_idx.i99 = getelementptr inbounds nuw i8, ptr %10, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i98, ptr %.sroa.42.0..sroa_idx.i99, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %6, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.ae = load float, ptr %i.a, align 4, !tbaa !29 ; 2 uses
  %i.af = load <2 x float>, ptr %6, align 8, !tbaa !29
  %i.ag = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ah = shufflevector <2 x float> %i.ag, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ai = fmul <2 x float> %i.ah, %i.af           ; 3 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.ak = load float, ptr %i.aj, align 8, !tbaa !29
  %i.al = fmul float %i.ae, %i.ak                 ; 2 uses
  %.sroa.3.12.vec.insert.i.i15.i102 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.al, i64 0
  store <2 x float> %i.ai, ptr %11, align 8
  %.sroa.4.0..sroa_idx.i103 = getelementptr inbounds nuw i8, ptr %11, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i15.i102, ptr %.sroa.4.0..sroa_idx.i103, align 8, !tbaa !27
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #13
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !20 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !10
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = call noundef float %i.aq(ptr noundef nonnull align 8 dereferenceable(32) %i.an)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !21 ; 3 uses
  %.not = icmp eq ptr %i.at, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call noundef float %i.aw(ptr noundef nonnull align 8 dereferenceable(32) %i.at)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.ay = phi float [ %i.ax, %bb.b ], [ 0.000000e+00, %bb.a ]
  %foldExtExtBinop = fmul <2 x float> %i.q, %i.q
  %i.az = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ba = extractelement <2 x float> %i.q, i64 0  ; 2 uses
  %i.bb = call float @llvm.fmuladd.f32(float %i.ba, float %i.ba, float %i.az)
  %i.bc = call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.bb)
  %i.bd = call noundef float @llvm.sqrt.f32(float %i.bc)
  %foldExtExtBinop221 = fsub <2 x float> %i.y, %i.g ; 2 uses
  %i.be = extractelement <2 x float> %foldExtExtBinop221, i64 0 ; 2 uses
  %19 = getelementptr inbounds nuw i8, ptr %8, i64 4
  %20 = load float, ptr %19, align 4, !tbaa !29
  %21 = extractelement <2 x float> %i.y, i64 1
  %22 = fsub float %21, %20                       ; 3 uses
  %23 = load float, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !29
  %24 = fsub float %i.ad, %23                     ; 3 uses
  %25 = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %26 = insertelement <2 x float> %25, float %22, i64 1 ; 2 uses
  %27 = fmul <2 x float> %26, %26
  %28 = shufflevector <2 x float> %i.ai, <2 x float> %foldExtExtBinop221, <2 x i32> <i32 0, i32 2> ; 2 uses
  %29 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %28, <2 x float> %28, <2 x float> %27)
  %30 = insertelement <2 x float> poison, float %i.al, i64 0
  %31 = insertelement <2 x float> %30, float %24, i64 1 ; 2 uses
  %32 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> %31, <2 x float> %29)
  %33 = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %32) ; 2 uses
  %34 = extractelement <2 x float> %33, i64 0
  %35 = fmul float %i.ay, %34
  %i.bf = call float @llvm.fmuladd.f32(float %i.bd, float %i.ar, float %35) ; 3 uses
  %36 = extractelement <2 x float> %33, i64 1
  %i.bg = fadd float %i.bf, %36
  %i.bh = fcmp oeq float %i.bg, 0.000000e+00
  br i1 %i.bh, label %bb.q, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16btPointCollector, i64 16), ptr %13, align 8, !tbaa !10
  %i.bi = getelementptr inbounds nuw i8, ptr %13, i64 40 ; 2 uses
  store float f0x5D5E0B6B, ptr %i.bi, align 8, !tbaa !33
  %i.bj = getelementptr inbounds nuw i8, ptr %13, i64 44 ; 2 uses
  store i8 0, ptr %i.bj, align 4, !tbaa !34
  call void @_ZN27btContinuousConvexCollision20computeClosestPointsERK11btTransformS2_R16btPointCollector(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(45) %13)
  %i.bk = load i8, ptr %i.bj, align 4, !tbaa !34, !range !46, !noundef !47
  %i.bl = trunc nuw i8 %i.bk to i1
  %i.bm = getelementptr inbounds nuw i8, ptr %13, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.bm, i64 16, i1 false), !tbaa.struct !28
  br i1 %i.bl, label %bb.e, label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.bn = load float, ptr %i.bi, align 8, !tbaa !33
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 184 ; 2 uses
  %i.bp = load float, ptr %i.bo, align 8, !tbaa !50
  %i.bq = fadd float %i.bn, %i.bp                 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.bs = load <2 x float>, ptr %i.br, align 8    ; 3 uses
  %.sroa.12140.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 16
  %.sroa.12140.0.copyload = load float, ptr %.sroa.12140.0..sroa_idx, align 8 ; 3 uses
  %i.bt = extractelement <2 x float> %i.bs, i64 1 ; 2 uses
  %i.bu = fmul float %22, %i.bt
  %i.bv = extractelement <2 x float> %i.bs, i64 0 ; 2 uses
  %i.bw = call float @llvm.fmuladd.f32(float %i.be, float %i.bv, float %i.bu)
  %i.bx = call noundef float @llvm.fmuladd.f32(float %24, float %.sroa.12140.0.copyload, float %i.bw)
  %i.by = fadd float %i.bf, %i.bx
  %i.bz = fcmp ugt float %i.by, f0x34000000
  br i1 %i.bz, label %.preheader, label %.critedge

.preheader:                                       ; preds = %bb.e
  %.sroa.15146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %13, i64 20
  %.sroa.15146.0.copyload = load float, ptr %.sroa.15146.0..sroa_idx, align 4, !tbaa !27
  %i.ca = fcmp ogt float %i.bq, 1.000000e-03
  %i.cb = insertelement <2 x float> poison, float %.sroa.12140.0.copyload, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %.sroa.15146.0.copyload, i64 1
  br i1 %i.ca, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 176 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %15, i64 48
  %i.cf = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %18, i64 44 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.ci = getelementptr inbounds nuw i8, ptr %18, i64 8
  %.sroa.12140.0..sroa_idx141 = getelementptr inbounds nuw i8, ptr %18, i64 16
  %.sroa.9134.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %18, i64 12
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.p
  %.0187 = phi float [ %i.bq, %.lr.ph ], [ %i.dq, %bb.p ]
  %.064186 = phi i32 [ 0, %.lr.ph ], [ %i.dn, %bb.p ] ; 3 uses
  %.069185 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.ct, %bb.p ] ; 2 uses
  %.sroa.0130.0184 = phi float [ %i.bv, %.lr.ph ], [ %i.ds, %bb.p ]
  %.sroa.9134.0183 = phi float [ %i.bt, %.lr.ph ], [ %.sroa.9134.0.copyload136, %bb.p ]
  %.sroa.12140.0182 = phi float [ %.sroa.12140.0.copyload, %.lr.ph ], [ %i.dt, %bb.p ]
  %i.cj = load ptr, ptr %i.cd, align 8, !tbaa !51 ; 3 uses
  %.not86 = icmp eq ptr %i.cj, null
  br i1 %.not86, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00>, ptr %14, align 16, !tbaa !29
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !10
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 56
  %i.cm = load ptr, ptr %i.cl, align 8
  call void %i.cm(ptr noundef nonnull align 8 dereferenceable(8) %i.cj, ptr noundef nonnull align 4 dereferenceable(16) %12, float noundef 2.000000e-01, ptr noundef nonnull align 4 dereferenceable(16) %14)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.cn = fmul float %22, %.sroa.9134.0183
  %i.co = call float @llvm.fmuladd.f32(float %i.be, float %.sroa.0130.0184, float %i.cn)
  %i.cp = call noundef float @llvm.fmuladd.f32(float %24, float %.sroa.12140.0182, float %i.co)
  %i.cq = fadd float %i.bf, %i.cp                 ; 2 uses
  %i.cr = fcmp ugt float %i.cq, f0x34000000
  br i1 %i.cr, label %bb.i, label %.critedge

bb.i:                                             ; preds = %bb.h
  %i.cs = fdiv float %.0187, %i.cq
  %i.ct = fadd float %.069185, %i.cs              ; 8 uses
  %i.cu = fcmp ule float %i.ct, 1.000000e+00
  %i.cv = fcmp uge float %i.ct, 0.000000e+00
  %or.cond.not163 = and i1 %i.cu, %i.cv
  %i.cw = fcmp ugt float %i.ct, %.069185
  %or.cond94 = and i1 %i.cw, %or.cond.not163
  br i1 %or.cond94, label %bb.j, label %.critedge

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %8, ptr noundef nonnull align 4 dereferenceable(16) %9, float noundef %i.ct, ptr noundef nonnull align 4 dereferenceable(64) %15)
  call void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11, float noundef %i.ct, ptr noundef nonnull align 4 dereferenceable(64) %16)
  %i.cx = load ptr, ptr %i.cd, align 8, !tbaa !51 ; 3 uses
  %.not87 = icmp eq ptr %i.cx, null
  br i1 %.not87, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #13
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %17, align 16, !tbaa !29
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !10
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cy, i64 56
  %i.da = load ptr, ptr %i.cz, align 8
  call void %i.da(ptr noundef nonnull align 8 dereferenceable(8) %i.cx, ptr noundef nonnull align 4 dereferenceable(16) %i.ce, float noundef 2.000000e-01, ptr noundef nonnull align 4 dereferenceable(16) %17)
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #13
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.db = load ptr, ptr %5, align 8, !tbaa !10
  %i.dc = load ptr, ptr %i.db, align 8
  call void %i.dc(ptr noundef nonnull align 8 dereferenceable(196) %5, float noundef %i.ct)
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #13
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16btPointCollector, i64 16), ptr %18, align 8, !tbaa !10
  store float f0x5D5E0B6B, ptr %i.cf, align 8, !tbaa !33
  store i8 0, ptr %i.cg, align 4, !tbaa !34
  call void @_ZN27btContinuousConvexCollision20computeClosestPointsERK11btTransformS2_R16btPointCollector(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(64) %15, ptr noundef nonnull align 4 dereferenceable(64) %16, ptr noundef nonnull align 8 dereferenceable(45) %18)
  %i.dd = load i8, ptr %i.cg, align 4, !tbaa !34, !range !46, !noundef !47
  %i.de = trunc nuw i8 %i.dd to i1
  br i1 %i.de, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %i.df = load float, ptr %i.cf, align 8, !tbaa !33
  %i.dg = load float, ptr %i.bo, align 8, !tbaa !50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 8 dereferenceable(16) %i.ch, i64 16, i1 false), !tbaa.struct !28
  %exitcond = icmp eq i32 %.064186, 64
  br i1 %exitcond, label %bb.o, label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.dh = load ptr, ptr %5, align 8, !tbaa !10
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dj = load ptr, ptr %i.di, align 8
  call void %i.dj(ptr noundef nonnull align 8 dereferenceable(196) %5, i32 noundef -1, i32 noundef %.064186)
  br label %.critedge.critedge

bb.o:                                             ; preds = %bb.m
  %i.dk = load ptr, ptr %5, align 8, !tbaa !10
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
  %i.dm = load ptr, ptr %i.dl, align 8
  call void %i.dm(ptr noundef nonnull align 8 dereferenceable(196) %5, i32 noundef -2, i32 noundef 65)
  br label %.critedge.critedge

bb.p:                                             ; preds = %bb.m
  %i.dn = add nuw nsw i32 %.064186, 1
  %i.do = load <2 x float>, ptr %.sroa.12140.0..sroa_idx141, align 8 ; 2 uses
  %.sroa.9134.0.copyload136 = load float, ptr %.sroa.9134.0..sroa_idx135, align 4
  %i.dp = load <2 x float>, ptr %i.ci, align 8    ; 2 uses
  %i.dq = fadd float %i.df, %i.dg                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  %i.dr = fcmp ogt float %i.dq, 1.000000e-03
  %i.ds = extractelement <2 x float> %i.dp, i64 0
  %i.dt = extractelement <2 x float> %i.do, i64 0
  br i1 %i.dr, label %bb.f, label %._crit_edge, !llvm.loop !45

._crit_edge:                                      ; preds = %bb.p, %.preheader
  %.069.lcssa = phi float [ 0.000000e+00, %.preheader ], [ %i.ct, %bb.p ]
  %i.du = phi <2 x float> [ %i.bs, %.preheader ], [ %i.dp, %bb.p ]
  %i.dv = phi <2 x float> [ %i.cc, %.preheader ], [ %i.do, %bb.p ]
  %i.dw = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %.069.lcssa, ptr %i.dw, align 8, !tbaa !53
  %i.dx = getelementptr inbounds nuw i8, ptr %5, i64 136
  store <2 x float> %i.du, ptr %i.dx, align 8
  %.sroa.12140.0..sroa_idx143 = getelementptr inbounds nuw i8, ptr %5, i64 144
  store <2 x float> %i.dv, ptr %.sroa.12140.0..sroa_idx143, align 8
  %i.dy = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dy, ptr noundef nonnull align 4 dereferenceable(16) %12, i64 16, i1 false), !tbaa.struct !28
  br label %.critedge

.critedge.critedge:                               ; preds = %bb.n, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #13
  br label %.critedge

.critedge:                                        ; preds = %bb.i, %bb.h, %.critedge.critedge, %bb.d, %._crit_edge, %bb.e
  %.477 = phi i1 [ false, %bb.d ], [ true, %._crit_edge ], [ false, %.critedge.critedge ], [ false, %bb.e ], [ false, %bb.h ], [ false, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %.critedge
  %.578 = phi i1 [ %.477, %.critedge ], [ false, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #13
  ret i1 %.578
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil18integrateTransformERK11btTransformRK9btVector3S5_fRS0_(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3, ptr noundef nonnull align 4 dereferenceable(64) %4) local_unnamed_addr #1 comdat align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load float, ptr %i.b, align 4, !tbaa !29
  %i.d = fmul float %3, %i.c
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !29
  %i.f = insertelement <2 x float> poison, float %3, i64 0
  %i.g = shufflevector <2 x float> %i.f, <2 x float> poison, <2 x i32> zeroinitializer
  %i.h = fmul <2 x float> %i.g, %i.e
  %i.i = load <2 x float>, ptr %i.a, align 4, !tbaa !29
  %i.j = fadd <2 x float> %i.h, %i.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.l = load float, ptr %i.k, align 4, !tbaa !29
  %i.m = fadd float %i.d, %i.l
  %.sroa.3.12.vec.insert.i24 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.n = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.j, ptr %i.n, align 4
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i24, ptr %.sroa.473.0..sroa_idx, align 4, !tbaa !27
  %i.o = load float, ptr %2, align 4, !tbaa !29   ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.q = load <2 x float>, ptr %i.p, align 4, !tbaa !29 ; 4 uses
  %foldExtExtBinop = fmul <2 x float> %i.q, %i.q
  %i.r = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.s = tail call float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.r)
  %i.t = extractelement <2 x float> %i.q, i64 1   ; 2 uses
  %i.u = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.s) ; 2 uses
  %6 = fcmp ogt float %i.u, f0x34000000
  %sqrt = tail call float @llvm.sqrt.f32(float %i.u)
  %.0 = select i1 %6, float %sqrt, float 0.000000e+00 ; 2 uses
  %7 = fmul float %3, %.0
  %i.v = fcmp ogt float %7, f0x3F490FDB
  %8 = fdiv float f0x3F490FDB, %3
  %.1 = select i1 %i.v, float %8, float %.0       ; 6 uses
  %9 = fcmp olt float %.1, 1.000000e-03
  br i1 %9, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.w = fmul float %3, %3
  %i.x = fmul float %3, %i.w
  %i.y = fmul float %i.x, f0x3CAAAAAB
  %i.z = fmul float %i.y, %.1
  %i.aa = fneg float %.1
  %i.ab = fmul float %i.z, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %3, float 5.000000e-01, float %i.ab)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ad = fmul float %.1, 5.000000e-01
  %i.ae = fmul float %3, %i.ad
  %i.af = tail call noundef float @sinf(float noundef %i.ae) #13
  %i.ag = fdiv float %i.af, %.1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink85 = phi float [ %i.ag, %bb.c ], [ %i.ac, %bb.b ] ; 2 uses
  %i.ah = fmul float %i.o, %.sink85               ; 4 uses
  %i.ai = insertelement <2 x float> poison, float %.sink85, i64 0
  %i.aj = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = fmul <2 x float> %i.q, %i.aj            ; 5 uses
  %i.al = extractelement <2 x float> %i.ak, i64 1
  %i.am = fmul float %3, %.1
  %i.an = fmul float %i.am, 5.000000e-01
  %i.ao = tail call noundef float @cosf(float noundef %i.an) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %.fca.0.load.i = load <2 x float>, ptr %5, align 8 ; 6 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 6 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %.sroa.064.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0
  %i.ap = fneg <2 x float> %i.ak                  ; 2 uses
  %i.aq = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ar = insertelement <2 x float> %i.aq, float %i.ah, i64 0
  %i.as = shufflevector <2 x float> %.fca.1.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.at = fmul <2 x float> %i.ar, %i.as
  %i.au = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.av = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aw = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %.fca.0.load.i, <2 x float> %i.at)
  %i.ax = shufflevector <2 x float> %.fca.1.load.i, <2 x float> %.fca.0.load.i, <2 x i32> <i32 0, i32 2>
  %i.ay = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.ax, <2 x float> %i.aw)
  %i.az = fneg float %i.ah
  %i.ba = fneg float %i.al
  %i.bb = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bc = insertelement <2 x float> %i.bb, float %i.az, i64 1
  %i.bd = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 1, i32 2>
  %i.be = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bd, <2 x float> %i.ay) ; 5 uses
  %foldExtExtBinop87 = fmul <2 x float> %i.ak, %.fca.1.load.i
  %i.bf = fneg float %.sroa.064.0.vec.extract
  %i.bg = fmul float %i.ah, %i.bf
  %i.bh = shufflevector <2 x float> %foldExtExtBinop87, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bi = insertelement <2 x float> %i.bh, float %i.bg, i64 1
  %i.bj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.av, <2 x float> %.fca.1.load.i, <2 x float> %i.bi)
  %i.bk = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bl = insertelement <2 x float> %i.bk, float %i.ah, i64 0
  %i.bm = shufflevector <2 x float> %.fca.0.load.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bl, <2 x float> %i.bm, <2 x float> %i.bj)
  %i.bo = shufflevector <2 x float> %.fca.0.load.i, <2 x float> %.fca.1.load.i, <2 x i32> <i32 0, i32 2>
  %i.bp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.bo, <2 x float> %i.bn) ; 4 uses
  %foldExtExtBinop89 = fmul <2 x float> %i.be, %i.be
  %i.bq = extractelement <2 x float> %foldExtExtBinop89, i64 1
  %i.br = extractelement <2 x float> %i.be, i64 0 ; 2 uses
  %i.bs = call float @llvm.fmuladd.f32(float %i.br, float %i.br, float %i.bq)
  %i.bt = extractelement <2 x float> %i.bp, i64 0 ; 2 uses
  %i.bu = call float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.bs)
  %i.bv = extractelement <2 x float> %i.bp, i64 1 ; 2 uses
  %i.bw = call noundef float @llvm.fmuladd.f32(float %i.bv, float %i.bv, float %i.bu) ; 2 uses
  %i.bx = fcmp ogt float %i.bw, f0x34000000
  br i1 %i.bx, label %bb.e, label %_ZN12btQuaternion13safeNormalizeEv.exit

bb.e:                                             ; preds = %bb.d
  %i.by = call noundef float @llvm.sqrt.f32(float %i.bw)
  %i.bz = fdiv float 1.000000e+00, %i.by
  %i.ca = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cb = shufflevector <2 x float> %i.ca, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cc = fmul <2 x float> %i.be, %i.cb
  %i.cd = fmul <2 x float> %i.bp, %i.cb
  br label %_ZN12btQuaternion13safeNormalizeEv.exit

_ZN12btQuaternion13safeNormalizeEv.exit:          ; preds = %bb.d, %bb.e
  %.sroa.11.0 = phi <2 x float> [ %i.cd, %bb.e ], [ %i.bp, %bb.d ] ; 2 uses
  %.sroa.0.0 = phi <2 x float> [ %i.cc, %bb.e ], [ %i.be, %bb.d ] ; 2 uses
  %.sroa.0.0.vec.extract46 = extractelement <2 x float> %.sroa.0.0, i64 0 ; 6 uses
  %.sroa.0.4.vec.extract51 = extractelement <2 x float> %.sroa.0.0, i64 1 ; 5 uses
  %i.ce = fmul float %.sroa.0.4.vec.extract51, %.sroa.0.4.vec.extract51
  %i.cf = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract46, float %.sroa.0.0.vec.extract46, float %i.ce)
  %.sroa.11.8.vec.extract56 = extractelement <2 x float> %.sroa.11.0, i64 0 ; 4 uses
  %i.cg = call float @llvm.fmuladd.f32(float %.sroa.11.8.vec.extract56, float %.sroa.11.8.vec.extract56, float %i.cf)
  %.sroa.11.12.vec.extract61 = extractelement <2 x float> %.sroa.11.0, i64 1 ; 5 uses
  %i.ch = call noundef float @llvm.fmuladd.f32(float %.sroa.11.12.vec.extract61, float %.sroa.11.12.vec.extract61, float %i.cg) ; 2 uses
  %i.ci = fcmp ogt float %i.ch, f0x34000000
  br i1 %i.ci, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN12btQuaternion13safeNormalizeEv.exit
  %i.cj = fdiv float 2.000000e+00, %i.ch          ; 3 uses
  %i.ck = fmul float %.sroa.0.0.vec.extract46, %i.cj ; 2 uses
  %i.cl = fmul float %.sroa.0.4.vec.extract51, %i.cj ; 3 uses
  %i.cm = fmul float %.sroa.11.8.vec.extract56, %i.cj ; 4 uses
  %i.cn = fmul float %.sroa.11.12.vec.extract61, %i.ck ; 2 uses
  %i.co = fmul float %.sroa.11.12.vec.extract61, %i.cl ; 2 uses
  %i.cp = fmul float %.sroa.11.12.vec.extract61, %i.cm ; 2 uses
  %i.cq = fmul float %.sroa.0.0.vec.extract46, %i.ck ; 2 uses
  %i.cr = fmul float %.sroa.0.0.vec.extract46, %i.cl ; 2 uses
  %i.cs = fmul float %.sroa.0.0.vec.extract46, %i.cm ; 2 uses
  %i.ct = fmul float %.sroa.0.4.vec.extract51, %i.cl ; 2 uses
  %i.cu = fmul float %.sroa.0.4.vec.extract51, %i.cm ; 2 uses
  %i.cv = fmul float %.sroa.11.8.vec.extract56, %i.cm ; 2 uses
  %i.cw = fadd float %i.ct, %i.cv
  %i.cx = fsub float 1.000000e+00, %i.cw
  %i.cy = fsub float %i.cr, %i.cp
  %i.cz = fadd float %i.cs, %i.co
  %i.da = fadd float %i.cr, %i.cp
  %i.db = fadd float %i.cq, %i.cv
  %i.dc = fsub float 1.000000e+00, %i.db
  %i.dd = fsub float %i.cu, %i.cn
  %i.de = fsub float %i.cs, %i.co
  %i.df = fadd float %i.cu, %i.cn
  %i.dg = fadd float %i.cq, %i.ct
  %i.dh = fsub float 1.000000e+00, %i.dg
  store float %i.cx, ptr %4, align 4, !tbaa !29
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 4
  store float %i.cy, ptr %i.di, align 4, !tbaa !29
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.cz, ptr %i.dj, align 4, !tbaa !29
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %i.dk, align 4, !tbaa !29
  %i.dl = getelementptr inbounds nuw i8, ptr %4, i64 16
  store float %i.da, ptr %i.dl, align 4, !tbaa !29
  %i.dm = getelementptr inbounds nuw i8, ptr %4, i64 20
  store float %i.dc, ptr %i.dm, align 4, !tbaa !29
  %i.dn = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %i.dd, ptr %i.dn, align 4, !tbaa !29
  %i.do = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %i.do, align 4, !tbaa !29
  %i.dp = getelementptr inbounds nuw i8, ptr %4, i64 32
  store float %i.de, ptr %i.dp, align 4, !tbaa !29
  %i.dq = getelementptr inbounds nuw i8, ptr %4, i64 36
  store float %i.df, ptr %i.dq, align 4, !tbaa !29
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.dh, ptr %i.dr, align 4, !tbaa !29
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.ds, align 4, !tbaa !29
  br label %bb.h

bb.g:                                             ; preds = %_ZN12btQuaternion13safeNormalizeEv.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(48) %0, i64 16, i1 false), !tbaa.struct !28
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.du, ptr noundef nonnull align 4 dereferenceable(16) %i.dt, i64 16, i1 false), !tbaa.struct !28
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.dw, ptr noundef nonnull align 4 dereferenceable(16) %i.dv, i64 16, i1 false), !tbaa.struct !28
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind
declare void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #6

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN27btContinuousConvexCollisionD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #13
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #14
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %4 = alloca %class.btMatrix3x3, align 16        ; 9 uses
  %5 = alloca %class.btQuaternion, align 4        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load float, ptr %i.d, align 4, !tbaa !29, !noalias !58 ; 3 uses
  %i.f = load float, ptr %0, align 4, !tbaa !29, !noalias !58 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load <3 x float>, ptr %i.c, align 4, !tbaa !29, !noalias !58 ; 3 uses
  %i.j = shufflevector <3 x float> %i.i, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1> ; 2 uses
  %i.k = load <2 x float>, ptr %i.a, align 4, !tbaa !29, !noalias !58 ; 3 uses
  %i.l = load float, ptr %i.b, align 4, !tbaa !29, !noalias !58 ; 2 uses
  %i.m = fneg <3 x float> %i.i                    ; 2 uses
  %i.n = shufflevector <3 x float> %i.m, <3 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2> ; 2 uses
  %i.o = load <2 x float>, ptr %i.g, align 4, !tbaa !29, !noalias !58 ; 4 uses
  %i.p = load float, ptr %i.h, align 4, !tbaa !29, !noalias !58 ; 4 uses
  %i.q = shufflevector <2 x float> %i.k, <2 x float> %i.o, <4 x i32> <i32 1, i32 poison, i32 0, i32 2>
  %i.r = insertelement <4 x float> %i.q, float %i.e, i64 1 ; 2 uses
  %i.s = fmul <4 x float> %i.r, %i.n
  %i.t = shufflevector <2 x float> %i.o, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.u = shufflevector <4 x float> %i.r, <4 x float> %i.t, <4 x i32> <i32 2, i32 0, i32 1, i32 5>
  %i.v = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.u, <4 x float> %i.j, <4 x float> %i.s) ; 4 uses
  %i.w = extractelement <2 x float> %i.o, i64 0   ; 2 uses
  %i.x = extractelement <4 x float> %i.v, i64 1
  %i.y = extractelement <4 x float> %i.v, i64 0
  %i.z = fneg float %i.l
  %i.aa = fmul float %i.p, %i.z
  %i.ab = extractelement <2 x float> %i.k, i64 0
  %i.ac = fneg float %i.ab
  tail call void @llvm.experimental.noalias.scope.decl(metadata !59)
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load float, ptr %i.ae, align 4, !tbaa !29, !noalias !59 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = tail call noundef float @llvm.fmuladd.f32(float %i.w, float %i.e, float %i.aa)
  %i.aj = insertelement <4 x float> %i.v, float %i.ai, i64 2
  %i.ak = load <2 x float>, ptr %1, align 4, !tbaa !29, !noalias !59 ; 3 uses
  %i.al = load float, ptr %i.ad, align 4, !tbaa !29, !noalias !59
  %i.am = extractelement <2 x float> %i.ak, i64 0
  %i.an = load <2 x float>, ptr %i.ag, align 4, !tbaa !29, !noalias !59 ; 3 uses
  %i.ao = shufflevector <2 x float> %i.an, <2 x float> %i.ak, <4 x i32> <i32 poison, i32 1, i32 3, i32 3>
  %i.ap = insertelement <4 x float> poison, float %i.af, i64 0
  %i.aq = shufflevector <2 x float> %i.ak, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ar = shufflevector <4 x float> %i.ap, <4 x float> %i.aq, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.as = shufflevector <2 x float> %i.an, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.at = shufflevector <4 x float> %i.ar, <4 x float> %i.as, <4 x i32> <i32 0, i32 4, i32 1, i32 1>
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !29, !noalias !59 ; 2 uses
  %i.az = extractelement <4 x float> %i.v, i64 2  ; 2 uses
  %i.ba = fmul float %i.w, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.f, float %i.x, float %i.ba)
  %i.bc = tail call noundef float @llvm.fmuladd.f32(float %i.p, float %i.y, float %i.bb)
  %i.bd = fdiv float 1.000000e+00, %i.bc          ; 3 uses
  %i.be = fmul float %i.az, %i.bd                 ; 3 uses
  %i.bf = fneg float %i.e
  %i.bg = insertelement <2 x float> poison, float %i.f, i64 0
  %i.bh = insertelement <2 x float> %i.bg, float %i.p, i64 1
  %i.bi = shufflevector <3 x float> %i.m, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bj = insertelement <2 x float> %i.bi, float %i.bf, i64 0
  %i.bk = fmul <2 x float> %i.bh, %i.bj
  %i.bl = insertelement <2 x float> poison, float %i.p, i64 0
  %i.bm = insertelement <2 x float> %i.bl, float %i.f, i64 1
  %i.bn = shufflevector <2 x float> %i.k, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.bo = shufflevector <4 x float> %i.bn, <4 x float> %i.j, <2 x i32> <i32 0, i32 5>
  %i.bp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bm, <2 x float> %i.bo, <2 x float> %i.bk)
  %i.bq = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bs = fmul <2 x float> %i.bp, %i.br           ; 3 uses
  %i.bt = insertelement <4 x float> poison, float %i.bd, i64 0
  %i.bu = shufflevector <4 x float> %i.bt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.bv = fmul <4 x float> %i.aj, %i.bu           ; 6 uses
  %i.bw = shufflevector <4 x float> %i.t, <4 x float> %i.n, <2 x i32> <i32 0, i32 5>
  %i.bx = insertelement <2 x float> poison, float %i.ac, i64 0
  %i.by = insertelement <2 x float> %i.bx, float %i.f, i64 1
  %i.bz = fmul <2 x float> %i.bw, %i.by
  %i.ca = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cb = insertelement <2 x float> %i.ca, float %i.f, i64 0
  %i.cc = shufflevector <3 x float> %i.i, <3 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cd = insertelement <2 x float> %i.cc, float %i.l, i64 0
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cb, <2 x float> %i.cd, <2 x float> %i.bz)
  %i.cf = fmul <2 x float> %i.ce, %i.br           ; 3 uses
  %i.cg = fmul float %i.al, %i.be
  %i.ch = extractelement <4 x float> %i.bv, i64 1
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.ch, float %i.am, float %i.cg)
  %i.cj = insertelement <4 x float> %i.ao, float %i.ci, i64 0
  %i.ck = insertelement <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, float %i.be, i64 1
  %i.cl = shufflevector <2 x float> %i.bs, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cm = shufflevector <4 x float> %i.ck, <4 x float> %i.cl, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cn = fmul <4 x float> %i.cj, %i.cm
  %i.co = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bv, <4 x float> %i.at, <4 x float> %i.cn) ; 2 uses
  %i.cp = load <2 x float>, ptr %i.ah, align 4, !tbaa !29, !noalias !59 ; 4 uses
  %i.cq = load float, ptr %i.au, align 4, !tbaa !29, !noalias !59
  %shift = shufflevector <2 x float> %i.bs, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %shift, %i.cp
  %i.cr = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 3, i32 0, i32 poison, i32 poison>
  %i.cs = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ct = shufflevector <4 x float> %i.cr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.cu = shufflevector <2 x float> %i.cp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cv = shufflevector <2 x float> %i.an, <2 x float> %i.cp, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.cw = insertelement <4 x float> %i.cv, float %i.af, i64 2
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.cy = shufflevector <2 x float> %foldExtExtBinop, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cz = shufflevector <4 x float> %i.cy, <4 x float> %i.co, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.da = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ct, <4 x float> %i.cx, <4 x float> %i.cz) ; 3 uses
  %i.db = load <2 x float>, ptr %i.av, align 4, !tbaa !29, !noalias !59 ; 2 uses
  %i.dc = load float, ptr %i.aw, align 4, !tbaa !29, !noalias !59
  %i.dd = shufflevector <2 x float> %i.cp, <2 x float> %i.db, <4 x i32> <i32 poison, i32 0, i32 3, i32 3>
  %i.de = shufflevector <4 x float> %i.da, <4 x float> %i.dd, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.df = shufflevector <4 x float> <float 1.000000e+00, float poison, float poison, float poison>, <4 x float> %i.cl, <4 x i32> <i32 0, i32 4, i32 poison, i32 5>
  %i.dg = insertelement <4 x float> %i.df, float %i.be, i64 2
  %i.dh = fmul <4 x float> %i.de, %i.dg
  %i.di = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 0> ; 2 uses
  %i.dj = shufflevector <4 x float> %i.bv, <4 x float> %i.di, <4 x i32> <i32 poison, i32 2, i32 6, i32 7>
  %i.dk = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.dl = shufflevector <4 x float> %i.dk, <4 x float> %i.dj, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.dm = shufflevector <4 x float> %i.as, <4 x float> %i.bv, <4 x i32> <i32 poison, i32 0, i32 5, i32 7>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %i.cu, <4 x i32> <i32 5, i32 1, i32 2, i32 3>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dh) ; 2 uses
  %i.dp = extractelement <2 x float> %i.bs, i64 0
  %i.dq = fmul float %i.dp, %i.dc
  %i.dr = shufflevector <4 x float> %i.bv, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 0, i32 poison>
  %i.ds = shufflevector <4 x float> %i.dr, <4 x float> %i.cs, <4 x i32> <i32 0, i32 4, i32 2, i32 6>
  %i.dt = insertelement <4 x float> %i.di, float %i.cq, i64 1
  %i.du = insertelement <4 x float> %i.dt, float %i.ay, i64 2
  %i.dv = shufflevector <4 x float> %i.du, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 2, i32 2>
  %i.dw = insertelement <4 x float> %i.do, float %i.dq, i64 0
  %i.dx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ds, <4 x float> %i.dv, <4 x float> %i.dw) ; 3 uses
  %i.dy = extractelement <4 x float> %i.dx, i64 0
  %i.dz = extractelement <2 x float> %i.cf, i64 0
  %i.ea = tail call noundef float @llvm.fmuladd.f32(float %i.dz, float %i.ay, float %i.dy)
  %i.eb = shufflevector <4 x float> %i.co, <4 x float> %i.da, <4 x i32> <i32 0, i32 7, i32 6, i32 poison>
  %i.ec = insertelement <4 x float> %i.eb, float 0.000000e+00, i64 3
  store <4 x float> %i.ec, ptr %4, align 16, !tbaa !29, !alias.scope !59
  %i.ed = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ee = extractelement <4 x float> %i.da, i64 1
  store float %i.ee, ptr %i.ed, align 16, !tbaa !29, !alias.scope !59
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.eg = shufflevector <4 x float> %i.do, <4 x float> %i.dx, <4 x i32> <i32 0, i32 5, i32 poison, i32 6>
  %i.eh = insertelement <4 x float> %i.eg, float 0.000000e+00, i64 2
  store <4 x float> %i.eh, ptr %i.ef, align 4, !tbaa !29, !alias.scope !59
  %i.ei = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.ej = extractelement <4 x float> %i.dx, i64 3
  store float %i.ej, ptr %i.ei, align 4, !tbaa !29, !alias.scope !59
  %i.ek = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %i.ea, ptr %i.ek, align 8, !tbaa !29, !alias.scope !59
  %i.el = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %i.el, align 4, !tbaa !29, !alias.scope !59
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.em = load float, ptr %5, align 4, !tbaa !29  ; 3 uses
  %i.en = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.eo = load float, ptr %i.en, align 4, !tbaa !29 ; 3 uses
  %i.ep = fmul float %i.eo, %i.eo
  %i.eq = call float @llvm.fmuladd.f32(float %i.em, float %i.em, float %i.ep)
  %i.er = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.es = load float, ptr %i.er, align 4, !tbaa !29 ; 3 uses
  %i.et = call float @llvm.fmuladd.f32(float %i.es, float %i.es, float %i.eq)
  %i.eu = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ev = load float, ptr %i.eu, align 4, !tbaa !29 ; 3 uses
  %i.ew = call noundef float @llvm.fmuladd.f32(float %i.ev, float %i.ev, float %i.et)
  %i.ex = call noundef float @llvm.sqrt.f32(float %i.ew)
  %i.ey = fdiv float 1.000000e+00, %i.ex          ; 4 uses
  %i.ez = fmul float %i.em, %i.ey                 ; 3 uses
  %i.fa = fmul float %i.eo, %i.ey                 ; 3 uses
  %i.fb = fmul float %i.es, %i.ey                 ; 3 uses
  %i.fc = fmul float %i.ev, %i.ey                 ; 2 uses
  %i.fd = fcmp olt float %i.fc, -1.000000e+00
  %spec.store.select.i.i = select i1 %i.fd, float -1.000000e+00, float %i.fc ; 2 uses
  %i.fe = fcmp ogt float %spec.store.select.i.i, 1.000000e+00
  %spec.store.select1.i.i = select i1 %i.fe, float 1.000000e+00, float %spec.store.select.i.i
  %i.ff = call noundef float @acosf(float noundef %spec.store.select1.i.i) #13
  %i.fg = fmul float %i.ff, 2.000000e+00
  store float %i.fg, ptr %3, align 4, !tbaa !29
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %.sroa.616.0..sroa_idx, align 4, !tbaa !29
  %i.fh = fmul float %i.fa, %i.fa
  %i.fi = call float @llvm.fmuladd.f32(float %i.ez, float %i.ez, float %i.fh)
  %i.fj = call noundef float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fi) ; 2 uses
  %i.fk = fcmp olt float %i.fj, f0x28800000
  br i1 %i.fk, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.fl = call float @llvm.sqrt.f32(float %i.fj)
  %i.fm = fdiv float 1.000000e+00, %i.fl          ; 3 uses
  %i.fn = fmul float %i.ez, %i.fm
  %i.fo = fmul float %i.fa, %i.fm
  %i.fp = fmul float %i.fb, %i.fm
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink21 = phi float [ %i.fn, %bb.b ], [ 1.000000e+00, %bb.a ]
  %.sink20 = phi float [ %i.fo, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sink = phi float [ %i.fp, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink21, ptr %2, align 4
  store float %.sink20, ptr %.sroa.414.0..sroa_idx, align 4
  store float %.sink, ptr %.sroa.515.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !29   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !29 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !29 ; 3 uses
  %i.h = fadd float %i.e, %i.g                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  %i.i = fcmp ogt float %i.h, 0.000000e+00
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = fadd float %i.h, 1.000000e+00
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #13 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.m, align 4, !tbaa !29
  %i.t = load float, ptr %i.n, align 4, !tbaa !29
  %i.u = fsub float %i.s, %i.t
  %i.v = load float, ptr %i.o, align 4, !tbaa !29
  %i.w = load float, ptr %i.j, align 4, !tbaa !29
  %i.x = fsub float %i.v, %i.w
  %i.y = load float, ptr %i.k, align 4, !tbaa !29
  %i.z = load float, ptr %i.p, align 4, !tbaa !29
  %i.aa = fsub float %i.y, %i.z
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 3
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.u, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.x, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.aa, i64 2
  %i.ah = fmul <4 x float> %i.ad, %i.ag
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ai = fcmp olt float %i.b, %i.d
  %i.aj = fcmp olt float %i.d, %i.g
  %i.ak = select i1 %i.aj, i32 2, i32 1
  %i.al = fcmp olt float %i.b, %i.g
  %i.am = select i1 %i.al, i32 2, i32 0
  %i.an = select i1 %i.ai, i32 %i.ak, i32 %i.am
  %.fr = freeze i32 %i.an                         ; 3 uses
  %i.ao = add nuw nsw i32 %.fr, 1                 ; 2 uses
  %i.ap = icmp eq i32 %i.ao, 3
  %i.aq = select i1 %i.ap, i32 0, i32 %i.ao
  %i.ar = add nuw nsw i32 %.fr, 2
  %i.as = urem i32 %i.ar, 3
  %i.at = zext nneg i32 %.fr to i64               ; 5 uses
  %i.au = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.at ; 3 uses
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.at
  %i.aw = load float, ptr %i.av, align 4, !tbaa !29
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !29
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !29
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #13 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !29
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !29
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !29
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !29
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !29
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !29
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !29
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !29
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !29
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !29
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #9

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btPointCollectorD0Ev(ptr noundef nonnull align 8 dereferenceable(45) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #14
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btPointCollector20setShapeIdentifiersAEii(ptr noundef nonnull align 8 dereferenceable(45) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btPointCollector20setShapeIdentifiersBEii(ptr noundef nonnull align 8 dereferenceable(45) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #5 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN16btPointCollector15addContactPointERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !33
  %i.c = fcmp olt float %3, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.d, align 4, !tbaa !34
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !28
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !28
  store float %3, ptr %i.a, align 8, !tbaa !33
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { builtin nounwind }

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
!11 = !{!"_ZTS12btConvexCast"}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS22btVoronoiSimplexSolver", !12, i64 0}
!14 = !{!"p1 _ZTS30btConvexPenetrationDepthSolver", !12, i64 0}
!15 = !{!"p1 _ZTS13btConvexShape", !12, i64 0}
!16 = !{!"p1 _ZTS18btStaticPlaneShape", !12, i64 0}
!17 = !{!"_ZTS27btContinuousConvexCollision", !11, i64 0, !13, i64 8, !14, i64 16, !15, i64 24, !15, i64 32, !16, i64 40}
!18 = !{!17, !13, i64 8}
!19 = !{!17, !14, i64 16}
!20 = !{!17, !15, i64 24}
!21 = !{!17, !15, i64 32}
!22 = !{!17, !16, i64 40}
!23 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!24 = !{!"_ZTS9btVector3", !5, i64 0}
!25 = !{!"_ZTS11btTransform", !23, i64 0, !24, i64 48}
!26 = !{!"float", !5, i64 0}
!27 = !{!5, !5, i64 0}
!28 = !{i64 0, i64 16, !27}
!29 = !{!26, !26, i64 0}
!30 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!31 = !{!"bool", !5, i64 0}
!32 = !{!"_ZTS16btPointCollector", !30, i64 0, !24, i64 8, !24, i64 24, !26, i64 40, !31, i64 44}
!33 = !{!32, !26, i64 40}
!34 = !{!32, !31, i64 44}
!35 = distinct !{!35, i1 true, !"_ZNK11btTransform7inverseEv"}
!36 = distinct !{!36, !35, !"_ZNK11btTransform7inverseEv: argument 0"}
!37 = distinct !{!37, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!38 = distinct !{!38, !37, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!39 = !{!"_ZTS16btCollisionShape", !6, i64 8, !12, i64 16, !6, i64 24, !6, i64 28}
!40 = !{!39, !6, i64 8}
!41 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface17ClosestPointInputE", !25, i64 0, !25, i64 64, !26, i64 128}
!42 = !{!41, !26, i64 128}
!43 = !{!36}
!44 = !{!38, !36}
!45 = distinct !{!45, !52}
!46 = !{i8 0, i8 2}
!47 = !{}
!48 = !{!"p1 _ZTS12btIDebugDraw", !12, i64 0}
!49 = !{!"_ZTSN12btConvexCast10CastResultE", !25, i64 8, !25, i64 72, !24, i64 136, !24, i64 152, !26, i64 168, !48, i64 176, !26, i64 184, !6, i64 188, !26, i64 192}
!50 = !{!49, !26, i64 184}
!51 = !{!49, !48, i64 176}
!52 = !{!"llvm.loop.mustprogress"}
!53 = !{!49, !26, i64 168}
!54 = distinct !{!54, i1 true, !"_ZNK11btMatrix3x37inverseEv"}
!55 = distinct !{!55, !54, !"_ZNK11btMatrix3x37inverseEv: argument 0"}
!56 = distinct !{!56, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!57 = distinct !{!57, !56, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!58 = !{!55}
!59 = !{!57}
end_hunk_0
