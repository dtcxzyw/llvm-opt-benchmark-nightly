Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btTriangleMeshShape?download=true
inline.NumInlined: 153
inline.NumDeleted: 46
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_ZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_:bb.a
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  ret void

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  resume { ptr, i32 } %i.i
}

; Function Attrs: nounwind
declare void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZNK19btTriangleMeshShape21calculateLocalInertiaEfR9btVector3(ptr nofree nonnull readnone align 8 captures(none) %0, float %1, ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(16) initializes((0, 16)) %2) unnamed_addr #7 align 2 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local { <2 x float>, <2 x float> } @_ZNK19btTriangleMeshShape24localGetSupportingVertexERK9btVector3(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.SupportVertexCallback, align 8 ; 21 uses
  %3 = alloca %class.btVector3, align 16          ; 5 uses
  %4 = alloca %class.btVector3, align 8           ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 28 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx, i8 0, i64 12, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 72
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV21SupportVertexCallback, i64 16), ptr %2, align 8, !tbaa !9
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
  store i32 0, ptr %.sroa.11.32..sroa_idx, align 4, !tbaa !26
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 88
  store float f0xDD5E0B6B, ptr %i.e, align 8, !tbaa !32
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 92
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = load float, ptr %i.h, align 4, !tbaa !20 ; 2 uses
  %i.j = load float, ptr %.sroa.5.0..sroa_idx, align 4, !tbaa !20
  %i.k = load float, ptr %1, align 4, !tbaa !20   ; 3 uses
  %i.l = load float, ptr %i.g, align 4, !tbaa !20 ; 2 uses
  %i.m = fmul float %i.l, 0.000000e+00            ; 2 uses
  %i.n = fadd float %i.k, %i.m
  %i.o = tail call float @llvm.fmuladd.f32(float %i.j, float %i.k, float %i.l)
  %i.p = insertelement <2 x float> poison, float %i.i, i64 0
  %i.q = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> zeroinitializer
  %i.r = insertelement <2 x float> poison, float %i.n, i64 0
  %i.s = insertelement <2 x float> %i.r, float %i.o, i64 1
  %i.t = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.q, <2 x float> zeroinitializer, <2 x float> %i.s)
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.v = load float, ptr %i.u, align 8, !tbaa !20
  %i.w = tail call float @llvm.fmuladd.f32(float %i.v, float %i.k, float %i.m)
  %i.x = fadd float %i.i, %i.w
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.x, i64 0
  store <2 x float> %i.t, ptr %i.f, align 4
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 100
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.5.0..sroa_idx.i, align 4, !tbaa !26
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #14
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>, ptr %3, align 16, !tbaa !20
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  store <2 x float> splat (float f0xDD5E0B6B), ptr %4, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> <float f0xDD5E0B6B, float 0.000000e+00>, ptr %i.y, align 8
  %i.z = load ptr, ptr %0, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 128
  %i.ab = load ptr, ptr %i.aa, align 8
  invoke void %i.ab(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull %2, ptr noundef nonnull align 4 dereferenceable(16) %4, ptr noundef nonnull align 4 dereferenceable(16) %3)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  %.sroa.0.0.copyload.i = load <2 x float>, ptr %i.b, align 8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.2.0.copyload.i = load <2 x float>, ptr %.sroa.2.0..sroa_idx.i, align 8, !tbaa !26
  %.fca.0.insert.i3 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %.sroa.0.0.copyload.i, 0
  %.fca.1.insert.i4 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i3, <2 x float> %.sroa.2.0.copyload.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i4

bb.c:                                             ; preds = %bb.a
  %i.ac = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #14
  call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  resume { ptr, i32 } %i.ac
}

; Function Attrs: nounwind
declare void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

declare void @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 4 dereferenceable(16), ptr noundef nonnull align 4 dereferenceable(4)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape20getAngularMotionDiscEv(ptr noundef nonnull align 8 dereferenceable(32)) unnamed_addr #1

declare noundef float @_ZNK16btCollisionShape27getContactBreakingThresholdEf(ptr noundef nonnull align 8 dereferenceable(32), float noundef) unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZNK19btTriangleMeshShape7getNameEv(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  ret ptr @.str
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK16btCollisionShape38getAnisotropicRollingFrictionDirectionEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret { <2 x float>, <2 x float> } { <2 x float> splat (float 1.000000e+00), <2 x float> <float 1.000000e+00, float 0.000000e+00> }
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN14btConcaveShape9setMarginEf(ptr noundef nonnull align 8 dereferenceable(36) %0, float noundef %1) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %1, ptr %i.a, align 8, !tbaa !22
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef float @_ZNK14btConcaveShape9getMarginEv(ptr noundef nonnull align 8 dereferenceable(36) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load float, ptr %i.a, align 8, !tbaa !22
  ret float %i.b
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK16btCollisionShape28calculateSerializeBufferSizeEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  ret i32 16
}

declare noundef ptr @_ZNK16btCollisionShape9serializeEPvP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZNK16btCollisionShape20serializeSingleShapeEP12btSerializer(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef) unnamed_addr #1

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local { <2 x float>, <2 x float> } @_ZNK19btTriangleMeshShape37localGetSupportingVertexWithoutMarginERK9btVector3(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %1) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 136
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call { <2 x float>, <2 x float> } %i.c(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 4 dereferenceable(16) %1)
  ret { <2 x float>, <2 x float> } %i.d
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #11

; Function Attrs: inlinehint mustprogress nounwind uwtable
define internal void @_ZZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN16FilteredCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(48) %0) unnamed_addr #8 align 2 {
bb.a:
  tail call void @_ZN31btInternalTriangleIndexCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 48) #16
  ret void
}

; Function Attrs: mustprogress uwtable
define internal void @_ZZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_EN16FilteredCallback28internalProcessTriangleIndexEPS2_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.d = load float, ptr %1, align 4, !tbaa !20   ; 4 uses
  %i.e = load float, ptr %i.b, align 4, !tbaa !20 ; 4 uses
  %i.f = fcmp olt float %i.d, %i.e
  %i.g = select i1 %i.f, float %i.d, float %i.e   ; 2 uses
  %i.h = load float, ptr %i.c, align 4, !tbaa !20 ; 4 uses
  %i.i = fcmp olt float %i.g, %i.h
  %i.j = select i1 %i.i, float %i.g, float %i.h
  %i.k = load float, ptr %i.a, align 8, !tbaa !20
  %i.l = fcmp ogt float %i.j, %i.k
  br i1 %i.l, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = fcmp ogt float %i.d, %i.e
  %i.o = select i1 %i.n, float %i.d, float %i.e   ; 2 uses
  %i.p = fcmp ogt float %i.o, %i.h
  %4 = select i1 %i.p, float %i.o, float %i.h
  %i.q = load float, ptr %i.m, align 8, !tbaa !20
  %i.r = fcmp olt float %4, %i.q
  br i1 %i.r, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.u = load float, ptr %i.s, align 4, !tbaa !20 ; 4 uses
  %i.v = load float, ptr %i.t, align 4, !tbaa !20 ; 4 uses
  %i.w = fcmp olt float %i.u, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.y = select i1 %i.w, float %i.u, float %i.v   ; 2 uses
  %i.z = load float, ptr %i.x, align 4, !tbaa !20 ; 4 uses
  %i.aa = fcmp olt float %i.y, %i.z
  %i.ab = select i1 %i.aa, float %i.y, float %i.z
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ad = load float, ptr %i.ac, align 8, !tbaa !20
  %i.ae = fcmp ogt float %i.ab, %i.ad
  br i1 %i.ae, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.af = fcmp ogt float %i.u, %i.v
  %i.ag = select i1 %i.af, float %i.u, float %i.v ; 2 uses
  %i.ah = fcmp ogt float %i.ag, %i.z
  %5 = select i1 %i.ah, float %i.ag, float %i.z
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load float, ptr %i.ai, align 8, !tbaa !20
  %i.ak = fcmp olt float %5, %i.aj
  br i1 %i.ak, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.an = load float, ptr %i.al, align 4, !tbaa !20 ; 4 uses
  %i.ao = load float, ptr %i.am, align 4, !tbaa !20 ; 4 uses
  %i.ap = fcmp olt float %i.an, %i.ao
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ar = select i1 %i.ap, float %i.an, float %i.ao ; 2 uses
  %i.as = load float, ptr %i.aq, align 4, !tbaa !20 ; 4 uses
  %i.at = fcmp olt float %i.ar, %i.as
  %i.au = select i1 %i.at, float %i.ar, float %i.as
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.aw = load float, ptr %i.av, align 4, !tbaa !20
  %i.ax = fcmp ogt float %i.au, %i.aw
  br i1 %i.ax, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit

_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit: ; preds = %bb.e
  %i.ay = fcmp ogt float %i.an, %i.ao
  %i.az = select i1 %i.ay, float %i.an, float %i.ao ; 2 uses
  %i.ba = fcmp ogt float %i.az, %i.as
  %6 = select i1 %i.ba, float %i.az, float %i.as
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !20
  %i.bd = fcmp uge float %6, %i.bc
  br i1 %i.bd, label %bb.f, label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread

bb.f:                                             ; preds = %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !28 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !9
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bi = load ptr, ptr %i.bh, align 8
  tail call void %i.bi(ptr noundef nonnull align 8 dereferenceable(8) %i.bf, ptr noundef nonnull %1, i32 noundef %2, i32 noundef %3)
  br label %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread

_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit.thread: ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e, %bb.f, %_Z24TestTriangleAgainstAabb2PK9btVector3RS0_S2_.exit
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21SupportVertexCallbackD0Ev(ptr noundef nonnull align 8 dereferenceable(108) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  tail call void @_ZN18btTriangleCallbackD2Ev(ptr noundef nonnull align 8 dead_on_return(108) dereferenceable(108) %0) #14
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 112) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN21SupportVertexCallback15processTriangleEP9btVector3ii(ptr noundef nonnull align 8 dereferenceable(108) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 92
  %i.b = load float, ptr %i.a, align 4, !tbaa !20 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.d = load float, ptr %i.c, align 8, !tbaa !20 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 100
  %i.f = load float, ptr %i.e, align 4, !tbaa !20 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %.promoted = load float, ptr %i.g, align 8, !tbaa !32 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.i = load float, ptr %1, align 4, !tbaa !20
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.k = load float, ptr %i.j, align 4, !tbaa !20
  %i.l = fmul float %i.d, %i.k
  %i.m = tail call float @llvm.fmuladd.f32(float %i.b, float %i.i, float %i.l)
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load float, ptr %i.n, align 4, !tbaa !20
  %i.p = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.o, float %i.m) ; 3 uses
  %i.q = fcmp ogt float %i.p, %.promoted
  br i1 %i.q, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %i.p, ptr %i.g, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !27
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.r = phi float [ %i.p, %bb.b ], [ %.promoted, %bb.a ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.t = load float, ptr %i.s, align 4, !tbaa !20
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.v = load float, ptr %i.u, align 4, !tbaa !20
  %i.w = fmul float %i.d, %i.v
  %i.x = tail call float @llvm.fmuladd.f32(float %i.b, float %i.t, float %i.w)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.z = load float, ptr %i.y, align 4, !tbaa !20
  %i.aa = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.z, float %i.x) ; 3 uses
  %i.ab = fcmp ogt float %i.aa, %i.r
  br i1 %i.ab, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.aa, ptr %i.g, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !27
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ac = phi float [ %i.aa, %bb.d ], [ %i.r, %bb.c ]
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !20
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 36
  %i.ag = load float, ptr %i.af, align 4, !tbaa !20
  %i.ah = fmul float %i.d, %i.ag
  %i.ai = tail call float @llvm.fmuladd.f32(float %i.b, float %i.ae, float %i.ah)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !20
  %i.al = tail call noundef float @llvm.fmuladd.f32(float %i.f, float %i.ak, float %i.ai) ; 2 uses
  %i.am = fcmp ogt float %i.al, %i.ac
  br i1 %i.am, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.al, ptr %i.g, align 8, !tbaa !32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !27
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #11

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { cold nofree noreturn }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
!9 = !{!10, !10, i64 0}
!10 = !{!"vtable pointer", !8, i64 0}
!11 = !{!12, !18, i64 72}
!12 = !{!"_ZTS19btTriangleMeshShape", !13, i64 0, !17, i64 36, !17, i64 52, !18, i64 72}
!13 = !{!"_ZTS14btConcaveShape", !14, i64 0, !16, i64 32}
!14 = !{!"_ZTS16btCollisionShape", !6, i64 8, !15, i64 16, !6, i64 24, !6, i64 28}
!15 = !{!"any pointer", !7, i64 0}
!16 = !{!"float", !7, i64 0}
!17 = !{!"_ZTS9btVector3", !7, i64 0}
!18 = !{!"p1 _ZTS23btStridingMeshInterface", !15, i64 0}
!19 = !{!14, !6, i64 8}
!20 = !{!16, !16, i64 0}
!21 = !{ptr @_ZN19btTriangleMeshShape15recalcLocalAabbEv}
!22 = !{!13, !16, i64 32}
!23 = !{!24}
!24 = distinct !{!24, !25, !"_ZNK11btMatrix3x38absoluteEv: argument 0"}
!25 = distinct !{!25, !"_ZNK11btMatrix3x38absoluteEv"}
!26 = !{!7, !7, i64 0}
!27 = !{i64 0, i64 16, !26}
!28 = !{!29, !31, i64 8}
!29 = !{!"_ZTSZNK19btTriangleMeshShape19processAllTrianglesEP18btTriangleCallbackRK9btVector3S4_E16FilteredCallback", !30, i64 0, !31, i64 8, !17, i64 16, !17, i64 32}
!30 = !{!"_ZTS31btInternalTriangleIndexCallback"}
!31 = !{!"p1 _ZTS18btTriangleCallback", !15, i64 0}
!32 = !{!33, !16, i64 88}
!33 = !{!"_ZTS21SupportVertexCallback", !34, i64 0, !17, i64 8, !35, i64 24, !16, i64 88, !17, i64 92}
!34 = !{!"_ZTS18btTriangleCallback"}
!35 = !{!"_ZTS11btTransform", !36, i64 0, !17, i64 48}
!36 = !{!"_ZTS11btMatrix3x3", !7, i64 0}
end_hunk_0
