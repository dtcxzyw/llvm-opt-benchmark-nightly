inline.NumInlined: 518
inline.NumDeleted: 131
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN23btConvexConvexAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %.scalar281 = fsub float 1.000000e+00, %i.ud
  %i.ug = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar281, i64 0
  %i.uh = shufflevector <2 x float> %i.ug, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ui = shufflevector <2 x float> <float poison, float 1.000000e+00>, <2 x float> %i.tw, <4 x i32> <i32 2, i32 2, i32 2, i32 1>
  %i.uj = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.tw, <4 x i32> <i32 3, i32 3, i32 3, i32 1>
  %i.uk = fsub <4 x float> %i.ui, %i.uj
  %.scalar282 = fadd float %i.ty, %i.tu
  %i.ul = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar282, i64 0
  %i.um = shufflevector <2 x float> %i.ul, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.un = load <2 x float>, ptr %i.fl, align 8, !tbaa !61, !noalias !86 ; 2 uses
  %i.uo = load <2 x float>, ptr %i.gy, align 8, !tbaa !61, !noalias !86 ; 2 uses
  %i.up = load <2 x float>, ptr %i.ha, align 8, !tbaa !61, !noalias !86 ; 2 uses
  %i.uq = shufflevector <2 x float> %i.uo, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ur = insertelement <4 x float> %i.uq, float 0.000000e+00, i64 3
  %i.us = shufflevector <2 x float> %i.un, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ut = insertelement <4 x float> %i.us, float 0.000000e+00, i64 3
  %i.uu = shufflevector <2 x float> %i.up, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.uv = insertelement <4 x float> %i.uu, float 0.000000e+00, i64 3
  %shift283 = shufflevector <2 x float> %i.tw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop284 = fadd <2 x float> %i.tw, %shift283
  %i.uw = shufflevector <2 x float> %foldExtExtBinop284, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %.scalar286 = fsub float 1.000000e+00, %i.ue
  %i.ux = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar286, i64 0
  %i.uy = shufflevector <2 x float> %i.ux, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.uz = fsub float %i.tz, %i.ts
  %i.va = load <2 x float>, ptr %i.jw, align 4, !tbaa !61, !noalias !86 ; 2 uses
  %i.vb = load float, ptr %i.jz, align 8, !tbaa !61, !noalias !86
  %i.vc = load <2 x float>, ptr %i.jv, align 4, !tbaa !61, !noalias !86 ; 2 uses
  %i.vd = load float, ptr %i.jy, align 8, !tbaa !61, !noalias !86
  %i.ve = load <2 x float>, ptr %i.jx, align 4, !tbaa !61, !noalias !86 ; 2 uses
  %i.vf = load float, ptr %i.ka, align 8, !tbaa !61, !noalias !86
  %i.vg = shufflevector <2 x float> %i.va, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.vh = shufflevector <4 x float> %i.ur, <4 x float> %i.vg, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.vi = fmul <4 x float> %i.vh, %i.uk
  %i.vj = shufflevector <2 x float> %i.vc, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.vk = shufflevector <4 x float> %i.ut, <4 x float> %i.vj, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.vl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vk, <4 x float> %i.uh, <4 x float> %i.vi)
  %i.vm = shufflevector <2 x float> %i.ve, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.vn = shufflevector <4 x float> %i.uv, <4 x float> %i.vm, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.vo = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vn, <4 x float> %i.um, <4 x float> %i.vl)
  %i.vp = shufflevector <2 x float> %i.uo, <2 x float> %i.va, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.vq = insertelement <4 x float> %i.vp, float 1.000000e+00, i64 3 ; 2 uses
  %i.vr = fmul <4 x float> %i.uy, %i.vq
  %i.vs = shufflevector <2 x float> %i.un, <2 x float> %i.vc, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.vt = insertelement <4 x float> %i.vs, float 0.000000e+00, i64 3 ; 2 uses
  %i.vu = insertelement <4 x float> %i.uw, float -0.000000e+00, i64 1
  %i.vv = shufflevector <4 x float> %i.vu, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.vw = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vt, <4 x float> %i.vv, <4 x float> %i.vr)
  %i.vx = shufflevector <2 x float> %i.up, <2 x float> %i.ve, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.vy = insertelement <4 x float> %i.vx, float 0.000000e+00, i64 3 ; 2 uses
  %i.vz = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.uz, i64 0
  %i.wa = shufflevector <4 x float> %i.vz, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.wb = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vy, <4 x float> %i.wa, <4 x float> %i.vw)
  store <4 x float> %i.vo, ptr %i.gx, align 16
  store <4 x float> %i.wb, ptr %i.gz, align 16
  %.scalar287 = fsub float %i.ty, %i.tu
  %i.wc = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar287, i64 0
  %i.wd = shufflevector <2 x float> %i.wc, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar288 = fadd float %i.tz, %i.ts
  %i.we = insertelement <2 x float> <float poison, float 0.000000e+00>, float %.scalar288, i64 0
  %i.wf = shufflevector <2 x float> %i.we, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %.scalar289 = fsub float 1.000000e+00, %i.uf
  %i.wg = insertelement <2 x float> <float poison, float -0.000000e+00>, float %.scalar289, i64 0
  %i.wh = shufflevector <2 x float> %i.wg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.wi = insertelement <4 x float> %i.vq, float %i.vb, i64 2
  %i.wj = fmul <4 x float> %i.wf, %i.wi
  %i.wk = insertelement <4 x float> %i.vt, float %i.vd, i64 2
  %i.wl = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wk, <4 x float> %i.wd, <4 x float> %i.wj)
  %i.wm = insertelement <4 x float> %i.vy, float %i.vf, i64 2
  %i.wn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wm, <4 x float> %i.wh, <4 x float> %i.wl)
  store <4 x float> %i.wn, ptr %i.hb, align 16
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #14
  %i.wo = load ptr, ptr %i.he, align 8, !tbaa !80 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV24btPerturbedContactResult, i64 16), ptr %12, align 8, !tbaa !11
  store ptr %4, ptr %i.kh, align 8, !tbaa !89
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ki, ptr noundef nonnull align 16 dereferenceable(64) %9, i64 16, i1 false), !tbaa.struct !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kj, ptr noundef nonnull align 16 dereferenceable(16) %i.gs, i64 16, i1 false), !tbaa.struct !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kk, ptr noundef nonnull align 16 dereferenceable(16) %i.gu, i64 16, i1 false), !tbaa.struct !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kl, ptr noundef nonnull align 16 dereferenceable(16) %i.gw, i64 16, i1 false), !tbaa.struct !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.km, ptr noundef nonnull align 16 dereferenceable(64) %i.gx, i64 16, i1 false), !tbaa.struct !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kn, ptr noundef nonnull align 16 dereferenceable(16) %i.gz, i64 16, i1 false), !tbaa.struct !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ko, ptr noundef nonnull align 16 dereferenceable(16) %i.hb, i64 16, i1 false), !tbaa.struct !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kp, ptr noundef nonnull align 16 dereferenceable(16) %i.hd, i64 16, i1 false), !tbaa.struct !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.kq, ptr noundef nonnull align 4 dereferenceable(64) %11, i64 16, i1 false), !tbaa.struct !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ks, ptr noundef nonnull align 4 dereferenceable(16) %i.kr, i64 16, i1 false), !tbaa.struct !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ku, ptr noundef nonnull align 4 dereferenceable(16) %i.kt, i64 16, i1 false), !tbaa.struct !79
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.kv, ptr noundef nonnull align 4 dereferenceable(16) %i.kw, i64 16, i1 false), !tbaa.struct !79
  store i8 %i.kx, ptr %i.ky, align 8, !tbaa !92
  store ptr %i.wo, ptr %i.kz, align 8, !tbaa !93
  call void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(96) %10, ptr noundef nonnull align 8 dereferenceable(144) %9, ptr noundef nonnull align 8 dereferenceable(8) %12, ptr noundef %i.wo, i1 noundef zeroext false)
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #14
  %i.wp = add nuw nsw i32 %.084230, 1             ; 2 uses
  %i.wq = load i32, ptr %i.ji, align 4, !tbaa !45
  %i.wr = icmp slt i32 %i.wp, %i.wq
  br i1 %i.wr, label %bb.ah, label %._crit_edge

._crit_edge:                                      ; preds = %bb.ak, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %11)
  %.pre = load i8, ptr %i.fm, align 8, !tbaa !66, !range !47
  br label %bb.al

bb.al:                                            ; preds = %._crit_edge, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit
  %i.ws = phi i8 [ %.pre, %._crit_edge ], [ %i.hg, %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit ]
  %i.wt = trunc nuw i8 %i.ws to i1
  %i.wu = fcmp ogt float %.085, f0x34000000
  %or.cond = select i1 %i.wt, i1 %i.wu, i1 false
  br i1 %or.cond, label %.noexc, label %bb.am

.noexc:                                           ; preds = %bb.al
  %i.wv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 104
  store float %.085, ptr %i.ww, align 8, !tbaa !34
  %i.wx = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wx, ptr noundef nonnull align 8 dereferenceable(16) %i.wv, i64 16, i1 false), !tbaa.struct !79
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
  %i.wy = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wy, ptr noundef nonnull align 4 dereferenceable(16) %i.gv, i64 16, i1 false), !tbaa.struct !79
  %i.wz = getelementptr inbounds nuw i8, ptr %0, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.wz, ptr noundef nonnull align 4 dereferenceable(16) %i.hc, i64 16, i1 false), !tbaa.struct !79
  store <2 x float> %.fca.0.load.i.i, ptr %i.fj, align 8
  %.sroa.42.0..sroa_idx.i132 = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %.fca.1.load.i.i, ptr %.sroa.42.0..sroa_idx.i132, align 8
  %i.xa = getelementptr inbounds nuw i8, ptr %0, i64 32
  store <2 x float> %.fca.0.load.i11.i, ptr %i.xa, align 8
  %.sroa.4.0..sroa_idx.i133 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x float> %.fca.1.load.i14.i, ptr %.sroa.4.0..sroa_idx.i133, align 8
  br label %bb.am

bb.am:                                            ; preds = %.noexc, %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.y
  %i.xb = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.xc = load i8, ptr %i.xb, align 8, !tbaa !42, !range !47, !noundef !48
  %i.xd = trunc nuw i8 %i.xc to i1
  br i1 %i.xd, label %bb.ao, label %_ZN16btManifoldResult20refreshContactPointsEv.exit

bb.ao:                                            ; preds = %bb.an
  %i.xe = load ptr, ptr %i.k, align 8, !tbaa !51  ; 2 uses
  %i.xf = getelementptr inbounds nuw i8, ptr %i.xe, i64 728
  %i.xg = load i32, ptr %i.xf, align 8, !tbaa !63
  %.not.i135 = icmp eq i32 %i.xg, 0
  br i1 %.not.i135, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %_ZN16btManifoldResult20refreshContactPointsEv.exit.sink.split

_ZN16btManifoldResult20refreshContactPointsEv.exit.sink.split: ; preds = %bb.ao, %bb.w
  %.sink257 = phi ptr [ %i.fg, %bb.w ], [ %i.xe, %bb.ao ] ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %.sink257, i64 712
  %i.xi = load ptr, ptr %i.xh, align 8, !tbaa !94
  %i.xj = getelementptr inbounds nuw i8, ptr %4, i64 144
  %i.xk = load ptr, ptr %i.xj, align 8, !tbaa !95
  %.not1.i137 = icmp eq ptr %i.xi, %i.xk          ; 2 uses
  %..i138 = select i1 %.not1.i137, i64 16, i64 80
  %.5.i139 = select i1 %.not1.i137, i64 80, i64 16
  %i.xl = getelementptr inbounds nuw i8, ptr %4, i64 %..i138
  %i.xm = getelementptr inbounds nuw i8, ptr %4, i64 %.5.i139
  call void @_ZN20btPersistentManifold20refreshContactPointsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(744) %.sink257, ptr noundef nonnull align 4 dereferenceable(64) %i.xl, ptr noundef nonnull align 4 dereferenceable(64) %i.xm)
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
  %.fca.0.load.i14 = load <2 x float>, ptr %3, align 8 ; 5 uses
  %.fca.1.gep.i16 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.fca.1.load.i17 = load <2 x float>, ptr %.fca.1.gep.i16, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.d = load float, ptr %i.c, align 4, !tbaa !34 ; 2 uses
  %i.e = fcmp ogt float %i.d, 0.000000e+00
  br i1 %i.e, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.g = load float, ptr %i.a, align 4, !tbaa !61
  %i.h = load float, ptr %i.f, align 4, !tbaa !61
  %i.i = fsub float %i.g, %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.k = load float, ptr %i.j, align 4, !tbaa !61
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.m = load float, ptr %i.l, align 4, !tbaa !61
  %i.n = fsub float %i.k, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.p = load float, ptr %i.o, align 4, !tbaa !61
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load float, ptr %i.q, align 4, !tbaa !61
  %i.s = fsub float %i.p, %i.r
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.u = load float, ptr %i.t, align 4, !tbaa !61 ; 7 uses
  %.sroa.989.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 5 uses
  %i.v = fcmp oeq float %i.u, %.sroa.989.12.vec.extract
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.x = load float, ptr %i.w, align 4, !tbaa !61 ; 6 uses
  %.sroa.989.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 5 uses
  %i.y = fcmp oeq float %i.x, %.sroa.989.8.vec.extract
  %or.cond.i = select i1 %i.v, i1 %i.y, i1 false
  br i1 %or.cond.i, label %bb.c, label %._ZNK10btQuadWordneERKS_.exit.thread.i_crit_edge

._ZNK10btQuadWordneERKS_.exit.thread.i_crit_edge: ; preds = %bb.b
  %.pre = load float, ptr %0, align 4, !tbaa !61
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.pre92 = load float, ptr %.phi.trans.insert, align 4, !tbaa !61
  %.pre97 = extractelement <2 x float> %.fca.0.load.i, i64 1
  br label %_ZNK10btQuadWordneERKS_.exit.thread.i

bb.c:                                             ; preds = %bb.b
  %5 = getelementptr inbounds nuw i8, ptr %0, i64 4
  %6 = load float, ptr %5, align 4, !tbaa !61     ; 2 uses
  %i.z = extractelement <2 x float> %.fca.0.load.i, i64 1 ; 2 uses
  %i.aa = fcmp une float %6, %i.z
  %.pre91 = load float, ptr %0, align 4, !tbaa !61 ; 2 uses
  %i.ab = extractelement <2 x float> %.fca.0.load.i, i64 0
  %i.ac = fcmp une float %.pre91, %i.ab
  %or.cond = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond, label %_ZNK10btQuadWordneERKS_.exit.thread.i, label %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit

_ZNK10btQuadWordneERKS_.exit.thread.i:            ; preds = %._ZNK10btQuadWordneERKS_.exit.thread.i_crit_edge, %bb.c
  %.sroa.083.4.vec.extract.pre-phi = phi float [ %.pre97, %._ZNK10btQuadWordneERKS_.exit.thread.i_crit_edge ], [ %i.z, %bb.c ] ; 4 uses
  %7 = phi float [ %.pre92, %._ZNK10btQuadWordneERKS_.exit.thread.i_crit_edge ], [ %6, %bb.c ] ; 5 uses
  %8 = phi float [ %.pre, %._ZNK10btQuadWordneERKS_.exit.thread.i_crit_edge ], [ %.pre91, %bb.c ] ; 5 uses
  %.sroa.083.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0 ; 4 uses
  %9 = fsub float %7, %.sroa.083.4.vec.extract.pre-phi
  %10 = fsub float %i.x, %.sroa.989.8.vec.extract
  %11 = fsub float %i.u, %.sroa.989.12.vec.extract
  %12 = fadd float %.sroa.083.4.vec.extract.pre-phi, %7
  %13 = fadd float %.sroa.989.8.vec.extract, %i.x
  %14 = fadd float %.sroa.989.12.vec.extract, %i.u
  %15 = fadd float %.sroa.083.0.vec.extract, %8
  %16 = fsub float %8, %.sroa.083.0.vec.extract
  %17 = insertelement <2 x float> poison, float %9, i64 0
  %18 = insertelement <2 x float> %17, float %12, i64 1 ; 2 uses
  %19 = fmul <2 x float> %18, %18
  %20 = insertelement <2 x float> poison, float %16, i64 0
  %21 = insertelement <2 x float> %20, float %15, i64 1 ; 2 uses
  %22 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %21, <2 x float> %21, <2 x float> %19)
  %23 = insertelement <2 x float> poison, float %10, i64 0
  %24 = insertelement <2 x float> %23, float %13, i64 1 ; 2 uses
  %25 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %24, <2 x float> %24, <2 x float> %22)
  %26 = insertelement <2 x float> poison, float %11, i64 0
  %27 = insertelement <2 x float> %26, float %14, i64 1 ; 2 uses
  %28 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %27, <2 x float> %27, <2 x float> %25) ; 2 uses
  %29 = extractelement <2 x float> %28, i64 0
  %30 = extractelement <2 x float> %28, i64 1
  %31 = fcmp olt float %29, %30
  br i1 %31, label %_ZNK10btQuadWordneERKS_.exit.thread.i.a, label %32

32:                                               ; preds = %_ZNK10btQuadWordneERKS_.exit.thread.i
  %33 = fneg float %.sroa.083.0.vec.extract
  %34 = fneg float %.sroa.083.4.vec.extract.pre-phi
  %35 = fneg float %.sroa.989.8.vec.extract
  %36 = fneg float %.sroa.989.12.vec.extract
  br label %_ZNK10btQuadWordneERKS_.exit.thread.i.a

_ZNK10btQuadWordneERKS_.exit.thread.i.a:          ; preds = %_ZNK10btQuadWordneERKS_.exit.thread.i, %32
  %.sroa.083.4.vec.extract.pre-phi.a = phi float [ %.sroa.989.8.vec.extract, %_ZNK10btQuadWordneERKS_.exit.thread.i ], [ %35, %32 ] ; 4 uses
  %.sroa.039.4.vec.extract.i.i.pre-phi = phi float [ %.sroa.083.4.vec.extract.pre-phi, %_ZNK10btQuadWordneERKS_.exit.thread.i ], [ %34, %32 ] ; 4 uses
  %.sroa.039.0.vec.extract.i.i.pre-phi = phi float [ %.sroa.083.0.vec.extract, %_ZNK10btQuadWordneERKS_.exit.thread.i ], [ %33, %32 ] ; 4 uses
  %.sroa.540.12.vec.extract.i.i.pre-phi = phi float [ %.sroa.989.12.vec.extract, %_ZNK10btQuadWordneERKS_.exit.thread.i ], [ %36, %32 ] ; 4 uses
  %i.ad = fneg float %8                           ; 2 uses
  %i.ae = fneg float %7                           ; 2 uses
  %i.af = fneg float %i.x                         ; 2 uses
  %i.ag = fmul float %i.u, %.sroa.039.0.vec.extract.i.i.pre-phi
  %i.ah = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i.pre-phi, float %i.ad, float %i.ag)
  %i.ai = call float @llvm.fmuladd.f32(float %.sroa.039.4.vec.extract.i.i.pre-phi, float %i.af, float %i.ah)
  %i.aj = call float @llvm.fmuladd.f32(float %.sroa.083.4.vec.extract.pre-phi.a, float %7, float %i.ai) ; 3 uses
  %37 = fmul float %i.u, %.sroa.039.4.vec.extract.i.i.pre-phi
  %i.ak = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i.pre-phi, float %i.ae, float %37)
  %i.al = call float @llvm.fmuladd.f32(float %.sroa.083.4.vec.extract.pre-phi.a, float %i.ad, float %i.ak)
  %i.am = call float @llvm.fmuladd.f32(float %.sroa.039.0.vec.extract.i.i.pre-phi, float %i.x, float %i.al) ; 3 uses
  %38 = fmul float %i.u, %.sroa.083.4.vec.extract.pre-phi.a
  %39 = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i.pre-phi, float %i.af, float %38)
  %40 = call float @llvm.fmuladd.f32(float %.sroa.039.0.vec.extract.i.i.pre-phi, float %i.ae, float %39)
  %41 = call float @llvm.fmuladd.f32(float %.sroa.039.4.vec.extract.i.i.pre-phi, float %8, float %40) ; 3 uses
  %42 = fmul float %8, %.sroa.039.0.vec.extract.i.i.pre-phi
  %43 = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i.pre-phi, float %i.u, float %42)
  %44 = call float @llvm.fmuladd.f32(float %.sroa.039.4.vec.extract.i.i.pre-phi, float %7, float %43)
  %45 = call float @llvm.fmuladd.f32(float %.sroa.083.4.vec.extract.pre-phi.a, float %i.x, float %44) ; 3 uses
  %46 = fmul float %i.am, %i.am
  %i.an = call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %46)
  %i.ao = call float @llvm.fmuladd.f32(float %41, float %41, float %i.an)
  %i.ap = call noundef float @llvm.fmuladd.f32(float %45, float %45, float %i.ao)
  %sqrt.i.i.i.i = call noundef float @llvm.sqrt.f32(float %i.ap)
  %i.aq = fdiv float 1.000000e+00, %sqrt.i.i.i.i  ; 4 uses
  %i.ar = fmul float %i.aj, %i.aq                 ; 3 uses
  %47 = fmul float %i.am, %i.aq                   ; 3 uses
  %48 = fmul float %41, %i.aq                     ; 3 uses
  %i.as = fmul float %45, %i.aq
  %i.at = call noundef float @acosf(float noundef %i.as) #14, !tbaa !4
  %i.au = fmul float %i.at, 2.000000e+00          ; 4 uses
  %49 = fmul float %47, %47
  %i.av = call float @llvm.fmuladd.f32(float %i.ar, float %i.ar, float %49)
  %i.aw = call noundef float @llvm.fmuladd.f32(float %48, float %48, float %i.av) ; 2 uses
  %i.ax = fcmp olt float %i.aw, f0x28800000
  br i1 %i.ax, label %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i, label %bb.d

bb.d:                                             ; preds = %_ZNK10btQuadWordneERKS_.exit.thread.i.a
  %sqrt.i.i = call float @llvm.sqrt.f32(float %i.aw)
  %i.ay = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.az = fmul float %i.ar, %i.ay
  %50 = fmul float %47, %i.ay
  %51 = fmul float %48, %i.ay
  %i.ba = fmul float %i.au, %i.az
  br label %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i

_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i: ; preds = %bb.d, %_ZNK10btQuadWordneERKS_.exit.thread.i.a
  %.sink42.i.i = phi float [ %i.ba, %bb.d ], [ %i.au, %_ZNK10btQuadWordneERKS_.exit.thread.i.a ]
  %.sink41.i.i = phi float [ %50, %bb.d ], [ 0.000000e+00, %_ZNK10btQuadWordneERKS_.exit.thread.i.a ]
  %.sink.i.i = phi float [ %51, %bb.d ], [ 0.000000e+00, %_ZNK10btQuadWordneERKS_.exit.thread.i.a ]
  %i.bb = fmul float %i.au, %.sink41.i.i
  %i.bc = fmul float %i.au, %.sink.i.i
  %.sroa.0.0.vec.insert.i.i16.i = insertelement <2 x float> poison, float %.sink42.i.i, i64 0
  %.sroa.0.4.vec.insert.i.i17.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i16.i, float %i.bb, i64 1
  %.sroa.3.12.vec.insert.i.i18.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.bc, i64 0
  br label %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit

_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit: ; preds = %bb.c, %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i
  %.sroa.066.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i17.i, %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i ], [ zeroinitializer, %bb.c ] ; 3 uses
  %.sroa.667.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i18.i, %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i ], [ zeroinitializer, %bb.c ]
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bf = load float, ptr %i.b, align 4, !tbaa !61
  %i.bg = load float, ptr %i.bd, align 4, !tbaa !61
  %i.bh = fsub float %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !61
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !61
  %i.bm = fsub float %i.bj, %i.bl
  %i.bn = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.bo = load float, ptr %i.bn, align 4, !tbaa !61
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !61
  %i.br = fsub float %i.bo, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !61 ; 7 uses
  %.sroa.9.12.vec.extract = extractelement <2 x float> %.fca.1.load.i17, i64 1 ; 5 uses
  %i.bu = fcmp oeq float %i.bt, %.sroa.9.12.vec.extract
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !61 ; 6 uses
  %.sroa.9.8.vec.extract = extractelement <2 x float> %.fca.1.load.i17, i64 0 ; 5 uses
  %i.bx = fcmp oeq float %i.bw, %.sroa.9.8.vec.extract
  %or.cond.i23 = select i1 %i.bu, i1 %i.bx, i1 false
  br i1 %or.cond.i23, label %bb.e, label %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit._ZNK10btQuadWordneERKS_.exit.thread.i24_crit_edge

_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit._ZNK10btQuadWordneERKS_.exit.thread.i24_crit_edge: ; preds = %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit
  %.pre93 = load float, ptr %i.be, align 4, !tbaa !61
  %.phi.trans.insert95 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %.pre96 = load float, ptr %.phi.trans.insert95, align 4, !tbaa !61
  %.pre102 = extractelement <2 x float> %.fca.0.load.i14, i64 1
  br label %_ZNK10btQuadWordneERKS_.exit.thread.i24

bb.e:                                             ; preds = %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit
  %52 = getelementptr inbounds nuw i8, ptr %0, i64 20
  %53 = load float, ptr %52, align 4, !tbaa !61   ; 2 uses
  %i.by = extractelement <2 x float> %.fca.0.load.i14, i64 1 ; 2 uses
  %i.bz = fcmp une float %53, %i.by
  %.pre94 = load float, ptr %i.be, align 4, !tbaa !61 ; 2 uses
  %i.ca = extractelement <2 x float> %.fca.0.load.i14, i64 0
  %i.cb = fcmp une float %.pre94, %i.ca
  %or.cond113 = select i1 %i.bz, i1 true, i1 %i.cb
  br i1 %or.cond113, label %_ZNK10btQuadWordneERKS_.exit.thread.i24, label %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit49

_ZNK10btQuadWordneERKS_.exit.thread.i24:          ; preds = %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit._ZNK10btQuadWordneERKS_.exit.thread.i24_crit_edge, %bb.e
  %.sroa.076.4.vec.extract.pre-phi = phi float [ %.pre102, %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit._ZNK10btQuadWordneERKS_.exit.thread.i24_crit_edge ], [ %i.by, %bb.e ] ; 4 uses
  %54 = phi float [ %.pre96, %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit._ZNK10btQuadWordneERKS_.exit.thread.i24_crit_edge ], [ %53, %bb.e ] ; 5 uses
  %55 = phi float [ %.pre93, %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit._ZNK10btQuadWordneERKS_.exit.thread.i24_crit_edge ], [ %.pre94, %bb.e ] ; 5 uses
  %.sroa.076.0.vec.extract = extractelement <2 x float> %.fca.0.load.i14, i64 0 ; 4 uses
  %56 = fsub float %54, %.sroa.076.4.vec.extract.pre-phi
  %57 = fsub float %i.bw, %.sroa.9.8.vec.extract
  %58 = fsub float %i.bt, %.sroa.9.12.vec.extract
  %59 = fadd float %.sroa.076.4.vec.extract.pre-phi, %54
  %60 = fadd float %.sroa.9.8.vec.extract, %i.bw
  %61 = fadd float %.sroa.9.12.vec.extract, %i.bt
  %62 = fadd float %.sroa.076.0.vec.extract, %55
  %63 = fsub float %55, %.sroa.076.0.vec.extract
  %64 = insertelement <2 x float> poison, float %56, i64 0
  %65 = insertelement <2 x float> %64, float %59, i64 1 ; 2 uses
  %66 = fmul <2 x float> %65, %65
  %67 = insertelement <2 x float> poison, float %63, i64 0
  %68 = insertelement <2 x float> %67, float %62, i64 1 ; 2 uses
  %69 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %68, <2 x float> %68, <2 x float> %66)
  %70 = insertelement <2 x float> poison, float %57, i64 0
  %71 = insertelement <2 x float> %70, float %60, i64 1 ; 2 uses
  %72 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %71, <2 x float> %71, <2 x float> %69)
  %73 = insertelement <2 x float> poison, float %58, i64 0
  %74 = insertelement <2 x float> %73, float %61, i64 1 ; 2 uses
  %75 = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %74, <2 x float> %74, <2 x float> %72) ; 2 uses
  %76 = extractelement <2 x float> %75, i64 0
  %77 = extractelement <2 x float> %75, i64 1
  %78 = fcmp olt float %76, %77
  br i1 %78, label %_ZNK10btQuadWordneERKS_.exit.thread.i24.a, label %79

79:                                               ; preds = %_ZNK10btQuadWordneERKS_.exit.thread.i24
  %80 = fneg float %.sroa.076.0.vec.extract
  %81 = fneg float %.sroa.076.4.vec.extract.pre-phi
  %82 = fneg float %.sroa.9.8.vec.extract
  %83 = fneg float %.sroa.9.12.vec.extract
  br label %_ZNK10btQuadWordneERKS_.exit.thread.i24.a

_ZNK10btQuadWordneERKS_.exit.thread.i24.a:        ; preds = %_ZNK10btQuadWordneERKS_.exit.thread.i24, %79
  %.sroa.076.4.vec.extract.pre-phi.a = phi float [ %.sroa.9.8.vec.extract, %_ZNK10btQuadWordneERKS_.exit.thread.i24 ], [ %82, %79 ] ; 4 uses
  %.sroa.039.4.vec.extract.i.i34.pre-phi = phi float [ %.sroa.076.4.vec.extract.pre-phi, %_ZNK10btQuadWordneERKS_.exit.thread.i24 ], [ %81, %79 ] ; 4 uses
  %.sroa.039.0.vec.extract.i.i33.pre-phi = phi float [ %.sroa.076.0.vec.extract, %_ZNK10btQuadWordneERKS_.exit.thread.i24 ], [ %80, %79 ] ; 4 uses
  %.sroa.540.12.vec.extract.i.i32.pre-phi = phi float [ %.sroa.9.12.vec.extract, %_ZNK10btQuadWordneERKS_.exit.thread.i24 ], [ %83, %79 ] ; 4 uses
  %i.cc = fneg float %55                          ; 2 uses
  %i.cd = fneg float %54                          ; 2 uses
  %i.ce = fneg float %i.bw                        ; 2 uses
  %i.cf = fmul float %i.bt, %.sroa.039.0.vec.extract.i.i33.pre-phi
  %i.cg = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i32.pre-phi, float %i.cc, float %i.cf)
  %i.ch = call float @llvm.fmuladd.f32(float %.sroa.039.4.vec.extract.i.i34.pre-phi, float %i.ce, float %i.cg)
  %i.ci = call float @llvm.fmuladd.f32(float %.sroa.076.4.vec.extract.pre-phi.a, float %54, float %i.ch) ; 3 uses
  %84 = fmul float %i.bt, %.sroa.039.4.vec.extract.i.i34.pre-phi
  %i.cj = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i32.pre-phi, float %i.cd, float %84)
  %i.ck = call float @llvm.fmuladd.f32(float %.sroa.076.4.vec.extract.pre-phi.a, float %i.cc, float %i.cj)
  %i.cl = call float @llvm.fmuladd.f32(float %.sroa.039.0.vec.extract.i.i33.pre-phi, float %i.bw, float %i.ck) ; 3 uses
  %85 = fmul float %i.bt, %.sroa.076.4.vec.extract.pre-phi.a
  %86 = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i32.pre-phi, float %i.ce, float %85)
  %87 = call float @llvm.fmuladd.f32(float %.sroa.039.0.vec.extract.i.i33.pre-phi, float %i.cd, float %86)
  %88 = call float @llvm.fmuladd.f32(float %.sroa.039.4.vec.extract.i.i34.pre-phi, float %55, float %87) ; 3 uses
  %89 = fmul float %55, %.sroa.039.0.vec.extract.i.i33.pre-phi
  %90 = call float @llvm.fmuladd.f32(float %.sroa.540.12.vec.extract.i.i32.pre-phi, float %i.bt, float %89)
  %91 = call float @llvm.fmuladd.f32(float %.sroa.039.4.vec.extract.i.i34.pre-phi, float %54, float %90)
  %92 = call float @llvm.fmuladd.f32(float %.sroa.076.4.vec.extract.pre-phi.a, float %i.bw, float %91) ; 3 uses
  %93 = fmul float %i.cl, %i.cl
  %i.cm = call float @llvm.fmuladd.f32(float %i.ci, float %i.ci, float %93)
  %i.cn = call float @llvm.fmuladd.f32(float %88, float %88, float %i.cm)
  %i.co = call noundef float @llvm.fmuladd.f32(float %92, float %92, float %i.cn)
  %sqrt.i.i.i.i36 = call noundef float @llvm.sqrt.f32(float %i.co)
  %i.cp = fdiv float 1.000000e+00, %sqrt.i.i.i.i36 ; 4 uses
  %i.cq = fmul float %i.ci, %i.cp                 ; 3 uses
  %94 = fmul float %i.cl, %i.cp                   ; 3 uses
  %95 = fmul float %88, %i.cp                     ; 3 uses
  %i.cr = fmul float %92, %i.cp
  %i.cs = call noundef float @acosf(float noundef %i.cr) #14, !tbaa !4
  %i.ct = fmul float %i.cs, 2.000000e+00          ; 4 uses
  %96 = fmul float %94, %94
  %i.cu = call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %96)
  %i.cv = call noundef float @llvm.fmuladd.f32(float %95, float %95, float %i.cu) ; 2 uses
  %i.cw = fcmp olt float %i.cv, f0x28800000
  br i1 %i.cw, label %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i38, label %bb.f

bb.f:                                             ; preds = %_ZNK10btQuadWordneERKS_.exit.thread.i24.a
  %sqrt.i.i37 = call float @llvm.sqrt.f32(float %i.cv)
  %i.cx = fdiv float 1.000000e+00, %sqrt.i.i37    ; 3 uses
  %i.cy = fmul float %i.cq, %i.cx
  %97 = fmul float %94, %i.cx
  %98 = fmul float %95, %i.cx
  %i.cz = fmul float %i.ct, %i.cy
  br label %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i38

_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i38: ; preds = %bb.f, %_ZNK10btQuadWordneERKS_.exit.thread.i24.a
  %.sink42.i.i39 = phi float [ %i.cz, %bb.f ], [ %i.ct, %_ZNK10btQuadWordneERKS_.exit.thread.i24.a ]
  %.sink41.i.i40 = phi float [ %97, %bb.f ], [ 0.000000e+00, %_ZNK10btQuadWordneERKS_.exit.thread.i24.a ]
  %.sink.i.i41 = phi float [ %98, %bb.f ], [ 0.000000e+00, %_ZNK10btQuadWordneERKS_.exit.thread.i24.a ]
  %i.da = fmul float %i.ct, %.sink41.i.i40
  %i.db = fmul float %i.ct, %.sink.i.i41
  %.sroa.0.0.vec.insert.i.i16.i42 = insertelement <2 x float> poison, float %.sink42.i.i39, i64 0
  %.sroa.0.4.vec.insert.i.i17.i43 = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i16.i42, float %i.da, i64 1
  %.sroa.3.12.vec.insert.i.i18.i44 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.db, i64 0
  br label %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit49

_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit49: ; preds = %bb.e, %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i38
  %.sroa.6.0 = phi <2 x float> [ %.sroa.3.12.vec.insert.i.i18.i44, %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i38 ], [ zeroinitializer, %bb.e ]
  %.sroa.058.0 = phi <2 x float> [ %.sroa.0.4.vec.insert.i.i17.i43, %_ZN15btTransformUtil32calculateDiffAxisAngleQuaternionERK12btQuaternionS2_R9btVector3Rf.exit.i38 ], [ zeroinitializer, %bb.e ] ; 3 uses
  %.sroa.066.0.vec.extract = extractelement <2 x float> %.sroa.066.0, i64 0 ; 2 uses
  %foldExtExtBinop133 = fmul <2 x float> %.sroa.066.0, %.sroa.066.0
  %i.dc = extractelement <2 x float> %foldExtExtBinop133, i64 1
  %i.dd = call float @llvm.fmuladd.f32(float %.sroa.066.0.vec.extract, float %.sroa.066.0.vec.extract, float %i.dc)
  %.sroa.667.8.vec.extract = extractelement <2 x float> %.sroa.667.0, i64 0 ; 2 uses
  %i.de = call noundef float @llvm.fmuladd.f32(float %.sroa.667.8.vec.extract, float %.sroa.667.8.vec.extract, float %i.dd)
  %sqrt.i = call noundef float @llvm.sqrt.f32(float %i.de)
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.dg = load float, ptr %i.df, align 4, !tbaa !29
  %.sroa.058.0.vec.extract = extractelement <2 x float> %.sroa.058.0, i64 0 ; 2 uses
  %foldExtExtBinop135 = fmul <2 x float> %.sroa.058.0, %.sroa.058.0
  %i.dh = extractelement <2 x float> %foldExtExtBinop135, i64 1
  %i.di = call float @llvm.fmuladd.f32(float %.sroa.058.0.vec.extract, float %.sroa.058.0.vec.extract, float %i.dh)
  %.sroa.6.8.vec.extract = extractelement <2 x float> %.sroa.6.0, i64 0 ; 2 uses
  %i.dj = call noundef float @llvm.fmuladd.f32(float %.sroa.6.8.vec.extract, float %.sroa.6.8.vec.extract, float %i.di)
  %sqrt.i50 = call noundef float @llvm.sqrt.f32(float %i.dj)
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dl = load float, ptr %i.dk, align 4, !tbaa !33
  %i.dm = fmul float %i.dl, %sqrt.i50
  %i.dn = call float @llvm.fmuladd.f32(float %sqrt.i, float %i.dg, float %i.dm)
  %i.do = fsub float %i.bh, %i.i
  %i.dp = fsub float %i.bm, %i.n
  %i.dq = fsub float %i.br, %i.s
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !61
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.du = load float, ptr %i.dt, align 4, !tbaa !61
  %i.dv = fmul float %i.dp, %i.du
  %i.dw = call float @llvm.fmuladd.f32(float %i.do, float %i.ds, float %i.dv)
  %i.dx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !61
  %i.dz = call noundef float @llvm.fmuladd.f32(float %i.dq, float %i.dy, float %i.dw) ; 2 uses
  %i.ea = fcmp olt float %i.dz, 0.000000e+00
  %.0 = select i1 %i.ea, float 0.000000e+00, float %i.dz
  %i.eb = fadd float %i.dn, %.0
  %i.ec = fsub float %i.d, %i.eb
  store float %i.ec, ptr %i.c, align 4, !tbaa !34
  br label %bb.g

bb.g:                                             ; preds = %_ZN15btTransformUtil27calculateVelocityQuaternionERK9btVector3S2_RK12btQuaternionS5_fRS0_S6_.exit49, %bb.a
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ed, ptr noundef nonnull align 4 dereferenceable(16) %i.a, i64 16, i1 false), !tbaa.struct !79
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ee, ptr noundef nonnull align 4 dereferenceable(16) %i.b, i64 16, i1 false), !tbaa.struct !79
  store <2 x float> %.fca.0.load.i, ptr %0, align 4
  %.sroa.989.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x float> %.fca.1.load.i, ptr %.sroa.989.0..sroa_idx, align 4
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <2 x float> %.fca.0.load.i14, ptr %i.ef, align 4
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x float> %.fca.1.load.i17, ptr %.sroa.9.0..sroa_idx, align 4
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
  %i.e = load float, ptr %i.b, align 4, !tbaa !61
  %i.f = load float, ptr %i.d, align 4, !tbaa !61
  %i.g = fsub float %i.e, %i.f                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 124
  %i.i = load float, ptr %i.h, align 4, !tbaa !61
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 60
  %i.k = load float, ptr %i.j, align 4, !tbaa !61
  %i.l = fsub float %i.i, %i.k                    ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.n = load float, ptr %i.m, align 4, !tbaa !61
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.p = load float, ptr %i.o, align 4, !tbaa !61
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
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !61
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 64
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !61
  %i.ae = fsub float %i.ab, %i.ad                 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.ag = load float, ptr %i.af, align 4, !tbaa !61
  %i.ah = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !61
  %i.aj = fsub float %i.ag, %i.ai                 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 124
  %i.al = load float, ptr %i.ak, align 4, !tbaa !61
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 60
  %i.an = load float, ptr %i.am, align 4, !tbaa !61
  %i.ao = fsub float %i.al, %i.an                 ; 2 uses
  %i.ap = fmul float %i.ao, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.aj, float %i.ap)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.aq)
  %i.as = getelementptr inbounds nuw i8, ptr %2, i64 268
  %i.at = load float, ptr %i.as, align 4, !tbaa !96 ; 2 uses
  %i.au = fmul float %i.at, %i.at
  %i.av = fcmp olt float %i.ar, %i.au
  %i.aw = load i8, ptr @disableCcd, align 1, !range !47
  %i.ax = trunc nuw i8 %i.aw to i1
  %or.cond = select i1 %i.av, i1 true, i1 %i.ax
  br i1 %or.cond, label %bb.ag, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.old = load i8, ptr @disableCcd, align 1, !tbaa !97, !range !47, !noundef !48
  %.old60 = trunc nuw i8 %.old to i1
  br i1 %.old60, label %bb.ag, label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !21
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 264
  %i.bb = load float, ptr %i.ba, align 8, !tbaa !98 ; 2 uses
  call void @_ZN21btConvexInternalShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64) %5)
  store ptr getelementptr inbounds nuw inrange(-16, 144) (i8, ptr @_ZTV13btSphereShape, i64 16), ptr %5, align 8, !tbaa !11
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i32 8, ptr %i.bc, align 8, !tbaa !55
  %i.bd = getelementptr inbounds nuw i8, ptr %5, i64 40
  store float %i.bb, ptr %i.bd, align 8, !tbaa !61
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 56
  store float %i.bb, ptr %i.be, align 8, !tbaa !99
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTVN12btConvexCast10CastResultE, i64 16), ptr %6, align 8, !tbaa !11
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 168 ; 2 uses
  store float f0x5D5E0B6B, ptr %i.bf, align 8, !tbaa !100
  %i.bg = getelementptr inbounds nuw i8, ptr %6, i64 176
  store ptr null, ptr %i.bg, align 8, !tbaa !102
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 184
  store float 0.000000e+00, ptr %i.bh, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  %i.bi = getelementptr inbounds nuw i8, ptr %7, i64 328 ; 2 uses
  %i.bj = load i8, ptr %i.bi, align 4
  %i.bk = and i8 %i.bj, -16
  store i8 %i.bk, ptr %i.bi, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  invoke void @_ZN15btGjkConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef %i.az, ptr noundef nonnull %5, ptr noundef nonnull %7)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.bl = invoke noundef zeroext i1 @_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(32) %8, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.a, ptr noundef nonnull align 4 dereferenceable(64) %i.v, ptr noundef nonnull align 4 dereferenceable(64) %i.u, ptr noundef nonnull align 8 dereferenceable(188) %6)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  br i1 %i.bl, label %bb.g, label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 260 ; 2 uses
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !104
  %i.bo = load float, ptr %i.bf, align 8, !tbaa !100 ; 6 uses
  %i.bp = fcmp ogt float %i.bn, %i.bo
  br i1 %i.bp, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  store float %i.bo, ptr %i.bm, align 4, !tbaa !104
  br label %bb.k

bb.i:                                             ; preds = %bb.o, %bb.d
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.u

bb.j:                                             ; preds = %bb.e
  %i.br = landingpad { ptr, i32 }
end_hunk_0
