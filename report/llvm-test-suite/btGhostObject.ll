inline.NumInlined: 274
inline.NumDeleted: 84
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btQuaternion = type { %class.btQuadWord }
%class.btQuadWord = type { [4 x float] }
%class.btVector3 = type { [4 x float] }
%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }

$__clang_call_terminate = comdat any

$_Z9btRayAabbRK9btVector3S1_S1_S1_RfRS_ = comdat any

$_ZN17btCollisionObject24checkCollideWithOverrideEPS_ = comdat any

$_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape = comdat any

$_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf = comdat any

$_ZNK11btMatrix3x311getRotationER12btQuaternion = comdat any

@_ZTV13btGhostObject = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI13btGhostObject, ptr @_ZN17btCollisionObject24checkCollideWithOverrideEPS_, ptr @_ZN13btGhostObjectD2Ev, ptr @_ZN13btGhostObjectD0Ev, ptr @_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape, ptr @_ZN13btGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_, ptr @_ZN13btGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_] }, align 8
@_ZTV24btPairCachingGhostObject = dso_local unnamed_addr constant { [8 x ptr] } { [8 x ptr] [ptr null, ptr @_ZTI24btPairCachingGhostObject, ptr @_ZN17btCollisionObject24checkCollideWithOverrideEPS_, ptr @_ZN24btPairCachingGhostObjectD2Ev, ptr @_ZN24btPairCachingGhostObjectD0Ev, ptr @_ZN17btCollisionObject17setCollisionShapeEP16btCollisionShape, ptr @_ZN24btPairCachingGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_, ptr @_ZN24btPairCachingGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_] }, align 8
@_ZTI13btGhostObject = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS13btGhostObject, ptr @_ZTI17btCollisionObject }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS13btGhostObject = dso_local constant [16 x i8] c"13btGhostObject\00", align 1
@_ZTI17btCollisionObject = external constant ptr
@_ZTI24btPairCachingGhostObject = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS24btPairCachingGhostObject, ptr @_ZTI13btGhostObject }, align 8
@_ZTS24btPairCachingGhostObject = dso_local constant [27 x i8] c"24btPairCachingGhostObject\00", align 1

@_ZN13btGhostObjectC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13btGhostObjectC2Ev
@_ZN13btGhostObjectD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN13btGhostObjectD2Ev
@_ZN24btPairCachingGhostObjectC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN24btPairCachingGhostObjectC2Ev
@_ZN24btPairCachingGhostObjectD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN24btPairCachingGhostObjectD2Ev

; Function Attrs: uwtable
define dso_local void @_ZN13btGhostObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(312) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN17btCollisionObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(280) %0)
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV13btGhostObject, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 1, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 0, ptr %i.c, align 4, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 3, ptr %i.e, align 8, !tbaa !20
  ret void
}

declare void @_ZN17btCollisionObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(280)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

declare void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(280)) unnamed_addr #1

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #2 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #13 ; 0 uses
  tail call void @_ZSt9terminatev() #14
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN13btGhostObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(312) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV13btGhostObject, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load i8, ptr %i.c, align 8, !range !28
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit unwind label %bb.c

_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit: ; preds = %bb.a, %bb.b
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
  tail call void @__clang_call_terminate(ptr %i.h) #14
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN13btGhostObjectD0Ev(ptr noundef nonnull align 8 dereferenceable(312) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV13btGhostObject, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.d = load i8, ptr %i.c, align 8, !range !28
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i.i.i, label %bb.b, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit.i

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit.i unwind label %bb.c, !inline_history !29

_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit.i: ; preds = %bb.b, %bb.a
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(312) %0)
          to label %_ZN13btGhostObjectD2Ev.exit unwind label %bb.e, !inline_history !29

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(312) %0)
          to label %.body unwind label %bb.d, !inline_history !29

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #14, !inline_history !29
  unreachable

_ZN13btGhostObjectD2Ev.exit:                      ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.e:                                             ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectED2Ev.exit.i
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.f, %bb.c ]
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.f

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body

bb.f:                                             ; preds = %.body
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #14
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN13btGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(312) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18   ; 9 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread, label %bb.b

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread: ; preds = %bb.c, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.k = load i32, ptr %i.j, align 8, !tbaa !19
  %i.l = icmp eq i32 %i.c, %i.k
  br i1 %i.l, label %bb.d, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread
  %.not.i.i = icmp eq i32 %i.c, 0
  %i.m = shl nsw i32 %i.c, 1
  %i.n = select i1 %.not.i.i, i32 1, i32 %i.m     ; 4 uses
  %i.o = icmp slt i32 %i.c, %i.n
  br i1 %i.o, label %bb.e, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.n, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = sext i32 %i.n to i64
  %i.q = shl nsw i64 %i.p, 3
  %i.r = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.q, i32 noundef 16)
  %.pre.i = load i32, ptr %i.b, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i: ; preds = %bb.f, %bb.e
  %i.s = phi i32 [ %.pre.i, %bb.f ], [ %i.c, %bb.e ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.r, %bb.f ], [ null, %bb.e ] ; 8 uses
  %i.t = icmp sgt i32 %i.s, 0
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !17   ; 9 uses
  br i1 %i.t, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i
  %i.w = ptrtoaddr ptr %i.v to i64
  %.0.i.i.i11 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.s to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.s, 8
  %i.x = sub i64 %i.w, %.0.i.i.i11
  %diff.check = icmp ugt i64 %i.x, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %index ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %wide.load = load <2 x ptr>, ptr %i.z, align 8, !tbaa !33
  %wide.load12 = load <2 x ptr>, ptr %i.aa, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store <2 x ptr> %wide.load, ptr %i.y, align 8, !tbaa !33
  store <2 x ptr> %wide.load12, ptr %i.ab, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ac = icmp eq i64 %index.next, %n.vec
  br i1 %i.ac, label %middle.block, label %vector.body, !llvm.loop !35

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.i.prol
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !33
  store ptr %i.af, ptr %i.ad, align 8, !tbaa !33
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !38

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.ag = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ah = icmp ugt i64 %i.ag, -4
  br i1 %i.ah, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.i.i.i
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !33
  store ptr %i.ak, ptr %i.ai, align 8, !tbaa !33
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  store ptr %i.an, ptr %i.al, align 8, !tbaa !33
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.1
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !33
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv.next.i.i.i.2
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !33
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !33
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !40

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.v, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.av = load i8, ptr %i.au, align 8, !tbaa !10, !range !28, !noundef !41
  %i.aw = trunc nuw i8 %i.av to i1
  br i1 %i.aw, label %bb.g, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.v)
  %.pre2.pre.pre.i = load i32, ptr %i.b, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i: ; preds = %bb.g, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.s, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.g ], [ %i.s, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i ]
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 1, ptr %i.ax, align 8, !tbaa !10
  store ptr %.0.i.i.i, ptr %i.u, align 8, !tbaa !17
  store i32 %i.n, ptr %i.j, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit: ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread, %bb.d, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i
  %i.ay = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i ], [ %i.c, %bb.d ], [ %i.c, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread ] ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !17
  %i.bb = sext i32 %i.ay to i64
  %i.bc = getelementptr inbounds [8 x i8], ptr %i.ba, i64 %i.bb
  store ptr %i.a, ptr %i.bc, align 8, !tbaa !33
  %i.bd = add nsw i32 %i.ay, 1
  store i32 %i.bd, ptr %i.b, align 4, !tbaa !18
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN13btGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(312) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree readnone captures(none) %2, ptr nofree readnone captures(none) %3) unnamed_addr #5 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !18   ; 3 uses
  %i.d = icmp sgt i32 %i.c, 0
  br i1 %i.d, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.c to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !33
  %i.i = icmp eq ptr %i.h, %i.a
  br i1 %i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.i
  %i.k = add nsw i32 %i.c, -1                     ; 2 uses
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.l
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !33
  store ptr %i.n, ptr %i.j, align 8, !tbaa !33
  store i32 %i.k, ptr %i.b, align 4, !tbaa !18
  br label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread: ; preds = %bb.c, %bb.a, %bb.d
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN24btPairCachingGhostObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN17btCollisionObjectC2Ev(ptr noundef nonnull align 8 dereferenceable(312) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 1, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 296
  store ptr null, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 284
  store i32 0, ptr %i.c, align 4, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 288
  store i32 0, ptr %i.d, align 8, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 256
  store i32 3, ptr %i.e, align 8, !tbaa !20
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV24btPairCachingGhostObject, i64 16), ptr %0, align 8, !tbaa !8
  %i.f = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 128, i32 noundef 16)
          to label %bb.b unwind label %bb.d       ; 2 uses

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN28btHashedOverlappingPairCacheC1Ev(ptr noundef nonnull align 8 dereferenceable(128) %i.f)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.f, ptr %i.g, align 8, !tbaa !42
  ret void

bb.d:                                             ; preds = %bb.b, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN13btGhostObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.h

bb.f:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #14
  unreachable
}

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN28btHashedOverlappingPairCacheC1Ev(ptr noundef nonnull align 8 dereferenceable(128)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN24btPairCachingGhostObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV24btPairCachingGhostObject, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 312 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !8
  %i.d = load ptr, ptr %i.c, align 8
  invoke void %i.d(ptr noundef nonnull align 8 dereferenceable(128) %i.b)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.a, align 8, !tbaa !42
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef %i.e)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b
  store ptr getelementptr inbounds nuw inrange(-16, 48) (i8, ptr @_ZTV13btGhostObject, i64 16), ptr %0, align 8, !tbaa !8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.g, null
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.i = load i8, ptr %i.h, align 8, !range !28
  %i.j = trunc nuw i8 %i.i to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.j, i1 false
  br i1 %or.cond.i.i.i, label %bb.d, label %_ZN13btGhostObjectD2Ev.exit

bb.d:                                             ; preds = %bb.c
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.g)
          to label %_ZN13btGhostObjectD2Ev.exit unwind label %bb.e, !inline_history !29

bb.e:                                             ; preds = %bb.d
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(312) %0)
          to label %common.resume unwind label %bb.f, !inline_history !29

common.resume:                                    ; preds = %bb.g, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.e ], [ %i.n, %bb.g ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #14, !inline_history !29
  unreachable

_ZN13btGhostObjectD2Ev.exit:                      ; preds = %bb.c, %bb.d
  tail call void @_ZN17btCollisionObjectD2Ev(ptr noundef nonnull align 8 dead_on_return(280) dereferenceable(312) %0), !inline_history !29
  ret void

bb.g:                                             ; preds = %bb.b, %bb.a
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN13btGhostObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(312) %0)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #14
  unreachable
}

declare void @_Z21btAlignedFreeInternalPv(ptr noundef) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN24btPairCachingGhostObjectD0Ev(ptr noundef nonnull align 8 dereferenceable(320) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN24btPairCachingGhostObjectD2Ev(ptr noundef nonnull align 8 dereferenceable(320) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %0)
          to label %_ZN17btCollisionObjectdlEPv.exit unwind label %bb.d

_ZN17btCollisionObjectdlEPv.exit:                 ; preds = %bb.c
  resume { ptr, i32 } %i.a

bb.d:                                             ; preds = %bb.c
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #14
  unreachable
}

; Function Attrs: uwtable
define dso_local void @_ZN24btPairCachingGhostObject28addOverlappingObjectInternalEP17btBroadphaseProxyS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(320) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %.not = icmp eq ptr %2, null
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = select i1 %.not, ptr %i.b, ptr %2
  %i.d = load ptr, ptr %1, align 8, !tbaa !30     ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 4 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18   ; 9 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = icmp eq ptr %i.k, %i.d
  br i1 %i.l, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread, label %bb.b

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread: ; preds = %bb.c, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8, !tbaa !19
  %i.o = icmp eq i32 %i.f, %i.n
  br i1 %i.o, label %bb.d, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

bb.d:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread
  %.not.i.i = icmp eq i32 %i.f, 0
  %i.p = shl nsw i32 %i.f, 1
  %i.q = select i1 %.not.i.i, i32 1, i32 %i.p     ; 4 uses
  %i.r = icmp slt i32 %i.f, %i.q
  br i1 %i.r, label %bb.e, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

bb.e:                                             ; preds = %bb.d
  %.not.i.i.i = icmp eq i32 %i.q, 0
  br i1 %.not.i.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = sext i32 %i.q to i64
  %i.t = shl nsw i64 %i.s, 3
  %i.u = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.t, i32 noundef 16)
  %.pre.i = load i32, ptr %i.e, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i

_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i: ; preds = %bb.f, %bb.e
  %i.v = phi i32 [ %.pre.i, %bb.f ], [ %i.f, %bb.e ] ; 5 uses
  %.0.i.i.i = phi ptr [ %i.u, %bb.f ], [ null, %bb.e ] ; 8 uses
  %i.w = icmp sgt i32 %i.v, 0
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 296 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !17   ; 9 uses
  br i1 %i.w, label %.lr.ph.i.i.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i
  %i.z = ptrtoaddr ptr %i.y to i64
  %.0.i.i.i15 = ptrtoaddr ptr %.0.i.i.i to i64
  %wide.trip.count.i.i.i = zext nneg i32 %i.v to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.v, 8
  %i.aa = sub i64 %i.z, %.0.i.i.i15
  %diff.check = icmp ugt i64 %i.aa, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i
  %n.vec = and i64 %wide.trip.count.i.i.i, 2147483644 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %index ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %index ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %wide.load = load <2 x ptr>, ptr %i.ac, align 8, !tbaa !33
  %wide.load16 = load <2 x ptr>, ptr %i.ad, align 8, !tbaa !33
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store <2 x ptr> %wide.load, ptr %i.ab, align 8, !tbaa !33
  store <2 x ptr> %wide.load16, ptr %i.ae, align 8, !tbaa !33
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.af = icmp eq i64 %index.next, %n.vec
  br i1 %i.af, label %middle.block, label %vector.body, !llvm.loop !46

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i.i
  br i1 %cmp.n, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i.i, %middle.block
  %indvars.iv.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 3   ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ], [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i.prol
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i.prol
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !33
  store ptr %i.ai, ptr %i.ag, align 8, !tbaa !33
  %indvars.iv.next.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !47

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i.i.prol, %scalar.ph.prol ]
  %i.aj = sub nsw i64 %indvars.iv.i.i.i.ph, %wide.trip.count.i.i.i
  %i.ak = icmp ugt i64 %i.aj, -4
  br i1 %i.ak, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.3, %scalar.ph ], [ %indvars.iv.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.al = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.i.i.i
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.i.i.i
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !33
  store ptr %i.an, ptr %i.al, align 8, !tbaa !33
  %indvars.iv.next.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !33
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !33
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.1
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i.1
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !33
  store ptr %i.at, ptr %i.ar, align 8, !tbaa !33
  %indvars.iv.next.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i, 3 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %.0.i.i.i, i64 %indvars.iv.next.i.i.i.2
  %i.av = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %indvars.iv.next.i.i.i.2
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !33
  store ptr %i.aw, ptr %i.au, align 8, !tbaa !33
  %indvars.iv.next.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.3, %wide.trip.count.i.i.i
  br i1 %exitcond.not.i.i.i.3, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, label %scalar.ph, !llvm.loop !48

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i: ; preds = %_ZN20btAlignedObjectArrayIP17btCollisionObjectE8allocateEi.exit.i.i
  %.not.i5.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i5.i.i, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i: ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ay = load i8, ptr %i.ax, align 8, !tbaa !10, !range !28, !noundef !41
  %i.az = trunc nuw i8 %i.ay to i1
  br i1 %i.az, label %bb.g, label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.y)
  %.pre2.pre.pre.i = load i32, ptr %i.e, align 4, !tbaa !18
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i

_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i: ; preds = %bb.g, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i
  %.pre2.i = phi i32 [ %i.v, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.i.i ], [ %.pre2.pre.pre.i, %bb.g ], [ %i.v, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE4copyEiiPS1_.exit.thread.i.i ]
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 304
  store i8 1, ptr %i.ba, align 8, !tbaa !10
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !17
  store i32 %i.q, ptr %i.m, align 8, !tbaa !19
  br label %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit

_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit: ; preds = %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread, %bb.d, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i
  %i.bb = phi i32 [ %.pre2.i, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE10deallocateEv.exit.i.i ], [ %i.f, %bb.d ], [ %i.f, %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread ] ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !17
  %i.be = sext i32 %i.bb to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %i.bd, i64 %i.be
  store ptr %i.d, ptr %i.bf, align 8, !tbaa !33
  %i.bg = add nsw i32 %i.bb, 1
  store i32 %i.bg, ptr %i.e, align 4, !tbaa !18
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !42 ; 2 uses
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = tail call noundef ptr %i.bl(ptr noundef nonnull align 8 dereferenceable(128) %i.bi, ptr noundef %i.c, ptr noundef nonnull %1) ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_ZN20btAlignedObjectArrayIP17btCollisionObjectE9push_backERKS1_.exit
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN24btPairCachingGhostObject31removeOverlappingObjectInternalEP17btBroadphaseProxyP12btDispatcherS1_(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(320) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !30
  %.not = icmp eq ptr %3, null
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = select i1 %.not, ptr %i.c, ptr %3
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !18   ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.lr.ph.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !17   ; 3 uses
  %wide.trip.count.i = zext nneg i32 %i.f to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.c ] ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !33
  %i.l = icmp eq ptr %i.k, %i.a
  br i1 %i.l, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread, label %bb.b

bb.d:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.i
  %i.n = add nsw i32 %i.f, -1                     ; 2 uses
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.o
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !33
  store ptr %i.q, ptr %i.m, align 8, !tbaa !33
  store i32 %i.n, ptr %i.e, align 4, !tbaa !18
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !42   ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = tail call noundef ptr %i.v(ptr noundef nonnull align 8 dereferenceable(128) %i.s, ptr noundef %i.d, ptr noundef nonnull %1, ptr noundef %2) ; 0 uses
  br label %_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread

_ZNK20btAlignedObjectArrayIP17btCollisionObjectE16findLinearSearchERKS1_.exit.thread: ; preds = %bb.c, %bb.a, %bb.d
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZNK13btGhostObject15convexSweepTestEPK13btConvexShapeRK11btTransformS5_RN16btCollisionWorld20ConvexResultCallbackEf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(312) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(64) %2, ptr noundef nonnull align 4 dereferenceable(64) %3, ptr noundef nonnull align 8 dereferenceable(16) %4, float noundef %5) local_unnamed_addr #6 align 2 {
bb.a:
  %6 = alloca %class.btQuaternion, align 8        ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = alloca float, align 4                    ; 4 uses
  %8 = alloca %class.btTransform, align 4         ; 10 uses
  %9 = alloca %class.btTransform, align 4         ; 9 uses
  %10 = alloca %class.btVector3, align 8          ; 5 uses
  %11 = alloca %class.btVector3, align 8          ; 5 uses
  %12 = alloca %class.btVector3, align 8          ; 5 uses
  %13 = alloca %class.btVector3, align 8          ; 5 uses
  %14 = alloca %class.btTransform, align 4        ; 16 uses
  %15 = alloca %class.btVector3, align 8          ; 7 uses
  %16 = alloca %class.btVector3, align 8          ; 7 uses
  %i.b = alloca float, align 4                    ; 4 uses
  %17 = alloca %class.btVector3, align 4          ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(64) %2, i64 16, i1 false), !tbaa.struct !49
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(16) %i.c, i64 16, i1 false), !tbaa.struct !49
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %i.e, i64 16, i1 false), !tbaa.struct !49
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.h, ptr noundef nonnull align 4 dereferenceable(16) %i.g, i64 16, i1 false), !tbaa.struct !49
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !49
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %9, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.i, i64 16, i1 false), !tbaa.struct !49
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %9, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 4 dereferenceable(16) %i.k, i64 16, i1 false), !tbaa.struct !49
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %9, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 4 dereferenceable(16) %i.m, i64 16, i1 false), !tbaa.struct !49
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #13
  %i.o = load <2 x float>, ptr %i.n, align 4, !tbaa !51
  %i.p = load <2 x float>, ptr %i.h, align 4, !tbaa !51
  %i.q = fsub <2 x float> %i.o, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.s = load float, ptr %i.r, align 4, !tbaa !51
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.u = load float, ptr %i.t, align 4, !tbaa !51
  %i.v = fsub float %i.s, %i.u
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.v, i64 0
  store <2 x float> %i.q, ptr %12, align 8
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %12, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  call void @_ZN15btTransformUtil22calculateDiffAxisAngleERK11btTransformS2_R9btVector3Rf(ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(64) %9, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(4) %i.a)
  %i.w = load float, ptr %i.a, align 4, !tbaa !51 ; 2 uses
  %i.x = load <2 x float>, ptr %7, align 8, !tbaa !51
  %i.y = insertelement <2 x float> poison, float %i.w, i64 0
  %i.z = shufflevector <2 x float> %i.y, <2 x float> poison, <2 x i32> zeroinitializer
  %i.aa = fmul <2 x float> %i.z, %i.x
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = load float, ptr %i.ab, align 8, !tbaa !51
  %i.ad = fmul float %i.w, %i.ac
  %.sroa.3.12.vec.insert.i.i15.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ad, i64 0
  store <2 x float> %i.aa, ptr %13, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %13, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i15.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !50
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #13
  %i.ae = getelementptr inbounds nuw i8, ptr %14, i64 4
  %i.af = getelementptr inbounds nuw i8, ptr %14, i64 20
  %i.ag = getelementptr inbounds nuw i8, ptr %14, i64 24
  %i.ah = getelementptr inbounds nuw i8, ptr %14, i64 40
  %i.ai = getelementptr inbounds nuw i8, ptr %14, i64 44
  %i.aj = getelementptr inbounds nuw i8, ptr %14, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %6)
  call void @_ZNK11btMatrix3x311getRotationER12btQuaternion(ptr noundef nonnull align 4 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(16) %6)
  %.fca.0.load.i = load <2 x float>, ptr %6, align 8 ; 2 uses
  %.fca.1.gep.i = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.fca.1.load.i = load <2 x float>, ptr %.fca.1.gep.i, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %.sroa.0.0.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 0 ; 6 uses
  %.sroa.0.4.vec.extract = extractelement <2 x float> %.fca.0.load.i, i64 1 ; 5 uses
  %i.ak = fmul float %.sroa.0.4.vec.extract, %.sroa.0.4.vec.extract
  %i.al = call float @llvm.fmuladd.f32(float %.sroa.0.0.vec.extract, float %.sroa.0.0.vec.extract, float %i.ak)
  %.sroa.5.8.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 0 ; 4 uses
  %i.am = call float @llvm.fmuladd.f32(float %.sroa.5.8.vec.extract, float %.sroa.5.8.vec.extract, float %i.al)
  %.sroa.5.12.vec.extract = extractelement <2 x float> %.fca.1.load.i, i64 1 ; 5 uses
  %i.an = call noundef float @llvm.fmuladd.f32(float %.sroa.5.12.vec.extract, float %.sroa.5.12.vec.extract, float %i.am)
  %i.ao = fdiv float 2.000000e+00, %i.an          ; 3 uses
  %i.ap = fmul float %.sroa.0.0.vec.extract, %i.ao ; 2 uses
  %i.aq = fmul float %.sroa.0.4.vec.extract, %i.ao ; 3 uses
  %i.ar = fmul float %.sroa.5.8.vec.extract, %i.ao ; 4 uses
  %i.as = fmul float %.sroa.5.12.vec.extract, %i.ap ; 2 uses
  %i.at = fmul float %.sroa.5.12.vec.extract, %i.aq ; 2 uses
  %i.au = fmul float %.sroa.5.12.vec.extract, %i.ar ; 2 uses
  %i.av = fmul float %.sroa.0.0.vec.extract, %i.ap ; 2 uses
  %i.aw = fmul float %.sroa.0.0.vec.extract, %i.aq ; 2 uses
  %i.ax = fmul float %.sroa.0.0.vec.extract, %i.ar ; 2 uses
  %i.ay = fmul float %.sroa.0.4.vec.extract, %i.aq ; 2 uses
  %i.az = fmul float %.sroa.0.4.vec.extract, %i.ar ; 2 uses
  %i.ba = fmul float %.sroa.5.8.vec.extract, %i.ar ; 2 uses
  %i.bb = fadd float %i.ay, %i.ba
  %i.bc = fsub float 1.000000e+00, %i.bb
  %i.bd = fsub float %i.aw, %i.au
  %i.be = fadd float %i.ax, %i.at
  %i.bf = fadd float %i.aw, %i.au
  %i.bg = fadd float %i.av, %i.ba
  %i.bh = fsub float 1.000000e+00, %i.bg
  %i.bi = fsub float %i.az, %i.as
  %i.bj = fsub float %i.ax, %i.at
  %i.bk = fadd float %i.az, %i.as
  %i.bl = fadd float %i.av, %i.ay
  %i.bm = fsub float 1.000000e+00, %i.bl
  store float %i.bc, ptr %14, align 4, !tbaa !51
  store float %i.bd, ptr %i.ae, align 4, !tbaa !51
  %i.bn = getelementptr inbounds nuw i8, ptr %14, i64 8
  store float %i.be, ptr %i.bn, align 4, !tbaa !51
  %i.bo = getelementptr inbounds nuw i8, ptr %14, i64 12
  store float 0.000000e+00, ptr %i.bo, align 4, !tbaa !51
  %i.bp = getelementptr inbounds nuw i8, ptr %14, i64 16
  store float %i.bf, ptr %i.bp, align 4, !tbaa !51
  store float %i.bh, ptr %i.af, align 4, !tbaa !51
  store float %i.bi, ptr %i.ag, align 4, !tbaa !51
  %i.bq = getelementptr inbounds nuw i8, ptr %14, i64 28
  store float 0.000000e+00, ptr %i.bq, align 4, !tbaa !51
  %i.br = getelementptr inbounds nuw i8, ptr %14, i64 32
  store float %i.bj, ptr %i.br, align 4, !tbaa !51
  %i.bs = getelementptr inbounds nuw i8, ptr %14, i64 36
  store float %i.bk, ptr %i.bs, align 4, !tbaa !51
  store float %i.bm, ptr %i.ah, align 4, !tbaa !51
  store float 0.000000e+00, ptr %i.ai, align 4, !tbaa !51
  call void @_ZNK16btCollisionShape21calculateTemporalAabbERK11btTransformRK9btVector3S5_fRS3_S6_(ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 4 dereferenceable(64) %14, ptr noundef nonnull align 4 dereferenceable(16) %12, ptr noundef nonnull align 4 dereferenceable(16) %13, float noundef 1.000000e+00, ptr noundef nonnull align 4 dereferenceable(16) %10, ptr noundef nonnull align 4 dereferenceable(16) %11)
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #13
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 284 ; 2 uses
  %i.bu = load i32, ptr %i.bt, align 4, !tbaa !18
  %i.bv = icmp sgt i32 %i.bu, 0
  br i1 %i.bv, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.bx = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %11, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 2 uses
  %i.cb = load ptr, ptr %i.bw, align 8, !tbaa !17
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.cb, i64 %indvars.iv
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !33 ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 192
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !52
  %i.cg = load ptr, ptr %4, align 8, !tbaa !8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 16
  %i.ci = load ptr, ptr %i.ch, align 8
  %i.cj = call noundef zeroext i1 %i.ci(ptr noundef nonnull align 8 dereferenceable(16) %4, ptr noundef %i.cf)
  br i1 %i.cj, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #13
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cd, i64 200 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !53 ; 2 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  %i.cn = load ptr, ptr %i.cl, align 8, !tbaa !8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  %i.cp = load ptr, ptr %i.co, align 8
  call void %i.cp(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 4 dereferenceable(64) %i.cm, ptr noundef nonnull align 4 dereferenceable(16) %15, ptr noundef nonnull align 4 dereferenceable(16) %16)
  %i.cq = load <2 x float>, ptr %15, align 8, !tbaa !51
  %i.cr = load <2 x float>, ptr %10, align 8, !tbaa !51
  %i.cs = fadd <2 x float> %i.cq, %i.cr
  %i.ct = load float, ptr %i.bx, align 8, !tbaa !51
  %i.cu = load float, ptr %i.by, align 8, !tbaa !51
  %i.cv = fadd float %i.ct, %i.cu
  %.sroa.3.12.vec.insert.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cv, i64 0
  store <2 x float> %i.cs, ptr %15, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i, ptr %i.bx, align 8, !tbaa !50
  %i.cw = load <2 x float>, ptr %16, align 8, !tbaa !51
  %i.cx = load <2 x float>, ptr %11, align 8, !tbaa !51
  %i.cy = fadd <2 x float> %i.cw, %i.cx
  %i.cz = load float, ptr %i.bz, align 8, !tbaa !51
  %i.da = load float, ptr %i.ca, align 8, !tbaa !51
  %i.db = fadd float %i.cz, %i.da
  %.sroa.3.12.vec.insert.i10.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.db, i64 0
  store <2 x float> %i.cy, ptr %16, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i10.i, ptr %i.bz, align 8, !tbaa !50
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !51
end_hunk_0
