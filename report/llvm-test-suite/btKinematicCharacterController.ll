Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btKinematicCharacterController?download=true
inline.NumInlined: 210
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_ZN30btKinematicCharacterController10playerStepEP16btCollisionWorldf:bb.a
  %or.cond = select i1 %i.c, i1 true, i1 %i.f
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !31   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 4 dereferenceable(64) %i.i, i64 16, i1 false), !tbaa.struct !46
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.k, ptr noundef nonnull align 4 dereferenceable(16) %i.j, i64 16, i1 false), !tbaa.struct !46
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.m, ptr noundef nonnull align 4 dereferenceable(16) %i.l, i64 16, i1 false), !tbaa.struct !46
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  tail call void @_ZN30btKinematicCharacterController6stepUpEP16btCollisionWorld(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1)
  %i.o = load i8, ptr %i.a, align 1, !tbaa !34, !range !36, !noundef !47
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %i.q)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.r = load float, ptr %i.d, align 8, !tbaa !35 ; 3 uses
  %i.s = fcmp olt float %2, %i.r
  %. = select i1 %i.s, float %2, float %i.r       ; 2 uses
  %i.t = fsub float %i.r, %2
  store float %i.t, ptr %i.d, align 8, !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load <2 x float>, ptr %i.u, align 8, !tbaa !9
  %i.w = insertelement <2 x float> poison, float %., i64 0
  %i.x = shufflevector <2 x float> %i.w, <2 x float> poison, <2 x i32> zeroinitializer
  %i.y = fmul <2 x float> %i.x, %i.v
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.aa = load float, ptr %i.z, align 8, !tbaa !9
  %i.ab = fmul float %., %i.aa
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ab, i64 0
  store <2 x float> %i.y, ptr %4, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %4, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %i.ac, align 8
  call void @_ZN30btKinematicCharacterController20stepForwardAndStrafeEP16btCollisionWorldRK9btVector3(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  tail call void @_ZN30btKinematicCharacterController8stepDownEP16btCollisionWorldf(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, float poison)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !46
  %i.ae = load ptr, ptr %i.g, align 8, !tbaa !31  ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.af, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !46
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ag, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !46
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !46
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ae, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 4 dereferenceable(16) %i.n, i64 16, i1 false), !tbaa.struct !46
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController12setFallSpeedEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(192) initializes((32, 36)) %0, float noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %1, ptr %i.a, align 8, !tbaa !89
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController12setJumpSpeedEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(192) initializes((36, 40)) %0, float noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %1, ptr %i.a, align 4, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN30btKinematicCharacterController16setMaxJumpHeightEf(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(192) initializes((40, 44)) %0, float noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %1, ptr %i.a, align 8, !tbaa !91
  ret void
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZNK30btKinematicCharacterController7canJumpEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(192) %0)
  ret i1 %i.d
}

; Function Attrs: uwtable
define dso_local void @_ZN30btKinematicCharacterController4jumpEv(ptr noundef nonnull align 8 dereferenceable(192) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 8 dereferenceable(192) %0) ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZNK30btKinematicCharacterController8onGroundEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #10 align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN30btKinematicCharacterController9debugDrawEP12btIDebugDraw(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1) unnamed_addr #10 align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN30btKinematicCharacterController12updateActionEP16btCollisionWorldf(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1, float noundef %2) unnamed_addr #3 comdat align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(192) %0, ptr noundef %1)
  %i.d = load ptr, ptr %0, align 8, !tbaa !11
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
  %i.b = load i16, ptr %i.a, align 8, !tbaa !93
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
  %i.a = load ptr, ptr %1, align 8, !tbaa !99     ; 9 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !55
  %i.d = icmp eq ptr %i.a, %i.c
  br i1 %i.d, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !100
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store float %i.f, ptr %i.g, align 8, !tbaa !50
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.a, ptr %i.h, align 8, !tbaa !53
  br i1 %2, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !46
  br label %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = load float, ptr %i.m, align 4, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.q = load float, ptr %i.p, align 4, !tbaa !9
  %i.r = load <2 x float>, ptr %i.k, align 4, !tbaa !9 ; 2 uses
  %3 = load <3 x float>, ptr %i.l, align 8, !tbaa !9 ; 5 uses
  %i.s = load float, ptr %i.l, align 8, !tbaa !9
  %i.t = load <2 x float>, ptr %i.o, align 4, !tbaa !9 ; 2 uses
  %4 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.u = shufflevector <2 x float> %i.r, <2 x float> %i.t, <2 x i32> <i32 1, i32 3>
  %i.v = fmul <2 x float> %4, %i.u
  %i.w = shufflevector <2 x float> %i.r, <2 x float> %i.t, <2 x i32> <i32 0, i32 2>
  %i.x = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.x, <2 x float> %i.v)
  %i.z = insertelement <2 x float> poison, float %i.n, i64 0
  %i.aa = insertelement <2 x float> %i.z, float %i.q, i64 1
  %5 = shufflevector <3 x float> %3, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ab = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aa, <2 x float> %5, <2 x float> %i.y)
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.af = load float, ptr %i.ae, align 4, !tbaa !9
  %6 = extractelement <3 x float> %3, i64 1
  %i.ag = fmul float %6, %i.af
  %i.ah = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.s, float %i.ag)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.aj = load float, ptr %i.ai, align 4, !tbaa !9
  %7 = extractelement <3 x float> %3, i64 2
  %i.ak = tail call noundef float @llvm.fmuladd.f32(float %i.aj, float %7, float %i.ah)
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ak, i64 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <2 x float> %i.ab, ptr %i.al, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !45
  br label %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit

_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit: ; preds = %bb.c, %bb.d
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.an, ptr noundef nonnull align 8 dereferenceable(16) %i.am, i64 16, i1 false), !tbaa.struct !46
  %i.ao = load float, ptr %i.e, align 8, !tbaa !100
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit
  %.0 = phi float [ %i.ao, %_ZN16btCollisionWorld27ClosestConvexResultCallback15addSingleResultERNS_17LocalConvexResultEb.exit ], [ 1.000000e+00, %bb.a ]
  ret float %.0
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #12

attributes #0 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #15 = { builtin nounwind }
attributes #16 = { nounwind }

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
!8 = !{!"float", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"vtable pointer", !4, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"_ZTS18btAlignedAllocatorIP20btPersistentManifoldLj16EE"}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!"any p2 pointer", !13, i64 0}
!15 = !{!"p2 _ZTS20btPersistentManifold", !14, i64 0}
!16 = !{!"bool", !5, i64 0}
!17 = !{!"_ZTS20btAlignedObjectArrayIP20btPersistentManifoldE", !12, i64 0, !6, i64 4, !6, i64 8, !15, i64 16, !16, i64 24}
!18 = !{!17, !16, i64 24}
!19 = !{!17, !15, i64 16}
!20 = !{!17, !6, i64 4}
!21 = !{!17, !6, i64 8}
!22 = !{!"_ZTS17btActionInterface"}
!23 = !{!"_ZTS30btCharacterControllerInterface", !22, i64 0}
!24 = !{!"p1 _ZTS24btPairCachingGhostObject", !13, i64 0}
!25 = !{!"p1 _ZTS13btConvexShape", !13, i64 0}
!26 = !{!"_ZTS9btVector3", !5, i64 0}
!27 = !{!"_ZTS30btKinematicCharacterController", !23, i64 0, !8, i64 8, !24, i64 16, !25, i64 24, !8, i64 32, !8, i64 36, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !26, i64 56, !26, i64 72, !26, i64 88, !8, i64 104, !26, i64 108, !17, i64 128, !16, i64 160, !26, i64 164, !16, i64 180, !16, i64 181, !8, i64 184, !6, i64 188}
!28 = !{!27, !6, i64 188}
!29 = !{!27, !8, i64 52}
!30 = !{!27, !16, i64 180}
!31 = !{!27, !24, i64 16}
!32 = !{!27, !8, i64 48}
!33 = !{!27, !25, i64 24}
!34 = !{!27, !16, i64 181}
!35 = !{!27, !8, i64 184}
!36 = !{i8 0, i8 2}
!37 = !{!"p1 _ZTS12btIDebugDraw", !13, i64 0}
!38 = !{!"p1 _ZTS12btStackAlloc", !13, i64 0}
!39 = !{!"_ZTS16btDispatcherInfo", !8, i64 0, !6, i64 4, !6, i64 8, !8, i64 12, !16, i64 16, !37, i64 24, !16, i64 32, !16, i64 33, !16, i64 34, !8, i64 36, !16, i64 40, !8, i64 44, !38, i64 48}
!40 = !{!"_ZTS11btMatrix3x3", !5, i64 0}
!41 = !{!"_ZTS11btTransform", !40, i64 0, !26, i64 48}
!42 = !{!"p1 _ZTS17btBroadphaseProxy", !13, i64 0}
!43 = !{!"p1 _ZTS16btCollisionShape", !13, i64 0}
!44 = !{!"_ZTS17btCollisionObject", !41, i64 8, !41, i64 72, !26, i64 136, !26, i64 152, !26, i64 168, !16, i64 184, !8, i64 188, !42, i64 192, !43, i64 200, !43, i64 208, !6, i64 216, !6, i64 220, !6, i64 224, !6, i64 228, !8, i64 232, !8, i64 236, !8, i64 240, !13, i64 248, !6, i64 256, !8, i64 260, !8, i64 264, !8, i64 268, !16, i64 272, !5, i64 273}
!45 = !{!5, !5, i64 0}
!46 = !{i64 0, i64 16, !45}
!47 = !{}
!48 = !{!"short", !5, i64 0}
!49 = !{!"_ZTSN16btCollisionWorld20ConvexResultCallbackE", !8, i64 8, !48, i64 12, !48, i64 14}
!50 = !{!49, !8, i64 8}
!51 = !{!"p1 _ZTS17btCollisionObject", !13, i64 0}
!52 = !{!"_ZTSN16btCollisionWorld27ClosestConvexResultCallbackE", !49, i64 0, !26, i64 16, !26, i64 32, !26, i64 48, !26, i64 64, !51, i64 80}
!53 = !{!52, !51, i64 80}
!54 = !{!"_ZTS43btKinematicClosestNotMeConvexResultCallback", !52, i64 0, !51, i64 88}
!55 = !{!54, !51, i64 88}
!56 = !{!44, !42, i64 192}
!57 = !{!48, !48, i64 0}
!58 = !{!39, !8, i64 36}
!59 = !{!27, !16, i64 160}
!60 = !{!27, !8, i64 44}
!61 = !{ptr @_ZN30btKinematicCharacterControllerD2Ev}
!62 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!63 = !{!"p2 _ZTS17btCollisionObject", !14, i64 0}
!64 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !62, i64 0, !6, i64 4, !6, i64 8, !63, i64 16, !16, i64 24}
!65 = !{!"p1 _ZTS12btDispatcher", !13, i64 0}
!66 = !{!"p1 _ZTS21btBroadphaseInterface", !13, i64 0}
!67 = !{!"_ZTS16btCollisionWorld", !64, i64 8, !65, i64 40, !39, i64 48, !38, i64 104, !66, i64 112, !37, i64 120, !16, i64 128}
!68 = !{!67, !65, i64 40}
!69 = !{!"_ZTS13btGhostObject", !44, i64 0, !64, i64 280}
!70 = !{!"p1 _ZTS28btHashedOverlappingPairCache", !13, i64 0}
!71 = !{!"_ZTS24btPairCachingGhostObject", !69, i64 0, !70, i64 312}
!72 = !{!71, !70, i64 312}
!73 = !{!"p1 _ZTS20btPersistentManifold", !13, i64 0}
!74 = !{!73, !73, i64 0}
!75 = !{!"_ZTS18btAlignedAllocatorI16btBroadphasePairLj16EE"}
!76 = !{!"p1 _ZTS16btBroadphasePair", !13, i64 0}
!77 = !{!"_ZTS20btAlignedObjectArrayI16btBroadphasePairE", !75, i64 0, !6, i64 4, !6, i64 8, !76, i64 16, !16, i64 24}
!78 = !{!77, !76, i64 16}
!79 = !{!"p1 _ZTS20btCollisionAlgorithm", !13, i64 0}
!80 = !{!"_ZTS16btBroadphasePair", !42, i64 0, !42, i64 8, !79, i64 16, !5, i64 24}
!81 = !{!80, !79, i64 16}
!82 = !{!"_ZTS13btTypedObject", !6, i64 0}
!83 = !{!"_ZTS20btPersistentManifold", !82, i64 0, !5, i64 8, !13, i64 712, !13, i64 720, !6, i64 728, !8, i64 732, !8, i64 736, !6, i64 740}
!84 = !{!83, !13, i64 712}
!85 = !{!83, !6, i64 728}
!86 = !{!"_ZTS15btManifoldPoint", !26, i64 0, !26, i64 16, !26, i64 32, !26, i64 48, !26, i64 64, !8, i64 80, !8, i64 84, !8, i64 88, !6, i64 92, !6, i64 96, !6, i64 100, !6, i64 104, !13, i64 112, !8, i64 120, !16, i64 124, !8, i64 128, !8, i64 132, !6, i64 136, !26, i64 140, !26, i64 156}
!87 = !{!86, !8, i64 80}
!88 = !{!27, !8, i64 104}
!89 = !{!27, !8, i64 32}
!90 = !{!27, !8, i64 36}
!91 = !{!27, !8, i64 40}
!92 = !{!"_ZTS17btBroadphaseProxy", !13, i64 0, !48, i64 8, !48, i64 10, !13, i64 16, !6, i64 24, !26, i64 28, !26, i64 44}
!93 = !{!92, !48, i64 8}
!94 = !{!49, !48, i64 14}
!95 = !{!49, !48, i64 12}
!96 = !{!92, !48, i64 10}
!97 = !{!"p1 _ZTSN16btCollisionWorld14LocalShapeInfoE", !13, i64 0}
!98 = !{!"_ZTSN16btCollisionWorld17LocalConvexResultE", !51, i64 0, !97, i64 8, !26, i64 16, !26, i64 32, !8, i64 48}
!99 = !{!98, !51, i64 0}
!100 = !{!98, !8, i64 48}
end_hunk_0
