inline.NumInlined: 334
inline.NumDeleted: 72
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%struct.btDbvtAabbMm = type { %class.btVector3, %class.btVector3 }
%struct.btCompoundShapeChild = type { %class.btTransform, ptr, i32, float, ptr }
%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }

$__clang_call_terminate = comdat any

$_ZN11btMatrix3x311diagonalizeERS_fi = comdat any

$_ZN15btCompoundShape15setLocalScalingERK9btVector3 = comdat any

$_ZNK15btCompoundShape15getLocalScalingEv = comdat any

$_ZNK15btCompoundShape7getNameEv = comdat any

$_ZN15btCompoundShape9setMarginEf = comdat any

$_ZNK15btCompoundShape9getMarginEv = comdat any

@_ZTV15btCompoundShape = dso_local unnamed_addr constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTI15btCompoundShape, ptr @_ZN15btCompoundShapeD2Ev, ptr @_ZN15btCompoundShapeD0Ev, ptr @_ZNK15btCompoundShape7getAabbERK11btTransformR9btVector3S4_, ptr @_ZNK16btCollisionShape17getBoundingSphereER9btVector3Rf, ptr @_ZNK16btCollisionShape20getAngularMotionDiscEv, ptr @_ZNK16btCollisionShape27getContactBreakingThresholdEv, ptr @_ZN15btCompoundShape15setLocalScalingERK9btVector3, ptr @_ZNK15btCompoundShape15getLocalScalingEv, ptr @_ZNK15btCompoundShape21calculateLocalInertiaEfR9btVector3, ptr @_ZNK15btCompoundShape7getNameEv, ptr @_ZN15btCompoundShape9setMarginEf, ptr @_ZNK15btCompoundShape9getMarginEv, ptr @_ZN15btCompoundShape16removeChildShapeEP16btCollisionShape, ptr @_ZN15btCompoundShape20recalculateLocalAabbEv] }, align 8
@_ZTI15btCompoundShape = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15btCompoundShape, ptr @_ZTI16btCollisionShape }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS15btCompoundShape = dso_local constant [18 x i8] c"15btCompoundShape\00", align 1
@_ZTI16btCollisionShape = external constant ptr
@.str = private unnamed_addr constant [9 x i8] c"Compound\00", align 1

@_ZN15btCompoundShapeC1Eb = dso_local unnamed_addr alias void (ptr, i1), ptr @_ZN15btCompoundShapeC2Eb
@_ZN15btCompoundShapeD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN15btCompoundShapeD2Ev

; Function Attrs: uwtable
define dso_local void @_ZN15btCompoundShapeC2Eb(ptr noundef nonnull align 8 captures(none) dereferenceable(120) initializes((0, 12), (16, 24), (28, 36), (40, 49), (56, 120)) %0, i1 noundef zeroext %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr null, ptr %i.b, align 8, !tbaa !8
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTV15btCompoundShape, i64 16), ptr %0, align 8, !tbaa !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 1, ptr %i.c, align 8, !tbaa !13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.e, align 4, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <4 x float> <float f0x5D5E0B6B, float f0x5D5E0B6B, float f0x5D5E0B6B, float 0.000000e+00>, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <4 x float> <float f0xDD5E0B6B, float f0xDD5E0B6B, float f0xDD5E0B6B, float 0.000000e+00>, ptr %i.h, align 8, !tbaa !21
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store ptr null, ptr %i.i, align 8, !tbaa !23
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 1, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 100
  store <4 x float> <float 0.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00>, ptr %i.k, align 4, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 116
  store float 0.000000e+00, ptr %i.l, align 4, !tbaa !21
  store i32 31, ptr %i.a, align 8, !tbaa !28
  br i1 %1, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.m = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 64, i32 noundef 16)
          to label %bb.c unwind label %bb.e       ; 2 uses

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN6btDbvtC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %i.m)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  store ptr %i.m, ptr %i.i, align 8, !tbaa !23
  br label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.n = landingpad { ptr, i32 }
          cleanup
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.o, null
  %i.p = load i8, ptr %i.c, align 8, !range !29
  %i.q = trunc nuw i8 %i.p to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.q, i1 false
  br i1 %or.cond.i.i, label %bb.f, label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev.exit

bb.f:                                             ; preds = %bb.e
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.o)
          to label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.a
  ret void

_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev.exit: ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.n

bb.h:                                             ; preds = %bb.f
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #10
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN6btDbvtC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #11 ; 0 uses
  tail call void @_ZSt9terminatev() #10
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: uwtable
define dso_local void @_ZN15btCompoundShapeD2Ev(ptr noundef nonnull align 8 captures(none) dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTV15btCompoundShape, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6btDbvtD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !23
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef %i.c)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i8, ptr %i.g, align 8, !range !29
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.i, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev.exit

bb.e:                                             ; preds = %bb.d
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.f)
          to label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i5 = icmp ne ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i8, ptr %i.l, align 8, !range !29
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond.i.i6 = select i1 %.not.i.i.i5, i1 %i.n, i1 false
  br i1 %or.cond.i.i6, label %bb.g, label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev.exit8

bb.g:                                             ; preds = %bb.f
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.k)
  br label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev.exit8

_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev.exit8: ; preds = %bb.g, %bb.f
  ret void

_ZN20btAlignedObjectArrayI20btCompoundShapeChildED2Ev.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.d

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #10
  unreachable
}

declare void @_ZN6btDbvtD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #2

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN15btCompoundShapeD0Ev(ptr noundef nonnull align 8 dereferenceable(120) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTV15btCompoundShape, i64 16), ptr %0, align 8, !tbaa !11
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN6btDbvtD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %i.b)
          to label %bb.c unwind label %bb.d, !inline_history !30

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr %i.a, align 8, !tbaa !23
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef %i.c)
          to label %bb.f unwind label %bb.d, !inline_history !30

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.f, null
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load i8, ptr %i.g, align 8, !range !29
  %i.i = trunc nuw i8 %i.h to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.i, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %.body

bb.e:                                             ; preds = %bb.d
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.f)
          to label %.body unwind label %bb.h, !inline_history !30

bb.f:                                             ; preds = %bb.c, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !18   ; 2 uses
  %.not.i.i.i5.i = icmp ne ptr %i.k, null
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.m = load i8, ptr %i.l, align 8, !range !29
  %i.n = trunc nuw i8 %i.m to i1
  %or.cond.i.i6.i = select i1 %.not.i.i.i5.i, i1 %i.n, i1 false
  br i1 %or.cond.i.i6.i, label %bb.g, label %_ZN15btCompoundShapeD2Ev.exit

bb.g:                                             ; preds = %bb.f
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.k)
          to label %_ZN15btCompoundShapeD2Ev.exit unwind label %bb.i, !inline_history !30

bb.h:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #10, !inline_history !30
  unreachable

_ZN15btCompoundShapeD2Ev.exit:                    ; preds = %bb.f, %bb.g
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.d, %bb.e, %bb.i
  %eh.lpad-body = phi { ptr, i32 } [ %i.q, %bb.i ], [ %i.d, %bb.e ], [ %i.d, %bb.d ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN15btCompoundShapedlEPv.exit unwind label %bb.j

_ZN15btCompoundShapedlEPv.exit:                   ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

bb.j:                                             ; preds = %.body
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  tail call void @__clang_call_terminate(ptr %i.s) #10
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN15btCompoundShape13addChildShapeERK11btTransformP16btCollisionShape(ptr noundef nonnull align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.0.sroa.0 = alloca <64 x i8>, align 64    ; 10 uses
  %3 = alloca %class.btVector3, align 4           ; 7 uses
  %4 = alloca %class.btVector3, align 4           ; 7 uses
  %5 = alloca %struct.btDbvtAabbMm, align 4       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !27
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.sroa.0)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 64 dereferenceable(16) %.sroa.0.sroa.0, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !31
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0.16..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.16..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !31
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.0.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 32 dereferenceable(16) %.sroa.0.32..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !31
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.sroa.0.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.0.48..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false), !tbaa.struct !31
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i32, ptr %i.g, align 8, !tbaa !28
  %i.i = load ptr, ptr %2, align 8, !tbaa !11
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef float %i.k(ptr noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.m = load ptr, ptr %2, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 4 dereferenceable(64) %1, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.r = load float, ptr %i.p, align 8, !tbaa !21
  %i.s = load float, ptr %3, align 4, !tbaa !21   ; 2 uses
  %i.t = fcmp ogt float %i.r, %i.s
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store float %i.s, ptr %i.p, align 8, !tbaa !21
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.u = load float, ptr %i.q, align 8, !tbaa !21
  %i.v = load float, ptr %4, align 4, !tbaa !21   ; 2 uses
  %i.w = fcmp olt float %i.u, %i.v
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store float %i.v, ptr %i.q, align 8, !tbaa !21
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.y = load float, ptr %i.x, align 4, !tbaa !21
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.aa = load float, ptr %i.z, align 4, !tbaa !21 ; 2 uses
  %i.ab = fcmp ogt float %i.y, %i.aa
  br i1 %i.ab, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  store float %i.aa, ptr %i.x, align 4, !tbaa !21
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 76 ; 2 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !21
  %i.ae = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.af = load float, ptr %i.ae, align 4, !tbaa !21 ; 2 uses
  %i.ag = fcmp olt float %i.ad, %i.af
  br i1 %i.ag, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store float %i.af, ptr %i.ac, align 4, !tbaa !21
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !21
  %i.aj = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ak = load float, ptr %i.aj, align 4, !tbaa !21 ; 2 uses
  %i.al = fcmp ogt float %i.ai, %i.ak
  br i1 %i.al, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  store float %i.ak, ptr %i.ah, align 8, !tbaa !21
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.an = load float, ptr %i.am, align 8, !tbaa !21
  %i.ao = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.ap = load float, ptr %i.ao, align 4, !tbaa !21 ; 2 uses
  %i.aq = fcmp olt float %i.an, %i.ap
  br i1 %i.aq, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  store float %i.ap, ptr %i.am, align 8, !tbaa !21
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !23 ; 2 uses
  %.not = icmp eq ptr %i.as, null
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !31
  %i.at = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.at, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !31
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.av = load i32, ptr %i.au, align 4, !tbaa !19
  %i.aw = sext i32 %i.av to i64
  %i.ax = inttoptr i64 %i.aw to ptr
  %i.ay = call noundef ptr @_ZN6btDbvt6insertERK12btDbvtAabbMmPv(ptr noundef nonnull align 8 dereferenceable(64) %i.as, ptr noundef nonnull align 4 dereferenceable(32) %5, ptr noundef %i.ax)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.sroa.14.0 = phi ptr [ undef, %bb.m ], [ %i.ay, %bb.n ]
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 5 uses
  %i.ba = load i32, ptr %i.az, align 4, !tbaa !19 ; 7 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bc = load i32, ptr %i.bb, align 8, !tbaa !20
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br i1 %i.bd, label %bb.p, label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE9push_backERKS0_.exit

bb.p:                                             ; preds = %bb.o
  %.not.i.i = icmp eq i32 %i.ba, 0
  %i.be = shl nsw i32 %i.ba, 1
  %i.bf = select i1 %.not.i.i, i32 1, i32 %i.be   ; 4 uses
  %i.bg = icmp slt i32 %i.ba, %i.bf
  br i1 %i.bg, label %bb.q, label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE9push_backERKS0_.exit

bb.q:                                             ; preds = %bb.p
  %.not.i.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE8allocateEi.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bh = sext i32 %i.bf to i64
  %i.bi = mul nsw i64 %i.bh, 88
  %i.bj = call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.bi, i32 noundef 16)
  %.pre.i = load i32, ptr %i.az, align 4, !tbaa !19
  br label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayI20btCompoundShapeChildE8allocateEi.exit.i.i: ; preds = %bb.r, %bb.q
  %i.bk = phi i32 [ %.pre.i, %bb.r ], [ %i.ba, %bb.q ] ; 2 uses
  %.0.i.i.i = phi ptr [ %i.bj, %bb.r ], [ null, %bb.q ] ; 2 uses
  %i.bl = icmp sgt i32 %i.bk, 0
  br i1 %i.bl, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayI20btCompoundShapeChildE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE8allocateEi.exit.i.i
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 40
  %wide.trip.count.i.i.i = zext nneg i32 %i.bk to i64
  br label %bb.s

bb.s:                                             ; preds = %bb.s, %.lr.ph.i.i.i
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i, %bb.s ] ; 3 uses
  %i.bn = getelementptr inbounds nuw [88 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i ; 5 uses
  %i.bo = load ptr, ptr %i.bm, align 8, !tbaa !18
  %i.bp = getelementptr inbounds nuw [88 x i8], ptr %i.bo, i64 %indvars.iv.i.i.i ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bn, ptr noundef nonnull align 8 dereferenceable(88) %i.bp, i64 16, i1 false), !tbaa.struct !31
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bn, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.br, ptr noundef nonnull align 8 dereferenceable(16) %i.bq, i64 16, i1 false), !tbaa.struct !31
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bp, i64 32
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bt, ptr noundef nonnull align 8 dereferenceable(16) %i.bs, i64 16, i1 false), !tbaa.struct !31
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 48
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bp, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bu, ptr noundef nonnull align 8 dereferenceable(16) %i.bv, i64 16, i1 false), !tbaa.struct !31
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 64
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bp, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bw, ptr noundef nonnull align 8 dereferenceable(24) %i.bx, i64 24, i1 false)
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %indvars.iv.next.i.i.i, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i, label %_ZNK20btAlignedObjectArrayI20btCompoundShapeChildE4copyEiiPS0_.exit.i.i, label %bb.s

_ZNK20btAlignedObjectArrayI20btCompoundShapeChildE4copyEiiPS0_.exit.i.i: ; preds = %bb.s, %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE8allocateEi.exit.i.i
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !18 ; 2 uses
  %.not.i5.i.i = icmp ne ptr %i.bz, null
  %i.ca = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.cb = load i8, ptr %i.ca, align 8, !range !29
  %i.cc = trunc nuw i8 %i.cb to i1
  %or.cond.i.i = select i1 %.not.i5.i.i, i1 %i.cc, i1 false
  br i1 %or.cond.i.i, label %bb.t, label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE10deallocateEv.exit.i.i

bb.t:                                             ; preds = %_ZNK20btAlignedObjectArrayI20btCompoundShapeChildE4copyEiiPS0_.exit.i.i
  call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.bz)
  br label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayI20btCompoundShapeChildE10deallocateEv.exit.i.i: ; preds = %bb.t, %_ZNK20btAlignedObjectArrayI20btCompoundShapeChildE4copyEiiPS0_.exit.i.i
  store i8 1, ptr %i.ca, align 8, !tbaa !13
  store ptr %.0.i.i.i, ptr %i.by, align 8, !tbaa !18
  store i32 %i.bf, ptr %i.bb, align 8, !tbaa !20
  %.pre4.i = load i32, ptr %i.az, align 4, !tbaa !19
  br label %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE9push_backERKS0_.exit

_ZN20btAlignedObjectArrayI20btCompoundShapeChildE9push_backERKS0_.exit: ; preds = %bb.o, %bb.p, %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE10deallocateEv.exit.i.i
  %i.cd = phi i32 [ %i.ba, %bb.o ], [ %i.ba, %bb.p ], [ %.pre4.i, %_ZN20btAlignedObjectArrayI20btCompoundShapeChildE10deallocateEv.exit.i.i ]
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !18
  %i.cg = sext i32 %i.cd to i64
  %i.ch = getelementptr inbounds [88 x i8], ptr %i.cf, i64 %i.cg ; 8 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ch, ptr noundef nonnull align 64 dereferenceable(16) %.sroa.0.sroa.0, i64 16, i1 false), !tbaa.struct !31
  %6 = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull align 16 dereferenceable(16) %i.ci, i64 16, i1 false), !tbaa.struct !31
  %7 = getelementptr inbounds nuw i8, ptr %i.ch, i64 32
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %7, ptr noundef nonnull align 32 dereferenceable(16) %i.cj, i64 16, i1 false), !tbaa.struct !31
  %8 = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.0.sroa.0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %8, ptr noundef nonnull align 16 dereferenceable(16) %i.ck, i64 16, i1 false), !tbaa.struct !31
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  store ptr %2, ptr %i.cl, align 8
  %.sroa.12.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 72
  store i32 %i.h, ptr %.sroa.12.64..sroa_idx, align 8
  %.sroa.13.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 76
  store float %i.l, ptr %.sroa.13.64..sroa_idx, align 4
  %.sroa.14.64..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ch, i64 80
  store ptr %.sroa.14.0, ptr %.sroa.14.64..sroa_idx, align 8
  %i.cm = load i32, ptr %i.az, align 4, !tbaa !19
  %i.cn = add nsw i32 %i.cm, 1
  store i32 %i.cn, ptr %i.az, align 4, !tbaa !19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.sroa.0)
  ret void
}

declare noundef ptr @_ZN6btDbvt6insertERK12btDbvtAabbMmPv(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef nonnull align 4 dereferenceable(32), ptr noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN15btCompoundShape20updateChildTransformEiRK11btTransform(ptr noundef nonnull align 8 dereferenceable(120) %0, i32 noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %class.btVector3, align 4           ; 4 uses
  %4 = alloca %class.btVector3, align 4           ; 4 uses
  %5 = alloca %struct.btDbvtAabbMm, align 4       ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.c = sext i32 %1 to i64                       ; 3 uses
  %i.d = getelementptr inbounds [88 x i8], ptr %i.b, i64 %i.c ; 4 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %i.d, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !31
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !31
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !31
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !31
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23
  %.not = icmp eq ptr %i.l, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.n = getelementptr inbounds [88 x i8], ptr %i.m, i64 %i.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !33   ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  call void %i.s(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef nonnull align 4 dereferenceable(16) %4)
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef nonnull align 4 dereferenceable(16) %3, i64 16, i1 false), !tbaa.struct !31
  %i.t = getelementptr inbounds nuw i8, ptr %5, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %4, i64 16, i1 false), !tbaa.struct !31
  %i.u = load ptr, ptr %i.k, align 8, !tbaa !23
  %i.v = load ptr, ptr %i.a, align 8, !tbaa !18
  %i.w = getelementptr inbounds [88 x i8], ptr %i.v, i64 %i.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !39
  call void @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm(ptr noundef nonnull align 8 dereferenceable(64) %i.u, ptr noundef %i.y, ptr noundef nonnull align 4 dereferenceable(32) %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.z = load ptr, ptr %0, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 104
  %i.ab = load ptr, ptr %i.aa, align 8
  call void %i.ab(ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void
}

declare void @_ZN6btDbvt6updateEP10btDbvtNodeR12btDbvtAabbMm(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef, ptr noundef nonnull align 4 dereferenceable(32)) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN15btCompoundShape23removeChildShapeByIndexEi(ptr noundef nonnull align 8 captures(none) dereferenceable(120) %0, i32 noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.btCompoundShapeChild, align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !23   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.pre = sext i32 %1 to i64
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !18
  %i.h = sext i32 %1 to i64                       ; 2 uses
  %i.i = getelementptr inbounds [88 x i8], ptr %i.g, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !39
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef %i.k)
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge, %bb.b
  %.pre-phi = phi i64 [ %.pre, %._crit_edge ], [ %i.h, %bb.b ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 3 uses
  %i.m = load i32, ptr %i.l, align 4, !tbaa !19
  %i.n = add nsw i32 %i.m, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !18   ; 2 uses
  %i.q = getelementptr inbounds [88 x i8], ptr %i.p, i64 %.pre-phi ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %2, ptr noundef nonnull align 8 dereferenceable(88) %i.q, i64 16, i1 false), !tbaa.struct !31
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !tbaa.struct !31
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 32 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.u, ptr noundef nonnull align 8 dereferenceable(16) %i.t, i64 16, i1 false), !tbaa.struct !31
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, ptr noundef nonnull align 8 dereferenceable(16) %i.w, i64 16, i1 false), !tbaa.struct !31
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.q, i64 64 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.y, i64 24, i1 false)
  %i.z = sext i32 %i.n to i64                     ; 2 uses
  %i.aa = getelementptr inbounds [88 x i8], ptr %i.p, i64 %i.z ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull align 8 dereferenceable(88) %i.aa, i64 16, i1 false), !tbaa.struct !31
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i64 16, i1 false), !tbaa.struct !31
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 8 dereferenceable(16) %i.ac, i64 16, i1 false), !tbaa.struct !31
  %i.ad = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.w, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false), !tbaa.struct !31
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i64 24, i1 false)
  %i.af = load ptr, ptr %i.o, align 8, !tbaa !18
  %i.ag = getelementptr inbounds [88 x i8], ptr %i.af, i64 %i.z ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ag, ptr noundef nonnull align 8 dereferenceable(88) %2, i64 16, i1 false), !tbaa.struct !31
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ah, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !31
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ai, ptr noundef nonnull align 8 dereferenceable(16) %i.u, i64 16, i1 false), !tbaa.struct !31
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, ptr noundef nonnull align 8 dereferenceable(16) %i.v, i64 16, i1 false), !tbaa.struct !31
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ak, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.al = load i32, ptr %i.l, align 4, !tbaa !19
  %i.am = add nsw i32 %i.al, -1
  store i32 %i.am, ptr %i.l, align 4, !tbaa !19
  ret void
}

declare void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64), ptr noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN15btCompoundShape16removeChildShapeEP16btCollisionShape(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef readnone captures(address) %1) unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %struct.btCompoundShapeChild, align 8 ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 4 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !27
  %i.c = add nsw i32 %i.b, 1
  store i32 %i.c, ptr %i.a, align 8, !tbaa !27
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 28 ; 4 uses
  %i.e = load i32, ptr %i.d, align 4, !tbaa !19   ; 3 uses
  %i.f = icmp sgt i32 %i.e, 0
  br i1 %i.f, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 2 uses
  %i.m = zext nneg i32 %i.e to i64
  br label %bb.b

._crit_edge:                                      ; preds = %bb.e, %bb.a
  %i.n = load ptr, ptr %0, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(120) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.e
  %i.q = phi i32 [ %i.e, %.lr.ph ], [ %i.ax, %bb.e ] ; 2 uses
  %indvars.iv = phi i64 [ %i.m, %.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.r = load ptr, ptr %i.g, align 8, !tbaa !18   ; 2 uses
  %i.s = getelementptr inbounds nuw [88 x i8], ptr %i.r, i64 %indvars.iv.next ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !33
  %i.v = icmp eq ptr %i.u, %1
  br i1 %i.v, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.w = load i32, ptr %i.a, align 8, !tbaa !27
  %i.x = add nsw i32 %i.w, 1
  store i32 %i.x, ptr %i.a, align 8, !tbaa !27
  %i.y = load ptr, ptr %i.h, align 8, !tbaa !23   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN15btCompoundShape23removeChildShapeByIndexEi.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !39
  tail call void @_ZN6btDbvt6removeEP10btDbvtNode(ptr noundef nonnull align 8 dereferenceable(64) %i.y, ptr noundef %i.aa)
  %.pre = load i32, ptr %i.d, align 4, !tbaa !19
end_hunk_0
