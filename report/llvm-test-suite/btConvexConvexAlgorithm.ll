Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btConvexConvexAlgorithm?download=true
inline.NumInlined: 518
inline.NumDeleted: 131
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN23btConvexConvexAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.wr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wq, <4 x float> %i.wi, <4 x float> %i.wp)
  %i.ws = insertelement <4 x float> %i.wd, float %i.vi, i64 2
  %i.wt = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ws, <4 x float> %i.wn, <4 x float> %i.wr)
  store <4 x float> %i.wt, ptr %i.hb, align 16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.wu = load ptr, ptr %i.he, align 8, !tbaa !88 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV24btPerturbedContactResult, i64 16), ptr %12, align 8, !tbaa !10
  store ptr %4, ptr %i.km, align 8, !tbaa !56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kn, ptr noundef nonnull align 16 dereferenceable(64) %9, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ko, ptr noundef nonnull align 16 dereferenceable(16) %i.gs, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kp, ptr noundef nonnull align 16 dereferenceable(16) %i.gu, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kq, ptr noundef nonnull align 16 dereferenceable(16) %i.gw, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kr, ptr noundef nonnull align 16 dereferenceable(64) %i.gx, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ks, ptr noundef nonnull align 16 dereferenceable(16) %i.gz, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kt, ptr noundef nonnull align 16 dereferenceable(16) %i.hb, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ku, ptr noundef nonnull align 16 dereferenceable(16) %i.hd, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kv, ptr noundef nonnull align 4 dereferenceable(64) %11, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kx, ptr noundef nonnull align 4 dereferenceable(16) %i.kw, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kz, ptr noundef nonnull align 4 dereferenceable(16) %i.ky, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.la, ptr noundef nonnull align 4 dereferenceable(16) %i.lb, i64 16, i1 false), !tbaa.struct !53
  store i8 %i.lc, ptr %i.ld, align 8, !tbaa !57
  store ptr %i.wu, ptr %i.le, align 8, !tbaa !93
  call void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.wu, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.wv = add nuw nsw i32 %.075230, 1             ; 2 uses
  %i.ww = load i32, ptr %i.jn, align 4, !tbaa !38
  %i.wx = icmp slt i32 %i.wv, %i.ww
  br i1 %i.wx, label %bb.ah, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ak, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.pre = load i8, ptr %i.fm, align 8, !tbaa !78, !range !40
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit
  %i.wy = phi i8 [ %.pre, %._crit_edge ], [ %i.hg, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit ]
  %i.wz = trunc nuw i8 %i.wy to i1
  %i.xa = fcmp ogt float %.076, f0x34000000
  %or.cond = select i1 %i.wz, i1 %i.xa, i1 false
  br i1 %or.cond, label %.noexc, label %bb.am

.noexc:                                           ; preds = %bb.al
  %i.xb = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.xc = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %.076, ptr %i.xc, align 8, !tbaa !27
  %i.xd = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xd, ptr noundef nonnull align 8 dereferenceable(16) %i.xb, i64 16, i1 false), !tbaa.struct !53
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.fk, ptr noundef nonnull align 4 dereferenceable(16) %6)
  %.fca.0.load.i.i = load <2 x float>, ptr %6, align 8
  %.fca.1.gep.i.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.fca.1.load.i.i = load <2 x float>, ptr %.fca.1.gep.i.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %i.fl, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %.fca.0.load.i11.i = load <2 x float>, ptr %5, align 8
  %.fca.1.gep.i13.i = getelementptr inbounds nuw i8, ptr %5, i64 8
  %.fca.1.load.i14.i = load <2 x float>, ptr %.fca.1.gep.i13.i, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.xe = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xe, ptr noundef nonnull align 8 dereferenceable(16) %i.gv, i64 16, i1 false), !tbaa.struct !53
  %i.xf = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.xf, ptr noundef nonnull align 8 dereferenceable(16) %i.hc, i64 16, i1 false), !tbaa.struct !53
  store <2 x float> %.fca.0.load.i.i, ptr %i.fj, align 8
  %.sroa.42.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %.fca.1.load.i.i, ptr %.sroa.42.0..sroa_idx.i132, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.fca.0.load.i11.i, ptr %i.xg, align 8
  %.sroa.4.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.fca.1.load.i14.i, ptr %.sroa.4.0..sroa_idx.i133, align 8
  br label %bb.am

bb.am:                                            ; preds = %.noexc, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.y
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.xi = load i8, ptr %i.xh, align 8, !tbaa !35, !range !40, !noundef !41
  %i.xj = trunc nuw i8 %i.xi to i1
  br i1 %i.xj, label %bb.ao, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.ao:                                            ; preds = %bb.an
  %i.xk = load ptr, ptr %i.k, align 8, !tbaa !70  ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xk, i64 728
  %i.xm = load i32, ptr %i.xl, align 8, !tbaa !75
  %.not.i135 = icmp eq i32 %i.xm, 0
  br i1 %.not.i135, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %_ZN16btManifoldResult20refreshContactPointsEv.exit.sink.split

_ZN16btManifoldResult20refreshContactPointsEv.exit.sink.split: ; preds = %bb.ao, %bb.w
  %.sink257 = phi ptr [ %i.fg, %bb.w ], [ %i.xk, %bb.ao ] ; 2 uses
  %i.xn = getelementptr inbounds nuw i8, ptr %.sink257, i64 712
  %i.xo = load ptr, ptr %i.xn, align 8, !tbaa !94
  %i.xp = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.xq = load ptr, ptr %i.xp, align 8, !tbaa !95
  %.not1.i137 = icmp eq ptr %i.xo, %i.xq          ; 2 uses
  %..i138 = select i1 %.not1.i137, i64 16, i64 80
  %.5.i139 = select i1 %.not1.i137, i64 80, i64 16
  %i.xr = getelementptr inbounds nuw i8, ptr %4, i64 %..i138
  %i.xs = getelementptr inbounds nuw i8, ptr %4, i64 %.5.i139
  call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(744) %.sink257, ptr noundef nonnull align 4 dereferenceable(64) %i.xr, ptr noundef nonnull align 4 dereferenceable(64) %i.xs)
  br label %_ZN16btManifoldResult20refreshContactPointsEv.exit

_ZN16btManifoldResult20refreshContactPointsEv.exit: ; preds = %_ZN16btManifoldResult20refreshContactPointsEv.exit.sink.split, %bb.ao, %bb.w, %bb.an
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #9

declare noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #9

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN30btConvexSeparatingDistanceUtil24updateSeparatingDistanceERK11btTransformS2_(ptr noundef nonnull align 4 dereferenceable(92) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(64) %2) local_unnamed_addr #8 comdat align 2 {
bb.a:
  %3 = alloca %class.btQuaternion, align 8        ; 5 uses
  %4 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %.fca.0.load.i = load <2 x float>, ptr %4, align 8 ; 5 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %.fca.0.load.i13 = load <2 x float>, ptr %3, align 8 ; 5 uses
  %.fca.1.gep.i15 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i16 = load <2 x float>, ptr %.fca.1.gep.i15, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !27 ; 2 uses
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load float, ptr %i.a, align 4, !tbaa !50
  %i.h = load float, ptr %i.f, align 4, !tbaa !50
  %i.i = fsub float %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !50
  %i.m = load <2 x float>, ptr %i.k, align 4, !tbaa !50
  %i.n = fsub <2 x float> %i.l, %i.m              ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 12
  %.sroa.988.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load float, ptr %i.p, align 4, !tbaa !50 ; 6 uses
  %i.r = load float, ptr %i.o, align 4, !tbaa !50 ; 7 uses
  %i.s = fcmp oeq float %i.r, %.sroa.988.12.vec.extract
  %.sroa.988.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 5 uses
  %i.t = fcmp oeq float %i.q, %.sroa.988.8.vec.extract
  %or.cond.i = select i1 %i.s, i1 %i.t, i1 false
  br i1 %or.cond.i, label %bb.c, label %._ZNK10btQuadWordneERKS_.exit.thread.i_crit_edge

._ZNK10btQuadWordneERKS_.exit.thread.i_crit_edge: ; preds = %bb.b
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre91 = load float, ptr %.phi.trans.insert, align 4, !tbaa !50
  %.pre = load float, ptr %0, align 4, !tbaa !50
  %.pre96 = extractelement <2 x float> %.fca.0.load.i, i64 1
  br label %_ZNK10btQuadWordneERKS_.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.082.4.vec.extract87 = extractelement <2 x float> %.fca.0.load.i, i64 1 ; 2 uses
  %i.v = load float, ptr %i.u, align 4, !tbaa !50 ; 2 uses
  %.pre90 = load float, ptr %0, align 4, !tbaa !50 ; 2 uses
  %i.w = fcmp une float %i.v, %.sroa.082.4.vec.extract87
  %.sroa.082.0.vec.extract85 = extractelement <2 x float> %.fca.0.load.i, i64 0
  %i.x = fcmp une float %.pre90, %.sroa.082.0.vec.extract85
  %or.cond = select i1 %i.w, i1 true, i1 %i.x
  br i1 %or.cond, label %_ZNK10btQuadWordneERKS_.exit.thread.i, label %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit

_ZNK10btQuadWordneERKS_.exit.thread.i:            ; preds = %._ZNK10btQuadWordneERKS_.exit.thread.i_crit_edge, %bb.c
  %.sroa.082.4.vec.extract.pre-phi = phi float [ %.pre96, %._ZNK10btQuadWordneERKS_.exit.thread.i_crit_edge ], [ %.sroa.082.4.vec.extract87, %bb.c ] ; 4 uses
  %i.y = phi float [ %.pre91, %._ZNK10btQuadWordneERKS_.exit.thread.i_crit_edge ], [ %i.v, %bb.c ] ; 5 uses
  %i.z = phi float [ %.pre, %._ZNK10btQuadWordneERKS_.exit.thread.i_crit_edge ], [ %.pre90, %bb.c ] ; 5 uses
  %.sroa.082.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0 ; 4 uses
  %i.aa = fsub float %i.y, %.sroa.082.4.vec.extract.pre-phi
  %i.ab = fsub float %i.q, %.sroa.988.8.vec.extract
  %i.ac = fsub float %i.r, %.sroa.988.12.vec.extract
  %i.ad = fadd float %.sroa.082.4.vec.extract.pre-phi, %i.y
  %i.ae = fadd float %.sroa.988.8.vec.extract, %i.q
  %i.af = fadd float %.sroa.988.12.vec.extract, %i.r
  %i.ag = fadd float %.sroa.082.0.vec.extract, %i.z
  %i.ah = fsub float %i.z, %.sroa.082.0.vec.extract
  %i.ai = insertelement <2 x float> poison, float %i.ad, i64 0
  %i.aj = insertelement <2 x float> %i.ai, float %i.aa, i64 1 ; 2 uses
  %i.ak = fmul <2 x float> %i.aj, %i.aj
  %i.al = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.am = insertelement <2 x float> %i.al, float %i.ah, i64 1 ; 2 uses
  %i.an = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.am, <2 x float> %i.am, <2 x float> %i.ak)
  %i.ao = insertelement <2 x float> poison, float %i.ae, i64 0
  %i.ap = insertelement <2 x float> %i.ao, float %i.ab, i64 1 ; 2 uses
  %i.aq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ap, <2 x float> %i.ap, <2 x float> %i.an)
  %i.ar = insertelement <2 x float> poison, float %i.af, i64 0
  %i.as = insertelement <2 x float> %i.ar, float %i.ac, i64 1 ; 2 uses
  %i.at = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.as, <2 x float> %i.aq) ; 2 uses
  %i.au = extractelement <2 x float> %i.at, i64 0
  %i.av = extractelement <2 x float> %i.at, i64 1
  %i.aw = fcmp olt float %i.av, %i.au
  br i1 %i.aw, label %_ZNK12btQuaternion7nearestERKS_.exit.i.i, label %bb.d

bb.d:                                             ; preds = %_ZNK10btQuadWordneERKS_.exit.thread.i
  %i.ax = fneg float %.sroa.082.0.vec.extract
  %i.ay = fneg float %.sroa.082.4.vec.extract.pre-phi
  %i.az = fneg float %.sroa.988.8.vec.extract
  %i.ba = fneg float %.sroa.988.12.vec.extract
  br label %_ZNK12btQuaternion7nearestERKS_.exit.i.i

_ZNK12btQuaternion7nearestERKS_.exit.i.i:         ; preds = %_ZNK10btQuadWordneERKS_.exit.thread.i, %bb.d
  %.sroa.540.8.vec.extract.i.i.pre-phi = phi float [ %.sroa.988.8.vec.extract, %_ZNK10btQuadWordneERKS_.exit.thread.i ], [ %i.az, %bb.d ] ; 4 uses
  %.sroa.039.4.vec.extract.i.i.pre-phi = phi float [ %.sroa.082.4.vec.extract.pre-phi, %_ZNK10btQuadWordneERKS_.exit.thread.i ], [ %i.ay, %bb.d ] ; 4 uses
  %.sroa.039.0.vec.extract.i.i.pre-phi = phi float [ %.sroa.082.0.vec.extract, %_ZNK10btQuadWordneERKS_.exit.thread.i ], [ %i.ax, %bb.d ] ; 4 uses
  %.sroa.540.12.vec.extract.i.i.pre-phi = phi float [ %.sroa.988.12.vec.extract, %_ZNK10btQuadWordneERKS_.exit.thread.i ], [ %i.ba, %bb.d ] ; 4 uses
  %i.bb = fneg float %i.z                         ; 2 uses
  %i.bc = fneg float %i.y                         ; 2 uses
  %i.bd = fneg float %i.q                         ; 2 uses
  %i.be = fmul float %i.r, %.sroa.039.0.vec.extract.i.i.pre-phi
  %i.bf = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i.pre-phi, float %i.bb, float %i.be)
  %i.bg = call float @llvm.fmuladd.f32(float %.sroa.039.4.vec.extract.i.i.pre-phi, float %i.bd, float %i.bf)
  %i.bh = call float @llvm.fmuladd.f32(float %.sroa.540.8.vec.extract.i.i.pre-phi, float %i.y, float %i.bg) ; 3 uses
  %i.bi = fmul float %i.r, %.sroa.039.4.vec.extract.i.i.pre-phi
  %i.bj = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i.pre-phi, float %i.bc, float %i.bi)
  %i.bk = call float @llvm.fmuladd.f32(float %.sroa.540.8.vec.extract.i.i.pre-phi, float %i.bb, float %i.bj)
  %i.bl = call float @llvm.fmuladd.f32(float %.sroa.039.0.vec.extract.i.i.pre-phi, float %i.q, float %i.bk) ; 3 uses
  %i.bm = fmul float %i.r, %.sroa.540.8.vec.extract.i.i.pre-phi
  %i.bn = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i.pre-phi, float %i.bd, float %i.bm)
  %i.bo = call float @llvm.fmuladd.f32(float %.sroa.039.0.vec.extract.i.i.pre-phi, float %i.bc, float %i.bn)
  %i.bp = call float @llvm.fmuladd.f32(float %.sroa.039.4.vec.extract.i.i.pre-phi, float %i.z, float %i.bo) ; 3 uses
  %i.bq = fmul float %i.z, %.sroa.039.0.vec.extract.i.i.pre-phi
  %i.br = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i.pre-phi, float %i.r, float %i.bq)
  %i.bs = call float @llvm.fmuladd.f32(float %.sroa.039.4.vec.extract.i.i.pre-phi, float %i.y, float %i.br)
  %i.bt = call float @llvm.fmuladd.f32(float %.sroa.540.8.vec.extract.i.i.pre-phi, float %i.q, float %i.bs) ; 3 uses
  %i.bu = fmul float %i.bl, %i.bl
  %i.bv = call float @llvm.fmuladd.f32(float %i.bh, float %i.bh, float %i.bu)
  %i.bw = call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float %i.bv)
  %i.bx = call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.bw)
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.bx)
  %i.by = fdiv float 1.000000e+00, %sqrt.i.i.i.i  ; 4 uses
  %i.bz = fmul float %i.bh, %i.by                 ; 3 uses
  %i.ca = fmul float %i.bl, %i.by                 ; 3 uses
  %i.cb = fmul float %i.bp, %i.by                 ; 3 uses
  %i.cc = fmul float %i.bt, %i.by
  %i.cd = call noundef float @acosf(float noundef %i.cc) #14, !tbaa !7
  %i.ce = fmul float %i.cd, 2.000000e+00          ; 4 uses
  %i.cf = fmul float %i.ca, %i.ca
  %i.cg = call float @llvm.fmuladd.f32(float %i.bz, float %i.bz, float %i.cf)
  %i.ch = call noundef float @llvm.fmuladd.f32(float %i.cb, float %i.cb, float %i.cg) ; 2 uses
  %i.ci = fcmp olt float %i.ch, f0x28800000
  br i1 %i.ci, label %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK12btQuaternion7nearestERKS_.exit.i.i
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.ch)
  %i.cj = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.ck = fmul float %i.bz, %i.cj
  %i.cl = fmul float %i.ca, %i.cj
  %i.cm = fmul float %i.cb, %i.cj
  %i.cn = fmul float %i.ce, %i.ck
  br label %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i

_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i: ; preds = %bb.e, %_ZNK12btQuaternion7nearestERKS_.exit.i.i
  %.sink42.i.i = phi float [ %i.cn, %bb.e ], [ %i.ce, %_ZNK12btQuaternion7nearestERKS_.exit.i.i ]
  %.sink41.i.i = phi float [ %i.cl, %bb.e ], [ 0.000000e+00, %_ZNK12btQuaternion7nearestERKS_.exit.i.i ]
  %.sink.i.i = phi float [ %i.cm, %bb.e ], [ 0.000000e+00, %_ZNK12btQuaternion7nearestERKS_.exit.i.i ]
  %i.co = fmul float %i.ce, %.sink41.i.i
  %i.cp = fmul float %i.ce, %.sink.i.i
  %.sroa.0.0.vec.insert.i.i16.i = insertelement <2 x float> poison, float %.sink42.i.i, i64 0
  %.sroa.0.4.vec.insert.i.i17.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i16.i, float %i.co, i64 1
  %.sroa.3.12.vec.insert.i.i18.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cp, i64 0
  br label %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit

_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit: ; preds = %bb.c, %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i
  %.sroa.666.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i18.i, %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i ], [ zeroinitializer, %bb.c ]
  %.sroa.065.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i17.i, %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i ], [ zeroinitializer, %bb.c ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.cs = load float, ptr %i.b, align 4, !tbaa !50
  %i.ct = load float, ptr %i.cq, align 4, !tbaa !50
  %i.cu = fsub float %i.cs, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.cw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.cx = load <2 x float>, ptr %i.cv, align 4, !tbaa !50
  %i.cy = load <2 x float>, ptr %i.cw, align 4, !tbaa !50
  %i.cz = fsub <2 x float> %i.cx, %i.cy           ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.sroa.9.12.vec.extract = extractelement <2 x float> %.fca.1.load.i16, i64 1 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dc = load float, ptr %i.db, align 4, !tbaa !50 ; 6 uses
  %i.dd = load float, ptr %i.da, align 4, !tbaa !50 ; 7 uses
  %i.de = fcmp oeq float %i.dd, %.sroa.9.12.vec.extract
  %.sroa.9.8.vec.extract = extractelement <2 x float> %.fca.1.load.i16, i64 0 ; 5 uses
  %i.df = fcmp oeq float %i.dc, %.sroa.9.8.vec.extract
  %or.cond.i22 = select i1 %i.de, i1 %i.df, i1 false
  br i1 %or.cond.i22, label %bb.f, label %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit._ZNK10btQuadWordneERKS_.exit.thread.i23_crit_edge

_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit._ZNK10btQuadWordneERKS_.exit.thread.i23_crit_edge: ; preds = %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit
  %.phi.trans.insert94 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre95 = load float, ptr %.phi.trans.insert94, align 4, !tbaa !50
  %.pre92 = load float, ptr %i.cr, align 4, !tbaa !50
  %.pre101 = extractelement <2 x float> %.fca.0.load.i13, i64 1
  br label %_ZNK10btQuadWordneERKS_.exit.thread.i23

bb.f:                                             ; preds = %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.sroa.075.4.vec.extract80 = extractelement <2 x float> %.fca.0.load.i13, i64 1 ; 2 uses
  %i.dh = load float, ptr %i.dg, align 4, !tbaa !50 ; 2 uses
  %.pre93 = load float, ptr %i.cr, align 4, !tbaa !50 ; 2 uses
  %i.di = fcmp une float %i.dh, %.sroa.075.4.vec.extract80
  %.sroa.075.0.vec.extract78 = extractelement <2 x float> %.fca.0.load.i13, i64 0
  %i.dj = fcmp une float %.pre93, %.sroa.075.0.vec.extract78
  %or.cond111 = select i1 %i.di, i1 true, i1 %i.dj
  br i1 %or.cond111, label %_ZNK10btQuadWordneERKS_.exit.thread.i23, label %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit48

_ZNK10btQuadWordneERKS_.exit.thread.i23:          ; preds = %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit._ZNK10btQuadWordneERKS_.exit.thread.i23_crit_edge, %bb.f
  %.sroa.075.4.vec.extract.pre-phi = phi float [ %.pre101, %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit._ZNK10btQuadWordneERKS_.exit.thread.i23_crit_edge ], [ %.sroa.075.4.vec.extract80, %bb.f ] ; 4 uses
  %i.dk = phi float [ %.pre95, %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit._ZNK10btQuadWordneERKS_.exit.thread.i23_crit_edge ], [ %i.dh, %bb.f ] ; 5 uses
  %i.dl = phi float [ %.pre92, %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit._ZNK10btQuadWordneERKS_.exit.thread.i23_crit_edge ], [ %.pre93, %bb.f ] ; 5 uses
  %.sroa.075.0.vec.extract = extractelement <2 x float> %.fca.0.load.i13, i64 0 ; 4 uses
  %i.dm = fsub float %i.dk, %.sroa.075.4.vec.extract.pre-phi
  %i.dn = fsub float %i.dc, %.sroa.9.8.vec.extract
  %i.do = fsub float %i.dd, %.sroa.9.12.vec.extract
  %i.dp = fadd float %.sroa.075.4.vec.extract.pre-phi, %i.dk
  %i.dq = fadd float %.sroa.9.8.vec.extract, %i.dc
  %i.dr = fadd float %.sroa.9.12.vec.extract, %i.dd
  %i.ds = fadd float %.sroa.075.0.vec.extract, %i.dl
  %i.dt = fsub float %i.dl, %.sroa.075.0.vec.extract
  %i.du = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.dv = insertelement <2 x float> %i.du, float %i.dm, i64 1 ; 2 uses
  %i.dw = fmul <2 x float> %i.dv, %i.dv
  %i.dx = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.dy = insertelement <2 x float> %i.dx, float %i.dt, i64 1 ; 2 uses
  %i.dz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dy, <2 x float> %i.dy, <2 x float> %i.dw)
  %i.ea = insertelement <2 x float> poison, float %i.dq, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %i.dn, i64 1 ; 2 uses
  %i.ec = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eb, <2 x float> %i.eb, <2 x float> %i.dz)
  %i.ed = insertelement <2 x float> poison, float %i.dr, i64 0
  %i.ee = insertelement <2 x float> %i.ed, float %i.do, i64 1 ; 2 uses
  %i.ef = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.ee, <2 x float> %i.ec) ; 2 uses
  %i.eg = extractelement <2 x float> %i.ef, i64 0
  %i.eh = extractelement <2 x float> %i.ef, i64 1
  %i.ei = fcmp olt float %i.eh, %i.eg
  br i1 %i.ei, label %_ZNK12btQuaternion7nearestERKS_.exit.i.i28, label %bb.g

bb.g:                                             ; preds = %_ZNK10btQuadWordneERKS_.exit.thread.i23
  %i.ej = fneg float %.sroa.075.0.vec.extract
  %i.ek = fneg float %.sroa.075.4.vec.extract.pre-phi
  %i.el = fneg float %.sroa.9.8.vec.extract
  %i.em = fneg float %.sroa.9.12.vec.extract
  br label %_ZNK12btQuaternion7nearestERKS_.exit.i.i28

_ZNK12btQuaternion7nearestERKS_.exit.i.i28:       ; preds = %_ZNK10btQuadWordneERKS_.exit.thread.i23, %bb.g
  %.sroa.540.8.vec.extract.i.i34.pre-phi = phi float [ %.sroa.9.8.vec.extract, %_ZNK10btQuadWordneERKS_.exit.thread.i23 ], [ %i.el, %bb.g ] ; 4 uses
  %.sroa.039.4.vec.extract.i.i33.pre-phi = phi float [ %.sroa.075.4.vec.extract.pre-phi, %_ZNK10btQuadWordneERKS_.exit.thread.i23 ], [ %i.ek, %bb.g ] ; 4 uses
  %.sroa.039.0.vec.extract.i.i32.pre-phi = phi float [ %.sroa.075.0.vec.extract, %_ZNK10btQuadWordneERKS_.exit.thread.i23 ], [ %i.ej, %bb.g ] ; 4 uses
  %.sroa.540.12.vec.extract.i.i31.pre-phi = phi float [ %.sroa.9.12.vec.extract, %_ZNK10btQuadWordneERKS_.exit.thread.i23 ], [ %i.em, %bb.g ] ; 4 uses
  %i.en = fneg float %i.dl                        ; 2 uses
  %i.eo = fneg float %i.dk                        ; 2 uses
  %i.ep = fneg float %i.dc                        ; 2 uses
  %i.eq = fmul float %i.dd, %.sroa.039.0.vec.extract.i.i32.pre-phi
  %i.er = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i31.pre-phi, float %i.en, float %i.eq)
  %i.es = call float @llvm.fmuladd.f32(float %.sroa.039.4.vec.extract.i.i33.pre-phi, float %i.ep, float %i.er)
  %i.et = call float @llvm.fmuladd.f32(float %.sroa.540.8.vec.extract.i.i34.pre-phi, float %i.dk, float %i.es) ; 3 uses
  %i.eu = fmul float %i.dd, %.sroa.039.4.vec.extract.i.i33.pre-phi
  %i.ev = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i31.pre-phi, float %i.eo, float %i.eu)
  %i.ew = call float @llvm.fmuladd.f32(float %.sroa.540.8.vec.extract.i.i34.pre-phi, float %i.en, float %i.ev)
  %i.ex = call float @llvm.fmuladd.f32(float %.sroa.039.0.vec.extract.i.i32.pre-phi, float %i.dc, float %i.ew) ; 3 uses
  %i.ey = fmul float %i.dd, %.sroa.540.8.vec.extract.i.i34.pre-phi
  %i.ez = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i31.pre-phi, float %i.ep, float %i.ey)
  %i.fa = call float @llvm.fmuladd.f32(float %.sroa.039.0.vec.extract.i.i32.pre-phi, float %i.eo, float %i.ez)
  %i.fb = call float @llvm.fmuladd.f32(float %.sroa.039.4.vec.extract.i.i33.pre-phi, float %i.dl, float %i.fa) ; 3 uses
  %i.fc = fmul float %i.dl, %.sroa.039.0.vec.extract.i.i32.pre-phi
  %i.fd = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i31.pre-phi, float %i.dd, float %i.fc)
  %i.fe = call float @llvm.fmuladd.f32(float %.sroa.039.4.vec.extract.i.i33.pre-phi, float %i.dk, float %i.fd)
  %i.ff = call float @llvm.fmuladd.f32(float %.sroa.540.8.vec.extract.i.i34.pre-phi, float %i.dc, float %i.fe) ; 3 uses
  %i.fg = fmul float %i.ex, %i.ex
  %i.fh = call float @llvm.fmuladd.f32(float %i.et, float %i.et, float %i.fg)
  %i.fi = call float @llvm.fmuladd.f32(float %i.fb, float %i.fb, float %i.fh)
  %i.fj = call noundef float @llvm.fmuladd.f32(float %i.ff, float %i.ff, float %i.fi)
  %sqrt.i.i.i.i35 = call noundef float @llvm.sqrt.f32(float %i.fj)
  %i.fk = fdiv float 1.000000e+00, %sqrt.i.i.i.i35 ; 4 uses
  %i.fl = fmul float %i.et, %i.fk                 ; 3 uses
  %i.fm = fmul float %i.ex, %i.fk                 ; 3 uses
  %i.fn = fmul float %i.fb, %i.fk                 ; 3 uses
  %i.fo = fmul float %i.ff, %i.fk
  %i.fp = call noundef float @acosf(float noundef %i.fo) #14, !tbaa !7
  %i.fq = fmul float %i.fp, 2.000000e+00          ; 4 uses
  %i.fr = fmul float %i.fm, %i.fm
  %i.fs = call float @llvm.fmuladd.f32(float %i.fl, float %i.fl, float %i.fr)
  %i.ft = call noundef float @llvm.fmuladd.f32(float %i.fn, float %i.fn, float %i.fs) ; 2 uses
  %i.fu = fcmp olt float %i.ft, f0x28800000
  br i1 %i.fu, label %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i37, label %bb.h

bb.h:                                             ; preds = %_ZNK12btQuaternion7nearestERKS_.exit.i.i28
  %sqrt.i.i36 = call float @llvm.sqrt.f32(float %i.ft)
  %i.fv = fdiv float 1.000000e+00, %sqrt.i.i36    ; 3 uses
  %i.fw = fmul float %i.fl, %i.fv
  %i.fx = fmul float %i.fm, %i.fv
  %i.fy = fmul float %i.fn, %i.fv
  %i.fz = fmul float %i.fq, %i.fw
  br label %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i37

_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i37: ; preds = %bb.h, %_ZNK12btQuaternion7nearestERKS_.exit.i.i28
  %.sink42.i.i38 = phi float [ %i.fz, %bb.h ], [ %i.fq, %_ZNK12btQuaternion7nearestERKS_.exit.i.i28 ]
  %.sink41.i.i39 = phi float [ %i.fx, %bb.h ], [ 0.000000e+00, %_ZNK12btQuaternion7nearestERKS_.exit.i.i28 ]
  %.sink.i.i40 = phi float [ %i.fy, %bb.h ], [ 0.000000e+00, %_ZNK12btQuaternion7nearestERKS_.exit.i.i28 ]
  %i.ga = fmul float %i.fq, %.sink41.i.i39
  %i.gb = fmul float %i.fq, %.sink.i.i40
  %.sroa.0.0.vec.insert.i.i16.i41 = insertelement <2 x float> poison, float %.sink42.i.i38, i64 0
  %.sroa.0.4.vec.insert.i.i17.i42 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i16.i41, float %i.ga, i64 1
  %.sroa.3.12.vec.insert.i.i18.i43 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gb, i64 0
  br label %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit48

_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit48: ; preds = %bb.f, %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i37
  %.sroa.6.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i18.i43, %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i37 ], [ zeroinitializer, %bb.f ]
  %.sroa.057.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i17.i42, %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i37 ], [ zeroinitializer, %bb.f ] ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !25
  %i.ge = shufflevector <2 x float> %.sroa.065.0, <2 x float> %.sroa.057.0, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.gf = fmul <2 x float> %i.ge, %i.ge
  %i.gg = shufflevector <2 x float> %.sroa.065.0, <2 x float> %.sroa.057.0, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gh = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gg, <2 x float> %i.gg, <2 x float> %i.gf)
  %i.gi = shufflevector <2 x float> %.sroa.666.0, <2 x float> %.sroa.6.0, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> %i.gi, <2 x float> %i.gh)
  %i.gk = call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.gj) ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !26
  %i.gn = extractelement <2 x float> %i.gk, i64 1
  %i.go = fmul float %i.gm, %i.gn
  %i.gp = extractelement <2 x float> %i.gk, i64 0
  %i.gq = call float @llvm.fmuladd.f32(float %i.gp, float %i.gd, float %i.go)
  %i.gr = fsub float %i.cu, %i.i
  %foldExtExtBinop = fsub <2 x float> %i.cz, %i.n
  %i.gs = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop113 = fsub <2 x float> %i.cz, %i.n
  %i.gt = extractelement <2 x float> %foldExtExtBinop113, i64 1
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.gv = load float, ptr %i.gu, align 4, !tbaa !50
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.gx = load float, ptr %i.gw, align 4, !tbaa !50
  %i.gy = fmul float %i.gs, %i.gx
  %i.gz = call float @llvm.fmuladd.f32(float %i.gr, float %i.gv, float %i.gy)
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.hb = load float, ptr %i.ha, align 4, !tbaa !50
  %i.hc = call noundef float @llvm.fmuladd.f32(float %i.gt, float %i.hb, float %i.gz) ; 2 uses
  %i.hd = fcmp olt float %i.hc, 0.000000e+00
  %spec.store.select = select i1 %i.hd, float 0.000000e+00, float %i.hc
  %i.he = fadd float %i.gq, %spec.store.select
  %i.hf = fsub float %i.d, %i.he
  store float %i.hf, ptr %i.c, align 4, !tbaa !27
  br label %bb.i

bb.i:                                             ; preds = %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit48, %bb.a
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hg, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !53
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hh, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !53
  store <2 x float> %.fca.0.load.i, ptr %0, align 4
  %.sroa.988.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.fca.1.load.i, ptr %.sroa.988.0..sroa_idx, align 4
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.fca.0.load.i13, ptr %i.hi, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %.fca.1.load.i16, ptr %.sroa.9.0..sroa_idx, align 4
  ret void
}

declare void @_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

declare void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) unnamed_addr #5

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define dso_local noundef float @_ZN23btConvexConvexAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef %1, ptr noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr nofree readnone captures(none) %4) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %class.btSphereShape, align 8       ; 11 uses
  %6 = alloca %"struct.btConvexCast::CastResult", align 8 ; 8 uses
  %7 = alloca %class.btVoronoiSimplexSolver, align 4 ; 5 uses
  %8 = alloca %class.btGjkConvexCast, align 8     ; 7 uses
  %9 = alloca %class.btSphereShape, align 8       ; 11 uses
  %10 = alloca %"struct.btConvexCast::CastResult", align 8 ; 8 uses
  %11 = alloca %class.btVoronoiSimplexSolver, align 4 ; 5 uses
  %12 = alloca %class.btGjkConvexCast, align 8    ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load float, ptr %i.b, align 4, !tbaa !50
  %i.f = load float, ptr %i.d, align 4, !tbaa !50
  %i.g = fsub float %i.e, %i.f                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.i = load float, ptr %i.h, align 4, !tbaa !50
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.k = load float, ptr %i.j, align 4, !tbaa !50
  %i.l = fsub float %i.i, %i.k                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.n = load float, ptr %i.m, align 4, !tbaa !50
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load float, ptr %i.o, align 4, !tbaa !50
  %i.q = fsub float %i.n, %i.p                    ; 2 uses
  %i.r = fmul float %i.l, %i.l
  %i.s = tail call float @llvm.fmuladd.f32(float %i.g, float %i.g, float %i.r)
  %i.t = tail call noundef float @llvm.fmuladd.f32(float %i.q, float %i.q, float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 72 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 268
  %i.x = load float, ptr %i.w, align 4, !tbaa !96 ; 2 uses
  %i.y = fmul float %i.x, %i.x
  %i.z = fcmp olt float %i.t, %i.y
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %2, i64 128
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !50
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !50
  %i.ae = fsub float %i.ab, %i.ad                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ag = load float, ptr %i.af, align 4, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !50
  %i.aj = fsub float %i.ag, %i.ai                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.al = load float, ptr %i.ak, align 4, !tbaa !50
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.an = load float, ptr %i.am, align 4, !tbaa !50
  %i.ao = fsub float %i.al, %i.an                 ; 2 uses
  %i.ap = fmul float %i.ao, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ap)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 268
  %i.at = load float, ptr %i.as, align 4, !tbaa !96 ; 2 uses
  %i.au = fmul float %i.at, %i.at
  %i.av = fcmp olt float %i.ar, %i.au
  %i.aw = load i8, ptr @disableCcd, align 1, !range !40
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond = select i1 %i.av, i1 true, i1 %i.ax
end_hunk_0
