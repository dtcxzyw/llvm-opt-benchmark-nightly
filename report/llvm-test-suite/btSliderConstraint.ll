Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btSliderConstraint?download=true
inline.NumInlined: 530
inline.NumDeleted: 98
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_ZSt9terminatev
; Function Attrs: uwtable
define dso_local void @_ZN18btSliderConstraintC2ER11btRigidBodyS1_RK11btTransformS4_b(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, i1 noundef zeroext %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  %i.a = zext i1 %5 to i8
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr noundef nonnull align 8 dereferenceable(564) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV18btSliderConstraint, i64 16), ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 100
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !26
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 116
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !26
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 132
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 164
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.j, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 16, i1 false), !tbaa.struct !26
  %i.k = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !26
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 196
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !26
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.o, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !26
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i8 %i.a, ptr %i.q, align 4, !tbaa !24
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 232
  store <4 x float> <float 1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.r, align 8, !tbaa !9
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 248
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 0.000000e+00, float 1.000000e+00>, ptr %i.s, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 1.000000e+00, float 1.000000e+00>, ptr %i.u, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 312
  store <2 x float> <float f0x3F333333, float 1.000000e+00>, ptr %i.v, align 8, !tbaa !9
  store <4 x float> <float f0x3F333333, float 0.000000e+00, float 1.000000e+00, float f0x3F333333>, ptr %i.t, align 8, !tbaa !9
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 280
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float f0x3F333333, float 1.000000e+00>, ptr %i.w, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 1116
  store i8 0, ptr %i.x, align 4, !tbaa !19
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store <2 x float> zeroinitializer, ptr %i.z, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store float 0.000000e+00, ptr %i.aa, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.y, i8 0, i64 13, i1 false)
  ret void
}

declare void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96), i32 noundef, ptr noundef nonnull align 8 dereferenceable(564), ptr noundef nonnull align 8 dereferenceable(564)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #5

declare void @_ZN11btRigidBodyC1EfP13btMotionStateP16btCollisionShapeRK9btVector3(ptr noundef nonnull align 8 dereferenceable(564), float noundef, ptr noundef, ptr noundef, ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #5

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN11btRigidBodyD2Ev(ptr noundef nonnull align 8 dereferenceable(564) %0) unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV11btRigidBody, i64 16), ptr %0, align 8, !tbaa !22
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 536
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 544
  %i.d = load i8, ptr %i.c, align 8, !range !31
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit unwind label %bb.c

_ZN20btAlignedObjectArrayIP17btTypedConstraintED2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280) %0)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.f

bb.e:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #21
  unreachable
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #6

; Function Attrs: uwtable
define dso_local void @_ZN18btSliderConstraintC2ER11btRigidBodyRK11btTransformb(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr noundef nonnull align 8 dereferenceable(564) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, i1 noundef zeroext %3) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
.preheader.preheader:
  %i.a = zext i1 %3 to i8
  tail call void @_ZN17btTypedConstraintC2E21btTypedConstraintTypeR11btRigidBodyS2_(ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 7, ptr noundef nonnull align 8 dereferenceable(564) @_ZL7s_fixed, ptr noundef nonnull align 8 dereferenceable(564) %1)
  store ptr getelementptr inbounds nuw inrange(-16, 56) (i8, ptr @_ZTV18btSliderConstraint, i64 16), ptr %0, align 8, !tbaa !22
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i8 0, ptr %i.b, align 8, !tbaa !23
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 164
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !26
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 180
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !26
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 196
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !26
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 212
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i8 %i.a, ptr %i.j, align 4, !tbaa !24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 232
  store <4 x float> <float 1.000000e+00, float -1.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.k, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 0.000000e+00, float 1.000000e+00>, ptr %i.l, align 8, !tbaa !9
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 296
  store <4 x float> <float 1.000000e+00, float f0x3F333333, float 1.000000e+00, float 1.000000e+00>, ptr %i.n, align 8, !tbaa !9
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  store <2 x float> <float f0x3F333333, float 1.000000e+00>, ptr %i.o, align 8, !tbaa !9
  store <4 x float> <float f0x3F333333, float 0.000000e+00, float 1.000000e+00, float f0x3F333333>, ptr %i.m, align 8, !tbaa !9
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  store <4 x float> <float 1.000000e+00, float 1.000000e+00, float f0x3F333333, float 1.000000e+00>, ptr %i.p, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1116
  store i8 0, ptr %i.q, align 4, !tbaa !19
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1136
  store <2 x float> zeroinitializer, ptr %i.s, align 8, !tbaa !9
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 1144
  store float 0.000000e+00, ptr %i.t, align 8, !tbaa !20
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(13) %i.r, i8 0, i64 13, i1 false)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN18btSliderConstraint13buildJacobianEv(ptr noundef nonnull align 8 dereferenceable(1148) %0) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i8, ptr %i.a, align 8, !tbaa !23, !range !31, !noundef !32
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %.sink.split, label %bb.b

.sink.split:                                      ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.e = load i8, ptr %i.d, align 4, !tbaa !24, !range !31, !noundef !32
  %i.f = trunc nuw i8 %i.e to i1                  ; 4 uses
  %. = select i1 %i.f, i64 24, i64 32
  %.9 = select i1 %i.f, i64 32, i64 24
  %.10 = select i1 %i.f, i64 100, i64 164
  %.11 = select i1 %i.f, i64 164, i64 100
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 %.
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !64, !nonnull !32, !align !33
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 %.9
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64, !nonnull !32, !align !33
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 %.10
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 %.11
  tail call void @_ZN18btSliderConstraint16buildJacobianIntER11btRigidBodyS1_RK11btTransformS4_(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr noundef nonnull align 8 dereferenceable(564) %i.h, ptr noundef nonnull align 8 dereferenceable(564) %i.j, ptr noundef nonnull align 4 dereferenceable(64) %i.k, ptr noundef nonnull align 4 dereferenceable(64) %i.l)
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN18btSliderConstraint16buildJacobianIntER11btRigidBodyS1_RK11btTransformS4_(ptr nofree noundef nonnull align 8 dereferenceable(1148) initializes((844, 972)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(564) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(564) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4) local_unnamed_addr #7 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 20
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 36
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 44
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.r = load float, ptr %i.q, align 8, !tbaa !9, !noalias !81 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.v = load float, ptr %i.u, align 8, !tbaa !9, !noalias !82
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 844 ; 4 uses
  %.sroa.4169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 848
  %.sroa.5170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.x = load <2 x float>, ptr %i.a, align 8, !tbaa !9, !noalias !81 ; 4 uses
  %i.y = load <2 x float>, ptr %3, align 4, !tbaa !9, !noalias !81 ; 2 uses
  %i.z = load <2 x float>, ptr %i.b, align 4, !tbaa !9, !noalias !81 ; 3 uses
  %i.aa = load <2 x float>, ptr %i.d, align 4, !tbaa !9, !noalias !81 ; 2 uses
  %i.ab = shufflevector <2 x float> %i.z, <2 x float> %i.x, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.ac = insertelement <4 x float> %i.ab, float 0.000000e+00, i64 3
  %i.ad = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ae = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ad, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.af = shufflevector <2 x float> %i.z, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ag = shufflevector <4 x float> %i.ae, <4 x float> %i.af, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.ah = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ai = insertelement <4 x float> %i.ah, float 0.000000e+00, i64 3
  %i.aj = shufflevector <2 x float> %i.x, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ak = shufflevector <2 x float> %i.aa, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.al = insertelement <4 x float> %i.ak, float 0.000000e+00, i64 3
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 860 ; 4 uses
  %.sroa.9173.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 864
  %.sroa.10174.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.an = load <2 x float>, ptr %i.l, align 8, !tbaa !9, !noalias !81 ; 3 uses
  %i.ao = load <2 x float>, ptr %i.g, align 4, !tbaa !9, !noalias !81 ; 2 uses
  %i.ap = load float, ptr %i.j, align 4, !tbaa !9, !noalias !81
  %i.aq = load <2 x float>, ptr %i.f, align 4, !tbaa !9, !noalias !81 ; 2 uses
  %i.ar = load float, ptr %i.i, align 4, !tbaa !9, !noalias !81
  %i.as = load <2 x float>, ptr %i.h, align 4, !tbaa !9, !noalias !81 ; 2 uses
  %i.at = load float, ptr %i.k, align 4, !tbaa !9, !noalias !81
  %5 = load <3 x float>, ptr %i.s, align 4, !tbaa !9, !noalias !82 ; 5 uses
  %i.au = load float, ptr %i.s, align 4, !tbaa !9, !noalias !82
  %i.av = load <2 x float>, ptr %i.t, align 8, !tbaa !9, !noalias !82
  %i.aw = load <2 x float>, ptr %i.c, align 4, !tbaa !9, !noalias !81 ; 3 uses
  %i.ax = shufflevector <2 x float> %i.aw, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ay = shufflevector <4 x float> %i.ax, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.az = load <2 x float>, ptr %i.m, align 4, !tbaa !9, !noalias !81 ; 3 uses
  %i.ba = shufflevector <2 x float> %i.aw, <2 x float> %i.az, <2 x i32> <i32 0, i32 2>
  %6 = shufflevector <3 x float> %5, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bb = fmul <2 x float> %i.ba, %6
  %i.bc = shufflevector <2 x float> %i.x, <2 x float> %i.an, <2 x i32> <i32 0, i32 2>
  %i.bd = shufflevector <3 x float> %5, <3 x float> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bc, <2 x float> %i.bd, <2 x float> %i.bb)
  %i.bf = shufflevector <2 x float> %i.aw, <2 x float> %i.az, <2 x i32> <i32 1, i32 3>
  %7 = shufflevector <3 x float> %5, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %7, <2 x float> %i.be)
  %i.bh = fadd <2 x float> %i.av, %i.bg
  %i.bi = shufflevector <2 x float> %i.ao, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bj = shufflevector <4 x float> %i.ag, <4 x float> %i.bi, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bk = fmul <4 x float> %i.ac, %i.bj
  %i.bl = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bm = shufflevector <4 x float> %i.ai, <4 x float> %i.bl, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bm, <4 x float> %i.aj, <4 x float> %i.bk)
  %i.bo = shufflevector <2 x float> %i.as, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.bp = shufflevector <4 x float> %i.al, <4 x float> %i.bo, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.bq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bp, <4 x float> %i.ay, <4 x float> %i.bn) ; 4 uses
  %i.br = shufflevector <2 x float> %i.an, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bs = shufflevector <2 x float> %i.z, <2 x float> %i.ao, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.bt = insertelement <4 x float> %i.bs, float 1.000000e+00, i64 3 ; 2 uses
  %i.bu = fmul <4 x float> %i.br, %i.bt
  %i.bv = shufflevector <2 x float> %i.y, <2 x float> %i.aq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.bw = insertelement <4 x float> %i.bv, float 0.000000e+00, i64 3 ; 2 uses
  %i.bx = shufflevector <2 x float> %i.an, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.by = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.bw, <4 x float> %i.bx, <4 x float> %i.bu)
  %i.bz = shufflevector <2 x float> %i.aa, <2 x float> %i.as, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ca = insertelement <4 x float> %i.bz, float 0.000000e+00, i64 3 ; 2 uses
  %i.cb = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cc = shufflevector <4 x float> %i.cb, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ca, <4 x float> %i.cc, <4 x float> %i.by) ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 876 ; 4 uses
  %.sroa.14177.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 880
  %.sroa.15178.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.cf = load <2 x float>, ptr %i.o, align 8, !tbaa !9, !noalias !81 ; 4 uses
  %i.cg = load float, ptr %i.p, align 4, !tbaa !9, !noalias !81
  %8 = extractelement <3 x float> %5, i64 1
  %i.ch = fmul float %i.cg, %8
  %i.ci = extractelement <2 x float> %i.cf, i64 0
  %i.cj = tail call float @llvm.fmuladd.f32(float %i.ci, float %i.au, float %i.ch)
  %9 = extractelement <3 x float> %5, i64 2
  %i.ck = tail call noundef float @llvm.fmuladd.f32(float %i.r, float %9, float %i.cj)
  %i.cl = fadd float %i.ck, %i.v
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cl, i64 0
  %i.cm = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.cn = insertelement <4 x float> %i.cm, float 0.000000e+00, i64 3
  %i.co = insertelement <4 x float> %i.cn, float %i.ap, i64 2
  %i.cp = shufflevector <2 x float> %i.cf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cq = shufflevector <4 x float> %i.bt, <4 x float> %i.cp, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.cr = fmul <4 x float> %i.co, %i.cq
  %i.cs = insertelement <4 x float> %i.bw, float %i.ar, i64 2
  %i.ct = shufflevector <2 x float> %i.cf, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cs, <4 x float> %i.ct, <4 x float> %i.cr)
  %i.cv = insertelement <4 x float> %i.ca, float %i.at, i64 2
  %i.cw = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.r, i64 0
  %i.cx = shufflevector <4 x float> %i.cw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cv, <4 x float> %i.cx, <4 x float> %i.cu) ; 3 uses
  store <4 x float> %i.bq, ptr %i.w, align 4
  store <4 x float> %i.cd, ptr %i.am, align 4
  store <4 x float> %i.cy, ptr %i.ce, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 892 ; 2 uses
  store <2 x float> %i.bh, ptr %i.cz, align 4
  %.sroa.19181.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 900
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %.sroa.19181.48..sroa_idx, align 4, !tbaa !25
  %i.da = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 5 uses
  %i.db = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.dc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.dd = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.de = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.df = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.dg = getelementptr inbounds nuw i8, ptr %4, i64 20
  %i.dh = getelementptr inbounds nuw i8, ptr %4, i64 36
  %i.di = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.dj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.dk = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.dl = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.dn = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 4 uses
  %i.do = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 5 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %2, i64 44
  %i.dq = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 5 uses
  %i.dr = load float, ptr %i.dq, align 8, !tbaa !9, !noalias !83 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.dv = load float, ptr %i.du, align 8, !tbaa !9, !noalias !84
  %i.dw = getelementptr inbounds nuw i8, ptr %0, i64 908
  %.sroa.4160.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.dx = load <2 x float>, ptr %i.da, align 8, !tbaa !9, !noalias !83 ; 4 uses
  %i.dy = load <2 x float>, ptr %4, align 4, !tbaa !9, !noalias !83 ; 2 uses
  %i.dz = load <2 x float>, ptr %i.db, align 4, !tbaa !9, !noalias !83 ; 3 uses
  %i.ea = load <2 x float>, ptr %i.dd, align 4, !tbaa !9, !noalias !83 ; 2 uses
  %i.eb = shufflevector <2 x float> %i.dz, <2 x float> %i.dx, <4 x i32> <i32 0, i32 3, i32 3, i32 poison>
  %i.ec = insertelement <4 x float> %i.eb, float 0.000000e+00, i64 3
  %i.ed = shufflevector <2 x float> %i.dx, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ee = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ed, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.ef = shufflevector <2 x float> %i.dz, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eg = shufflevector <4 x float> %i.ee, <4 x float> %i.ef, <4 x i32> <i32 0, i32 5, i32 poison, i32 3>
  %i.eh = shufflevector <2 x float> %i.dy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ei = insertelement <4 x float> %i.eh, float 0.000000e+00, i64 3
  %i.ej = shufflevector <2 x float> %i.dx, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ek = shufflevector <2 x float> %i.ea, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.el = insertelement <4 x float> %i.ek, float 0.000000e+00, i64 3
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 924
  %.sroa.9164.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.en = load <2 x float>, ptr %i.dl, align 8, !tbaa !9, !noalias !83 ; 3 uses
  %i.eo = load <2 x float>, ptr %i.dg, align 4, !tbaa !9, !noalias !83 ; 2 uses
  %i.ep = load float, ptr %i.dj, align 4, !tbaa !9, !noalias !83
  %i.eq = load <2 x float>, ptr %i.df, align 4, !tbaa !9, !noalias !83 ; 2 uses
  %i.er = load float, ptr %i.di, align 4, !tbaa !9, !noalias !83
  %i.es = load <2 x float>, ptr %i.dh, align 4, !tbaa !9, !noalias !83 ; 2 uses
  %i.et = load float, ptr %i.dk, align 4, !tbaa !9, !noalias !83
  %10 = load <3 x float>, ptr %i.ds, align 4, !tbaa !9, !noalias !84 ; 5 uses
  %i.eu = load float, ptr %i.ds, align 4, !tbaa !9, !noalias !84
  %i.ev = load <2 x float>, ptr %i.dt, align 8, !tbaa !9, !noalias !84
  %i.ew = load <2 x float>, ptr %i.dc, align 4, !tbaa !9, !noalias !83 ; 3 uses
  %i.ex = shufflevector <2 x float> %i.ew, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ey = shufflevector <4 x float> %i.ex, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.ez = load <2 x float>, ptr %i.dm, align 4, !tbaa !9, !noalias !83 ; 3 uses
  %i.fa = shufflevector <2 x float> %i.ew, <2 x float> %i.ez, <2 x i32> <i32 0, i32 2>
  %11 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fb = fmul <2 x float> %i.fa, %11
  %i.fc = shufflevector <2 x float> %i.dx, <2 x float> %i.en, <2 x i32> <i32 0, i32 2>
  %i.fd = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> zeroinitializer
  %i.fe = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fc, <2 x float> %i.fd, <2 x float> %i.fb)
  %i.ff = shufflevector <2 x float> %i.ew, <2 x float> %i.ez, <2 x i32> <i32 1, i32 3>
  %12 = shufflevector <3 x float> %10, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %12, <2 x float> %i.fe)
  %i.fh = fadd <2 x float> %i.ev, %i.fg
  %i.fi = shufflevector <2 x float> %i.eo, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fj = shufflevector <4 x float> %i.eg, <4 x float> %i.fi, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fk = fmul <4 x float> %i.ec, %i.fj
  %i.fl = shufflevector <2 x float> %i.eq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fm = shufflevector <4 x float> %i.ei, <4 x float> %i.fl, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fm, <4 x float> %i.ej, <4 x float> %i.fk)
  %i.fo = shufflevector <2 x float> %i.es, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fp = shufflevector <4 x float> %i.el, <4 x float> %i.fo, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.fq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fp, <4 x float> %i.ey, <4 x float> %i.fn)
  %i.fr = shufflevector <2 x float> %i.en, <2 x float> <float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.fs = shufflevector <2 x float> %i.dz, <2 x float> %i.eo, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ft = insertelement <4 x float> %i.fs, float 1.000000e+00, i64 3 ; 2 uses
  %i.fu = fmul <4 x float> %i.fr, %i.ft
  %i.fv = shufflevector <2 x float> %i.dy, <2 x float> %i.eq, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.fw = insertelement <4 x float> %i.fv, float 0.000000e+00, i64 3 ; 2 uses
  %i.fx = shufflevector <2 x float> %i.en, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.fy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.fw, <4 x float> %i.fx, <4 x float> %i.fu)
  %i.fz = shufflevector <2 x float> %i.ea, <2 x float> %i.es, <4 x i32> <i32 0, i32 2, i32 3, i32 poison>
  %i.ga = insertelement <4 x float> %i.fz, float 0.000000e+00, i64 3 ; 2 uses
  %i.gb = shufflevector <2 x float> %i.ez, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.gd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ga, <4 x float> %i.gc, <4 x float> %i.fy)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 940
  %.sroa.14.32..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.gf = load <2 x float>, ptr %i.do, align 8, !tbaa !9, !noalias !83 ; 4 uses
  %i.gg = load float, ptr %i.dp, align 4, !tbaa !9, !noalias !83
  %13 = extractelement <3 x float> %10, i64 1
  %i.gh = fmul float %i.gg, %13
  %i.gi = extractelement <2 x float> %i.gf, i64 0
  %i.gj = tail call float @llvm.fmuladd.f32(float %i.gi, float %i.eu, float %i.gh)
  %14 = extractelement <3 x float> %10, i64 2
  %i.gk = tail call noundef float @llvm.fmuladd.f32(float %i.dr, float %14, float %i.gj)
  %i.gl = fadd float %i.gk, %i.dv
  %.sroa.3.12.vec.insert.i.i43 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gl, i64 0
  %i.gm = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 poison, i32 poison>
  %i.gn = insertelement <4 x float> %i.gm, float 0.000000e+00, i64 3
  %i.go = insertelement <4 x float> %i.gn, float %i.ep, i64 2
  %i.gp = shufflevector <2 x float> %i.gf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gq = shufflevector <4 x float> %i.ft, <4 x float> %i.gp, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.gr = fmul <4 x float> %i.go, %i.gq
  %i.gs = insertelement <4 x float> %i.fw, float %i.er, i64 2
  %i.gt = shufflevector <2 x float> %i.gf, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.gu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gs, <4 x float> %i.gt, <4 x float> %i.gr)
  %i.gv = insertelement <4 x float> %i.ga, float %i.et, i64 2
  %i.gw = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.dr, i64 0
  %i.gx = shufflevector <4 x float> %i.gw, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gv, <4 x float> %i.gx, <4 x float> %i.gu)
  store <4 x float> %i.fq, ptr %i.dw, align 4
  store <4 x float> %i.gd, ptr %i.em, align 4
  store <4 x float> %i.gy, ptr %i.ge, align 4
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 956 ; 2 uses
  store <2 x float> %i.fh, ptr %i.gz, align 4
  %.sroa.19.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 964
  store <2 x float> %.sroa.3.12.vec.insert.i.i43, ptr %.sroa.19.48..sroa_idx, align 4, !tbaa !25
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 988 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.ha, ptr noundef nonnull align 4 dereferenceable(16) %i.cz, i64 16, i1 false), !tbaa.struct !26
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.hb, ptr noundef nonnull align 4 dereferenceable(16) %i.gz, i64 16, i1 false), !tbaa.struct !26
  %i.hc = shufflevector <4 x float> %i.bq, <4 x float> %i.cd, <2 x i32> <i32 0, i32 4>
  %i.hd = shufflevector <4 x float> %i.cy, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.he = insertelement <2 x float> %i.hd, float 0.000000e+00, i64 1
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 972
  store <2 x float> %i.hc, ptr %i.hf, align 4
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 980
  store <2 x float> %i.he, ptr %.sroa.422.0..sroa_idx, align 4, !tbaa !25
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 1012
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !9 ; 2 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.hj = load float, ptr %i.hi, align 4, !tbaa !9 ; 2 uses
  %i.hk = fsub float %i.hh, %i.hj                 ; 2 uses
  %.sroa.3.12.vec.insert.i56 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hk, i64 0
  %i.hl = getelementptr inbounds nuw i8, ptr %0, i64 1036 ; 2 uses
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1044 ; 2 uses
  store <2 x float> %.sroa.3.12.vec.insert.i56, ptr %.sroa.420.0..sroa_idx, align 4, !tbaa !25
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 1040
  %i.hn = extractelement <4 x float> %i.cd, i64 0
  %i.ho = extractelement <4 x float> %i.bq, i64 0
  %i.hp = extractelement <4 x float> %i.cy, i64 0 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 1020
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1028
  %i.hr = load <2 x float>, ptr %i.ha, align 4, !tbaa !9 ; 3 uses
  %i.hs = shufflevector <4 x float> %i.bq, <4 x float> %i.cd, <2 x i32> <i32 0, i32 4>
  %i.ht = getelementptr inbounds nuw i8, ptr %0, i64 1068 ; 2 uses
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1076
  %i.hu = load <2 x float>, ptr %i.hb, align 4, !tbaa !9 ; 3 uses
  %foldExtExtBinop = fsub <2 x float> %i.hu, %i.hr ; 2 uses
  %i.hv = extractelement <2 x float> %foldExtExtBinop, i64 0
  %foldExtExtBinop202 = fsub <2 x float> %i.hu, %i.hr ; 2 uses
  %i.hw = extractelement <2 x float> %foldExtExtBinop202, i64 1
  %.sroa.0.4.vec.insert.i55 = shufflevector <2 x float> %foldExtExtBinop, <2 x float> %foldExtExtBinop202, <2 x i32> <i32 0, i32 3>
  store <2 x float> %.sroa.0.4.vec.insert.i55, ptr %i.hl, align 4
  %i.hx = fmul float %i.hn, %i.hw
  %i.hy = tail call float @llvm.fmuladd.f32(float %i.ho, float %i.hv, float %i.hx)
  %i.hz = tail call noundef float @llvm.fmuladd.f32(float %i.hp, float %i.hk, float %i.hy) ; 2 uses
  %i.ia = insertelement <2 x float> poison, float %i.hz, i64 0
  %i.ib = shufflevector <2 x float> %i.ia, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ic = fmul <2 x float> %i.hs, %i.ib
  %i.id = fmul float %i.hp, %i.hz
  %i.ie = fadd <2 x float> %i.hr, %i.ic           ; 2 uses
  %i.if = fadd float %i.hj, %i.id                 ; 2 uses
  %.sroa.3.12.vec.insert.i64 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.if, i64 0
  store <2 x float> %i.ie, ptr %i.hq, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i64, ptr %.sroa.418.0..sroa_idx, align 4, !tbaa !25
  %i.ig = load <2 x float>, ptr %i.t, align 8, !tbaa !9
  %i.ih = fsub <2 x float> %i.ie, %i.ig
  %i.ii = load float, ptr %i.u, align 8, !tbaa !9
  %i.ij = fsub float %i.if, %i.ii
  %.sroa.3.12.vec.insert.i69 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ij, i64 0
  store <2 x float> %i.ih, ptr %i.ht, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i69, ptr %.sroa.416.0..sroa_idx, align 4, !tbaa !25
  %i.ik = load <2 x float>, ptr %i.dt, align 8, !tbaa !9
  %i.il = fsub <2 x float> %i.hu, %i.ik
  %i.im = load float, ptr %i.du, align 8, !tbaa !9
  %i.in = fsub float %i.hh, %i.im
  %.sroa.3.12.vec.insert.i74 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.in, i64 0
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 1084 ; 2 uses
  store <2 x float> %i.il, ptr %i.io, align 4
  %.sroa.414.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1092
  store <2 x float> %.sroa.3.12.vec.insert.i74, ptr %.sroa.414.0..sroa_idx, align 4, !tbaa !25
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 324
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 428 ; 4 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %1, i64 360
  %i.is = getelementptr inbounds nuw i8, ptr %2, i64 428 ; 4 uses
  %i.it = getelementptr inbounds nuw i8, ptr %2, i64 360
  %i.iu = getelementptr inbounds nuw i8, ptr %1, i64 436 ; 4 uses
  %i.iv = getelementptr inbounds nuw i8, ptr %2, i64 436 ; 4 uses
  %i.iw = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 6 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next, %bb.b ] ; 7 uses
  %i.iy = getelementptr inbounds nuw [4 x i8], ptr %i.w, i64 %indvars.iv
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %indvars.iv
  %i.ja = getelementptr inbounds nuw [4 x i8], ptr %i.ce, i64 %indvars.iv
  %i.jb = load float, ptr %i.iy, align 4, !tbaa !9 ; 5 uses
  %.sroa.0.0.vec.insert.i77 = insertelement <2 x float> poison, float %i.jb, i64 0
  %i.jc = load float, ptr %i.iz, align 4, !tbaa !9 ; 6 uses
  %.sroa.0.4.vec.insert.i78 = insertelement <2 x float> %.sroa.0.0.vec.insert.i77, float %i.jc, i64 1
  %i.jd = load float, ptr %i.ja, align 4, !tbaa !9 ; 5 uses
  %.sroa.3.12.vec.insert.i79 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.jd, i64 0
  %i.je = getelementptr inbounds nuw [84 x i8], ptr %i.ip, i64 %indvars.iv ; 11 uses
  %i.jf = load float, ptr %i.e, align 8, !tbaa !9, !noalias !85
  %i.jg = load float, ptr %i.n, align 8, !tbaa !9, !noalias !85
  %i.jh = load float, ptr %i.q, align 8, !tbaa !9, !noalias !85
  %i.ji = load float, ptr %i.de, align 8, !tbaa !9, !noalias !86
  %i.jj = load float, ptr %i.dn, align 8, !tbaa !9, !noalias !86
  %i.jk = load float, ptr %i.dq, align 8, !tbaa !9, !noalias !86
  %i.jl = load float, ptr %i.ir, align 8, !tbaa !39
  %i.jm = load float, ptr %i.it, align 8, !tbaa !39
  %.sroa.11153.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.je, i64 8
  %i.jn = getelementptr inbounds nuw i8, ptr %i.je, i64 16
  %i.jo = getelementptr inbounds nuw i8, ptr %i.je, i64 32
  %i.jp = getelementptr inbounds nuw i8, ptr %i.je, i64 48
  %i.jq = getelementptr inbounds nuw i8, ptr %i.je, i64 64
  %i.jr = load <2 x float>, ptr %i.a, align 8, !tbaa !9, !noalias !85
  %i.js = load <2 x float>, ptr %i.l, align 8, !tbaa !9, !noalias !85
  %i.jt = load <2 x float>, ptr %i.o, align 8, !tbaa !9, !noalias !85
  %i.ju = load <3 x float>, ptr %i.ht, align 4, !tbaa !9 ; 2 uses
  %i.jv = insertelement <3 x float> poison, float %i.jb, i64 0
  %i.jw = insertelement <3 x float> %i.jv, float %i.jc, i64 1
  %i.jx = insertelement <3 x float> %i.jw, float %i.jd, i64 2
  %i.jy = fneg <3 x float> %i.jx                  ; 2 uses
  %i.jz = shufflevector <3 x float> %i.ju, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.ka = fmul <3 x float> %i.jz, %i.jy
  %i.kb = insertelement <3 x float> poison, float %i.jc, i64 0
  %i.kc = insertelement <3 x float> %i.kb, float %i.jd, i64 1
  %i.kd = insertelement <3 x float> %i.kc, float %i.jb, i64 2
  %i.ke = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ju, <3 x float> %i.kd, <3 x float> %i.ka) ; 6 uses
  %i.kf = shufflevector <3 x float> %i.ke, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.kg = fmul <2 x float> %i.js, %i.kf
  %i.kh = shufflevector <3 x float> %i.ke, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ki = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.kh, <2 x float> %i.kg)
  %i.kj = shufflevector <3 x float> %i.ke, <3 x float> poison, <2 x i32> zeroinitializer
  %i.kk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jt, <2 x float> %i.kj, <2 x float> %i.ki) ; 4 uses
  %i.kl = extractelement <3 x float> %i.ke, i64 2
  %i.km = fmul float %i.jg, %i.kl
  %i.kn = extractelement <3 x float> %i.ke, i64 1
  %i.ko = tail call float @llvm.fmuladd.f32(float %i.jf, float %i.kn, float %i.km)
  %i.kp = extractelement <3 x float> %i.ke, i64 0
  %i.kq = tail call noundef float @llvm.fmuladd.f32(float %i.jh, float %i.kp, float %i.ko) ; 3 uses
  %.sroa.3.12.vec.insert.i18.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kq, i64 0
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.je, i64 24
  %i.kr = load <2 x float>, ptr %i.da, align 8, !tbaa !9, !noalias !86
  %i.ks = load <2 x float>, ptr %i.dl, align 8, !tbaa !9, !noalias !86
  %i.kt = load <2 x float>, ptr %i.do, align 8, !tbaa !9, !noalias !86
  store <2 x float> %.sroa.0.4.vec.insert.i78, ptr %i.je, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i79, ptr %.sroa.11153.0..sroa_idx, align 4, !tbaa !25
  %i.ku = fneg float %i.jc
  store <2 x float> %i.kk, ptr %i.jn, align 4
  store <2 x float> %.sroa.3.12.vec.insert.i18.i, ptr %.sroa.46.0..sroa_idx.i, align 4, !tbaa !25
  %i.kv = load <3 x float>, ptr %i.io, align 4, !tbaa !9 ; 2 uses
  %i.kw = insertelement <3 x float> poison, float %i.jd, i64 0
  %i.kx = insertelement <3 x float> %i.kw, float %i.jb, i64 1
  %i.ky = insertelement <3 x float> %i.kx, float %i.jc, i64 2
  %i.kz = fmul <3 x float> %i.ky, %i.kv
  %i.la = shufflevector <3 x float> %i.kz, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.lb = insertelement <3 x float> poison, float %i.ku, i64 0
  %i.lc = shufflevector <3 x float> %i.lb, <3 x float> %i.jy, <3 x i32> <i32 0, i32 5, i32 3>
  %i.ld = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.kv, <3 x float> %i.lc, <3 x float> %i.la) ; 6 uses
  %i.le = shufflevector <3 x float> %i.ld, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.lf = fmul <2 x float> %i.ks, %i.le
  %i.lg = shufflevector <3 x float> %i.ld, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.lh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kr, <2 x float> %i.lg, <2 x float> %i.lf)
  %i.li = shufflevector <3 x float> %i.ld, <3 x float> poison, <2 x i32> zeroinitializer
  %i.lj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kt, <2 x float> %i.li, <2 x float> %i.lh) ; 4 uses
  %i.lk = extractelement <3 x float> %i.ld, i64 2
  %i.ll = fmul float %i.jj, %i.lk
  %i.lm = extractelement <3 x float> %i.ld, i64 1
  %i.ln = tail call float @llvm.fmuladd.f32(float %i.ji, float %i.lm, float %i.ll)
  %i.lo = extractelement <3 x float> %i.ld, i64 0
  %i.lp = tail call noundef float @llvm.fmuladd.f32(float %i.jk, float %i.lo, float %i.ln) ; 3 uses
  %.sroa.3.12.vec.insert.i33.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lp, i64 0
  store <2 x float> %i.lj, ptr %i.jo, align 4
  %.sroa.44.0..sroa_idx.i82 = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  store <2 x float> %.sroa.3.12.vec.insert.i33.i, ptr %.sroa.44.0..sroa_idx.i82, align 4, !tbaa !25
  %i.lq = extractelement <2 x float> %i.kk, i64 0
  %i.lr = load <2 x float>, ptr %i.iq, align 4, !tbaa !9
  %i.ls = fmul <2 x float> %i.kk, %i.lr           ; 3 uses
  %i.lt = load float, ptr %i.iu, align 4, !tbaa !9
  %i.lu = fmul float %i.kq, %i.lt                 ; 2 uses
  %.sroa.3.12.vec.insert.i38.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lu, i64 0
  store <2 x float> %i.ls, ptr %i.jp, align 4
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.je, i64 56
  store <2 x float> %.sroa.3.12.vec.insert.i38.i, ptr %.sroa.42.0..sroa_idx.i, align 4, !tbaa !25
  %i.lv = extractelement <2 x float> %i.lj, i64 0
  %i.lw = load <2 x float>, ptr %i.is, align 4, !tbaa !9
  %i.lx = fmul <2 x float> %i.lj, %i.lw           ; 3 uses
  %i.ly = load float, ptr %i.iv, align 4, !tbaa !9
  %i.lz = fmul float %i.lp, %i.ly                 ; 2 uses
  %.sroa.3.12.vec.insert.i43.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.lz, i64 0
  store <2 x float> %i.lx, ptr %i.jq, align 4
  %.sroa.4.0..sroa_idx.i83 = getelementptr inbounds nuw i8, ptr %i.je, i64 72
  store <2 x float> %.sroa.3.12.vec.insert.i43.i, ptr %.sroa.4.0..sroa_idx.i83, align 4, !tbaa !25
  %foldExtExtBinop204 = fmul <2 x float> %i.kk, %i.ls
  %i.ma = extractelement <2 x float> %foldExtExtBinop204, i64 1
  %i.mb = extractelement <2 x float> %i.ls, i64 0
  %i.mc = tail call float @llvm.fmuladd.f32(float %i.mb, float %i.lq, float %i.ma)
  %i.md = tail call noundef float @llvm.fmuladd.f32(float %i.lu, float %i.kq, float %i.mc)
  %i.me = fadd float %i.jl, %i.md
  %i.mf = fadd float %i.jm, %i.me
  %foldExtExtBinop206 = fmul <2 x float> %i.lj, %i.lx
  %i.mg = extractelement <2 x float> %foldExtExtBinop206, i64 1
  %i.mh = extractelement <2 x float> %i.lx, i64 0
end_hunk_0
begin_hunk_1_@_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_:bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %.462, i64 16
  %i.aa = getelementptr inbounds nuw i8, ptr %.462, i64 20
  %i.ab = getelementptr inbounds nuw i8, ptr %.462, i64 32
  %i.ac = getelementptr inbounds nuw i8, ptr %.462, i64 36
  %i.ad = getelementptr inbounds nuw i8, ptr %.462, i64 40
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !9, !noalias !32 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 %.471
  %i.ag = load float, ptr %i.af, align 4, !tbaa !9, !noalias !32 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 %.472
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !9, !noalias !32 ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 %.473
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !9, !noalias !32 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.462, i64 48
  %i.am = getelementptr inbounds nuw i8, ptr %.462, i64 56
  %i.an = load float, ptr %i.am, align 4, !tbaa !9, !noalias !32
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.ap = load <2 x float>, ptr %.462, align 4, !tbaa !9, !noalias !32 ; 3 uses
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.ar = insertelement <4 x float> %i.aq, float 0.000000e+00, i64 3
  %i.as = insertelement <4 x float> %i.ar, float %i.j, i64 0
  %i.at = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.aq, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.au = insertelement <4 x float> %i.at, float %i.q, i64 1
  %i.av = insertelement <4 x float> %i.au, float %i.w, i64 2
  %i.aw = fmul <4 x float> %i.as, %i.av
  %i.ax = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.h, i64 0
  %i.ay = insertelement <4 x float> %i.ax, float %i.o, i64 1
  %i.az = insertelement <4 x float> %i.ay, float %i.u, i64 2 ; 3 uses
  %i.ba = shufflevector <2 x float> %i.ap, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.bb = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.ba, <4 x float> %i.aw)
  %i.bc = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.m, i64 0
  %i.bd = insertelement <4 x float> %i.bc, float %i.s, i64 1
  %i.be = insertelement <4 x float> %i.bd, float %i.y, i64 2 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.bg = load <2 x float>, ptr %i.z, align 4, !tbaa !9, !noalias !32 ; 3 uses
  %i.bh = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.j, i64 0
  %i.bi = insertelement <4 x float> %i.bh, float %i.q, i64 1
  %i.bj = insertelement <4 x float> %i.bi, float %i.w, i64 2 ; 2 uses
  %i.bk = shufflevector <2 x float> %i.bg, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.bl = fmul <4 x float> %i.bj, %i.bk
  %i.bm = shufflevector <2 x float> %i.bg, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.bn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.bm, <4 x float> %i.bl)
  %i.bo = load <2 x float>, ptr %i.al, align 4, !tbaa !9, !noalias !32
  %i.bp = load <2 x float>, ptr %i.k, align 4, !tbaa !9, !noalias !32 ; 3 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.br = shufflevector <4 x float> %i.bq, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.bs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.br, <4 x float> %i.bb)
  %i.bt = load <2 x float>, ptr %i.aa, align 4, !tbaa !9, !noalias !32 ; 3 uses
  %i.bu = shufflevector <2 x float> %i.bp, <2 x float> %i.bt, <2 x i32> <i32 0, i32 2>
  %i.bv = insertelement <2 x float> poison, float %i.ai, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bx = fmul <2 x float> %i.bu, %i.bw
  %i.by = shufflevector <2 x float> %i.ap, <2 x float> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bz = insertelement <2 x float> poison, float %i.ag, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.by, <2 x float> %i.ca, <2 x float> %i.bx)
  %i.cc = shufflevector <2 x float> %i.bp, <2 x float> %i.bt, <2 x i32> <i32 1, i32 3>
  %i.cd = insertelement <2 x float> poison, float %i.ak, i64 0
  %i.ce = shufflevector <2 x float> %i.cd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cc, <2 x float> %i.ce, <2 x float> %i.cb)
  %i.cg = fadd <2 x float> %i.bo, %i.cf
  %i.ch = shufflevector <2 x float> %i.bt, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ci = shufflevector <4 x float> %i.ch, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.cj = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.ci, <4 x float> %i.bn)
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.cl = load <2 x float>, ptr %i.ab, align 4, !tbaa !9, !noalias !32 ; 3 uses
  %i.cm = load float, ptr %i.ac, align 4, !tbaa !9, !noalias !32
  %i.cn = shufflevector <2 x float> %i.cl, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.co = fmul <4 x float> %i.bj, %i.cn
  %i.cp = shufflevector <2 x float> %i.cl, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.cq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.az, <4 x float> %i.cp, <4 x float> %i.co)
  %i.cr = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.ae, i64 0
  %i.cs = shufflevector <4 x float> %i.cr, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ct = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.be, <4 x float> %i.cs, <4 x float> %i.cq)
  %i.cu = fmul float %i.cm, %i.ai
  %i.cv = extractelement <2 x float> %i.cl, i64 0
  %i.cw = tail call float @llvm.fmuladd.f32(float %i.cv, float %i.ag, float %i.cu)
  %i.cx = tail call noundef float @llvm.fmuladd.f32(float %i.ae, float %i.ak, float %i.cw)
  %i.cy = fadd float %i.cx, %i.an
  %.sroa.3.12.vec.insert.i.i33 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cy, i64 0
  store <4 x float> %i.bs, ptr %i.ao, align 4
  store <4 x float> %i.cj, ptr %i.bf, align 4
  store <4 x float> %i.ct, ptr %i.ck, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 892
  store <2 x float> %i.cg, ptr %i.cz, align 4
  %.sroa.1997.48..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 900
  store <2 x float> %.sroa.3.12.vec.insert.i.i33, ptr %.sroa.1997.48..sroa_idx, align 4, !tbaa !25
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 %.474
  %i.db = load float, ptr %i.da, align 4, !tbaa !9, !noalias !32
  %i.dc = getelementptr inbounds nuw i8, ptr %0, i64 %.476
  %i.dd = load float, ptr %i.dc, align 4, !tbaa !9, !noalias !32 ; 2 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.475, i64 4
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 %.477
  %i.dg = load float, ptr %i.df, align 4, !tbaa !9, !noalias !32
  %i.dh = getelementptr inbounds nuw i8, ptr %0, i64 %.478
  %i.di = load float, ptr %i.dh, align 8, !tbaa !9, !noalias !32
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 %.479
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !9, !noalias !32 ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 %.480
  %i.dm = load float, ptr %i.dl, align 8, !tbaa !9, !noalias !32
  %i.dn = getelementptr inbounds nuw i8, ptr %0, i64 %.481
  %i.do = load float, ptr %i.dn, align 4, !tbaa !9, !noalias !32
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 %.482
  %i.dq = load float, ptr %i.dp, align 4, !tbaa !9, !noalias !32 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 %.483
  %i.ds = load float, ptr %i.dr, align 4, !tbaa !9, !noalias !32
  %i.dt = getelementptr inbounds nuw i8, ptr %.475, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %.475, i64 20
  %i.dv = getelementptr inbounds nuw i8, ptr %.475, i64 32
  %i.dw = getelementptr inbounds nuw i8, ptr %.475, i64 36
  %i.dx = getelementptr inbounds nuw i8, ptr %.475, i64 40
  %i.dy = load float, ptr %i.dx, align 4, !tbaa !9, !noalias !32 ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 %.484
  %i.ea = load float, ptr %i.dz, align 4, !tbaa !9, !noalias !32 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %0, i64 %.485
  %i.ec = load float, ptr %i.eb, align 8, !tbaa !9, !noalias !32 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 %.486
  %i.ee = load float, ptr %i.ed, align 4, !tbaa !9, !noalias !32 ; 2 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %.475, i64 48
  %i.eg = getelementptr inbounds nuw i8, ptr %.475, i64 56
  %i.eh = load float, ptr %i.eg, align 4, !tbaa !9, !noalias !32
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 908
  %i.ej = load <2 x float>, ptr %.475, align 4, !tbaa !9, !noalias !32 ; 3 uses
  %i.ek = shufflevector <2 x float> %i.ej, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 poison> ; 2 uses
  %i.el = insertelement <4 x float> %i.ek, float 0.000000e+00, i64 3
  %i.em = insertelement <4 x float> %i.el, float %i.dd, i64 0
  %i.en = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.ek, <4 x i32> <i32 5, i32 poison, i32 poison, i32 3>
  %i.eo = insertelement <4 x float> %i.en, float %i.dk, i64 1
  %i.ep = insertelement <4 x float> %i.eo, float %i.dq, i64 2
  %i.eq = fmul <4 x float> %i.em, %i.ep
  %i.er = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.db, i64 0
  %i.es = insertelement <4 x float> %i.er, float %i.di, i64 1
  %i.et = insertelement <4 x float> %i.es, float %i.do, i64 2 ; 3 uses
  %i.eu = shufflevector <2 x float> %i.ej, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ev = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.eu, <4 x float> %i.eq)
  %i.ew = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dg, i64 0
  %i.ex = insertelement <4 x float> %i.ew, float %i.dm, i64 1
  %i.ey = insertelement <4 x float> %i.ex, float %i.ds, i64 2 ; 3 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %0, i64 924
  %i.fa = load <2 x float>, ptr %i.dt, align 4, !tbaa !9, !noalias !32 ; 3 uses
  %i.fb = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dd, i64 0
  %i.fc = insertelement <4 x float> %i.fb, float %i.dk, i64 1
  %i.fd = insertelement <4 x float> %i.fc, float %i.dq, i64 2 ; 2 uses
  %i.fe = shufflevector <2 x float> %i.fa, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.ff = fmul <4 x float> %i.fd, %i.fe
  %i.fg = shufflevector <2 x float> %i.fa, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.fh = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.fg, <4 x float> %i.ff)
  %i.fi = load <2 x float>, ptr %i.ef, align 4, !tbaa !9, !noalias !32
  %i.fj = load <2 x float>, ptr %i.de, align 4, !tbaa !9, !noalias !32 ; 3 uses
  %i.fk = shufflevector <2 x float> %i.fj, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.fl = shufflevector <4 x float> %i.fk, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.fm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.fl, <4 x float> %i.ev)
  %i.fn = load <2 x float>, ptr %i.du, align 4, !tbaa !9, !noalias !32 ; 3 uses
  %i.fo = shufflevector <2 x float> %i.fj, <2 x float> %i.fn, <2 x i32> <i32 0, i32 2>
  %i.fp = insertelement <2 x float> poison, float %i.ec, i64 0
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fr = fmul <2 x float> %i.fo, %i.fq
  %i.fs = shufflevector <2 x float> %i.ej, <2 x float> %i.fa, <2 x i32> <i32 0, i32 2>
  %i.ft = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.fu = shufflevector <2 x float> %i.ft, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.fu, <2 x float> %i.fr)
  %i.fw = shufflevector <2 x float> %i.fj, <2 x float> %i.fn, <2 x i32> <i32 1, i32 3>
  %i.fx = insertelement <2 x float> poison, float %i.ee, i64 0
  %i.fy = shufflevector <2 x float> %i.fx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.fy, <2 x float> %i.fv)
  %i.ga = fadd <2 x float> %i.fi, %i.fz
  %i.gb = shufflevector <2 x float> %i.fn, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.gc = shufflevector <4 x float> %i.gb, <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, <4 x i32> <i32 1, i32 1, i32 1, i32 5>
  %i.gd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.gc, <4 x float> %i.fh)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 940
  %i.gf = load <2 x float>, ptr %i.dv, align 4, !tbaa !9, !noalias !32 ; 3 uses
  %i.gg = load float, ptr %i.dw, align 4, !tbaa !9, !noalias !32
  %i.gh = shufflevector <2 x float> %i.gf, <2 x float> <float poison, float 1.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.gi = fmul <4 x float> %i.fd, %i.gh
  %i.gj = shufflevector <2 x float> %i.gf, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.gk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.gj, <4 x float> %i.gi)
  %i.gl = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.dy, i64 0
  %i.gm = shufflevector <4 x float> %i.gl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.gn = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ey, <4 x float> %i.gm, <4 x float> %i.gk)
  %i.go = fmul float %i.gg, %i.ec
  %i.gp = extractelement <2 x float> %i.gf, i64 0
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.gp, float %i.ea, float %i.go)
  %i.gr = tail call noundef float @llvm.fmuladd.f32(float %i.dy, float %i.ee, float %i.gq)
  %i.gs = fadd float %i.gr, %i.eh
  %.sroa.3.12.vec.insert.i.i46 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.gs, i64 0
  store <4 x float> %i.fm, ptr %i.ei, align 4
  store <4 x float> %i.gd, ptr %i.ez, align 4
  store <4 x float> %i.gn, ptr %i.ge, align 4
  %i.gt = getelementptr inbounds nuw i8, ptr %0, i64 956
  store <2 x float> %i.ga, ptr %i.gt, align 4
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 964
  store <2 x float> %.sroa.3.12.vec.insert.i.i46, ptr %i.gu, align 4, !tbaa !25
  %i.gv = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 892
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 988 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gx, ptr noundef nonnull align 4 dereferenceable(16) %i.gw, i64 16, i1 false), !tbaa.struct !26
  %i.gy = getelementptr inbounds nuw i8, ptr %0, i64 956
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 1004 ; 3 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.gz, ptr noundef nonnull align 4 dereferenceable(16) %i.gy, i64 16, i1 false), !tbaa.struct !26
  %i.ha = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.hc = load float, ptr %i.gv, align 4, !tbaa !9 ; 3 uses
  %.sroa.0.0.vec.insert.i = insertelement <2 x float> poison, float %i.hc, i64 0 ; 2 uses
  %i.hd = load float, ptr %i.ha, align 4, !tbaa !9 ; 4 uses
  %.sroa.0.4.vec.insert.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %i.hd, i64 1
  %i.he = load float, ptr %i.hb, align 4, !tbaa !9 ; 4 uses
  %.sroa.3.12.vec.insert.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.he, i64 0
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 972
  store <2 x float> %.sroa.0.4.vec.insert.i, ptr %i.hf, align 4
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 980
  store <2 x float> %.sroa.3.12.vec.insert.i, ptr %.sroa.411.0..sroa_idx, align 4, !tbaa !25
  %brmerge = select i1 %i.c, i1 true, i1 %i.f
  br i1 %brmerge, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %5 = load float, ptr %i.gz, align 4, !tbaa !9
  %6 = load float, ptr %i.gx, align 4, !tbaa !9   ; 2 uses
  %7 = load <2 x float>, ptr %3, align 8, !tbaa !9
  %8 = load <2 x float>, ptr %4, align 8, !tbaa !9 ; 2 uses
  %9 = fsub float %5, %6
  %10 = fsub <2 x float> %7, %8
  %i.hg = extractelement <2 x float> %8, i64 0
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 992
  %12 = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %13 = load float, ptr %i.gx, align 4, !tbaa !9  ; 2 uses
  %14 = load float, ptr %i.gz, align 4, !tbaa !9
  %15 = load <2 x float>, ptr %11, align 8, !tbaa !9 ; 2 uses
  %16 = load <2 x float>, ptr %12, align 8, !tbaa !9
  %17 = fsub float %13, %14
  %18 = fsub <2 x float> %15, %16
  %i.hh = extractelement <2 x float> %15, i64 0
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink461 = phi float [ %17, %bb.c ], [ %9, %bb.b ] ; 3 uses
  %i.hi = phi float [ %i.hh, %bb.c ], [ %i.hg, %bb.b ]
  %i.hj = phi float [ %13, %bb.c ], [ %6, %bb.b ]
  %19 = phi <2 x float> [ %18, %bb.c ], [ %10, %bb.b ] ; 6 uses
  %.in = getelementptr inbounds nuw i8, ptr %0, i64 996
  %i.hk = load float, ptr %.in, align 4, !tbaa !9
  %.sroa.0.0.vec.insert.i62 = insertelement <2 x float> poison, float %.sink461, i64 0 ; 2 uses
  %20 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i62, <2 x float> %19, <2 x i32> <i32 0, i32 2>
  %i.hl = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %19, <2 x i32> <i32 3, i32 1>
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 1036
  store <2 x float> %20, ptr %i.hm, align 4
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 1044
  store <2 x float> %i.hl, ptr %i.hn, align 4, !tbaa !25
  %i.ho = extractelement <2 x float> %19, i64 0   ; 2 uses
  %i.hp = fmul float %i.hd, %i.ho
  %i.hq = tail call float @llvm.fmuladd.f32(float %i.hc, float %.sink461, float %i.hp)
  %i.hr = extractelement <2 x float> %19, i64 1   ; 2 uses
  %i.hs = tail call noundef float @llvm.fmuladd.f32(float %i.he, float %i.hr, float %i.hq) ; 3 uses
  %i.ht = fmul float %i.hc, %i.hs
  %i.hu = fmul float %i.hd, %i.hs
  %i.hv = fmul float %i.he, %i.hs
  %i.hw = fadd float %i.hj, %i.ht
  %i.hx = fadd float %i.hi, %i.hu
  %i.hy = fadd float %i.hv, %i.hk
  %.sroa.0.0.vec.insert.i70 = insertelement <2 x float> poison, float %i.hw, i64 0
  %.sroa.0.4.vec.insert.i71 = insertelement <2 x float> %.sroa.0.0.vec.insert.i70, float %i.hx, i64 1
  %.sroa.3.12.vec.insert.i72 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hy, i64 0
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 1020
  store <2 x float> %.sroa.0.4.vec.insert.i71, ptr %i.hz, align 4
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1028
  store <2 x float> %.sroa.3.12.vec.insert.i72, ptr %.sroa.45.0..sroa_idx, align 4, !tbaa !25
  %i.ia = getelementptr inbounds nuw i8, ptr %0, i64 1052
  %21 = getelementptr inbounds nuw i8, ptr %0, i64 848
  %22 = getelementptr inbounds nuw i8, ptr %0, i64 864
  %23 = getelementptr inbounds nuw i8, ptr %0, i64 880
  %24 = load float, ptr %21, align 8, !tbaa !9
  %25 = load float, ptr %22, align 8, !tbaa !9
  %26 = load float, ptr %23, align 8, !tbaa !9
  %27 = insertelement <2 x float> poison, float %i.hd, i64 0
  %28 = insertelement <2 x float> %27, float %25, i64 1
  %29 = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> zeroinitializer
  %30 = fmul <2 x float> %28, %29
  %31 = shufflevector <2 x float> %.sroa.0.0.vec.insert.i62, <2 x float> poison, <2 x i32> zeroinitializer
  %32 = insertelement <2 x float> %.sroa.0.0.vec.insert.i, float %24, i64 1
  %33 = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %31, <2 x float> %32, <2 x float> %30)
  %i.ib = shufflevector <2 x float> %19, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %34 = insertelement <2 x float> poison, float %i.he, i64 0
  %35 = insertelement <2 x float> %34, float %26, i64 1
  %i.ic = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ib, <2 x float> %35, <2 x float> %33)
  store <2 x float> %i.ic, ptr %i.ia, align 4, !tbaa !9
  %36 = getelementptr inbounds nuw i8, ptr %0, i64 852
  %37 = getelementptr inbounds nuw i8, ptr %0, i64 868
  %38 = getelementptr inbounds nuw i8, ptr %0, i64 884
  %39 = load float, ptr %36, align 4, !tbaa !9
  %40 = load float, ptr %37, align 4, !tbaa !9
  %41 = load float, ptr %38, align 4, !tbaa !9
  %42 = fmul float %40, %i.ho
  %43 = tail call float @llvm.fmuladd.f32(float %.sink461, float %39, float %42)
  %44 = tail call noundef float @llvm.fmuladd.f32(float %i.hr, float %41, float %43)
  %45 = getelementptr inbounds nuw i8, ptr %0, i64 1060
  store float %44, ptr %45, align 4, !tbaa !9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN18btSliderConstraint18getInfo1NonVirtualEPN17btTypedConstraint17btConstraintInfo1E(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(1148) %0, ptr nofree noundef writeonly captures(none) initializes((0, 8)) %1) local_unnamed_addr #0 align 2 {
bb.a:
  store i32 6, ptr %1, align 4, !tbaa !52
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !53
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN18btSliderConstraint8getInfo2EPN17btTypedConstraint17btConstraintInfo2E(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !54, !nonnull !32, !align !33 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !55, !nonnull !32, !align !33 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 328
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.j = load float, ptr %i.i, align 8, !tbaa !39
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.l = load float, ptr %i.k, align 8, !tbaa !39
  tail call void @_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %i.c, ptr noundef nonnull align 4 dereferenceable(64) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %i.h, float noundef %i.j, float noundef %i.l)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN18btSliderConstraint18getInfo2NonVirtualEPN17btTypedConstraint17btConstraintInfo2ERK11btTransformS5_RK9btVector3S8_ff(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %4, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %5, float noundef %6, float noundef %7) local_unnamed_addr #7 align 2 {
bb.a:
  tail call void @_ZN18btSliderConstraint19calculateTransformsERK11btTransformS2_(ptr noundef nonnull align 8 dereferenceable(1148) %0, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 320 ; 4 uses
  store i8 0, ptr %i.a, align 8, !tbaa !40
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 1052 ; 6 uses
  %i.c = load float, ptr %i.b, align 4, !tbaa !9  ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 1100 ; 2 uses
  store float %i.c, ptr %i.d, align 4, !tbaa !41
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232 ; 3 uses
  %i.f = load float, ptr %i.e, align 8, !tbaa !42 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 3 uses
  %i.h = load float, ptr %i.g, align 4, !tbaa !43 ; 3 uses
  %i.i = fcmp ugt float %i.f, %i.h
  br i1 %i.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fcmp ogt float %i.c, %i.h
  br i1 %i.j, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.k = fsub float %i.c, %i.h
  store float %i.k, ptr %i.b, align 4, !tbaa !9
  store i8 1, ptr %i.a, align 8, !tbaa !40
  br label %_ZN18btSliderConstraint13testLinLimitsEv.exit

bb.d:                                             ; preds = %bb.b
  %i.l = fcmp olt float %i.c, %i.f
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = fsub float %i.c, %i.f
  store float %i.m, ptr %i.b, align 4, !tbaa !9
  store i8 1, ptr %i.a, align 8, !tbaa !40
  br label %_ZN18btSliderConstraint13testLinLimitsEv.exit

bb.f:                                             ; preds = %bb.d
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !9
  br label %_ZN18btSliderConstraint13testLinLimitsEv.exit

bb.g:                                             ; preds = %bb.a
  store float 0.000000e+00, ptr %i.b, align 4, !tbaa !9
  br label %_ZN18btSliderConstraint13testLinLimitsEv.exit

_ZN18btSliderConstraint13testLinLimitsEv.exit:    ; preds = %bb.c, %bb.e, %bb.f, %bb.g
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 1108 ; 3 uses
  store float 0.000000e+00, ptr %i.n, align 4, !tbaa !44
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 321 ; 3 uses
  store i8 0, ptr %i.o, align 1, !tbaa !45
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 4 uses
  %i.q = load float, ptr %i.p, align 8, !tbaa !46 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 244 ; 4 uses
  %i.s = load float, ptr %i.r, align 4, !tbaa !47 ; 2 uses
  %i.t = fcmp ugt float %i.q, %i.s
  br i1 %i.t, label %_ZN18btSliderConstraint13testAngLimitsEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.x = load float, ptr %i.u, align 8, !tbaa !9
  %i.y = load float, ptr %i.v, align 8, !tbaa !9
  %i.z = load float, ptr %i.w, align 8, !tbaa !9
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.ad = load float, ptr %i.aa, align 4, !tbaa !9
  %i.ae = load float, ptr %i.ab, align 4, !tbaa !9
  %i.af = load float, ptr %i.ac, align 4, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 928
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 944
  %i.aj = load float, ptr %i.ag, align 8, !tbaa !9 ; 2 uses
  %i.ak = load float, ptr %i.ah, align 8, !tbaa !9 ; 2 uses
  %i.al = load float, ptr %i.ai, align 8, !tbaa !9 ; 2 uses
  %i.am = fmul float %i.ae, %i.ak
  %i.an = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.ad, float %i.am)
  %i.ao = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.af, float %i.an) ; 2 uses
  %i.ap = fmul float %i.y, %i.ak
  %i.aq = tail call float @llvm.fmuladd.f32(float %i.aj, float %i.x, float %i.ap)
  %i.ar = tail call noundef float @llvm.fmuladd.f32(float %i.al, float %i.z, float %i.aq) ; 5 uses
  %i.as = tail call noundef float @llvm.fabs.f32(float %i.ao) ; 4 uses
  %i.at = fcmp ult float %i.ar, 0.000000e+00
  br i1 %i.at, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = fsub float %i.ar, %i.as
  %i.av = fadd float %i.ar, %i.as
  %i.aw = fdiv float %i.au, %i.av
  %i.ax = tail call float @llvm.fmuladd.f32(float %i.aw, float f0xBF490FDB, float f0x3F490FDB)
  br label %_Z11btAtan2Fastff.exit.i

bb.j:                                             ; preds = %bb.h
  %i.ay = fadd float %i.ar, %i.as
  %i.az = fsub float %i.as, %i.ar
  %i.ba = fdiv float %i.ay, %i.az
  %i.bb = tail call float @llvm.fmuladd.f32(float %i.ba, float f0xBF490FDB, float f0x4016CBE4)
  br label %_Z11btAtan2Fastff.exit.i

_Z11btAtan2Fastff.exit.i:                         ; preds = %bb.j, %bb.i
  %.0.i.i = phi float [ %i.ax, %bb.i ], [ %i.bb, %bb.j ] ; 2 uses
  %i.bc = fcmp olt float %i.ao, 0.000000e+00
  %i.bd = fneg float %.0.i.i
  %i.be = select i1 %i.bc, float %i.bd, float %.0.i.i
  %i.bf = tail call noundef float @_Z21btAdjustAngleToLimitsfff(float noundef %i.be, float noundef %i.q, float noundef %i.s) ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1104
  store float %i.bf, ptr %i.bg, align 8, !tbaa !48
  %i.bh = load float, ptr %i.p, align 8, !tbaa !46 ; 2 uses
  %i.bi = fcmp olt float %i.bf, %i.bh
  br i1 %i.bi, label %.sink.split.i, label %bb.k

bb.k:                                             ; preds = %_Z11btAtan2Fastff.exit.i
  %i.bj = load float, ptr %i.r, align 4, !tbaa !47 ; 2 uses
  %i.bk = fcmp ogt float %i.bf, %i.bj
  br i1 %i.bk, label %.sink.split.i, label %_ZN18btSliderConstraint13testAngLimitsEv.exit

.sink.split.i:                                    ; preds = %bb.k, %_Z11btAtan2Fastff.exit.i
  %.sink34.i = phi float [ %i.bh, %_Z11btAtan2Fastff.exit.i ], [ %i.bj, %bb.k ]
  %i.bl = fsub float %i.bf, %.sink34.i
  store float %i.bl, ptr %i.n, align 4, !tbaa !44
  store i8 1, ptr %i.o, align 1, !tbaa !45
  br label %_ZN18btSliderConstraint13testAngLimitsEv.exit

_ZN18btSliderConstraint13testAngLimitsEv.exit:    ; preds = %_ZN18btSliderConstraint13testLinLimitsEv.exit, %bb.k, %.sink.split.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 844
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 908
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.bp = load i32, ptr %i.bo, align 8, !tbaa !94 ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.br = load i8, ptr %i.bq, align 4, !tbaa !24, !range !31, !noundef !32
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 860
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 876
  %i.bu = load float, ptr %i.bm, align 4, !tbaa !9 ; 11 uses
  %i.bv = load float, ptr %i.bs, align 4, !tbaa !9 ; 11 uses
  %i.bw = load float, ptr %i.bt, align 4, !tbaa !9 ; 11 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 848
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 880
  %i.ca = load float, ptr %i.bx, align 8, !tbaa !9 ; 6 uses
  %.sroa.0.0.vec.insert.i320 = insertelement <2 x float> poison, float %i.ca, i64 0
  %i.cb = load float, ptr %i.by, align 8, !tbaa !9 ; 6 uses
  %.sroa.0.4.vec.insert.i321 = insertelement <2 x float> %.sroa.0.0.vec.insert.i320, float %i.cb, i64 1
  %i.cc = load float, ptr %i.bz, align 8, !tbaa !9 ; 6 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 852
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 868
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 884
  %i.cg = load float, ptr %i.cd, align 4, !tbaa !9 ; 6 uses
  %.sroa.0.0.vec.insert.i325 = insertelement <2 x float> poison, float %i.cg, i64 0
  %i.ch = load float, ptr %i.ce, align 4, !tbaa !9 ; 6 uses
  %.sroa.0.4.vec.insert.i326 = insertelement <2 x float> %.sroa.0.0.vec.insert.i325, float %i.ch, i64 1
  %i.ci = load float, ptr %i.cf, align 4, !tbaa !9 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !95 ; 12 uses
  store float %i.ca, ptr %i.ck, align 4, !tbaa !9
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 4
  store float %i.cb, ptr %i.cl, align 4, !tbaa !9
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ck, i64 8
  store float %i.cc, ptr %i.cm, align 4, !tbaa !9
  %i.cn = sext i32 %i.bp to i64                   ; 3 uses
  %i.co = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cn
  store float %i.cg, ptr %i.co, align 4, !tbaa !9
  %i.cp = add nsw i32 %i.bp, 1
  %i.cq = sext i32 %i.cp to i64                   ; 2 uses
  %i.cr = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.cq
  store float %i.ch, ptr %i.cr, align 4, !tbaa !9
  %i.cs = add nsw i32 %i.bp, 2
  %i.ct = sext i32 %i.cs to i64                   ; 2 uses
  %i.cu = getelementptr inbounds [4 x i8], ptr %i.ck, i64 %i.ct
end_hunk_1
