inline.NumInlined: 274
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_Z9btRayAabbRK9btVector3S1_S1_S1_RfRS_:bb.a

bb.r:                                             ; preds = %bb.q
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.1120

bb.s:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.2
  br i1 %i.w, label %_Z8btSetMinIfEvRT_RKS0_.exit.1120, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cy = fsub float %i.f, %i.j
  %i.cz = fdiv float %i.cy, %i.bu                 ; 2 uses
  %i.da = fcmp olt float %i.cz, %.2.2
  br i1 %i.da, label %bb.u, label %_Z8btSetMinIfEvRT_RKS0_.exit.1120

bb.u:                                             ; preds = %bb.t
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.1120

_Z8btSetMinIfEvRT_RKS0_.exit.1120:                ; preds = %bb.u, %bb.t, %bb.s, %bb.r, %bb.q
  %.sroa.22.3 = phi float [ %.sroa.22.2, %bb.s ], [ %.sroa.22.2, %bb.u ], [ %.sroa.22.2, %bb.t ], [ %.sroa.22.2, %bb.q ], [ 0.000000e+00, %bb.r ] ; 4 uses
  %.sroa.13.3 = phi float [ %.sroa.13.2, %bb.s ], [ %.sroa.13.2, %bb.u ], [ %.sroa.13.2, %bb.t ], [ %.sroa.13.2, %bb.q ], [ 0.000000e+00, %bb.r ] ; 4 uses
  %.sroa.0.3 = phi float [ %.sroa.0.2, %bb.s ], [ %.sroa.0.2, %bb.u ], [ %.sroa.0.2, %bb.t ], [ %.sroa.0.2, %bb.q ], [ -1.000000e+00, %bb.r ] ; 4 uses
  %.2.1118 = phi float [ %.2.2, %bb.s ], [ %i.cz, %bb.u ], [ %.2.2, %bb.t ], [ %.2.2, %bb.q ], [ %.2.2, %bb.r ] ; 5 uses
  %.3.1119 = phi float [ %.3.2, %bb.s ], [ %.3.2, %bb.u ], [ %.3.2, %bb.t ], [ %.3.2, %bb.q ], [ %i.cw, %bb.r ] ; 5 uses
  br i1 %i.ar, label %bb.x, label %bb.v

bb.v:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.1120
  %i.db = fsub float %i.aq, %i.ap
  %i.dc = fdiv float %i.db, %i.bv                 ; 2 uses
  %i.dd = fcmp ugt float %.3.1119, %i.dc
  br i1 %i.dd, label %_Z8btSetMinIfEvRT_RKS0_.exit.1.1, label %bb.w

bb.w:                                             ; preds = %bb.v
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.1.1

bb.x:                                             ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.1120
  br i1 %i.bg, label %_Z8btSetMinIfEvRT_RKS0_.exit.1.1, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.de = fsub float %i.aq, %i.ap
  %i.df = fdiv float %i.de, %i.bv                 ; 2 uses
  %i.dg = fcmp olt float %i.df, %.2.1118
  br i1 %i.dg, label %bb.z, label %_Z8btSetMinIfEvRT_RKS0_.exit.1.1

bb.z:                                             ; preds = %bb.y
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.1.1

_Z8btSetMinIfEvRT_RKS0_.exit.1.1:                 ; preds = %bb.z, %bb.y, %bb.x, %bb.w, %bb.v
  %.sroa.22.4 = phi float [ %.sroa.22.3, %bb.x ], [ %.sroa.22.3, %bb.z ], [ %.sroa.22.3, %bb.y ], [ %.sroa.22.3, %bb.v ], [ 0.000000e+00, %bb.w ] ; 4 uses
  %.sroa.13.4 = phi float [ %.sroa.13.3, %bb.x ], [ %.sroa.13.3, %bb.z ], [ %.sroa.13.3, %bb.y ], [ %.sroa.13.3, %bb.v ], [ -1.000000e+00, %bb.w ] ; 4 uses
  %.sroa.0.4 = phi float [ %.sroa.0.3, %bb.x ], [ %.sroa.0.3, %bb.z ], [ %.sroa.0.3, %bb.y ], [ %.sroa.0.3, %bb.v ], [ 0.000000e+00, %bb.w ] ; 4 uses
  %.2.1.1 = phi float [ %.2.1118, %bb.x ], [ %i.df, %bb.z ], [ %.2.1118, %bb.y ], [ %.2.1118, %bb.v ], [ %.2.1118, %bb.w ] ; 5 uses
  %.3.1.1 = phi float [ %.3.1119, %bb.x ], [ %.3.1119, %bb.z ], [ %.3.1119, %bb.y ], [ %.3.1119, %bb.v ], [ %i.dc, %bb.w ] ; 5 uses
  br i1 %i.az, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.1.1
  %i.dh = fsub float %i.ay, %i.ax
  %i.di = fdiv float %i.dh, %i.bw                 ; 2 uses
  %i.dj = fcmp ugt float %.3.1.1, %i.di
  br i1 %i.dj, label %_Z8btSetMinIfEvRT_RKS0_.exit.2.1, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.2.1

bb.ac:                                            ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.1.1
  br i1 %i.bn, label %_Z8btSetMinIfEvRT_RKS0_.exit.2.1, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.dk = fsub float %i.ay, %i.ax
  %i.dl = fdiv float %i.dk, %i.bw                 ; 2 uses
  %i.dm = fcmp olt float %i.dl, %.2.1.1
  br i1 %i.dm, label %bb.ae, label %_Z8btSetMinIfEvRT_RKS0_.exit.2.1

bb.ae:                                            ; preds = %bb.ad
  br label %_Z8btSetMinIfEvRT_RKS0_.exit.2.1

_Z8btSetMinIfEvRT_RKS0_.exit.2.1:                 ; preds = %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.sroa.22.5 = phi float [ %.sroa.22.4, %bb.ac ], [ %.sroa.22.4, %bb.ae ], [ %.sroa.22.4, %bb.ad ], [ %.sroa.22.4, %bb.aa ], [ -1.000000e+00, %bb.ab ]
  %.sroa.13.5 = phi float [ %.sroa.13.4, %bb.ac ], [ %.sroa.13.4, %bb.ae ], [ %.sroa.13.4, %bb.ad ], [ %.sroa.13.4, %bb.aa ], [ 0.000000e+00, %bb.ab ]
  %.sroa.0.5 = phi float [ %.sroa.0.4, %bb.ac ], [ %.sroa.0.4, %bb.ae ], [ %.sroa.0.4, %bb.ad ], [ %.sroa.0.4, %bb.aa ], [ 0.000000e+00, %bb.ab ]
  %.2.2.1 = phi float [ %.2.1.1, %bb.ac ], [ %i.dl, %bb.ae ], [ %.2.1.1, %bb.ad ], [ %.2.1.1, %bb.aa ], [ %.2.1.1, %bb.ab ]
  %.3.2.1 = phi float [ %.3.1.1, %bb.ac ], [ %.3.1.1, %bb.ae ], [ %.3.1.1, %bb.ad ], [ %.3.1.1, %bb.aa ], [ %i.di, %bb.ab ] ; 2 uses
  %i.dn = fcmp ugt float %.3.2.1, %.2.2.1
  br i1 %i.dn, label %.critedge, label %bb.af

bb.af:                                            ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.2.1
  store float %.3.2.1, ptr %4, align 4, !tbaa !51
  store float %.sroa.0.5, ptr %5, align 4
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 4
  store float %.sroa.13.5, ptr %.sroa.13.0..sroa_idx, align 4
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store float %.sroa.22.5, ptr %.sroa.22.0..sroa_idx, align 4
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 12
  store float 0.000000e+00, ptr %.sroa.31.0..sroa_idx, align 4, !tbaa !50
  br label %.critedge

.critedge:                                        ; preds = %_Z8btSetMinIfEvRT_RKS0_.exit.2.1, %bb.a, %bb.af
  %.1 = phi i1 [ true, %bb.af ], [ false, %bb.a ], [ false, %_Z8btSetMinIfEvRT_RKS0_.exit.2.1 ]
  ret i1 %.1
}

declare void @_ZN16btCollisionWorld17objectQuerySingleEPK13btConvexShapeRK11btTransformS5_P17btCollisionObjectPK16btCollisionShapeS5_RNS_20ConvexResultCallbackEf(ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(16), float noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZNK13btGhostObject7rayTestERK9btVector3S2_RN16btCollisionWorld17RayResultCallbackE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(32) %3) local_unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %class.btTransform, align 4         ; 10 uses
  %5 = alloca %class.btTransform, align 4         ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store float 1.000000e+00, ptr %4, align 4, !tbaa !51
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !51
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.c, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !51
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 44
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  store float 1.000000e+00, ptr %5, align 4, !tbaa !51
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.h, align 4, !tbaa !51
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.j, align 4, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %5, i64 44
  store i32 0, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %5, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !49
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4, !tbaa !18
  %i.o = icmp sgt i32 %i.n, 0
  br i1 %i.o, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !17
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !33   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 192
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.v = load ptr, ptr %3, align 8, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = call noundef zeroext i1 %i.x(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef %i.u)
  br i1 %i.y, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 200
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !53
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE(ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull %i.s, ptr noundef %i.aa, ptr noundef nonnull align 4 dereferenceable(64) %i.ab, ptr noundef nonnull align 8 dereferenceable(32) %3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ac = load i32, ptr %i.m, align 4, !tbaa !18
  %i.ad = sext i32 %i.ac to i64
  %i.ae = icmp slt i64 %indvars.iv.next, %i.ad
  br i1 %i.ae, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

declare void @_ZN16btCollisionWorld13rayTestSingleERK11btTransformS2_P17btCollisionObjectPK16btCollisionShapeS2_RNS_17RayResultCallbackE(ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN17btCollisionObject24checkCollideWithOverrideEPS_(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %1, ptr %i.a, align 8, !tbaa !53
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 208
  store ptr %1, ptr %i.b, align 8, !tbaa !54
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(4) %3) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %4 = alloca %class.btMatrix3x3, align 8         ; 12 uses
  %5 = alloca %class.btQuaternion, align 4        ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %6 = load float, ptr %i.d, align 4, !tbaa !51, !noalias !55 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load float, ptr %7, align 4, !tbaa !51, !noalias !55 ; 4 uses
  %9 = fneg float %6
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58)
  %10 = load float, ptr %1, align 4, !tbaa !51, !noalias !58 ; 2 uses
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %12 = load float, ptr %11, align 4, !tbaa !51, !noalias !58 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !51, !noalias !58 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %13 = load float, ptr %i.i, align 4, !tbaa !51, !noalias !58 ; 2 uses
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 20
  %15 = load float, ptr %14, align 4, !tbaa !51, !noalias !58 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load float, ptr %i.j, align 4, !tbaa !51, !noalias !58 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %16 = load float, ptr %i.l, align 4, !tbaa !51, !noalias !58 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.n = load float, ptr %i.m, align 4, !tbaa !51, !noalias !58 ; 2 uses
  %17 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %18 = load float, ptr %17, align 4, !tbaa !51, !noalias !58 ; 2 uses
  %i.o = load <2 x float>, ptr %i.e, align 4, !tbaa !51, !noalias !55 ; 3 uses
  %19 = shufflevector <2 x float> %i.o, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.p = load <2 x float>, ptr %i.c, align 4, !tbaa !51, !noalias !55 ; 3 uses
  %20 = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %21 = load <2 x float>, ptr %i.a, align 4, !tbaa !51, !noalias !55 ; 5 uses
  %22 = load float, ptr %i.b, align 4, !tbaa !51, !noalias !55 ; 2 uses
  %23 = fneg <2 x float> %i.p
  %24 = shufflevector <2 x float> %20, <2 x float> %i.o, <2 x i32> <i32 0, i32 3>
  %25 = fneg <2 x float> %24
  %26 = shufflevector <2 x float> %19, <2 x float> %20, <2 x i32> <i32 0, i32 3>
  %27 = fneg <2 x float> %26
  %i.q = load <2 x float>, ptr %0, align 4, !tbaa !51, !noalias !55 ; 5 uses
  %i.r = load float, ptr %i.f, align 4, !tbaa !51, !noalias !55 ; 3 uses
  %28 = insertelement <2 x float> %21, float %8, i64 1 ; 2 uses
  %29 = fmul <2 x float> %28, %27
  %30 = shufflevector <2 x float> %i.p, <2 x float> %i.q, <2 x i32> <i32 0, i32 2>
  %31 = insertelement <2 x float> %i.o, float %6, i64 0
  %32 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %30, <2 x float> %31, <2 x float> %29) ; 2 uses
  %33 = extractelement <2 x float> %32, i64 0
  %34 = fmul float %i.r, %33
  %35 = insertelement <2 x float> %i.q, float %6, i64 0
  %i.s = fmul <2 x float> %35, %25
  %36 = shufflevector <2 x float> %28, <2 x float> %21, <2 x i32> <i32 3, i32 1>
  %37 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %36, <2 x float> %19, <2 x float> %i.s) ; 2 uses
  %38 = extractelement <2 x float> %37, i64 0
  %i.t = extractelement <2 x float> %i.q, i64 0   ; 3 uses
  %39 = tail call float @llvm.fmuladd.f32(float %i.t, float %38, float %34)
  %40 = shufflevector <2 x float> %21, <2 x float> %i.q, <2 x i32> <i32 1, i32 2>
  %i.u = fmul <2 x float> %40, %23
  %41 = shufflevector <2 x float> %21, <2 x float> %i.q, <2 x i32> <i32 0, i32 3>
  %42 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %41, <2 x float> %20, <2 x float> %i.u) ; 2 uses
  %43 = extractelement <2 x float> %42, i64 0
  %44 = tail call noundef float @llvm.fmuladd.f32(float %8, float %43, float %39)
  %45 = fdiv float 1.000000e+00, %44              ; 4 uses
  %46 = insertelement <2 x float> poison, float %45, i64 0
  %47 = shufflevector <2 x float> %46, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %48 = fmul <2 x float> %37, %47                 ; 3 uses
  %49 = fneg float %22
  %50 = fmul float %8, %49
  %51 = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %6, float %50)
  %52 = fmul float %51, %45                       ; 3 uses
  %53 = fmul <2 x float> %32, %47                 ; 3 uses
  %54 = fmul float %i.t, %9
  %55 = extractelement <2 x float> %21, i64 0     ; 2 uses
  %56 = tail call noundef float @llvm.fmuladd.f32(float %8, float %55, float %54)
  %57 = fmul float %56, %45                       ; 3 uses
  %58 = fmul <2 x float> %42, %47                 ; 3 uses
  %59 = fneg float %55
  %60 = fmul float %i.r, %59
  %61 = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %22, float %60)
  %62 = fmul float %61, %45                       ; 3 uses
  %63 = insertelement <2 x float> poison, float %12, i64 0
  %64 = shufflevector <2 x float> %63, <2 x float> poison, <2 x i32> zeroinitializer
  %65 = fmul <2 x float> %64, %53
  %66 = insertelement <2 x float> poison, float %10, i64 0
  %67 = shufflevector <2 x float> %66, <2 x float> poison, <2 x i32> zeroinitializer
  %68 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> %67, <2 x float> %65)
  %69 = insertelement <2 x float> poison, float %i.h, i64 0
  %70 = shufflevector <2 x float> %69, <2 x float> poison, <2 x i32> zeroinitializer
  %71 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %58, <2 x float> %70, <2 x float> %68)
  %72 = fmul float %12, %57
  %73 = tail call float @llvm.fmuladd.f32(float %52, float %10, float %72)
  %i.v = tail call noundef float @llvm.fmuladd.f32(float %62, float %i.h, float %73)
  %74 = fmul float %57, %15
  %75 = tail call float @llvm.fmuladd.f32(float %52, float %13, float %74)
  %76 = tail call noundef float @llvm.fmuladd.f32(float %62, float %i.k, float %75)
  %77 = fmul float %57, %i.n
  %78 = tail call float @llvm.fmuladd.f32(float %52, float %16, float %77)
  %79 = tail call noundef float @llvm.fmuladd.f32(float %62, float %18, float %78)
  store <2 x float> %71, ptr %4, align 8, !tbaa !51, !alias.scope !58
  %80 = getelementptr inbounds nuw i8, ptr %4, i64 8
  store float %i.v, ptr %80, align 8, !tbaa !51, !alias.scope !58
  %81 = getelementptr inbounds nuw i8, ptr %4, i64 12
  store float 0.000000e+00, ptr %81, align 4, !tbaa !51, !alias.scope !58
  %82 = getelementptr inbounds nuw i8, ptr %4, i64 16
  %83 = insertelement <2 x float> poison, float %15, i64 0
  %84 = shufflevector <2 x float> %83, <2 x float> poison, <2 x i32> zeroinitializer
  %85 = fmul <2 x float> %53, %84
  %86 = insertelement <2 x float> poison, float %13, i64 0
  %87 = shufflevector <2 x float> %86, <2 x float> poison, <2 x i32> zeroinitializer
  %88 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> %87, <2 x float> %85)
  %89 = insertelement <2 x float> poison, float %i.k, i64 0
  %90 = shufflevector <2 x float> %89, <2 x float> poison, <2 x i32> zeroinitializer
  %91 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %58, <2 x float> %90, <2 x float> %88)
  store <2 x float> %91, ptr %82, align 8, !tbaa !51, !alias.scope !58
  %92 = getelementptr inbounds nuw i8, ptr %4, i64 24
  store float %76, ptr %92, align 8, !tbaa !51, !alias.scope !58
  %93 = getelementptr inbounds nuw i8, ptr %4, i64 28
  store float 0.000000e+00, ptr %93, align 4, !tbaa !51, !alias.scope !58
  %94 = getelementptr inbounds nuw i8, ptr %4, i64 32
  %95 = insertelement <2 x float> poison, float %i.n, i64 0
  %96 = shufflevector <2 x float> %95, <2 x float> poison, <2 x i32> zeroinitializer
  %97 = fmul <2 x float> %53, %96
  %98 = insertelement <2 x float> poison, float %16, i64 0
  %99 = shufflevector <2 x float> %98, <2 x float> poison, <2 x i32> zeroinitializer
  %100 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %48, <2 x float> %99, <2 x float> %97)
  %101 = insertelement <2 x float> poison, float %18, i64 0
  %102 = shufflevector <2 x float> %101, <2 x float> poison, <2 x i32> zeroinitializer
  %103 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %58, <2 x float> %102, <2 x float> %100)
  store <2 x float> %103, ptr %94, align 8, !tbaa !51, !alias.scope !58
  %104 = getelementptr inbounds nuw i8, ptr %4, i64 40
  store float %79, ptr %104, align 8, !tbaa !51, !alias.scope !58
  %105 = getelementptr inbounds nuw i8, ptr %4, i64 44
  store float 0.000000e+00, ptr %105, align 4, !tbaa !51, !alias.scope !58
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #13
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %4, ptr noundef nonnull align 4 dereferenceable(16) %5)
  %i.w = load float, ptr %5, align 4, !tbaa !51   ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.y = load float, ptr %i.x, align 4, !tbaa !51 ; 3 uses
  %i.z = fmul float %i.y, %i.y
  %i.aa = call float @llvm.fmuladd.f32(float %i.w, float %i.w, float %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !51 ; 3 uses
  %i.ad = call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.aa)
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.af = load float, ptr %i.ae, align 4, !tbaa !51 ; 3 uses
  %i.ag = call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ad)
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ag)
  %i.ah = fdiv float 1.000000e+00, %sqrt.i.i      ; 4 uses
  %i.ai = fmul float %i.w, %i.ah                  ; 3 uses
  %i.aj = fmul float %i.y, %i.ah                  ; 3 uses
  %i.ak = fmul float %i.ac, %i.ah                 ; 3 uses
  %i.al = fmul float %i.af, %i.ah
  %i.am = call noundef float @acosf(float noundef %i.al) #13, !tbaa !4
  %i.an = fmul float %i.am, 2.000000e+00
  store float %i.an, ptr %3, align 4, !tbaa !51
  %.sroa.616.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  store float 0.000000e+00, ptr %.sroa.616.0..sroa_idx, align 4, !tbaa !51
  %i.ao = fmul float %i.aj, %i.aj
  %i.ap = call float @llvm.fmuladd.f32(float %i.ai, float %i.ai, float %i.ao)
  %i.aq = call noundef float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.ap) ; 2 uses
  %i.ar = fcmp olt float %i.aq, f0x28800000
  br i1 %i.ar, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %sqrt = call float @llvm.sqrt.f32(float %i.aq)
  %i.as = fdiv float 1.000000e+00, %sqrt          ; 3 uses
  %i.at = fmul float %i.ai, %i.as
  %i.au = fmul float %i.aj, %i.as
  %i.av = fmul float %i.ak, %i.as
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink21 = phi float [ %i.at, %bb.b ], [ 1.000000e+00, %bb.a ]
  %.sink20 = phi float [ %i.au, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sink = phi float [ %i.av, %bb.b ], [ 0.000000e+00, %bb.a ]
  %.sroa.515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 4
  store float %.sink21, ptr %2, align 4
  store float %.sink20, ptr %.sroa.414.0..sroa_idx, align 4
  store float %.sink, ptr %.sroa.515.0..sroa_idx, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(48) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca [4 x float], align 16             ; 7 uses
  %i.b = load float, ptr %0, align 4, !tbaa !51   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.d = load float, ptr %i.c, align 4, !tbaa !51 ; 3 uses
  %i.e = fadd float %i.b, %i.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load float, ptr %i.f, align 4, !tbaa !51 ; 3 uses
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
  %i.q = tail call noundef float @sqrtf(float noundef %i.l) #13, !tbaa !4 ; 2 uses
  %i.r = fdiv float 5.000000e-01, %i.q
  %i.s = load float, ptr %i.n, align 4, !tbaa !51
  %i.t = load float, ptr %i.m, align 4, !tbaa !51
  %i.u = load float, ptr %i.j, align 4, !tbaa !51
  %i.v = load float, ptr %i.k, align 4, !tbaa !51
  %i.w = load float, ptr %i.o, align 4, !tbaa !51
  %i.x = load float, ptr %i.p, align 4, !tbaa !51
  %i.y = fsub float %i.v, %i.x
  %i.z = fsub float %i.w, %i.u
  %i.aa = fsub float %i.t, %i.s
  %i.ab = insertelement <4 x float> poison, float %i.r, i64 0
  %i.ac = insertelement <4 x float> %i.ab, float %i.q, i64 1
  %i.ad = shufflevector <4 x float> %i.ac, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ae = insertelement <4 x float> <float poison, float poison, float poison, float 5.000000e-01>, float %i.aa, i64 0
  %i.af = insertelement <4 x float> %i.ae, float %i.z, i64 1
  %i.ag = insertelement <4 x float> %i.af, float %i.y, i64 2
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
  %i.aw = load float, ptr %i.av, align 4, !tbaa !51
  %i.ax = sext i32 %i.aq to i64                   ; 5 uses
  %i.ay = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ax ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.ax
  %i.ba = load float, ptr %i.az, align 4, !tbaa !51
  %i.bb = fsub float %i.aw, %i.ba
  %i.bc = zext nneg i32 %i.as to i64              ; 5 uses
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.bc
  %i.bf = load float, ptr %i.be, align 4, !tbaa !51
  %i.bg = fsub float %i.bb, %i.bf
  %i.bh = fadd float %i.bg, 1.000000e+00
  %i.bi = tail call noundef float @sqrtf(float noundef %i.bh) #13, !tbaa !4 ; 2 uses
  %i.bj = fmul float %i.bi, 5.000000e-01
  %i.bk = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.at
  store float %i.bj, ptr %i.bk, align 4, !tbaa !51
  %i.bl = fdiv float 5.000000e-01, %i.bi          ; 3 uses
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.ax
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !51
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.bc
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !51
  %i.bq = fsub float %i.bn, %i.bp
  %i.br = fmul float %i.bl, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store float %i.br, ptr %i.bs, align 4, !tbaa !51
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %i.at
  %i.bu = load float, ptr %i.bt, align 4, !tbaa !51
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.ax
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !51
  %i.bx = fadd float %i.bu, %i.bw
  %i.by = fmul float %i.bl, %i.bx
  %i.bz = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.ax
  store float %i.by, ptr %i.bz, align 4, !tbaa !51
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %i.at
  %i.cb = load float, ptr %i.ca, align 4, !tbaa !51
  %i.cc = getelementptr inbounds nuw [4 x i8], ptr %i.au, i64 %i.bc
  %i.cd = load float, ptr %i.cc, align 4, !tbaa !51
  %i.ce = fadd float %i.cb, %i.cd
  %i.cf = fmul float %i.bl, %i.ce
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.bc
  store float %i.cf, ptr %i.cg, align 4, !tbaa !51
  %i.ch = load <4 x float>, ptr %i.a, align 16, !tbaa !51
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.ci = phi <4 x float> [ %i.ch, %bb.c ], [ %i.ah, %bb.b ]
  store <4 x float> %i.ci, ptr %1, align 4, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @acosf(float noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #9

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { inlinehint uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = !{!11, !16, i64 24}
!11 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !12, i64 0, !5, i64 4, !5, i64 8, !13, i64 16, !16, i64 24}
!12 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!13 = !{!"p2 _ZTS17btCollisionObject", !14, i64 0}
!14 = !{!"any p2 pointer", !15, i64 0}
!15 = !{!"any pointer", !6, i64 0}
!16 = !{!"bool", !6, i64 0}
!17 = !{!11, !13, i64 16}
!18 = !{!11, !5, i64 4}
!19 = !{!11, !5, i64 8}
!20 = !{!21, !5, i64 256}
!21 = !{!"_ZTS17btCollisionObject", !22, i64 8, !22, i64 72, !24, i64 136, !24, i64 152, !24, i64 168, !16, i64 184, !25, i64 188, !26, i64 192, !27, i64 200, !27, i64 208, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !25, i64 232, !25, i64 236, !25, i64 240, !15, i64 248, !5, i64 256, !25, i64 260, !25, i64 264, !25, i64 268, !16, i64 272, !6, i64 273}
!22 = !{!"_ZTS11btTransform", !23, i64 0, !24, i64 48}
!23 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!24 = !{!"_ZTS9btVector3", !6, i64 0}
!25 = !{!"float", !6, i64 0}
!26 = !{!"p1 _ZTS17btBroadphaseProxy", !15, i64 0}
!27 = !{!"p1 _ZTS16btCollisionShape", !15, i64 0}
!28 = !{i8 0, i8 2}
!29 = !{ptr @_ZN13btGhostObjectD2Ev}
!30 = !{!31, !15, i64 0}
!31 = !{!"_ZTS17btBroadphaseProxy", !15, i64 0, !32, i64 8, !32, i64 10, !15, i64 16, !5, i64 24, !24, i64 28, !24, i64 44}
!32 = !{!"short", !6, i64 0}
!33 = !{!34, !34, i64 0}
!34 = !{!"p1 _ZTS17btCollisionObject", !15, i64 0}
!35 = distinct !{!35, !36, !37}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = distinct !{!38, !39}
!39 = !{!"llvm.loop.unroll.disable"}
!40 = distinct !{!40, !36}
!41 = !{}
!42 = !{!43, !45, i64 312}
!43 = !{!"_ZTS24btPairCachingGhostObject", !44, i64 0, !45, i64 312}
!44 = !{!"_ZTS13btGhostObject", !21, i64 0, !11, i64 280}
!45 = !{!"p1 _ZTS28btHashedOverlappingPairCache", !15, i64 0}
!46 = distinct !{!46, !36, !37}
!47 = distinct !{!47, !39}
!48 = distinct !{!48, !36}
!49 = !{i64 0, i64 16, !50}
!50 = !{!6, !6, i64 0}
!51 = !{!25, !25, i64 0}
!52 = !{!21, !26, i64 192}
!53 = !{!21, !27, i64 200}
!54 = !{!21, !27, i64 208}
!55 = !{!56}
!56 = distinct !{!56, !57, !"_ZNK11btMatrix3x37inverseEv: argument 0"}
!57 = distinct !{!57, !"_ZNK11btMatrix3x37inverseEv"}
!58 = !{!59}
!59 = distinct !{!59, !60, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!60 = distinct !{!60, !"_ZmlRK11btMatrix3x3S1_"}
end_hunk_0
