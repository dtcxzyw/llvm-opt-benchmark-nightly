Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btRaycastCallback?download=true
inline.NumInlined: 110
inline.NumDeleted: 30
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN28btTriangleConvexcastCallback15processTriangleEP9btVector3ii:bb.a
  %i.z = call float @llvm.fmuladd.f32(float %i.v, float %i.v, float %i.y)
  %i.aa = getelementptr inbounds nuw i8, ptr %8, i64 144 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 8, !tbaa !18 ; 3 uses
  %i.ac = call noundef float @llvm.fmuladd.f32(float %i.ab, float %i.ab, float %i.z) ; 2 uses
  %i.ad = fcmp ogt float %i.ac, f0x38D1B717
  br i1 %i.ad, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.ae = load float, ptr %i.n, align 8, !tbaa !36 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.ag = load float, ptr %i.af, align 8, !tbaa !25
  %i.ah = fcmp olt float %i.ae, %i.ag
  br i1 %i.ah, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ac)
  %i.ai = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.aj = fmul float %i.v, %i.ai
  store float %i.aj, ptr %i.u, align 8, !tbaa !18
  %i.ak = fmul float %i.x, %i.ai
  store float %i.ak, ptr %i.w, align 4, !tbaa !18
  %i.al = fmul float %i.ab, %i.ai
  store float %i.al, ptr %i.aa, align 8, !tbaa !18
  %i.am = getelementptr inbounds nuw i8, ptr %8, i64 152
  %i.an = load ptr, ptr %0, align 8, !tbaa !9
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = invoke noundef float %i.ap(ptr noundef nonnull align 8 dereferenceable(216) %0, ptr noundef nonnull align 4 dereferenceable(16) %i.u, ptr noundef nonnull align 4 dereferenceable(16) %i.am, float noundef %i.ae, i32 noundef %2, i32 noundef %3)
          to label %bb.i unwind label %bb.h       ; 0 uses

bb.g:                                             ; preds = %bb.i, %bb.a
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.h:                                             ; preds = %bb.f, %bb.b
  %i.as = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.k unwind label %bb.m

bb.i:                                             ; preds = %bb.d, %bb.f, %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %7)
          to label %bb.j unwind label %bb.g

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g
  %.pn11 = phi { ptr, i32 } [ %i.ar, %bb.g ], [ %i.as, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  invoke void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(112) %4)
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  resume { ptr, i32 } %.pn11

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  call void @__clang_call_terminate(ptr %i.au) #15
  unreachable
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN21btConvexInternalShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(64) %0, float noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %1, ptr %i.a, align 8, !tbaa !30
  ret void
}

declare void @_ZN27btContinuousConvexCollisionC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #7

declare noundef zeroext i1 @_ZN27btContinuousConvexCollision16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 8 dereferenceable(188)) unnamed_addr #7

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN12btConvexCast10CastResultD2Ev(ptr noundef nonnull align 8 dead_on_return(188) dereferenceable(188) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN25btTriangleRaycastCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #15
  unreachable
}

declare void @__cxa_pure_virtual() unnamed_addr

declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #7

; Function Attrs: inlinehint nounwind uwtable
define linkonce_odr dso_local void @_ZN28btTriangleConvexcastCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(216) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @llvm.trap() #15
  unreachable
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #9

declare void @_ZN23btPolyhedralConvexShapeC2Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #7

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN15btTriangleShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #10 comdat align 2 personality ptr @__gxx_personality_v0 {
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
  tail call void @__clang_call_terminate(ptr %i.c) #15
  unreachable
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #7

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #7

declare void @_ZN21btConvexInternalShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK21btConvexInternalShape15getLocalScalingEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  ret ptr %i.a
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(112) %0, float noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #5 comdat align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK15btTriangleShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK21btConvexInternalShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load float, ptr %i.a, align 8, !tbaa !30
  ret float %i.b
}

declare { <2 x float>, <2 x float> } @_ZNK21btConvexInternalShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #7

; Function Attrs: uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK15btTriangleShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load <4 x float>, ptr %i.d, align 8
  %i.f = shufflevector <4 x float> %i.e, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = load float, ptr %i.h, align 8, !tbaa !18
  %i.j = load <2 x float>, ptr %i.a, align 8, !tbaa !18
  %i.k = load float, ptr %2, align 4, !tbaa !18
  %i.l = load float, ptr %i.b, align 4, !tbaa !18 ; 3 uses
  %i.m = load float, ptr %1, align 4, !tbaa !18   ; 2 uses
  %4 = load float, ptr %i.c, align 4, !tbaa !18   ; 2 uses
  %5 = load <2 x float>, ptr %i.g, align 8, !tbaa !18
  %6 = load float, ptr %3, align 4, !tbaa !18
  %7 = fmul float %i.l, %6
  %8 = fmul float %i.l, %i.k
  %i.n = insertelement <2 x float> poison, float %i.m, i64 0
  %i.o = shufflevector <2 x float> %i.n, <2 x float> poison, <2 x i32> zeroinitializer
  %i.p = shufflevector <2 x float> %i.j, <2 x float> %5, <2 x i32> <i32 0, i32 2>
  %9 = insertelement <2 x float> poison, float %8, i64 0
  %10 = insertelement <2 x float> %9, float %7, i64 1
  %i.q = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.o, <2 x float> %i.p, <2 x float> %10)
  %i.r = insertelement <2 x float> poison, float %4, i64 0
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x float> %i.f, float %i.i, i64 1
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.s, <2 x float> %i.t, <2 x float> %i.q) ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = load float, ptr %i.v, align 8, !tbaa !18
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.y = load float, ptr %i.x, align 4, !tbaa !18
  %i.z = fmul float %i.l, %i.y
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.m, float %i.w, float %i.z)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !18
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %4, float %i.ac, float %i.aa)
  %i.ae = extractelement <2 x float> %i.u, i64 0  ; 2 uses
  %i.af = extractelement <2 x float> %i.u, i64 1  ; 2 uses
  %i.ag = fcmp olt float %i.ae, %i.af             ; 2 uses
  %..i = select i1 %i.ag, float %i.af, float %i.ae
  %i.ah = fcmp olt float %..i, %i.ad
  %i.ai = zext i1 %i.ag to i64
  %i.aj = select i1 %i.ah, i64 2, i64 %i.ai
  %i.ak = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.aj ; 2 uses
  %.sroa.0.0.copyload = load <2 x float>, ptr %i.ak, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %.sroa.2.0.copyload = load <2 x float>, ptr %.sroa.2.0..sroa_idx, align 8, !tbaa !10
  %.fca.0.insert = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload, 0
  %.fca.1.insert = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert, <2 x float> %.sroa.2.0.copyload, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape49batchedUnitVectorGetSupportingVertexWithoutMarginEPK9btVector3PS0_i(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 104
  %wide.trip.count = zext nneg i32 %3 to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 3 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %indvars.iv ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.n = load float, ptr %i.d, align 8, !tbaa !18
  %i.o = load float, ptr %i.g, align 8, !tbaa !18
  %i.p = load <2 x float>, ptr %i.b, align 8, !tbaa !18
  %i.q = load float, ptr %i.c, align 4, !tbaa !18
  %i.r = load float, ptr %i.l, align 4, !tbaa !18 ; 3 uses
  %i.s = load float, ptr %i.k, align 4, !tbaa !18 ; 2 uses
  %i.t = load float, ptr %i.m, align 4, !tbaa !18 ; 2 uses
  %i.u = load <2 x float>, ptr %i.e, align 8, !tbaa !18
  %i.v = load float, ptr %i.f, align 4, !tbaa !18
  %i.w = fmul float %i.r, %i.v
  %i.x = fmul float %i.r, %i.q
  %i.y = insertelement <2 x float> poison, float %i.s, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = shufflevector <2 x float> %i.p, <2 x float> %i.u, <2 x i32> <i32 0, i32 2>
  %i.ab = insertelement <2 x float> poison, float %i.x, i64 0
  %i.ac = insertelement <2 x float> %i.ab, float %i.w, i64 1
  %i.ad = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.z, <2 x float> %i.aa, <2 x float> %i.ac)
  %i.ae = insertelement <2 x float> poison, float %i.t, i64 0
  %i.af = shufflevector <2 x float> %i.ae, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ag = insertelement <2 x float> poison, float %i.n, i64 0
  %i.ah = insertelement <2 x float> %i.ag, float %i.o, i64 1
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.af, <2 x float> %i.ah, <2 x float> %i.ad) ; 2 uses
  %i.aj = load float, ptr %i.h, align 8, !tbaa !18
  %i.ak = load float, ptr %i.i, align 4, !tbaa !18
  %i.al = fmul float %i.r, %i.ak
  %i.am = tail call float @llvm.fmuladd.f32(float %i.s, float %i.aj, float %i.al)
  %i.an = load float, ptr %i.j, align 8, !tbaa !18
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.t, float %i.an, float %i.am)
  %i.ap = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
  %i.aq = extractelement <2 x float> %i.ai, i64 1 ; 2 uses
  %i.ar = fcmp olt float %i.ap, %i.aq             ; 2 uses
  %..i = select i1 %i.ar, float %i.aq, float %i.ap
  %i.as = fcmp olt float %..i, %i.ao
  %i.at = zext i1 %i.ar to i64
  %i.au = select i1 %i.as, i64 2, i64 %i.at
  %i.av = getelementptr inbounds nuw [16 x i8], ptr %i.b, i64 %i.au
  %i.aw = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(16) %i.av, i64 16, i1 false), !tbaa.struct !11
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b
}

declare void @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #7

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 2
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load float, ptr %i.b, align 8, !tbaa !18
  %i.d = load float, ptr %i.a, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = load float, ptr %i.g, align 8, !tbaa !18
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.j = load <2 x float>, ptr %i.e, align 4, !tbaa !18 ; 2 uses
  %i.k = load <2 x float>, ptr %i.f, align 4, !tbaa !18 ; 3 uses
  %i.l = fsub <2 x float> %i.j, %i.k              ; 2 uses
  %i.m = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.n = insertelement <2 x float> %i.m, float %i.c, i64 1
  %i.o = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.p = insertelement <2 x float> %i.o, float %i.d, i64 1 ; 2 uses
  %i.q = fsub <2 x float> %i.n, %i.p              ; 2 uses
  %i.r = load <2 x float>, ptr %i.i, align 4, !tbaa !18 ; 2 uses
  %i.s = shufflevector <2 x float> %i.r, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.t = insertelement <2 x float> %i.s, float %i.h, i64 1
  %i.u = fsub <2 x float> %i.t, %i.p              ; 2 uses
  %i.v = fsub <2 x float> %i.r, %i.k              ; 2 uses
  %i.w = fneg <2 x float> %i.v
  %i.x = fmul <2 x float> %i.q, %i.w
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.l, <2 x float> %i.u, <2 x float> %i.x) ; 4 uses
  %i.z = extractelement <2 x float> %i.u, i64 1
  %i.aa = fneg float %i.z
  %i.ab = extractelement <2 x float> %i.l, i64 0
  %i.ac = fmul float %i.ab, %i.aa
  %i.ad = extractelement <2 x float> %i.q, i64 1
  %i.ae = extractelement <2 x float> %i.v, i64 0
  %i.af = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ae, float %i.ac) ; 4 uses
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.af, i64 0
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !10
  %foldExtExtBinop = fmul <2 x float> %i.y, %i.y
  %i.ag = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.ah = extractelement <2 x float> %i.y, i64 0  ; 2 uses
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.ah, float %i.ah, float %i.ag)
  %i.aj = tail call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ai)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fdiv float 1.000000e+00, %sqrt.i.i.i    ; 2 uses
  %i.al = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.am = shufflevector <2 x float> %i.al, <2 x float> poison, <2 x i32> zeroinitializer
  %i.an = fmul <2 x float> %i.y, %i.am            ; 2 uses
  store <2 x float> %i.an, ptr %2, align 4, !tbaa !18
  %i.ao = fmul float %i.af, %i.ak                 ; 2 uses
  store float %i.ao, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !18
  %.not = icmp eq i32 %1, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ap = fneg <2 x float> %i.an
  store <2 x float> %i.ap, ptr %2, align 4, !tbaa !18
  %i.aq = fneg float %i.ao
  store float %i.aq, ptr %.sroa.4.0..sroa_idx.i, align 4, !tbaa !18
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape14getNumVerticesEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape11getNumEdgesEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 3
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape7getEdgeEiR9btVector3S1_(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2)
  %i.d = add nsw i32 %1, 1
  %i.e = srem i32 %i.d, 3
  %i.f = load ptr, ptr %0, align 8, !tbaa !9
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 168
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %i.e, ptr noundef nonnull align 4 dereferenceable(16) %3)
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK15btTriangleShape9getVertexEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(112) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = sext i32 %1 to i64
  %i.c = getelementptr inbounds [16 x i8], ptr %i.a, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 8 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !11
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK15btTriangleShape12getNumPlanesEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #6 comdat align 2 {
bb.a:
end_hunk_0
