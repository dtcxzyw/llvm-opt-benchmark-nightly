Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btGjkPairDetector?download=true
inline.NumInlined: 114
inline.NumDeleted: 36
begin_hunk_0_@_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver:bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %i.o, ptr %i.p, align 8, !tbaa !28
  %i.q = load ptr, ptr %2, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef float %i.s(ptr noundef nonnull align 8 dereferenceable(24) %2)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %i.t, ptr %i.u, align 4, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.v, align 8, !tbaa !30
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %i.w, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %i.x, align 4, !tbaa !32
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN17btGjkPairDetectorC2EPK13btConvexShapeS2_iiffP22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(96) initializes((0, 73), (80, 84), (92, 96)) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, float noundef %5, float noundef %6, ptr noundef %7, ptr noundef %8) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV17btGjkPairDetector, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %8, ptr %i.b, align 8, !tbaa !20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %7, ptr %i.c, align 8, !tbaa !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %1, ptr %i.d, align 8, !tbaa !22
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %2, ptr %i.e, align 8, !tbaa !23
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i32 %3, ptr %i.f, align 8, !tbaa !26
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 %4, ptr %i.g, align 4, !tbaa !27
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  store float %5, ptr %i.h, align 8, !tbaa !28
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %6, ptr %i.i, align 4, !tbaa !29
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i8 0, ptr %i.j, align 8, !tbaa !30
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 -1, ptr %i.k, align 8, !tbaa !31
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 1, ptr %i.l, align 4, !tbaa !32
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(96) initializes((8, 24), (76, 92)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3, i1 zeroext %4) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN17btGjkPairDetector26getClosestPointsNonVirtualERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(96) initializes((8, 24), (76, 92)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(144) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #3 align 2 {
bb.a:
  %4 = alloca %class.btVector3, align 8           ; 13 uses
  %5 = alloca %class.btVector3, align 8           ; 12 uses
  %6 = alloca %class.btVector3, align 8           ; 14 uses
  %7 = alloca %class.btTransform, align 8         ; 12 uses
  %8 = alloca %class.btTransform, align 8         ; 12 uses
  %9 = alloca %class.btVector3, align 8           ; 7 uses
  %10 = alloca %class.btVector3, align 8          ; 7 uses
  %11 = alloca %class.btVector3, align 8          ; 7 uses
  %12 = alloca %class.btVector3, align 8          ; 7 uses
  %13 = alloca %class.btVector3, align 8          ; 8 uses
  %14 = alloca %class.btVector3, align 4          ; 9 uses
  %15 = alloca %class.btVector3, align 4          ; 12 uses
  %16 = alloca %class.btVector3, align 4          ; 12 uses
  %17 = alloca %class.btVector3, align 8          ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  store float 0.000000e+00, ptr %i.a, align 4, !tbaa !33
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 4 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 5 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %7, ptr noundef nonnull align 8 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !35
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !35
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.g, ptr noundef nonnull align 8 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !35
  %i.h = getelementptr inbounds nuw i8, ptr %7, i64 48 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !35
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #10
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 16, i1 false), !tbaa.struct !35
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !35
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %8, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !35
  %i.o = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !35
  %i.q = getelementptr inbounds nuw i8, ptr %7, i64 56 ; 2 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !11 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 56 ; 2 uses
  %i.t = load float, ptr %i.s, align 8, !tbaa !11 ; 2 uses
  %i.u = fadd float %i.r, %i.t
  %i.v = load <2 x float>, ptr %i.h, align 8, !tbaa !11 ; 2 uses
  %i.w = load <2 x float>, ptr %i.o, align 8, !tbaa !11 ; 2 uses
  %i.x = fadd <2 x float> %i.v, %i.w
  %i.y = fmul <2 x float> %i.x, splat (float 5.000000e-01) ; 3 uses
  %i.z = fmul float %i.u, 5.000000e-01            ; 2 uses
  %i.aa = fsub <2 x float> %i.v, %i.y             ; 2 uses
  store <2 x float> %i.aa, ptr %i.h, align 8, !tbaa !11
  %i.ab = fsub <2 x float> %i.w, %i.y             ; 2 uses
  store <2 x float> %i.ab, ptr %i.o, align 8, !tbaa !11
  %i.ac = insertelement <2 x float> poison, float %i.t, i64 0
  %i.ad = insertelement <2 x float> %i.ac, float %i.r, i64 1
  %i.ae = insertelement <2 x float> poison, float %i.z, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = fsub <2 x float> %i.ad, %i.af           ; 3 uses
  %i.ah = extractelement <2 x float> %i.ag, i64 1
  store float %i.ah, ptr %i.q, align 8, !tbaa !11
  %i.ai = extractelement <2 x float> %i.ag, i64 0
  store float %i.ai, ptr %i.s, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = load i32, ptr %i.al, align 8, !tbaa !25
  %i.an = add i32 %i.am, -17
  %i.ao = icmp ult i32 %i.an, 2
  br i1 %i.ao, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !23
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 8, !tbaa !25
  %i.at = add i32 %i.as, -17
  %i.au = icmp ult i32 %i.at, 2
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.av = phi i1 [ false, %bb.a ], [ %i.au, %bb.b ]
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ax = load float, ptr %i.aw, align 8, !tbaa !28
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.az = load float, ptr %i.ay, align 4, !tbaa !29
  %i.ba = load i32, ptr @gNumGjkChecks, align 4, !tbaa !7
  %i.bb = add nsw i32 %i.ba, 1
  store i32 %i.bb, ptr @gNumGjkChecks, align 4, !tbaa !7
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.bd = load i8, ptr %i.bc, align 8, !tbaa !30, !range !36, !noundef !37
  %i.be = trunc nuw i8 %i.bd to i1                ; 2 uses
  %.0242 = select i1 %i.be, float 0.000000e+00, float %i.az ; 4 uses
  %.0241 = select i1 %i.be, float 0.000000e+00, float %i.ax ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 84 ; 3 uses
  store i32 0, ptr %i.bf, align 4, !tbaa !38
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bg, align 8, !tbaa !11
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 6 uses
  store i32 0, ptr %i.bj, align 8, !tbaa !39
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  store i32 -1, ptr %i.bk, align 8, !tbaa !31
  %i.bl = fadd float %.0241, %.0242               ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !tbaa !21
  tail call void @_ZN22btVoronoiSimplexSolver5resetEv(ptr noundef nonnull align 4 dereferenceable(353) %i.bn)
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.br = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.by = getelementptr inbounds nuw i8, ptr %7, i64 24
  %i.bz = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.cc = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.cd = getelementptr inbounds nuw i8, ptr %8, i64 40
  %i.ce = getelementptr inbounds nuw i8, ptr %12, i64 8 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %13, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.ci = getelementptr inbounds nuw i8, ptr %14, i64 8
  %18 = load <2 x float>, ptr %i.bx, align 8
  %.pre315 = load float, ptr %i.by, align 8, !tbaa !11
  %.pre318 = load float, ptr %i.bz, align 8, !tbaa !11
  %19 = load <2 x float>, ptr %i.cb, align 8
  %i.cj = load <2 x float>, ptr %7, align 8, !tbaa !11 ; 2 uses
  %i.ck = load <2 x float>, ptr %i.e, align 8, !tbaa !11 ; 2 uses
  %i.cl = load <2 x float>, ptr %8, align 8, !tbaa !11 ; 2 uses
  %i.cm = load <2 x float>, ptr %i.l, align 8, !tbaa !11 ; 2 uses
  %.pre324 = load float, ptr %i.cc, align 8, !tbaa !11
  %i.cn = load <2 x float>, ptr %i.g, align 8, !tbaa !11 ; 2 uses
  %i.co = load <2 x float>, ptr %i.n, align 8, !tbaa !11 ; 2 uses
  %20 = load <2 x float>, ptr %i.cd, align 8
  %i.cp = insertelement <2 x float> %20, float %.pre318, i64 1
  %i.cq = shufflevector <2 x float> %i.co, <2 x float> %i.cn, <2 x i32> <i32 0, i32 2>
  %i.cr = shufflevector <2 x float> %i.co, <2 x float> %i.cn, <2 x i32> <i32 1, i32 3>
  %i.cs = insertelement <2 x float> %18, float %.pre315, i64 1
  %i.ct = insertelement <2 x float> %19, float %.pre324, i64 1
  %i.cu = shufflevector <2 x float> %i.cj, <2 x float> %i.ck, <2 x i32> <i32 0, i32 2>
  %i.cv = shufflevector <2 x float> %i.cj, <2 x float> %i.ck, <2 x i32> <i32 1, i32 3>
  %i.cw = shufflevector <2 x float> %i.cl, <2 x float> %i.cm, <2 x i32> <i32 0, i32 2>
  %i.cx = shufflevector <2 x float> %i.cl, <2 x float> %i.cm, <2 x i32> <i32 1, i32 3>
  br label %bb.d

bb.d:                                             ; preds = %bb.r, %bb.c
  %.066 = phi float [ f0x5D5E0B6B, %bb.c ], [ %i.gx, %bb.r ] ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #10
  %i.cy = load <2 x float>, ptr %1, align 8, !tbaa !11
  %i.cz = load <2 x float>, ptr %i.d, align 8, !tbaa !11
  %i.da = load <2 x float>, ptr %i.f, align 8, !tbaa !11
  %i.db = load float, ptr %i.bo, align 8, !tbaa !11
  %i.dc = load float, ptr %i.bp, align 8, !tbaa !11
  %i.dd = load float, ptr %i.bq, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #10
  %i.de = load float, ptr %i.bg, align 8, !tbaa !11 ; 3 uses
  %i.df = fneg float %i.de                        ; 2 uses
  %i.dg = load float, ptr %i.bh, align 4, !tbaa !11 ; 3 uses
  %i.dh = fneg float %i.dg                        ; 2 uses
  %i.di = load float, ptr %i.bi, align 8, !tbaa !11 ; 3 uses
  %i.dj = fneg float %i.di                        ; 2 uses
  %i.dk = insertelement <2 x float> poison, float %i.dh, i64 0
  %i.dl = shufflevector <2 x float> %i.dk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dm = fmul <2 x float> %i.cz, %i.dl
  %i.dn = insertelement <2 x float> poison, float %i.df, i64 0
  %i.do = shufflevector <2 x float> %i.dn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.do, <2 x float> %i.dm)
  %i.dq = insertelement <2 x float> poison, float %i.dj, i64 0
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ds = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.da, <2 x float> %i.dr, <2 x float> %i.dp)
  %i.dt = fmul float %i.dc, %i.dh
  %i.du = call float @llvm.fmuladd.f32(float %i.db, float %i.df, float %i.dt)
  %i.dv = call noundef float @llvm.fmuladd.f32(float %i.dd, float %i.dj, float %i.du)
  %.sroa.3.12.vec.insert.i109 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dv, i64 0
  store <2 x float> %i.ds, ptr %9, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i109, ptr %i.br, align 8
  %i.dw = load <2 x float>, ptr %i.j, align 8, !tbaa !11
  %i.dx = load <2 x float>, ptr %i.k, align 8, !tbaa !11
  %i.dy = insertelement <2 x float> poison, float %i.dg, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = fmul <2 x float> %i.dz, %i.dx
  %i.eb = insertelement <2 x float> poison, float %i.de, i64 0
  %i.ec = shufflevector <2 x float> %i.eb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ed = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dw, <2 x float> %i.ec, <2 x float> %i.ea)
  %i.ee = load <2 x float>, ptr %i.m, align 8, !tbaa !11
  %i.ef = insertelement <2 x float> poison, float %i.di, i64 0
  %i.eg = shufflevector <2 x float> %i.ef, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.eg, <2 x float> %i.ed)
  %i.ei = load float, ptr %i.bs, align 8, !tbaa !11
  %i.ej = load float, ptr %i.bt, align 8, !tbaa !11
  %i.ek = fmul float %i.dg, %i.ej
  %i.el = call float @llvm.fmuladd.f32(float %i.ei, float %i.de, float %i.ek)
  %i.em = load float, ptr %i.bu, align 8, !tbaa !11
  %i.en = call noundef float @llvm.fmuladd.f32(float %i.em, float %i.di, float %i.el)
  %.sroa.3.12.vec.insert.i114 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.en, i64 0
  store <2 x float> %i.eh, ptr %10, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i114, ptr %i.bv, align 8
  %i.eo = load ptr, ptr %i.aj, align 8, !tbaa !22
  %i.ep = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(24) %i.eo, ptr noundef nonnull align 4 dereferenceable(16) %9) ; 2 uses
  %i.eq = extractvalue { <2 x float>, <2 x float> } %i.ep, 0 ; 4 uses
  %i.er = extractvalue { <2 x float>, <2 x float> } %i.ep, 1 ; 2 uses
  %i.es = load ptr, ptr %i.bw, align 8, !tbaa !23
  %i.et = call { <2 x float>, <2 x float> } @_ZNK13btConvexShape44localGetSupportVertexWithoutMarginNonVirtualERK9btVector3(ptr noundef nonnull align 8 dereferenceable(24) %i.es, ptr noundef nonnull align 4 dereferenceable(16) %10) ; 2 uses
  %i.eu = extractvalue { <2 x float>, <2 x float> } %i.et, 0 ; 4 uses
  %i.ev = extractvalue { <2 x float>, <2 x float> } %i.et, 1 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #10
  %i.ew = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = fmul <2 x float> %i.ew, %i.cv
  %i.ey = shufflevector <2 x float> %i.eq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ez = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cu, <2 x float> %i.ey, <2 x float> %i.ex)
  %i.fa = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fb = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cs, <2 x float> %i.fa, <2 x float> %i.ez)
  %i.fc = fadd <2 x float> %i.aa, %i.fb           ; 2 uses
  store <2 x float> %i.fc, ptr %11, align 8
  %i.fd = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fe = fmul <2 x float> %i.fd, %i.cx
  %i.ff = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.ff, <2 x float> %i.fe)
  %i.fh = shufflevector <2 x float> %i.ev, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.fh, <2 x float> %i.fg)
  %i.fj = fadd <2 x float> %i.ab, %i.fi           ; 2 uses
  %i.fk = shufflevector <2 x float> %i.eu, <2 x float> %i.eq, <2 x i32> <i32 1, i32 3>
  %i.fl = fmul <2 x float> %i.fk, %i.cr
  %i.fm = shufflevector <2 x float> %i.eu, <2 x float> %i.eq, <2 x i32> <i32 0, i32 2>
  %i.fn = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> %i.fm, <2 x float> %i.fl)
  %i.fo = shufflevector <2 x float> %i.ev, <2 x float> %i.er, <2 x i32> <i32 0, i32 2>
  %i.fp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.fo, <2 x float> %i.fn)
  %i.fq = fadd <2 x float> %i.ag, %i.fp           ; 3 uses
  %i.fr = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.fq, <2 x i32> <i32 3, i32 1>
  store <2 x float> %i.fr, ptr %i.ca, align 8
  %i.fs = insertelement <2 x float> %i.fq, float 0.000000e+00, i64 1
  store <2 x float> %i.fj, ptr %12, align 8
  store <2 x float> %i.fs, ptr %i.ce, align 8
  br i1 %i.av, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  store float 0.000000e+00, ptr %i.ca, align 8, !tbaa !11
  store float 0.000000e+00, ptr %i.ce, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.ft = phi <2 x float> [ zeroinitializer, %bb.e ], [ %i.fq, %bb.d ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #10
  %i.fu = fsub <2 x float> %i.fc, %i.fj           ; 3 uses
  %shift = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x float> %shift, %i.ft ; 2 uses
  %i.fv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %.sroa.3.12.vec.insert.i129386 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  store <2 x float> %i.fu, ptr %13, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i129386, ptr %i.cf, align 8
  %i.fw = load float, ptr %i.bg, align 8, !tbaa !11
  %i.fx = load float, ptr %i.bh, align 4, !tbaa !11
  %i.fy = extractelement <2 x float> %i.fu, i64 1
  %i.fz = fmul float %i.fx, %i.fy
  %i.ga = extractelement <2 x float> %i.fu, i64 0
  %i.gb = call float @llvm.fmuladd.f32(float %i.fw, float %i.ga, float %i.fz)
  %i.gc = load float, ptr %i.bi, align 8, !tbaa !11
  %i.gd = call noundef float @llvm.fmuladd.f32(float %i.gc, float %i.fv, float %i.gb) ; 4 uses
  %i.ge = fcmp ogt float %i.gd, 0.000000e+00
  br i1 %i.ge, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.gf = fmul float %i.gd, %i.gd
  %i.gg = load float, ptr %i.cg, align 8, !tbaa !44
  %i.gh = fmul float %.066, %i.gg
  %i.gi = fcmp ogt float %i.gf, %i.gh
  br i1 %i.gi, label %.thread253, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.gj = load ptr, ptr %i.bm, align 8, !tbaa !21
  %i.gk = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver9inSimplexERK9btVector3(ptr noundef nonnull align 4 dereferenceable(353) %i.gj, ptr noundef nonnull align 4 dereferenceable(16) %13)
  br i1 %i.gk, label %.thread253, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gl = fsub float %.066, %i.gd                 ; 2 uses
  %i.gm = fmul float %.066, f0x358637BD
  %i.gn = fcmp ugt float %i.gl, %i.gm
  br i1 %i.gn, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.go = fcmp ugt float %i.gl, 0.000000e+00
  %. = select i1 %i.go, i32 11, i32 2
  br label %.thread253

bb.k:                                             ; preds = %bb.i
  %i.gp = load ptr, ptr %i.bm, align 8, !tbaa !21
  call void @_ZN22btVoronoiSimplexSolver9addVertexERK9btVector3S2_S2_(ptr noundef nonnull align 4 dereferenceable(353) %i.gp, ptr noundef nonnull align 4 dereferenceable(16) %13, ptr noundef nonnull align 4 dereferenceable(16) %11, ptr noundef nonnull align 4 dereferenceable(16) %12)
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #10
  %i.gq = load ptr, ptr %i.bm, align 8, !tbaa !21
  %i.gr = call noundef zeroext i1 @_ZN22btVoronoiSimplexSolver7closestER9btVector3(ptr noundef nonnull align 4 dereferenceable(353) %i.gq, ptr noundef nonnull align 4 dereferenceable(16) %14)
  br i1 %i.gr, label %bb.l, label %.thread258

bb.l:                                             ; preds = %bb.k
  %i.gs = load float, ptr %14, align 4, !tbaa !11 ; 2 uses
  %i.gt = load float, ptr %i.ch, align 4, !tbaa !11 ; 2 uses
  %i.gu = fmul float %i.gt, %i.gt
  %i.gv = call float @llvm.fmuladd.f32(float %i.gs, float %i.gs, float %i.gu)
  %i.gw = load float, ptr %i.ci, align 4, !tbaa !11 ; 2 uses
  %i.gx = call noundef float @llvm.fmuladd.f32(float %i.gw, float %i.gw, float %i.gv) ; 4 uses
  %i.gy = fcmp olt float %i.gx, f0x358637BD
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bg, ptr noundef nonnull align 4 dereferenceable(16) %14, i64 16, i1 false)
  br i1 %i.gy, label %.thread258, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.gz = fsub float %.066, %i.gx
  %i.ha = fmul float %.066, f0x34000000
  %i.hb = fcmp ugt float %i.gz, %i.ha
  br i1 %i.hb, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.hc = load ptr, ptr %i.bm, align 8, !tbaa !21
  call void @_ZN22btVoronoiSimplexSolver14backup_closestER9btVector3(ptr noundef nonnull align 4 dereferenceable(353) %i.hc, ptr noundef nonnull align 4 dereferenceable(16) %i.bg)
  br label %.thread258

bb.o:                                             ; preds = %bb.m
  %i.hd = load i32, ptr %i.bf, align 4, !tbaa !38 ; 2 uses
  %i.he = add nsw i32 %i.hd, 1
  store i32 %i.he, ptr %i.bf, align 4, !tbaa !38
  %i.hf = icmp sgt i32 %i.hd, 1000
  br i1 %i.hf, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.hg = load ptr, ptr %i.bm, align 8, !tbaa !21 ; 2 uses
  %i.hh = load i32, ptr %i.hg, align 4, !tbaa !49
  %i.hi = icmp eq i32 %i.hh, 4
  br i1 %i.hi, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_ZN22btVoronoiSimplexSolver14backup_closestER9btVector3(ptr noundef nonnull align 4 dereferenceable(353) %i.hg, ptr noundef nonnull align 4 dereferenceable(16) %i.bg)
  store i32 13, ptr %i.bj, align 8, !tbaa !39
  br label %.loopexit

.thread253:                                       ; preds = %bb.h, %bb.g, %bb.j
  %..sink = phi i32 [ %., %bb.j ], [ 10, %bb.g ], [ 1, %bb.h ]
  store i32 %..sink, ptr %i.bj, align 8, !tbaa !39
  br label %bb.s

bb.r:                                             ; preds = %bb.p
end_hunk_0
