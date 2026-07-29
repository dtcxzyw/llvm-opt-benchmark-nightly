inline.NumInlined: 155
inline.NumDeleted: 44
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK19btTriangleMeshShape7getAabbERK11btTransformR9btVector3S4_:bb.a
  store <2 x float> %i.cu, ptr %2, align 4
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i24, ptr %.sroa.42.0..sroa_idx, align 4, !tbaa !25
  %i.cw = fadd <2 x float> %i.ct, %i.ck
  %i.cx = fadd float %i.bq, %i.bn
  %.sroa.3.12.vec.insert.i29 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cx, i64 0
  store <2 x float> %i.cw, ptr %3, align 4
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i29, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !25
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: uwtable
define dso_local void @_ZN19btTriangleMeshShape15setLocalScalingERK9btVector3(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 4           ; 18 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !26
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 28
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.d, i8 0, i64 12, i1 false)
  store float 1.000000e+00, ptr %2, align 4, !tbaa !19
  %i.i = load ptr, ptr %0, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = call { <2 x float>, <2 x float> } %i.k(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !20
  %i.m = extractvalue { <2 x float>, <2 x float> } %i.l, 0
  %.sroa.0.0.vec.extract13.i = extractelement <2 x float> %i.m, i64 0
  %i.n = load float, ptr %i.f, align 8, !tbaa !21
  %i.o = fadd float %i.n, %.sroa.0.0.vec.extract13.i
  store float %i.o, ptr %i.g, align 4, !tbaa !19
  store float -1.000000e+00, ptr %2, align 4, !tbaa !19
  %i.p = load ptr, ptr %0, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 104
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = call { <2 x float>, <2 x float> } %i.r(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !20
  %i.t = extractvalue { <2 x float>, <2 x float> } %i.s, 0
  %.sroa.0.0.vec.extract.i = extractelement <2 x float> %i.t, i64 0
  %i.u = load float, ptr %i.f, align 8, !tbaa !21
  %i.v = fsub float %.sroa.0.0.vec.extract.i, %i.u
  store float %i.v, ptr %i.h, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.d, align 4, !tbaa !19
  %i.w = load ptr, ptr %0, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = load ptr, ptr %i.x, align 8
  %i.z = call { <2 x float>, <2 x float> } %i.y(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !20
  %i.aa = extractvalue { <2 x float>, <2 x float> } %i.z, 0
  %.sroa.0.4.vec.extract.i = extractelement <2 x float> %i.aa, i64 1
  %i.ab = load float, ptr %i.f, align 8, !tbaa !21
  %i.ac = fadd float %i.ab, %.sroa.0.4.vec.extract.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %i.ac, ptr %i.ad, align 8, !tbaa !19
  store float -1.000000e+00, ptr %i.d, align 4, !tbaa !19
  %i.ae = load ptr, ptr %0, align 8, !tbaa !8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 104
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = call { <2 x float>, <2 x float> } %i.ag(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !20
  %i.ai = extractvalue { <2 x float>, <2 x float> } %i.ah, 0
  %.sroa.0.4.vec.extract15.i = extractelement <2 x float> %i.ai, i64 1
  %i.aj = load float, ptr %i.f, align 8, !tbaa !21
  %i.ak = fsub float %.sroa.0.4.vec.extract15.i, %i.aj
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ak, ptr %i.al, align 8, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr %i.e, align 4, !tbaa !19
  %i.am = load ptr, ptr %0, align 8, !tbaa !8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 104
  %i.ao = load ptr, ptr %i.an, align 8
  %i.ap = call { <2 x float>, <2 x float> } %i.ao(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !20
  %i.aq = extractvalue { <2 x float>, <2 x float> } %i.ap, 1
  %.sroa.16.8.vec.extract.i = extractelement <2 x float> %i.aq, i64 0
  %i.ar = load float, ptr %i.f, align 8, !tbaa !21
  %i.as = fadd float %i.ar, %.sroa.16.8.vec.extract.i
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 52
  store float %i.as, ptr %i.at, align 4, !tbaa !19
  store float -1.000000e+00, ptr %i.e, align 4, !tbaa !19
  %i.au = load ptr, ptr %0, align 8, !tbaa !8
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 104
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = call { <2 x float>, <2 x float> } %i.aw(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 4 dereferenceable(16) %2), !inline_history !20
  %i.ay = extractvalue { <2 x float>, <2 x float> } %i.ax, 1
  %.sroa.16.8.vec.extract17.i = extractelement <2 x float> %i.ay, i64 0
  %i.az = load float, ptr %i.f, align 8, !tbaa !21
  %i.ba = fsub float %.sroa.16.8.vec.extract17.i, %i.az
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ba, ptr %i.bb, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef nonnull align 4 dereferenceable(16) ptr @_ZNK19btTriangleMeshShape15getLocalScalingEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0) unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  ret ptr %i.c
}

; Function Attrs: uwtable
define dso_local void @_ZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %struct.FilteredCallback, align 8   ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E16FilteredCallback, i64 16), ptr %4, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !26
  %i.c = getelementptr inbounds nuw i8, ptr %4, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull readonly align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !26
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10   ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8
  invoke void %i.h(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull %4, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(48) %4)
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
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load float, ptr %i.g, align 4, !tbaa !19 ; 2 uses
  %6 = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !19
  %7 = load float, ptr %5, align 4, !tbaa !19     ; 2 uses
  %8 = load float, ptr %1, align 4, !tbaa !19     ; 3 uses
  %9 = fmul float %7, 0.000000e+00                ; 2 uses
  %10 = fadd float %8, %9
  %i.i = tail call float @llvm.fmuladd.f32(float %6, float %8, float %7)
  %i.j = insertelement <2 x float> poison, float %i.h, i64 0
  %i.k = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> zeroinitializer
  %i.l = insertelement <2 x float> poison, float %10, i64 0
  %i.m = insertelement <2 x float> %i.l, float %i.i, i64 1
  %i.n = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> zeroinitializer, <2 x float> %i.m)
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.p = load float, ptr %i.o, align 8, !tbaa !19
  %i.q = tail call float @llvm.fmuladd.f32(float %i.p, float %8, float %9)
  %i.r = fadd float %i.h, %i.q
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.r, i64 0
  store <2 x float> %i.n, ptr %i.f, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 100
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>, ptr %3, align 16, !tbaa !19
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #13
  store <2 x float> splat (float f0xDD5E0B6B), ptr %4, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> <float f0xDD5E0B6B, float 0.000000e+00>, ptr %i.s, align 8
  %i.t = load ptr, ptr %0, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 96
  %i.v = load ptr, ptr %i.u, align 8
  invoke void %i.v(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %3)
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
  %i.w = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  invoke void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dereferenceable(108) %2)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  resume { ptr, i32 } %i.w

bb.e:                                             ; preds = %bb.c
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  call void @__clang_call_terminate(ptr %i.y) #14
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
  %i.o = select i1 %i.n, ptr %1, ptr %i.b
  %i.p = select i1 %i.n, float %i.d, float %i.e
  %i.q = fcmp ogt float %i.p, %i.h
  %i.r = select i1 %i.q, ptr %i.o, ptr %i.c
  %i.s = load float, ptr %i.r, align 4, !tbaa !19
  %i.t = load float, ptr %i.m, align 8, !tbaa !19
  %i.u = fcmp olt float %i.s, %i.t
  br i1 %i.u, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.x = load float, ptr %i.v, align 4, !tbaa !19 ; 4 uses
  %i.y = load float, ptr %i.w, align 4, !tbaa !19 ; 4 uses
  %i.z = fcmp olt float %i.x, %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ab = select i1 %i.z, float %i.x, float %i.y  ; 2 uses
  %i.ac = load float, ptr %i.aa, align 4, !tbaa !19 ; 3 uses
  %i.ad = fcmp olt float %i.ab, %i.ac
  %i.ae = select i1 %i.ad, float %i.ab, float %i.ac
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ag = load float, ptr %i.af, align 8, !tbaa !19
  %i.ah = fcmp ogt float %i.ae, %i.ag
  br i1 %i.ah, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ai = fcmp ogt float %i.x, %i.y               ; 2 uses
  %i.aj = select i1 %i.ai, ptr %i.v, ptr %i.w
  %i.ak = select i1 %i.ai, float %i.x, float %i.y
  %i.al = fcmp ogt float %i.ak, %i.ac
  %i.am = select i1 %i.al, ptr %i.aj, ptr %i.aa
  %i.an = load float, ptr %i.am, align 4, !tbaa !19
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load float, ptr %i.ao, align 8, !tbaa !19
  %i.aq = fcmp olt float %i.an, %i.ap
  br i1 %i.aq, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %i.at = load float, ptr %i.ar, align 4, !tbaa !19 ; 4 uses
  %i.au = load float, ptr %i.as, align 4, !tbaa !19 ; 4 uses
  %i.av = fcmp olt float %i.at, %i.au
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 36 ; 2 uses
  %i.ax = select i1 %i.av, float %i.at, float %i.au ; 2 uses
  %i.ay = load float, ptr %i.aw, align 4, !tbaa !19 ; 3 uses
  %i.az = fcmp olt float %i.ax, %i.ay
  %i.ba = select i1 %i.az, float %i.ax, float %i.ay
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !19
  %i.bd = fcmp ogt float %i.ba, %i.bc
  br i1 %i.bd, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit

_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit: ; preds = %bb.e
  %i.be = fcmp ogt float %i.at, %i.au             ; 2 uses
  %i.bf = select i1 %i.be, ptr %i.ar, ptr %i.as
  %i.bg = select i1 %i.be, float %i.at, float %i.au
  %i.bh = fcmp ogt float %i.bg, %i.ay
  %i.bi = select i1 %i.bh, ptr %i.bf, ptr %i.aw
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !19
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !19
  %i.bm = fcmp uge float %i.bj, %i.bl
  br i1 %i.bm, label %bb.f, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread

bb.f:                                             ; preds = %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !27 ; 2 uses
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !8
end_hunk_0
