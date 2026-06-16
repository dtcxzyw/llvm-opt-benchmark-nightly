inline.NumInlined: 155
inline.NumDeleted: 44
begin_hunk_0_@_ZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_:bb.a
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  resume { ptr, i32 } %i.i

bb.e:                                             ; preds = %bb.c
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  call void @__clang_call_terminate(ptr %i.k) #14
  unreachable
}

declare void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK19btTriangleMeshShape21calculateLocalInertiaEfR9btVector3(ptr nofree nonnull readnone align 8 captures(none) %0, float %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) unnamed_addr #8 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK19btTriangleMeshShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.SupportVertexCallback, align 8 ; 21 uses
  %3 = alloca %class.btVector3, align 16          ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, i8 0, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV21SupportVertexCallback, i64 16), ptr %2, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i32 0, ptr %i.d, align 8
  %.sroa.7.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 44
  store float 1.000000e+00, ptr %.sroa.7.16..sroa_idx, align 4
  %.sroa.8.16..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.10.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.16..sroa_idx, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %.sroa.10.32..sroa_idx, align 8
  %.sroa.11.32..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 68
  store i32 0, ptr %.sroa.11.32..sroa_idx, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88
  store float f0xDD5E0B6B, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.g = load float, ptr %1, align 4, !tbaa !19   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.h, align 4, !tbaa !19 ; 2 uses
  %i.j = fmul float %i.i, 0.000000e+00            ; 2 uses
  %i.k = fadd float %i.g, %i.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load float, ptr %i.l, align 4, !tbaa !19 ; 3 uses
  %i.n = tail call noundef float @llvm.fmuladd.f32(float %i.m, float 0.000000e+00, float %i.k)
  %i.o = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !19
  %i.p = tail call float @llvm.fmuladd.f32(float %i.o, float %i.g, float %i.i)
  %i.q = tail call noundef float @llvm.fmuladd.f32(float %i.m, float 0.000000e+00, float %i.p)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.s = load float, ptr %i.r, align 8, !tbaa !19
  %i.t = tail call float @llvm.fmuladd.f32(float %i.s, float %i.g, float %i.j)
  %i.u = fadd float %i.m, %i.t
  %.sroa.0.0.vec.insert.i.i = insertelement <2 x float> poison, float %i.n, i64 0
  %.sroa.0.4.vec.insert.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i, float %i.q, i64 1
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.u, i64 0
  store <2 x float> %.sroa.0.4.vec.insert.i.i, ptr %i.f, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 100
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>, ptr %3, align 16, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store <2 x float> splat (float f0xDD5E0B6B), ptr %4, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> <float f0xDD5E0B6B, float 0.000000e+00>, ptr %i.v, align 8
  %i.w = load ptr, ptr %0, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 96
  %i.y = load ptr, ptr %i.x, align 8
  invoke void %i.y(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !25
  %.fca.0.insert.i3 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i4 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i3, <2 x float> %.sroa.2.0.copyload.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(108) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i4

bb.c:                                             ; preds = %bb.a
  %i.z = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(108) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.z

bb.e:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  call void @__clang_call_terminate(ptr %i.ab) #14
  unreachable
}

declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #1

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK19btTriangleMeshShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(72) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN14btConcaveShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(28) %0, float noundef %1) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %1, ptr %i.a, align 8, !tbaa !21
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK14btConcaveShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(28) %0) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load float, ptr %i.a, align 8, !tbaa !21
  ret float %i.b
}

; Function Attrs: uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK19btTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { <2 x float>, <2 x float> } %i.c(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  ret { <2 x float>, <2 x float> } %i.d
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #10

; Function Attrs: inlinehint uwtable
define internal void @_ZZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN16FilteredCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  resume { ptr, i32 } %i.a
}

; Function Attrs: uwtable
define internal void @_ZZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN16FilteredCallback28internalProcessTriangleIndexEPS2_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #4 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load float, ptr %1, align 4, !tbaa !19   ; 4 uses
  %i.e = load float, ptr %i.b, align 4, !tbaa !19 ; 4 uses
  %i.f = fcmp olt float %i.d, %i.e
  %i.g = select i1 %i.f, float %i.d, float %i.e   ; 2 uses
  %i.h = load float, ptr %i.c, align 4, !tbaa !19 ; 3 uses
  %i.i = fcmp olt float %i.g, %i.h
  %i.j = select i1 %i.i, float %i.g, float %i.h
  %i.k = load float, ptr %i.a, align 8, !tbaa !19
  %i.l = fcmp ogt float %i.j, %i.k
  br i1 %i.l, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = fcmp ogt float %i.d, %i.e                ; 2 uses
  %4 = select i1 %i.n, ptr %1, ptr %i.b
  %5 = select i1 %i.n, float %i.d, float %i.e
  %i.o = fcmp ogt float %5, %i.h
  %i.p = select i1 %i.o, ptr %4, ptr %i.c
  %i.q = load float, ptr %i.p, align 4, !tbaa !19
  %i.r = load float, ptr %i.m, align 8, !tbaa !19
  %i.s = fcmp olt float %i.q, %i.r
  br i1 %i.s, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.v = load float, ptr %i.t, align 4, !tbaa !19 ; 4 uses
  %i.w = load float, ptr %i.u, align 4, !tbaa !19 ; 4 uses
  %i.x = fcmp olt float %i.v, %i.w
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.z = select i1 %i.x, float %i.v, float %i.w   ; 2 uses
  %i.aa = load float, ptr %i.y, align 4, !tbaa !19 ; 3 uses
  %i.ab = fcmp olt float %i.z, %i.aa
  %i.ac = select i1 %i.ab, float %i.z, float %i.aa
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ae = load float, ptr %i.ad, align 8, !tbaa !19
  %i.af = fcmp ogt float %i.ac, %i.ae
  br i1 %i.af, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ag = fcmp ogt float %i.v, %i.w               ; 2 uses
  %6 = select i1 %i.ag, ptr %i.t, ptr %i.u
  %7 = select i1 %i.ag, float %i.v, float %i.w
  %i.ah = fcmp ogt float %7, %i.aa
  %i.ai = select i1 %i.ah, ptr %6, ptr %i.y
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !19
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.al = load float, ptr %i.ak, align 8, !tbaa !19
  %i.am = fcmp olt float %i.aj, %i.al
  br i1 %i.am, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.ap = load float, ptr %i.an, align 4, !tbaa !19 ; 4 uses
  %i.aq = load float, ptr %i.ao, align 4, !tbaa !19 ; 4 uses
  %i.ar = fcmp olt float %i.ap, %i.aq
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.at = select i1 %i.ar, float %i.ap, float %i.aq ; 2 uses
  %i.au = load float, ptr %i.as, align 4, !tbaa !19 ; 3 uses
  %i.av = fcmp olt float %i.at, %i.au
  %i.aw = select i1 %i.av, float %i.at, float %i.au
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !19
  %i.az = fcmp ogt float %i.aw, %i.ay
  br i1 %i.az, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit

_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit: ; preds = %bb.e
  %i.ba = fcmp ogt float %i.ap, %i.aq             ; 2 uses
  %8 = select i1 %i.ba, ptr %i.an, ptr %i.ao
  %9 = select i1 %i.ba, float %i.ap, float %i.aq
  %i.bb = fcmp ogt float %9, %i.au
  %i.bc = select i1 %i.bb, ptr %8, ptr %i.as
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !19
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bf = load float, ptr %i.be, align 4, !tbaa !19
  %i.bg = fcmp uge float %i.bd, %i.bf
  br i1 %i.bg, label %bb.f, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread

bb.f:                                             ; preds = %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !27 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  tail call void %i.bl(ptr noundef nonnull align 8 dereferenceable(8) %i.bi, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread

_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread: ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e, %bb.f, %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit
  ret void
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN21SupportVertexCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(108) %0) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(108) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #15
  resume { ptr, i32 } %i.a
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN21SupportVertexCallback15processTriangleEP9btVector3ii(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load float, ptr %i.a, align 4, !tbaa !19 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load float, ptr %i.c, align 8, !tbaa !19 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = load float, ptr %i.e, align 4, !tbaa !19 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %.promoted = load float, ptr %i.g, align 8, !tbaa !31 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load float, ptr %1, align 4, !tbaa !19
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !19
  %i.l = fmul float %i.d, %i.k
  %i.m = tail call float @llvm.fmuladd.f32(float %i.b, float %i.i, float %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !19
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.o, float %i.m) ; 3 uses
  %i.q = fcmp ogt float %i.p, %.promoted
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %i.p, ptr %i.g, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !26
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = phi float [ %i.p, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !19
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !19
  %i.w = fmul float %i.d, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.b, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load float, ptr %i.y, align 4, !tbaa !19
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.z, float %i.x) ; 3 uses
  %i.ab = fcmp ogt float %i.aa, %i.r
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.aa, ptr %i.g, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !26
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi float [ %i.aa, %bb.d ], [ %i.r, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !19
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ag = load float, ptr %i.af, align 4, !tbaa !19
  %i.ah = fmul float %i.d, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.b, float %i.ae, float %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !19
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.ak, float %i.ai) ; 2 uses
  %i.am = fcmp ogt float %i.al, %i.ac
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.al, ptr %i.g, align 8, !tbaa !31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !26
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { cold nofree noreturn }
attributes #4 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { noreturn nounwind }
attributes #15 = { builtin nounwind }

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
!10 = !{!11, !17, i64 64}
!11 = !{!"_ZTS19btTriangleMeshShape", !12, i64 0, !16, i64 28, !16, i64 44, !17, i64 64}
!12 = !{!"_ZTS14btConcaveShape", !13, i64 0, !15, i64 24}
!13 = !{!"_ZTS16btCollisionShape", !5, i64 8, !14, i64 16}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"float", !6, i64 0}
!16 = !{!"_ZTS9btVector3", !6, i64 0}
!17 = !{!"p1 _ZTS23btStridingMeshInterface", !14, i64 0}
!18 = !{!13, !5, i64 8}
!19 = !{!15, !15, i64 0}
!20 = !{ptr @_ZN19btTriangleMeshShape15recalcLocalAabbEv}
!21 = !{!12, !15, i64 24}
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNK11btMatrix3x38absoluteEv: argument 0"}
!24 = distinct !{!24, !"_ZNK11btMatrix3x38absoluteEv"}
!25 = !{!6, !6, i64 0}
!26 = !{i64 0, i64 16, !25}
!27 = !{!28, !30, i64 8}
!28 = !{!"_ZTSZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E16FilteredCallback", !29, i64 0, !30, i64 8, !16, i64 16, !16, i64 32}
!29 = !{!"_ZTS31btInternalTriangleIndexCallback"}
!30 = !{!"p1 _ZTS18btTriangleCallback", !14, i64 0}
!31 = !{!32, !15, i64 88}
!32 = !{!"_ZTS21SupportVertexCallback", !33, i64 0, !16, i64 8, !34, i64 24, !15, i64 88, !16, i64 92}
!33 = !{!"_ZTS18btTriangleCallback"}
!34 = !{!"_ZTS11btTransform", !35, i64 0, !16, i64 48}
!35 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
end_hunk_0
