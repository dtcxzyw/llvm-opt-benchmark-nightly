inline.NumInlined: 210
inline.NumDeleted: 67
begin_hunk_0_@_ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf:bb.a
  %i.bf = load float, ptr %i.be, align 4, !tbaa !86 ; 2 uses
  br i1 %i.bb, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(312) %i.ap, ptr noundef %i.bd, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, float noundef %i.bf)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_ZNK16btCollisionWorld15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RNS_20ConvexResultCallbackEf(ptr noundef nonnull align 8 dereferenceable(129) %1, ptr noundef %i.bd, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(16) %5, float noundef %i.bf)
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
  %i.bg = load float, ptr %i.aq, align 8, !tbaa !75 ; 4 uses
  %i.bh = fcmp olt float %i.bg, 1.000000e+00
  br i1 %i.bh, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.bi = fsub float 1.000000e+00, %i.bg          ; 2 uses
  %i.bj = load <2 x float>, ptr %i.al, align 8, !tbaa !8
  %i.bk = load <2 x float>, ptr %i.n, align 4, !tbaa !8
  %i.bl = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bm = shufflevector <2 x float> %i.bl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bn = fmul <2 x float> %i.bm, %i.bk
  %i.bo = insertelement <2 x float> poison, float %i.bi, i64 0
  %i.bp = shufflevector <2 x float> %i.bo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bq = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.bj, <2 x float> %i.bn)
  store <2 x float> %i.bq, ptr %i.al, align 8, !tbaa !8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.bs = load float, ptr %i.br, align 8, !tbaa !8
  %i.bt = load float, ptr %i.y, align 4, !tbaa !8
  %i.bu = fmul float %i.bg, %i.bt
  %i.bv = call float @llvm.fmuladd.f32(float %i.bi, float %i.bs, float %i.bu)
  store float %i.bv, ptr %i.br, align 8, !tbaa !8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.al, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !58
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN30btKinematicCharacterController16setWalkDirectionERK9btVector3(ptr noundef nonnull align 8 captures(none) dereferenceable(192) initializes((56, 88), (181, 182)) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 1, ptr %i.a, align 1, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !58
  %i.c = load float, ptr %i.b, align 8, !tbaa !8  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.d, align 4, !tbaa !8  ; 3 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load float, ptr %i.h, align 8, !tbaa !8  ; 3 uses
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.g)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.j)
  %i.k = fdiv float 1.000000e+00, %sqrt.i.i.i     ; 3 uses
  %i.l = fmul float %i.c, %i.k                    ; 3 uses
  %i.m = fmul float %i.e, %i.k                    ; 3 uses
  %i.n = fmul float %i.i, %i.k                    ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.l, i64 0
  %.sroa.0.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i, float %i.m, i64 1
  %.sroa.3.12.vec.insert.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  %i.o = fmul float %i.m, %i.m
  %i.p = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.o)
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.p)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.q)
  %i.r = fcmp olt float %sqrt.i.i, f0x34000000    ; 2 uses
  %.sroa.0.0.i = select i1 %i.r, <2 x float> zeroinitializer, <2 x float> %.sroa.0.4.vec.insert.i.i.i.i
  %.sroa.6.0.i = select i1 %i.r, <2 x float> zeroinitializer, <2 x float> %.sroa.3.12.vec.insert.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x float> %.sroa.0.0.i, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.6.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !59
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN30btKinematicCharacterController26setVelocityForTimeIntervalERK9btVector3f(ptr noundef nonnull align 8 captures(none) dereferenceable(192) initializes((56, 88), (181, 182), (184, 188)) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, float noundef %2) unnamed_addr #9 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 181
  store i8 0, ptr %i.a, align 1, !tbaa !35
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !58
  %i.c = load float, ptr %i.b, align 8, !tbaa !8  ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.e = load float, ptr %i.d, align 4, !tbaa !8  ; 3 uses
  %i.f = fmul float %i.e, %i.e
  %i.g = tail call float @llvm.fmuladd.f32(float %i.c, float %i.c, float %i.f)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = load float, ptr %i.h, align 8, !tbaa !8  ; 3 uses
  %i.j = tail call noundef float @llvm.fmuladd.f32(float %i.i, float %i.i, float %i.g)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.j)
  %i.k = fdiv float 1.000000e+00, %sqrt.i.i.i     ; 3 uses
  %i.l = fmul float %i.c, %i.k                    ; 3 uses
  %i.m = fmul float %i.e, %i.k                    ; 3 uses
  %i.n = fmul float %i.i, %i.k                    ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i.i = insertelement <2 x float> poison, float %i.l, i64 0
  %.sroa.0.4.vec.insert.i.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i.i, float %i.m, i64 1
  %.sroa.3.12.vec.insert.i.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.n, i64 0
  %i.o = fmul float %i.m, %i.m
  %i.p = tail call float @llvm.fmuladd.f32(float %i.l, float %i.l, float %i.o)
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.p)
  %sqrt.i.i = tail call noundef float @llvm.sqrt.f32(float %i.q)
  %i.r = fcmp olt float %sqrt.i.i, f0x34000000    ; 2 uses
  %.sroa.0.0.i = select i1 %i.r, <2 x float> zeroinitializer, <2 x float> %.sroa.0.4.vec.insert.i.i.i.i
  %.sroa.6.0.i = select i1 %i.r, <2 x float> zeroinitializer, <2 x float> %.sroa.3.12.vec.insert.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x float> %.sroa.0.0.i, ptr %i.s, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <2 x float> %.sroa.6.0.i, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !59
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184
  store float %2, ptr %i.t, align 8, !tbaa !36
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN30btKinematicCharacterController5resetEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN30btKinematicCharacterController4warpERK9btVector3(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(192) %0, ptr noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #11 align 2 {
bb.a:
  %.sroa.10.sroa.4 = alloca [16 x i8], align 4    ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.sroa.4)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.sroa.4, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !58
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !31   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store float 1.000000e+00, ptr %i.c, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.6.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.6.16..sroa_idx, align 4
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.9.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.16..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.9.32..sroa_idx, align 8
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 52
  store i32 0, ptr %.sroa.10.32..sroa_idx, align 4, !tbaa !59
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.10.sroa.4, i64 16, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.sroa.4)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN30btKinematicCharacterController7preStepEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(192) initializes((88, 104), (160, 161)) %0, ptr noundef %1) unnamed_addr #3 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 6 uses
  store i8 0, ptr %i.a, align 8, !tbaa !88
  %i.b = tail call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1)
  br i1 %i.b, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.a, align 8, !tbaa !88
  %i.c = tail call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1)
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  store i8 1, ptr %i.a, align 8, !tbaa !88
  %i.d = tail call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1)
  br i1 %i.d, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  store i8 1, ptr %i.a, align 8, !tbaa !88
  %i.e = tail call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1)
  br i1 %i.e, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  store i8 1, ptr %i.a, align 8, !tbaa !88
  %i.f = tail call noundef zeroext i1 @_ZN30btKinematicCharacterController22recoverFromPenetrationEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1)
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store i8 1, ptr %i.a, align 8, !tbaa !88
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !58
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 108
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN30btKinematicCharacterController10playerStepEP16btCollisionWorldf(ptr noundef nonnull align 8 captures(none) dereferenceable(192) %0, ptr noundef %1, float noundef %2) unnamed_addr #6 align 2 {
bb.a:
  %3 = alloca %class.btTransform, align 4         ; 7 uses
  %4 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 181 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !35, !range !37, !noundef !85
  %i.c = trunc nuw i8 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.e = load float, ptr %i.d, align 8
  %i.f = fcmp ugt float %i.e, 0.000000e+00
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.i, i64 16, i1 false), !tbaa.struct !58
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !58
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !58
  %5 = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  tail call void @_ZN30btKinematicCharacterController6stepUpEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1)
  %i.n = load i8, ptr %i.a, align 1, !tbaa !35, !range !37, !noundef !85
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %i.p)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.q = load float, ptr %i.d, align 8, !tbaa !36 ; 3 uses
  %i.r = fcmp olt float %2, %i.q
  %. = select i1 %i.r, float %2, float %i.q       ; 2 uses
  %i.s = fsub float %i.q, %2
  store float %i.s, ptr %i.d, align 8, !tbaa !36
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load <2 x float>, ptr %i.t, align 8, !tbaa !8
  %i.v = insertelement <2 x float> poison, float %., i64 0
  %i.w = shufflevector <2 x float> %i.v, <2 x float> poison, <2 x i32> zeroinitializer
  %i.x = fmul <2 x float> %i.w, %i.u
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.z = load float, ptr %i.y, align 8, !tbaa !8
  %i.aa = fmul float %., %i.z
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aa, i64 0
  store <2 x float> %i.x, ptr %4, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.ab, align 8
  call void @_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, float poison)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !58
  %i.ad = load ptr, ptr %i.g, align 8, !tbaa !31  ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ae, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !58
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !58
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !58
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %5, i64 16, i1 false), !tbaa.struct !58
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController12setFallSpeedEf(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(192) initializes((32, 36)) %0, float noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %1, ptr %i.a, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController12setJumpSpeedEf(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(192) initializes((36, 40)) %0, float noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %1, ptr %i.a, align 4, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController16setMaxJumpHeightEf(ptr noundef nonnull writeonly align 8 captures(none) dereferenceable(192) initializes((40, 44)) %0, float noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %1, ptr %i.a, align 8, !tbaa !91
  ret void
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZNK30btKinematicCharacterController7canJumpEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(192) %0)
  ret i1 %i.d
}

; Function Attrs: uwtable
define dso_local void @_ZN30btKinematicCharacterController4jumpEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(192) %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK30btKinematicCharacterController8onGroundEv(ptr nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN30btKinematicCharacterController9debugDrawEP12btIDebugDraw(ptr nonnull readnone align 8 captures(none) %0, ptr readnone captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, float noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1)
  %i.d = load ptr, ptr %0, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, float noundef %2)
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #12

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN43btKinematicClosestNotMeConvexResultCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(96) %0) unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZNK16btCollisionWorld20ConvexResultCallback14needsCollisionEP17btBroadphaseProxy(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load i16, ptr %i.a, align 8, !tbaa !92
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.d = load i16, ptr %i.c, align 2, !tbaa !94
  %i.e = and i16 %i.d, %i.b
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load i16, ptr %i.f, align 4, !tbaa !95
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.i = load i16, ptr %i.h, align 2, !tbaa !96
  %i.j = and i16 %i.i, %i.g
  %i.k = icmp ne i16 %i.j, 0
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = phi i1 [ false, %bb.a ], [ %i.k, %bb.b ]
  ret i1 %i.l
}

; Function Attrs: uwtable
define linkonce_odr dso_local noundef float @_ZN43btKinematicClosestNotMeConvexResultCallback15addSingleResultERN16btCollisionWorld17LocalConvexResultEb(ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull align 8 dereferenceable(52) %1, i1 noundef zeroext %2) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !97     ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !81
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.f, ptr %i.g, align 8, !tbaa !75
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.a, ptr %i.h, align 8, !tbaa !78
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !58
  br label %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load float, ptr %i.k, align 4, !tbaa !8
  %i.n = load float, ptr %i.l, align 8, !tbaa !8  ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.p = load float, ptr %i.o, align 4, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.r = load float, ptr %i.q, align 4, !tbaa !8  ; 3 uses
  %i.s = fmul float %i.p, %i.r
  %i.t = tail call float @llvm.fmuladd.f32(float %i.m, float %i.n, float %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.v = load float, ptr %i.u, align 4, !tbaa !8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.x = load float, ptr %i.w, align 8, !tbaa !8  ; 3 uses
  %i.y = tail call noundef float @llvm.fmuladd.f32(float %i.v, float %i.x, float %i.t)
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.aa = load float, ptr %i.z, align 4, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !8
  %i.ad = fmul float %i.r, %i.ac
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.aa, float %i.n, float %i.ad)
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ag = load float, ptr %i.af, align 4, !tbaa !8
  %i.ah = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.x, float %i.ae)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.al = load float, ptr %i.ak, align 4, !tbaa !8
  %i.am = fmul float %i.r, %i.al
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.n, float %i.am)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !8
  %i.aq = tail call noundef float @llvm.fmuladd.f32(float %i.ap, float %i.x, float %i.an)
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.y, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.ah, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.aq, i64 0
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.ar, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !59
  br label %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit

_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit: ; preds = %bb.c, %bb.d
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 8 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !58
  %i.au = load float, ptr %i.e, align 8, !tbaa !100
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit
  %.0 = phi float [ %i.au, %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit ], [ 1.000000e+00, %bb.a ]
  ret float %.0
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0
end_hunk_0
