Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btConvexConcaveCollisionAlgorithm?download=true
inline.NumInlined: 264
inline.NumDeleted: 90
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZN24btConvexTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.bp = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bo, <4 x float> %i.bf, <4 x float> %i.bd) ; 2 uses
  %i.bq = extractelement <2 x float> %i.ak, i64 1
  %i.br = extractelement <2 x float> %i.ai, i64 1
  %i.bs = extractelement <2 x float> %i.be, i64 1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.bu = getelementptr inbounds nuw i8, ptr %i.s, i64 60
  %i.bv = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.bw = load float, ptr %i.o, align 4, !tbaa !37, !noalias !86
  %i.bx = fneg float %i.bw                        ; 2 uses
  %i.by = load float, ptr %i.p, align 4, !tbaa !37, !noalias !86
  %i.bz = fneg float %i.by                        ; 2 uses
  %i.ca = load float, ptr %i.q, align 4, !tbaa !37, !noalias !86
  %i.cb = fneg float %i.ca                        ; 2 uses
  %i.cc = insertelement <4 x float> %i.ad, float %i.bz, i64 0
  %i.cd = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ce = insertelement <2 x float> %i.cd, float %i.m, i64 0 ; 2 uses
  %i.cf = insertelement <2 x float> poison, float %i.bz, i64 0
  %i.cg = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ch = fmul <2 x float> %i.ce, %i.cg
  %i.ci = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.cj = insertelement <2 x float> %i.ci, float %i.l, i64 0 ; 2 uses
  %i.ck = insertelement <2 x float> poison, float %i.bx, i64 0
  %i.cl = shufflevector <2 x float> %i.ck, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.cl, <2 x float> %i.ch)
  %i.cn = shufflevector <4 x float> %i.cc, <4 x float> %i.at, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.co = fmul <4 x float> %i.as, %i.cn
  %i.cp = insertelement <4 x float> %i.az, float %i.bx, i64 0
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ay, <4 x float> %i.cp, <4 x float> %i.co)
  %i.cr = insertelement <4 x float> %i.bn, float %i.cb, i64 0
  %i.cs = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ct = insertelement <2 x float> %i.cs, float %i.n, i64 0 ; 2 uses
  %i.cu = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.cv, <2 x float> %i.cm)
  %i.cx = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.cr, <4 x float> %i.cq) ; 2 uses
  %i.cy = load float, ptr %i.bt, align 4, !tbaa !37, !noalias !87 ; 2 uses
  %i.cz = load float, ptr %i.bu, align 4, !tbaa !37, !noalias !87 ; 2 uses
  %i.da = load float, ptr %i.bv, align 4, !tbaa !37, !noalias !87 ; 2 uses
  %i.db = insertelement <2 x float> poison, float %i.cz, i64 0
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dd = fmul <2 x float> %i.ce, %i.dc
  %i.de = insertelement <2 x float> poison, float %i.cy, i64 0
  %i.df = shufflevector <2 x float> %i.de, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cj, <2 x float> %i.df, <2 x float> %i.dd)
  %i.dh = insertelement <2 x float> poison, float %i.da, i64 0
  %i.di = shufflevector <2 x float> %i.dh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.di, <2 x float> %i.dg)
  %i.dk = fadd <2 x float> %i.cw, %i.dj
  %i.dl = fmul float %i.bq, %i.cz
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.br, float %i.cy, float %i.dl)
  %i.dn = tail call noundef float @llvm.fmuladd.f32(float %i.bs, float %i.da, float %i.dm)
  %i.do = extractelement <4 x float> %i.cx, i64 0
  %i.dp = fadd float %i.do, %i.dn
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dp, i64 0
  %i.dq = shufflevector <4 x float> %i.cx, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 3, i32 7>
  store <4 x float> %i.dq, ptr %4, align 16
  %i.dr = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ds = insertelement <4 x float> %i.bp, float 0.000000e+00, i64 3
  store <4 x float> %i.ds, ptr %i.dr, align 16
  %i.dt = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.du = extractelement <4 x float> %i.bp, i64 3
  store float %i.du, ptr %i.dt, align 16
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.dv = shufflevector <2 x float> %i.ak, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.dw = insertelement <2 x float> %i.ao, float %i.ap, i64 1
  %i.dx = fmul <2 x float> %i.dv, %i.dw
  %i.dy = insertelement <2 x float> %i.am, float %i.an, i64 1
  %i.dz = shufflevector <2 x float> %i.ai, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ea = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.dz, <2 x float> %i.dx)
  %i.eb = insertelement <2 x float> %i.bg, float %i.bh, i64 1
  %i.ec = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ed = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.ec, <2 x float> %i.ea)
  store <2 x float> %i.ed, ptr %.sroa.14.32..sroa_idx, align 4
  %.sroa.1622.32..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %.sroa.1622.32..sroa_idx, align 4, !tbaa !46
  %i.ee = getelementptr inbounds nuw i8, ptr %4, i64 48
  store <2 x float> %i.dk, ptr %i.ee, align 16
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.19.48..sroa_idx, align 8, !tbaa !46
  %i.ef = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !43 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.ej = load ptr, ptr %i.eg, align 8, !tbaa !9
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 16
  %i.el = load ptr, ptr %i.ek, align 8
  call void %i.el(ptr noundef nonnull align 8 dereferenceable(24) %i.eg, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(16) %i.eh, ptr noundef nonnull align 4 dereferenceable(16) %i.ei)
  %i.em = load <2 x float>, ptr %i.ei, align 8, !tbaa !37
  %i.en = insertelement <2 x float> poison, float %1, i64 0
  %i.eo = shufflevector <2 x float> %i.en, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ep = fadd <2 x float> %i.eo, %i.em
  store <2 x float> %i.ep, ptr %i.ei, align 8, !tbaa !37
  %i.eq = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.er = load float, ptr %i.eq, align 8, !tbaa !37
  %i.es = fadd float %1, %i.er
  store float %i.es, ptr %i.eq, align 8, !tbaa !37
  %i.et = load <2 x float>, ptr %i.eh, align 8, !tbaa !37
  %i.eu = fsub <2 x float> %i.et, %i.eo
  store <2 x float> %i.eu, ptr %i.eh, align 8, !tbaa !37
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ew = load float, ptr %i.ev, align 8, !tbaa !37
  %i.ex = fsub float %i.ew, %1
  store float %i.ex, ptr %i.ev, align 8, !tbaa !37
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN33btConvexConcaveCollisionAlgorithm10clearCacheEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !29
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !9
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  tail call void %i.g(ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef %i.d), !inline_history !30
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN33btConvexConcaveCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 2 uses
  %i.e = select i1 %i.c, ptr %1, ptr %2           ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 5 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load i32, ptr %i.h, align 8, !tbaa !45
  %i.j = add i32 %i.i, -21
  %i.k = icmp ult i32 %i.j, 9
  br i1 %i.k, label %bb.b, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.b:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !43
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.o = load i32, ptr %i.n, align 8, !tbaa !45
  %i.p = icmp slt i32 %i.o, 20
  br i1 %i.p, label %bb.c, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.c:                                             ; preds = %bb.b
  %i.q = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 88
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = tail call noundef float %i.s(ptr noundef nonnull align 8 dereferenceable(28) %i.g)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !90
  tail call void @_ZN24btConvexTriangleCallback22setTimeStepAndCountersEfRK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(96) %i.u, float noundef %i.t, ptr noundef nonnull align 8 dereferenceable(56) %3, ptr noundef nonnull %4)
  %i.y = load ptr, ptr %i.v, align 8, !tbaa !33   ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 712
  store ptr %i.d, ptr %i.z, align 8, !tbaa !93
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 720
  store ptr %i.e, ptr %i.aa, align 8, !tbaa !94
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 96
  %i.af = load ptr, ptr %i.ae, align 8
  tail call void %i.af(ptr noundef nonnull align 8 dereferenceable(28) %i.g, ptr noundef nonnull %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.ab, ptr noundef nonnull align 4 dereferenceable(16) %i.ac)
  %i.ag = load ptr, ptr %i.x, align 8, !tbaa !90  ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 728
  %i.ai = load i32, ptr %i.ah, align 8, !tbaa !95
  %.not.i = icmp eq i32 %i.ai, 0
  br i1 %.not.i, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 712
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !93
  %i.al = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !96
  %.not1.i = icmp eq ptr %i.ak, %i.am             ; 2 uses
  %..i = select i1 %.not1.i, i64 16, i64 80
  %.5.i = select i1 %.not1.i, i64 80, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %4, i64 %..i
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 %.5.i
  tail call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(744) %i.ag, ptr noundef nonnull align 4 dereferenceable(64) %i.an, ptr noundef nonnull align 4 dereferenceable(64) %i.ao)
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %.sink.split.i, %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local noundef float @_ZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btVector3, align 8           ; 9 uses
  %6 = alloca %class.btVector3, align 8           ; 6 uses
  %7 = alloca %struct.LocalTriangleSphereCastCallback, align 8 ; 31 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !24, !range !34, !noundef !35
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %2, ptr %1           ; 21 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.g = load float, ptr %i.e, align 4, !tbaa !37 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 124
  %i.i = load float, ptr %i.h, align 4, !tbaa !37
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !37 ; 3 uses
  %i.l = load float, ptr %i.j, align 4, !tbaa !37 ; 2 uses
  %i.m = extractelement <2 x float> %i.k, i64 0   ; 2 uses
  %i.n = fsub float %i.g, %i.m                    ; 2 uses
  %i.o = fsub float %i.i, %i.l                    ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 128 ; 2 uses
  %i.q = load float, ptr %i.p, align 4, !tbaa !37
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.s = load float, ptr %i.r, align 4, !tbaa !37 ; 3 uses
  %i.t = fsub float %i.q, %i.s                    ; 2 uses
  %i.u = fmul float %i.o, %i.o
  %i.v = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.u)
  %i.w = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 268
  %i.y = load float, ptr %i.x, align 4, !tbaa !109 ; 2 uses
  %i.z = fmul float %i.y, %i.y
  %i.aa = fcmp olt float %i.w, %i.z
  br i1 %i.aa, label %bb.j, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ad = select i1 %i.c, ptr %1, ptr %2          ; 10 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %i.ak = load float, ptr %i.ah, align 4, !tbaa !37, !noalias !110 ; 4 uses
  %i.al = load float, ptr %i.ai, align 4, !tbaa !37, !noalias !110 ; 4 uses
  %i.am = load float, ptr %i.aj, align 4, !tbaa !37, !noalias !110 ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.as = load <2 x float>, ptr %i.ab, align 4, !tbaa !37, !noalias !111 ; 3 uses
  %i.at = load <2 x float>, ptr %i.aq, align 4, !tbaa !37, !noalias !111 ; 3 uses
  %i.au = load <2 x float>, ptr %i.ar, align 4, !tbaa !37, !noalias !111 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.aw = load float, ptr %i.av, align 4, !tbaa !37, !noalias !111 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !37, !noalias !111 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ba = load float, ptr %i.az, align 4, !tbaa !37, !noalias !111 ; 2 uses
  %i.bb = insertelement <2 x float> poison, float %i.al, i64 0
  %i.bc = shufflevector <2 x float> %i.bb, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bd = fmul <2 x float> %i.bc, %i.at
  %i.be = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.bf = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.bf, <2 x float> %i.bd)
  %i.bh = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.bi, <2 x float> %i.bg)
  %i.bk = fmul float %i.al, %i.ay
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.ak, float %i.bk)
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %i.am, float %i.bl)
  %i.bn = fmul float %i.al, %i.l
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.ak, float %i.m, float %i.bn)
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.am, float %i.s, float %i.bo)
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.bs = load <2 x float>, ptr %i.ac, align 4, !tbaa !37, !noalias !112 ; 3 uses
  %i.bt = load <2 x float>, ptr %i.bq, align 4, !tbaa !37, !noalias !112 ; 3 uses
  %i.bu = load <2 x float>, ptr %i.br, align 4, !tbaa !37, !noalias !112 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !37, !noalias !112 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.by = load float, ptr %i.bx, align 4, !tbaa !37, !noalias !112 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.ca = load float, ptr %i.bz, align 4, !tbaa !37, !noalias !112 ; 2 uses
  %i.cb = fmul <2 x float> %i.bc, %i.bt
  %i.cc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.bf, <2 x float> %i.cb)
  %i.cd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.bi, <2 x float> %i.cc)
  %8 = load float, ptr %i.p, align 4, !tbaa !37, !noalias !113 ; 2 uses
  %i.ce = load <2 x float>, ptr %i.ae, align 4, !tbaa !37, !noalias !110 ; 7 uses
  %i.cf = load <2 x float>, ptr %i.af, align 4, !tbaa !37, !noalias !110 ; 7 uses
  %i.cg = load <2 x float>, ptr %i.ag, align 4, !tbaa !37, !noalias !110 ; 7 uses
  %i.ch = load float, ptr %i.an, align 4, !tbaa !37, !noalias !114
  %i.ci = fneg float %i.ch                        ; 2 uses
  %i.cj = load float, ptr %i.ao, align 4, !tbaa !37, !noalias !114
  %i.ck = fneg float %i.cj                        ; 2 uses
  %i.cl = load float, ptr %i.ap, align 4, !tbaa !37, !noalias !114
  %i.cm = fneg float %i.cl                        ; 2 uses
  %i.cn = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.co = fmul <2 x float> %i.cn, %i.at
  %i.cp = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.cp, <2 x float> %i.co)
  %i.cr = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.cr, <2 x float> %i.cq)
  %i.ct = shufflevector <2 x float> %i.cf, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cu = fmul <2 x float> %i.ct, %i.at
  %i.cv = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.cv, <2 x float> %i.cu)
  %i.cx = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> <i32 1, i32 1> ; 2 uses
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.au, <2 x float> %i.cx, <2 x float> %i.cw)
  %i.cz = extractelement <2 x float> %i.cf, i64 1
  %i.da = extractelement <2 x float> %i.ce, i64 1
  %i.db = extractelement <2 x float> %i.cg, i64 1
  %i.dc = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.dd = insertelement <2 x float> %i.dc, float %i.ck, i64 1 ; 2 uses
  %i.de = fmul <2 x float> %i.cf, %i.dd
  %i.df = insertelement <2 x float> %i.k, float %i.ci, i64 1 ; 2 uses
  %i.dg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.df, <2 x float> %i.de)
  %i.dh = insertelement <2 x float> poison, float %i.s, i64 0
  %i.di = insertelement <2 x float> %i.dh, float %i.cm, i64 1 ; 2 uses
  %i.dj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.di, <2 x float> %i.dg) ; 2 uses
  %i.dk = shufflevector <2 x float> %i.dd, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dl = fmul <2 x float> %i.cf, %i.dk
  %i.dm = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.dm, <2 x float> %i.dl)
  %i.do = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.dp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %i.do, <2 x float> %i.dn) ; 2 uses
  %i.dq = fadd <2 x float> %i.dj, %i.dp           ; 6 uses
  %i.dr = fmul <2 x float> %i.cn, %i.bt
  %i.ds = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.cp, <2 x float> %i.dr)
  %i.dt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.cr, <2 x float> %i.ds)
  %i.du = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.dv = insertelement <4 x float> %i.du, float %i.al, i64 0
  %i.dw = insertelement <4 x float> poison, float %i.by, i64 0
  %i.dx = insertelement <4 x float> %i.dw, float %i.ay, i64 1
  %i.dy = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.dz = fmul <4 x float> %i.dv, %i.dy
  %i.ea = insertelement <4 x float> poison, float %i.bw, i64 0
  %i.eb = insertelement <4 x float> %i.ea, float %i.aw, i64 1
  %i.ec = shufflevector <4 x float> %i.eb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ed = shufflevector <2 x float> %i.ce, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.ee = insertelement <4 x float> %i.ed, float %i.ak, i64 0
  %i.ef = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ec, <4 x float> %i.ee, <4 x float> %i.dz)
  %i.eg = insertelement <4 x float> poison, float %i.ca, i64 0
  %i.eh = insertelement <4 x float> %i.eg, float %i.ba, i64 1
  %i.ei = shufflevector <4 x float> %i.eh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.ej = shufflevector <2 x float> %i.cg, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 0, i32 1>
  %i.ek = insertelement <4 x float> %i.ej, float %i.am, i64 0
  %i.el = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ei, <4 x float> %i.ek, <4 x float> %i.ef) ; 4 uses
  %i.em = fmul <2 x float> %i.ct, %i.bt
  %i.en = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bs, <2 x float> %i.cv, <2 x float> %i.em)
  %i.eo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.cx, <2 x float> %i.en)
  %i.ep = fmul float %i.cz, %i.by
  %i.eq = tail call float @llvm.fmuladd.f32(float %i.bw, float %i.da, float %i.ep)
  %i.er = tail call noundef float @llvm.fmuladd.f32(float %i.ca, float %i.db, float %i.eq)
  %i.es = insertelement <2 x float> poison, float %i.g, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %9 = insertelement <2 x float> poison, float %8, i64 0
  %10 = shufflevector <2 x float> %9, <2 x float> poison, <2 x i32> zeroinitializer
  %11 = shufflevector <2 x float> %i.dp, <2 x float> %i.dj, <2 x i32> <i32 0, i32 3>
  %12 = load <2 x float>, ptr %i.e, align 4, !tbaa !37, !noalias !113 ; 3 uses
  %i.eu = insertelement <2 x float> %12, float %i.ck, i64 0
  %i.ev = fmul <2 x float> %i.bc, %i.eu
  %13 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ew = insertelement <2 x float> %13, float %i.ci, i64 0
  %i.ex = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.ew, <2 x float> %i.ev)
  %14 = insertelement <2 x float> poison, float %i.cm, i64 0
  %i.ey = insertelement <2 x float> %14, float %8, i64 1
  %i.ez = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.ey, <2 x float> %i.ex) ; 3 uses
  %i.fa = extractelement <2 x float> %i.ez, i64 0
  %i.fb = fadd float %i.fa, %i.bp                 ; 5 uses
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.fb, i64 0 ; 3 uses
  %15 = shufflevector <2 x float> %12, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %16 = fmul <2 x float> %i.cf, %15
  %17 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ce, <2 x float> %i.et, <2 x float> %16)
  %i.fc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cg, <2 x float> %10, <2 x float> %17)
  %i.fd = fadd <2 x float> %11, %i.fc             ; 5 uses
  %shift = shufflevector <2 x float> %i.ez, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.ez, %shift ; 2 uses
  %i.fe = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 4 uses
  %.sroa.3.12.vec.insert.i.i31119 = insertelement <2 x float> %foldExtExtBinop, float 0.000000e+00, i64 1
  %i.ff = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
  %i.fg = load ptr, ptr %i.ff, align 8, !tbaa !43 ; 3 uses
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fg, i64 8
  %i.fi = load i32, ptr %i.fh, align 8, !tbaa !45
  %i.fj = add i32 %i.fi, -21
  %i.fk = icmp ult i32 %i.fj, 9
  br i1 %i.fk, label %bb.c, label %bb.j

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #12
  store <2 x float> %i.dq, ptr %5, align 8
  %.sroa.22.48..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !46
  %i.fl = extractelement <2 x float> %i.dq, i64 0 ; 2 uses
  %i.fm = extractelement <2 x float> %i.fd, i64 0 ; 3 uses
  %i.fn = fcmp olt float %i.fm, %i.fl
  br i1 %i.fn, label %bb.d, label %_Z8btSetMinIfEvRT_RKS0_.exit.i

bb.d:                                             ; preds = %bb.c
  store float %i.fm, ptr %5, align 8, !tbaa !37
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.i

_Z8btSetMinIfEvRT_RKS0_.exit.i:                   ; preds = %bb.d, %bb.c
  %i.fo = phi float [ %i.fm, %bb.d ], [ %i.fl, %bb.c ]
  %i.fp = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %i.fq = extractelement <2 x float> %i.dq, i64 1 ; 2 uses
  %i.fr = extractelement <2 x float> %i.fd, i64 1 ; 3 uses
  %i.fs = fcmp olt float %i.fr, %i.fq
  br i1 %i.fs, label %bb.e, label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

bb.e:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.i
  store float %i.fr, ptr %i.fp, align 4, !tbaa !37
  br label %_Z8btSetMinIfEvRT_RKS0_.exit5.i

_Z8btSetMinIfEvRT_RKS0_.exit5.i:                  ; preds = %bb.e, %_Z8btSetMinIfEvRT_RKS0_.exit.i
  %i.ft = phi float [ %i.fr, %bb.e ], [ %i.fq, %_Z8btSetMinIfEvRT_RKS0_.exit.i ]
  %i.fu = fcmp olt float %i.fe, %i.fb
  %i.fv = select i1 %i.fu, float %i.fe, float %i.fb
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #12
  %.sroa.22.48..sroa_idx77 = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.22.48..sroa_idx77, align 8, !tbaa !46
  %i.fw = fcmp olt <2 x float> %i.dq, %i.fd
  %i.fx = fcmp olt float %i.fb, %i.fe
  %i.fy = select i1 %i.fx, float %i.fe, float %i.fb
  %i.fz = getelementptr inbounds nuw i8, ptr %i.d, i64 264
  %i.ga = load float, ptr %i.fz, align 8, !tbaa !115 ; 6 uses
  %i.gb = fsub float %i.fo, %i.ga
  store float %i.gb, ptr %5, align 8, !tbaa !37
  %i.gc = fsub float %i.ft, %i.ga
  store float %i.gc, ptr %i.fp, align 4, !tbaa !37
  %i.gd = fsub float %i.fv, %i.ga
  store float %i.gd, ptr %.sroa.22.48..sroa_idx, align 8, !tbaa !37
  %i.ge = select <2 x i1> %i.fw, <2 x float> %i.fd, <2 x float> %i.dq
  %i.gf = insertelement <2 x float> poison, float %i.ga, i64 0
  %i.gg = shufflevector <2 x float> %i.gf, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gh = fadd <2 x float> %i.gg, %i.ge
  store <2 x float> %i.gh, ptr %6, align 8, !tbaa !37
  %i.gi = fadd float %i.ga, %i.fy
  store float %i.gi, ptr %.sroa.22.48..sroa_idx77, align 8, !tbaa !37
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback, i64 16), ptr %7, align 8, !tbaa !9
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %i.cs, ptr %i.gj, align 8
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.gk = extractelement <4 x float> %i.el, i64 1
  store float %i.gk, ptr %.sroa.664.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store float 0.000000e+00, ptr %.sroa.765.0..sroa_idx, align 4, !tbaa !46
  %i.gl = getelementptr inbounds nuw i8, ptr %7, i64 24
  store <2 x float> %i.cy, ptr %i.gl, align 8
  %.sroa.1168.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.gm = extractelement <4 x float> %i.el, i64 3
  store float %i.gm, ptr %.sroa.1168.16..sroa_idx, align 8
  %.sroa.1269.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float 0.000000e+00, ptr %.sroa.1269.16..sroa_idx, align 4, !tbaa !46
  %i.gn = getelementptr inbounds nuw i8, ptr %7, i64 40
  store <2 x float> %i.bj, ptr %i.gn, align 8
  %.sroa.1672.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store float %i.bm, ptr %.sroa.1672.32..sroa_idx, align 8
  %.sroa.1773.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 52
  store float 0.000000e+00, ptr %.sroa.1773.32..sroa_idx, align 4, !tbaa !46
  %i.go = getelementptr inbounds nuw i8, ptr %7, i64 56
  store <2 x float> %i.dq, ptr %i.go, align 8
  %.sroa.22.48..sroa_idx79 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.22.48..sroa_idx79, align 8, !tbaa !46
  %i.gp = getelementptr inbounds nuw i8, ptr %7, i64 72
  store <2 x float> %i.dt, ptr %i.gp, align 8
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  %i.gq = extractelement <4 x float> %i.el, i64 2
  store float %i.gq, ptr %.sroa.652.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 84
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !46
  %i.gr = getelementptr inbounds nuw i8, ptr %7, i64 88
  store <2 x float> %i.eo, ptr %i.gr, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 96
  store float %i.er, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 100
  store float 0.000000e+00, ptr %.sroa.12.16..sroa_idx, align 4, !tbaa !46
  %i.gs = getelementptr inbounds nuw i8, ptr %7, i64 104
  store <2 x float> %i.cd, ptr %i.gs, align 8
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 112
  %i.gt = extractelement <4 x float> %i.el, i64 0
  store float %i.gt, ptr %.sroa.16.32..sroa_idx, align 8
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 116
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !46
  %i.gu = getelementptr inbounds nuw i8, ptr %7, i64 120
  store <2 x float> %i.fd, ptr %i.gu, align 8
  %.sroa.24.48..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 128
  store <2 x float> %.sroa.3.12.vec.insert.i.i31119, ptr %.sroa.24.48..sroa_idx, align 8, !tbaa !46
  %i.gv = getelementptr inbounds nuw i8, ptr %7, i64 200
  store float %i.ga, ptr %i.gv, align 8, !tbaa !54
  %i.gw = getelementptr inbounds nuw i8, ptr %7, i64 204 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.d, i64 260 ; 3 uses
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !116
  store float %i.gy, ptr %i.gw, align 4, !tbaa !55
  %i.gz = load ptr, ptr %i.fg, align 8, !tbaa !9
  %i.ha = getelementptr inbounds nuw i8, ptr %i.gz, i64 96
  %i.hb = load ptr, ptr %i.ha, align 8
  invoke void %i.hb(ptr noundef nonnull align 8 dereferenceable(28) %i.fg, ptr noundef nonnull %7, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %6)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.hc = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %7)
          to label %bb.i unwind label %bb.k

bb.g:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit5.i
  %i.hd = load float, ptr %i.gw, align 4, !tbaa !55 ; 3 uses
  %i.he = load float, ptr %i.gx, align 4, !tbaa !116
  %i.hf = fcmp uge float %i.hd, %i.he
  br i1 %i.hf, label %.sink.split, label %bb.h

bb.h:                                             ; preds = %bb.g
  store float %i.hd, ptr %i.gx, align 4, !tbaa !116
  br label %.sink.split

bb.i:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  resume { ptr, i32 } %i.hc

.sink.split:                                      ; preds = %bb.g, %bb.h
  %.2.ph = phi float [ %i.hd, %bb.h ], [ 1.000000e+00, %bb.g ]
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(208) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.b, %bb.a
  %.2 = phi float [ 1.000000e+00, %bb.a ], [ 1.000000e+00, %bb.b ], [ %.2.ph, %.sink.split ]
  ret float %.2

bb.k:                                             ; preds = %bb.f
  %i.hg = landingpad { ptr, i32 }
          catch ptr null
  %i.hh = extractvalue { ptr, i32 } %i.hg, 0
  call void @__clang_call_terminate(ptr %i.hh) #11
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #8

declare void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN15btTriangleShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN13btConvexShapedlEPv.exit unwind label %bb.d

_ZN13btConvexShapedlEPv.exit:                     ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
end_hunk_0
begin_hunk_1_@_ZZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallback15processTriangleEP9btVector3ii:bb.a
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #12
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #12
  resume { ptr, i32 } %.pn12

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.i
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  call void @__clang_call_terminate(ptr %i.ah) #11
  unreachable
}

declare void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(188)) unnamed_addr #1

declare void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD2Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %0) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResult9DebugDrawEf(ptr noundef nonnull align 8 dereferenceable(188) %0, float noundef %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResult15drawCoordSystemERK11btTransform(ptr noundef nonnull align 8 dereferenceable(188) %0, ptr noundef nonnull align 4 dereferenceable(64) %1) unnamed_addr #7 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD0Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %0) unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #13
  ret void
}

declare void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #8

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #11 = { noreturn nounwind }
attributes #12 = { nounwind }
attributes #13 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"vtable pointer", !4, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{!"p1 _ZTS12btDispatcher", !10, i64 0}
!12 = !{!"_ZTS20btCollisionAlgorithm", !11, i64 8}
!13 = !{!"_ZTS30btActivatingCollisionAlgorithm", !12, i64 0}
!14 = !{!"bool", !5, i64 0}
!15 = !{!"_ZTS18btTriangleCallback"}
!16 = !{!"p1 _ZTS17btCollisionObject", !10, i64 0}
!17 = !{!"_ZTS9btVector3", !5, i64 0}
!18 = !{!"p1 _ZTS16btManifoldResult", !10, i64 0}
!19 = !{!"p1 _ZTS16btDispatcherInfo", !10, i64 0}
!20 = !{!"float", !5, i64 0}
!21 = !{!"p1 _ZTS20btPersistentManifold", !10, i64 0}
!22 = !{!"_ZTS24btConvexTriangleCallback", !15, i64 0, !16, i64 8, !16, i64 16, !17, i64 24, !17, i64 40, !18, i64 56, !11, i64 64, !19, i64 72, !20, i64 80, !6, i64 84, !21, i64 88}
!23 = !{!"_ZTS33btConvexConcaveCollisionAlgorithm", !13, i64 0, !14, i64 16, !22, i64 24}
!24 = !{!23, !14, i64 16}
!25 = !{!22, !11, i64 64}
!26 = !{!22, !19, i64 72}
!27 = !{!22, !16, i64 8}
!28 = !{!22, !16, i64 16}
!29 = !{!22, !21, i64 88}
!30 = !{ptr @_ZN24btConvexTriangleCallback10clearCacheEv}
!31 = !{ptr @_ZN24btConvexTriangleCallbackD2Ev, ptr @_ZN24btConvexTriangleCallback10clearCacheEv}
!32 = !{ptr @_ZN24btConvexTriangleCallbackD2Ev}
!33 = !{!23, !21, i64 112}
!34 = !{i8 0, i8 2}
!35 = !{}
!36 = !{!"p1 _ZTS12btIDebugDraw", !10, i64 0}
!37 = !{!20, !20, i64 0}
!38 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!39 = !{!"_ZTS11btTransform", !38, i64 0, !17, i64 48}
!40 = !{!"p1 _ZTS17btBroadphaseProxy", !10, i64 0}
!41 = !{!"p1 _ZTS16btCollisionShape", !10, i64 0}
!42 = !{!"_ZTS17btCollisionObject", !39, i64 8, !39, i64 72, !17, i64 136, !17, i64 152, !17, i64 168, !14, i64 184, !20, i64 188, !40, i64 192, !41, i64 200, !41, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !20, i64 232, !20, i64 236, !20, i64 240, !10, i64 248, !6, i64 256, !20, i64 260, !20, i64 264, !20, i64 268, !14, i64 272, !5, i64 273}
!43 = !{!42, !41, i64 200}
!44 = !{!"_ZTS16btCollisionShape", !6, i64 8, !10, i64 16}
!45 = !{!44, !6, i64 8}
!46 = !{!5, !5, i64 0}
!47 = !{i64 0, i64 16, !46}
!48 = !{!22, !20, i64 80}
!49 = !{!"_ZTS13btConvexShape", !44, i64 0}
!50 = !{!"_ZTS21btConvexInternalShape", !49, i64 0, !17, i64 24, !17, i64 40, !20, i64 56, !20, i64 60}
!51 = !{!50, !20, i64 56}
!52 = !{!22, !18, i64 56}
!53 = !{!"_ZTSZN33btConvexConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback", !15, i64 0, !39, i64 8, !39, i64 72, !39, i64 136, !20, i64 200, !20, i64 204}
!54 = !{!53, !20, i64 200}
!55 = !{!53, !20, i64 204}
!56 = !{!"_ZTS36btCollisionAlgorithmConstructionInfo", !11, i64 0, !21, i64 8}
!57 = !{!56, !11, i64 0}
!58 = distinct !{!58, !69, !70}
!59 = distinct !{!59, !71}
!60 = distinct !{!60, !69}
!61 = !{!"_ZTS18btAlignedAllocatorIP20btPersistentManifoldLj16EE"}
!62 = !{!"any p2 pointer", !10, i64 0}
!63 = !{!"p2 _ZTS20btPersistentManifold", !62, i64 0}
!64 = !{!"_ZTS20btAlignedObjectArrayIP20btPersistentManifoldE", !61, i64 0, !6, i64 4, !6, i64 8, !63, i64 16, !14, i64 24}
!65 = !{!64, !6, i64 4}
!66 = !{!64, !6, i64 8}
!67 = !{!64, !63, i64 16}
!68 = !{!21, !21, i64 0}
!69 = !{!"llvm.loop.isvectorized", i32 1}
!70 = !{!"llvm.loop.unroll.runtime.disable"}
!71 = !{!"llvm.loop.unroll.disable"}
!72 = !{!64, !14, i64 24}
!73 = !{!"p1 _ZTS12btStackAlloc", !10, i64 0}
!74 = !{!"_ZTS16btDispatcherInfo", !20, i64 0, !6, i64 4, !6, i64 8, !20, i64 12, !14, i64 16, !36, i64 24, !14, i64 32, !14, i64 33, !14, i64 34, !20, i64 36, !14, i64 40, !20, i64 44, !73, i64 48}
!75 = !{!74, !36, i64 24}
!76 = distinct !{!76, i1 true, !"_ZNK11btTransform7inverseEv"}
!77 = distinct !{!77, !76, !"_ZNK11btTransform7inverseEv: argument 0"}
!78 = distinct !{!78, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!79 = distinct !{!79, !78, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!80 = distinct !{!80, i1 true, !"_ZNK11btTransformmlERKS_"}
!81 = distinct !{!81, !80, !"_ZNK11btTransformmlERKS_: argument 0"}
!82 = distinct !{!82, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!83 = distinct !{!83, !82, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!84 = !{!79, !77}
!85 = !{!83, !81}
!86 = !{!77}
!87 = !{!81}
!88 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!89 = !{!"_ZTS16btManifoldResult", !88, i64 0, !21, i64 8, !39, i64 16, !39, i64 80, !16, i64 144, !16, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172}
!90 = !{!89, !21, i64 8}
!91 = !{!"_ZTS13btTypedObject", !6, i64 0}
!92 = !{!"_ZTS20btPersistentManifold", !91, i64 0, !5, i64 8, !10, i64 712, !10, i64 720, !6, i64 728, !20, i64 732, !20, i64 736, !6, i64 740}
!93 = !{!92, !10, i64 712}
!94 = !{!92, !10, i64 720}
!95 = !{!92, !6, i64 728}
!96 = !{!89, !16, i64 144}
!97 = distinct !{!97, i1 true, !"_ZNK11btTransform7inverseEv"}
!98 = distinct !{!98, !97, !"_ZNK11btTransform7inverseEv: argument 0"}
!99 = distinct !{!99, i1 true, !"_ZNK11btMatrix3x39transposeEv"}
!100 = distinct !{!100, !99, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!101 = distinct !{!101, i1 true, !"_ZNK11btTransformmlERKS_"}
!102 = distinct !{!102, !101, !"_ZNK11btTransformmlERKS_: argument 0"}
!103 = distinct !{!103, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!104 = distinct !{!104, !103, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!105 = distinct !{!105, i1 true, !"_ZNK11btTransformmlERKS_"}
!106 = distinct !{!106, !105, !"_ZNK11btTransformmlERKS_: argument 0"}
!107 = distinct !{!107, i1 true, !"_ZmlRK11btMatrix3x3S1_"}
!108 = distinct !{!108, !107, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!109 = !{!42, !20, i64 268}
!110 = !{!100, !98}
!111 = !{!104, !102}
!112 = !{!108, !106}
!113 = !{!106}
!114 = !{!98}
!115 = !{!42, !20, i64 264}
!116 = !{!42, !20, i64 260}
!117 = !{!"_ZTSN12btConvexCast10CastResultE", !39, i64 8, !39, i64 72, !17, i64 136, !17, i64 152, !20, i64 168, !36, i64 176, !20, i64 184}
!118 = !{!117, !36, i64 176}
!119 = !{!117, !20, i64 184}
!120 = !{!117, !20, i64 168}
end_hunk_1
