inline.NumInlined: 162
inline.NumDeleted: 38
begin_hunk_0_@_ZN13btConvexShapeD2Ev
declare void @_ZN13btConvexShapeD2Ev(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN25btConvexTriangleMeshShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
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

declare void @_ZNK34btPolyhedralConvexAabbCachingShape7getAabbERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(97), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare void @_ZNK23btPolyhedralConvexShape21calculateLocalInertiaEfR9btVector3(ptr noundef nonnull align 8 dereferenceable(64), float noundef, ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK25btConvexTriangleMeshShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(112) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN21btConvexInternalShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(64) %0, float noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %1, ptr %i.a, align 8, !tbaa !34
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK21btConvexInternalShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load float, ptr %i.a, align 8, !tbaa !34
  ret float %i.b
}

declare void @_ZNK21btConvexInternalShape11getAabbSlowERK11btTransformR9btVector3S4_(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK21btConvexInternalShape36getNumPreferredPenetrationDirectionsEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZNK21btConvexInternalShape32getPreferredPenetrationDirectionEiR9btVector3(ptr noundef nonnull align 8 dereferenceable(64) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2) unnamed_addr #9 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN26LocalSupportVertexCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(44) %0) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(44) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN26LocalSupportVertexCallback28internalProcessTriangleIndexEP9btVector3ii(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.b = load float, ptr %i.a, align 4, !tbaa !27 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load float, ptr %i.c, align 8, !tbaa !27 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.f = load float, ptr %i.e, align 4, !tbaa !27 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted = load float, ptr %i.g, align 8, !tbaa !24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load float, ptr %1, align 4, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !27
  %i.l = fmul float %i.d, %i.k
  %i.m = tail call float @llvm.fmuladd.f32(float %i.b, float %i.i, float %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !27
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.o, float %i.m) ; 3 uses
  %i.q = fcmp ogt float %i.p, %.promoted
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %i.p, ptr %i.g, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = phi float [ %i.p, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !27
  %i.w = fmul float %i.d, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.b, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load float, ptr %i.y, align 4, !tbaa !27
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.z, float %i.x) ; 3 uses
  %i.ab = fcmp ogt float %i.aa, %i.r
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.aa, ptr %i.g, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !30
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi float [ %i.aa, %bb.d ], [ %i.r, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !27
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ag = load float, ptr %i.af, align 4, !tbaa !27
  %i.ah = fmul float %i.d, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.b, float %i.ae, float %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !27
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.ak, float %i.ai) ; 2 uses
  %i.am = fcmp ogt float %i.al, %i.ac
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.al, ptr %i.g, align 8, !tbaa !24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !30
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #11

; Function Attrs: inlinehint uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN14CenterCallback28internalProcessTriangleIndexEPS2_ii(ptr noundef nonnull align 8 captures(none) dereferenceable(48) %0, ptr noundef readonly captures(none) %1, i32 %2, i32 %3) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !tbaa !31, !range !35, !noundef !36
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !30
  store i8 0, ptr %i.a, align 8, !tbaa !31
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 2 uses
  %5 = load <3 x float>, ptr %1, align 4, !tbaa !27 ; 3 uses
  %6 = load float, ptr %i.e, align 4, !tbaa !27
  %7 = load <3 x float>, ptr %i.d, align 4, !tbaa !27 ; 7 uses
  %8 = load float, ptr %i.f, align 8, !tbaa !27   ; 3 uses
  %foldExtExtBinop = fsub <3 x float> %5, %7
  %9 = extractelement <3 x float> %foldExtExtBinop, i64 0
  %10 = fsub float %6, %8
  %foldExtExtBinop48 = fsub <3 x float> %5, %7
  %11 = extractelement <3 x float> %foldExtExtBinop48, i64 2
  %12 = load <3 x float>, ptr %i.g, align 4, !tbaa !27 ; 3 uses
  %13 = load float, ptr %i.h, align 4, !tbaa !27
  %foldExtExtBinop50 = fsub <3 x float> %12, %7
  %i.k = extractelement <3 x float> %foldExtExtBinop50, i64 0 ; 2 uses
  %14 = fsub float %13, %8                        ; 2 uses
  %foldExtExtBinop52 = fsub <3 x float> %12, %7
  %i.l = extractelement <3 x float> %foldExtExtBinop52, i64 2 ; 2 uses
  %15 = load <3 x float>, ptr %4, align 4, !tbaa !27 ; 3 uses
  %16 = load float, ptr %i.i, align 4, !tbaa !27
  %foldExtExtBinop54 = fsub <3 x float> %15, %7
  %17 = extractelement <3 x float> %foldExtExtBinop54, i64 0 ; 2 uses
  %18 = fsub float %16, %8                        ; 2 uses
  %foldExtExtBinop56 = fsub <3 x float> %15, %7
  %i.m = extractelement <3 x float> %foldExtExtBinop56, i64 2 ; 2 uses
  %i.n = fneg float %18
  %i.o = fmul float %i.l, %i.n
  %i.p = tail call float @llvm.fmuladd.f32(float %14, float %i.m, float %i.o)
  %19 = fneg float %i.m
  %i.q = fmul float %i.k, %19
  %i.r = tail call float @llvm.fmuladd.f32(float %i.l, float %17, float %i.q)
  %i.s = fmul float %10, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %9, float %i.p, float %i.s)
  %i.u = fneg float %17
  %i.v = fmul float %14, %i.u
  %i.w = tail call float @llvm.fmuladd.f32(float %i.k, float %18, float %i.v)
  %i.x = tail call noundef float @llvm.fmuladd.f32(float %11, float %i.w, float %i.t)
  %i.y = tail call noundef float @llvm.fabs.f32(float %i.x) ; 2 uses
  %i.z = fmul float %i.y, 2.500000e-01
  %20 = fadd <3 x float> %5, %12
  %21 = fadd <3 x float> %20, %15
  %22 = fadd <3 x float> %7, %21
  %23 = insertelement <3 x float> poison, float %i.z, i64 0
  %24 = shufflevector <3 x float> %23, <3 x float> poison, <3 x i32> zeroinitializer
  %25 = fmul <3 x float> %22, %24
  %26 = load <3 x float>, ptr %i.j, align 4, !tbaa !27
  %27 = fadd <3 x float> %26, %25
  store <3 x float> %27, ptr %i.j, align 4, !tbaa !27
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !33
  %i.ac = fadd float %i.ab, %i.y
  store float %i.ac, ptr %i.aa, align 4, !tbaa !33
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: inlinehint uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #8 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(72) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #17
  resume { ptr, i32 } %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define internal void @_ZZNK25btConvexTriangleMeshShape31calculatePrincipalAxisTransformER11btTransformR9btVector3RfEN15InertiaCallback28internalProcessTriangleIndexEPS2_ii(ptr noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noundef readonly captures(none) %1, i32 %2, i32 %3) unnamed_addr #12 align 2 {
.preheader:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = load float, ptr %1, align 4, !tbaa !27
  %i.c = load float, ptr %i.a, align 8, !tbaa !27 ; 3 uses
  %i.d = fsub float %i.b, %i.c                    ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.f = load float, ptr %i.e, align 4, !tbaa !27
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.h = load float, ptr %i.g, align 4, !tbaa !27 ; 3 uses
  %i.i = fsub float %i.f, %i.h                    ; 13 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load float, ptr %i.j, align 4, !tbaa !27
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.m = load float, ptr %i.l, align 8, !tbaa !27 ; 3 uses
  %i.n = fsub float %i.k, %i.m                    ; 13 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.p = load float, ptr %i.o, align 4, !tbaa !27
  %i.q = fsub float %i.p, %i.c                    ; 14 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.s = load float, ptr %i.r, align 4, !tbaa !27
  %i.t = fsub float %i.s, %i.h                    ; 14 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.v = load float, ptr %i.u, align 4, !tbaa !27
  %i.w = fsub float %i.v, %i.m                    ; 14 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.y = load float, ptr %i.x, align 4, !tbaa !27
  %i.z = fsub float %i.y, %i.c                    ; 14 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ab = load float, ptr %i.aa, align 4, !tbaa !27
  %i.ac = fsub float %i.ab, %i.h                  ; 14 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !27
  %i.af = fsub float %i.ae, %i.m                  ; 14 uses
  %i.ag = fneg float %i.ac
  %i.ah = fmul float %i.w, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.t, float %i.af, float %i.ah)
  %i.aj = fneg float %i.af
  %i.ak = fmul float %i.q, %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.w, float %i.z, float %i.ak)
  %i.am = fmul float %i.i, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.d, float %i.ai, float %i.am)
  %i.ao = fneg float %i.z
  %i.ap = fmul float %i.t, %i.ao
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.q, float %i.ac, float %i.ap)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.aq, float %i.an)
  %i.as = tail call noundef float @llvm.fabs.f32(float %i.ar)
  %i.at = fmul float %i.q, %i.q
  %i.au = tail call float @llvm.fmuladd.f32(float %i.d, float %i.d, float %i.at)
  %i.av = tail call float @llvm.fmuladd.f32(float %i.z, float %i.z, float %i.au)
  %i.aw = fmul float %i.d, %i.q
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.d, float %i.q, float %i.aw)
  %i.ay = tail call float @llvm.fmuladd.f32(float %i.d, float %i.z, float %i.ax)
  %i.az = tail call float @llvm.fmuladd.f32(float %i.d, float %i.z, float %i.ay)
  %i.ba = tail call float @llvm.fmuladd.f32(float %i.q, float %i.z, float %i.az)
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.q, float %i.z, float %i.ba)
  %i.bc = fmul float %i.bb, 5.000000e-02
  %i.bd = tail call float @llvm.fmuladd.f32(float %i.av, float 1.000000e-01, float %i.bc)
  %i.be = fmul float %i.t, %i.q
  %i.bf = tail call float @llvm.fmuladd.f32(float %i.i, float %i.d, float %i.be)
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.z, float %i.bf)
  %i.bh = fmul float %i.d, %i.t
  %i.bi = tail call float @llvm.fmuladd.f32(float %i.i, float %i.q, float %i.bh)
  %i.bj = tail call float @llvm.fmuladd.f32(float %i.i, float %i.z, float %i.bi)
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.d, float %i.ac, float %i.bj)
  %i.bl = tail call float @llvm.fmuladd.f32(float %i.t, float %i.z, float %i.bk)
  %i.bm = tail call float @llvm.fmuladd.f32(float %i.q, float %i.ac, float %i.bl)
  %i.bn = fmul float %i.bm, 5.000000e-02
  %i.bo = tail call float @llvm.fmuladd.f32(float %i.bg, float 1.000000e-01, float %i.bn)
  %i.bp = fmul float %i.t, %i.t
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.bp)
  %i.br = tail call float @llvm.fmuladd.f32(float %i.ac, float %i.ac, float %i.bq)
  %i.bs = fmul float %i.i, %i.t
  %i.bt = tail call float @llvm.fmuladd.f32(float %i.i, float %i.t, float %i.bs)
  %i.bu = tail call float @llvm.fmuladd.f32(float %i.i, float %i.ac, float %i.bt)
  %i.bv = tail call float @llvm.fmuladd.f32(float %i.i, float %i.ac, float %i.bu)
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.t, float %i.ac, float %i.bv)
  %i.bx = tail call float @llvm.fmuladd.f32(float %i.t, float %i.ac, float %i.bw)
  %i.by = fmul float %i.bx, 5.000000e-02
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.br, float 1.000000e-01, float %i.by)
  %i.ca = fmul float %i.w, %i.q
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.n, float %i.d, float %i.ca)
  %i.cc = tail call float @llvm.fmuladd.f32(float %i.af, float %i.z, float %i.cb)
  %i.cd = fmul float %i.d, %i.w
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.n, float %i.q, float %i.cd)
  %i.cf = tail call float @llvm.fmuladd.f32(float %i.n, float %i.z, float %i.ce)
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.d, float %i.af, float %i.cf)
  %i.ch = tail call float @llvm.fmuladd.f32(float %i.w, float %i.z, float %i.cg)
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.q, float %i.af, float %i.ch)
  %i.cj = fmul float %i.ci, 5.000000e-02
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cc, float 1.000000e-01, float %i.cj)
  %i.cl = fmul float %i.w, %i.t
  %i.cm = tail call float @llvm.fmuladd.f32(float %i.n, float %i.i, float %i.cl)
  %i.cn = tail call float @llvm.fmuladd.f32(float %i.af, float %i.ac, float %i.cm)
  %i.co = fmul float %i.i, %i.w
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.n, float %i.t, float %i.co)
  %i.cq = tail call float @llvm.fmuladd.f32(float %i.n, float %i.ac, float %i.cp)
  %i.cr = tail call float @llvm.fmuladd.f32(float %i.i, float %i.af, float %i.cq)
  %i.cs = tail call float @llvm.fmuladd.f32(float %i.w, float %i.ac, float %i.cr)
  %i.ct = tail call float @llvm.fmuladd.f32(float %i.t, float %i.af, float %i.cs)
  %i.cu = fmul float %i.ct, 5.000000e-02
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cn, float 1.000000e-01, float %i.cu)
  %i.cw = fmul float %i.w, %i.w
  %i.cx = tail call float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.cw)
  %i.cy = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.cx)
  %i.cz = fmul float %i.n, %i.w
  %i.da = tail call float @llvm.fmuladd.f32(float %i.n, float %i.w, float %i.cz)
  %i.db = tail call float @llvm.fmuladd.f32(float %i.n, float %i.af, float %i.da)
  %i.dc = tail call float @llvm.fmuladd.f32(float %i.n, float %i.af, float %i.db)
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.w, float %i.af, float %i.dc)
  %i.de = tail call float @llvm.fmuladd.f32(float %i.w, float %i.af, float %i.dd)
  %i.df = fmul float %i.de, 5.000000e-02
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.cy, float 1.000000e-01, float %i.df)
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.di = load <2 x float>, ptr %i.dh, align 8, !tbaa !27
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !27
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.dm = load <2 x float>, ptr %i.dl, align 8, !tbaa !27
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.do = load float, ptr %i.dn, align 8, !tbaa !27
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.dq = load float, ptr %i.dp, align 8, !tbaa !27
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.ds = fmul float %i.as, f0xBE2AAAAB           ; 6 uses
  %i.dt = fmul float %i.ds, %i.bd                 ; 2 uses
  %i.du = fmul float %i.ds, %i.bz                 ; 2 uses
  %i.dv = fmul float %i.ds, %i.ck                 ; 2 uses
  %i.dw = fmul float %i.ds, %i.dg                 ; 2 uses
  %i.dx = fneg float %i.dt
  %i.dy = fneg float %i.du
  %i.dz = fneg float %i.dw
  %i.ea = fsub float %i.dz, %i.du
  %i.eb = fsub float %i.dx, %i.dw
  %i.ec = fmul float %i.ds, %i.bo                 ; 2 uses
  %i.ed = fsub float %i.dy, %i.dt
  %i.ee = fmul float %i.ds, %i.cv                 ; 2 uses
  %i.ef = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.eg = insertelement <2 x float> %i.ef, float %i.ec, i64 1
  %i.eh = fadd <2 x float> %i.eg, %i.di
  store <2 x float> %i.eh, ptr %i.dh, align 8, !tbaa !27
  %i.ei = fadd float %i.dv, %i.dk
  store float %i.ei, ptr %i.dj, align 8, !tbaa !27
  %i.ej = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.ek = insertelement <2 x float> %i.ej, float %i.eb, i64 1
  %i.el = fadd <2 x float> %i.ek, %i.dm
  store <2 x float> %i.el, ptr %i.dl, align 8, !tbaa !27
  %i.em = fadd float %i.ee, %i.do
  store float %i.em, ptr %i.dn, align 8, !tbaa !27
  %i.en = fadd float %i.dv, %i.dq
  store float %i.en, ptr %i.dp, align 8, !tbaa !27
  %i.eo = load <2 x float>, ptr %i.dr, align 4, !tbaa !27
  %i.ep = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.eq = insertelement <2 x float> %i.ep, float %i.ed, i64 1
  %i.er = fadd <2 x float> %i.eq, %i.eo
  store <2 x float> %i.er, ptr %i.dr, align 4, !tbaa !27
  ret void
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #14
end_hunk_0
