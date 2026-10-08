Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/btDbvtBroadphase?download=true
inline.NumInlined: 295
inline.NumDeleted: 104
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btAlignedObjectArray.6 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%struct.btDbvtAabbMm = type { %class.btVector3, %class.btVector3 }
%class.btVector3 = type { [4 x float] }
%struct.btDbvtTreeCollider = type { %"struct.btDbvt::ICollide", ptr, ptr }
%"struct.btDbvt::ICollide" = type { ptr }
%struct.BroadphaseRayTester = type { %"struct.btDbvt::ICollide", ptr }
%struct.BroadphaseAabbTester = type { %"struct.btDbvt::ICollide", ptr }
%class.btBroadphasePairSortPredicate = type { i8 }
%struct.btBroadphasePair = type { ptr, ptr, ptr, %union.anon.9 }
%union.anon.9 = type { ptr }

$_ZN20btAlignedObjectArrayIS_IPK10btDbvtNodeEE6resizeEiRKS3_ = comdat any

$_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev = comdat any

$_ZN20btAlignedObjectArrayIS_IPK10btDbvtNodeEED2Ev = comdat any

$__clang_call_terminate = comdat any

$_ZNK6btDbvt9collideTVEPK10btDbvtNodeRK12btDbvtAabbMmRNS_8ICollideE = comdat any

$_ZNK6btDbvt15rayTestInternalEPK10btDbvtNodeRK9btVector3S5_S5_PjfS5_S5_R20btAlignedObjectArrayIS2_ERNS_8ICollideE = comdat any

$_ZN6btDbvt8ICollideD2Ev = comdat any

$_ZN6btDbvt24collideTTpersistentStackEPK10btDbvtNodeS2_RNS_8ICollideE = comdat any

$_ZN18btDbvtTreeColliderD0Ev = comdat any

$_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNodeS2_ = comdat any

$_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNode = comdat any

$_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef = comdat any

$_ZN6btDbvt8ICollide7ProcessEPK11btDbvntNodeS3_ = comdat any

$_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode = comdat any

$_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode = comdat any

$_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_ = comdat any

$_ZN19BroadphaseRayTesterD0Ev = comdat any

$_ZN19BroadphaseRayTester7ProcessEPK10btDbvtNode = comdat any

$_ZN20BroadphaseAabbTesterD0Ev = comdat any

$_ZN20BroadphaseAabbTester7ProcessEPK10btDbvtNode = comdat any

$_ZN20btAlignedObjectArrayIS_IPK10btDbvtNodeEE7reserveEi = comdat any

$_ZN20btAlignedObjectArrayI16btBroadphasePairE17quickSortInternalI29btBroadphasePairSortPredicateEEvRKT_ii = comdat any

$_ZTI21btBroadphaseInterface = comdat any

$_ZTS21btBroadphaseInterface = comdat any

$_ZTV18btDbvtTreeCollider = comdat any

$_ZTI18btDbvtTreeCollider = comdat any

$_ZTS18btDbvtTreeCollider = comdat any

$_ZTIN6btDbvt8ICollideE = comdat any

$_ZTSN6btDbvt8ICollideE = comdat any

$_ZTV19BroadphaseRayTester = comdat any

$_ZTI19BroadphaseRayTester = comdat any

$_ZTS19BroadphaseRayTester = comdat any

$_ZTV20BroadphaseAabbTester = comdat any

$_ZTI20BroadphaseAabbTester = comdat any

$_ZTS20BroadphaseAabbTester = comdat any

@gDbvtMargin = dso_local local_unnamed_addr global float 5.000000e-02, align 4
@_ZTV16btDbvtBroadphase = dso_local constant { [16 x ptr] } { [16 x ptr] [ptr null, ptr @_ZTI16btDbvtBroadphase, ptr @_ZN16btDbvtBroadphaseD2Ev, ptr @_ZN16btDbvtBroadphaseD0Ev, ptr @_ZN16btDbvtBroadphase11createProxyERK9btVector3S2_iPviiP12btDispatcher, ptr @_ZN16btDbvtBroadphase12destroyProxyEP17btBroadphaseProxyP12btDispatcher, ptr @_ZN16btDbvtBroadphase7setAabbEP17btBroadphaseProxyRK9btVector3S4_P12btDispatcher, ptr @_ZNK16btDbvtBroadphase7getAabbEP17btBroadphaseProxyR9btVector3S3_, ptr @_ZN16btDbvtBroadphase7rayTestERK9btVector3S2_R23btBroadphaseRayCallbackS2_S2_, ptr @_ZN16btDbvtBroadphase8aabbTestERK9btVector3S2_R24btBroadphaseAabbCallback, ptr @_ZN16btDbvtBroadphase25calculateOverlappingPairsEP12btDispatcher, ptr @_ZN16btDbvtBroadphase23getOverlappingPairCacheEv, ptr @_ZNK16btDbvtBroadphase23getOverlappingPairCacheEv, ptr @_ZNK16btDbvtBroadphase17getBroadphaseAabbER9btVector3S1_, ptr @_ZN16btDbvtBroadphase9resetPoolEP12btDispatcher, ptr @_ZN16btDbvtBroadphase10printStatsEv] }, align 8
@_ZTI16btDbvtBroadphase = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16btDbvtBroadphase, ptr @_ZTI21btBroadphaseInterface }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS16btDbvtBroadphase = dso_local constant [19 x i8] c"16btDbvtBroadphase\00", align 1
@_ZTI21btBroadphaseInterface = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS21btBroadphaseInterface }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS21btBroadphaseInterface = linkonce_odr dso_local constant [24 x i8] c"21btBroadphaseInterface\00", comdat, align 1
@_ZTV18btDbvtTreeCollider = linkonce_odr dso_local constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTI18btDbvtTreeCollider, ptr @_ZN6btDbvt8ICollideD2Ev, ptr @_ZN18btDbvtTreeColliderD0Ev, ptr @_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNodeS2_, ptr @_ZN18btDbvtTreeCollider7ProcessEPK10btDbvtNode, ptr @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef, ptr @_ZN6btDbvt8ICollide7ProcessEPK11btDbvntNodeS3_, ptr @_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode, ptr @_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode] }, comdat, align 8
@_ZTI18btDbvtTreeCollider = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS18btDbvtTreeCollider, ptr @_ZTIN6btDbvt8ICollideE }, comdat, align 8
@_ZTS18btDbvtTreeCollider = linkonce_odr dso_local constant [21 x i8] c"18btDbvtTreeCollider\00", comdat, align 1
@_ZTIN6btDbvt8ICollideE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN6btDbvt8ICollideE }, comdat, align 8
@_ZTSN6btDbvt8ICollideE = linkonce_odr dso_local constant [19 x i8] c"N6btDbvt8ICollideE\00", comdat, align 1
@_ZTV19BroadphaseRayTester = linkonce_odr dso_local constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTI19BroadphaseRayTester, ptr @_ZN6btDbvt8ICollideD2Ev, ptr @_ZN19BroadphaseRayTesterD0Ev, ptr @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_, ptr @_ZN19BroadphaseRayTester7ProcessEPK10btDbvtNode, ptr @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef, ptr @_ZN6btDbvt8ICollide7ProcessEPK11btDbvntNodeS3_, ptr @_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode, ptr @_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode] }, comdat, align 8
@_ZTI19BroadphaseRayTester = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS19BroadphaseRayTester, ptr @_ZTIN6btDbvt8ICollideE }, comdat, align 8
@_ZTS19BroadphaseRayTester = linkonce_odr dso_local constant [22 x i8] c"19BroadphaseRayTester\00", comdat, align 1
@_ZTV20BroadphaseAabbTester = linkonce_odr dso_local constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTI20BroadphaseAabbTester, ptr @_ZN6btDbvt8ICollideD2Ev, ptr @_ZN20BroadphaseAabbTesterD0Ev, ptr @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodeS3_, ptr @_ZN20BroadphaseAabbTester7ProcessEPK10btDbvtNode, ptr @_ZN6btDbvt8ICollide7ProcessEPK10btDbvtNodef, ptr @_ZN6btDbvt8ICollide7ProcessEPK11btDbvntNodeS3_, ptr @_ZN6btDbvt8ICollide7DescentEPK10btDbvtNode, ptr @_ZN6btDbvt8ICollide9AllLeavesEPK10btDbvtNode] }, comdat, align 8
@_ZTI20BroadphaseAabbTester = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS20BroadphaseAabbTester, ptr @_ZTIN6btDbvt8ICollideE }, comdat, align 8
@_ZTS20BroadphaseAabbTester = linkonce_odr dso_local constant [23 x i8] c"20BroadphaseAabbTester\00", comdat, align 1
@llvm.global_ctors = appending global [0 x { i32, ptr, ptr }] zeroinitializer

@_ZN16btDbvtBroadphaseC1EP22btOverlappingPairCache = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN16btDbvtBroadphaseC2EP22btOverlappingPairCache
@_ZN16btDbvtBroadphaseD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16btDbvtBroadphaseD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16btDbvtBroadphaseC2EP22btOverlappingPairCache(ptr noundef nonnull align 8 dereferenceable(256) initializes((0, 8)) %0, ptr noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %class.btAlignedObjectArray.6, align 8 ; 9 uses
  store ptr getelementptr inbounds nuw inrange(-16, 112) (i8, ptr @_ZTV16btDbvtBroadphase, i64 16), ptr %0, align 8, !tbaa !11
  %.ptr.ptr = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  tail call void @_ZN6btDbvtC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %.ptr.ptr)
  %.ptr.ptr.1 = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  invoke void @_ZN6btDbvtC1Ev(ptr noundef nonnull align 8 dereferenceable(64) %.ptr.ptr.1)
          to label %bb.b unwind label %.preheader.preheader

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i8 1, ptr %i.b, align 8, !tbaa !17
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 240
  store ptr null, ptr %i.c, align 8, !tbaa !18
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 228
  store i32 0, ptr %i.d, align 4, !tbaa !19
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i32 0, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 221
  store i8 0, ptr %i.f, align 1, !tbaa !25
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 222
  store i8 1, ptr %i.g, align 2, !tbaa !26
  %.not = icmp eq ptr %1, null                    ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.i = zext i1 %.not to i8
  store i8 %i.i, ptr %i.h, align 4, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 168
  store float 0.000000e+00, ptr %i.j, align 8, !tbaa !93
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 172
  store <4 x i32> <i32 0, i32 1, i32 0, i32 10>, ptr %i.k, align 4, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 188
  store <4 x i32> <i32 1, i32 0, i32 0, i32 0>, ptr %i.l, align 4, !tbaa !28
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 204
  store float 0.000000e+00, ptr %i.m, align 4, !tbaa !29
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.n = invoke noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef 120, i32 noundef 16)
          to label %bb.d unwind label %bb.f       ; 2 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN28btHashedOverlappingPairCacheC1Ev(ptr noundef nonnull align 8 dereferenceable(120) %i.n)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.b, %bb.d
  %i.o = phi ptr [ %i.n, %bb.d ], [ %1, %bb.b ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.o, ptr %i.p, align 8, !tbaa !30
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i32 0, ptr %i.q, align 8, !tbaa !31
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.r, align 8, !tbaa !32
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 212
  store i32 0, ptr %i.s, align 4, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.t, i8 0, i64 24, i1 false), !tbaa !35
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  store i8 1, ptr %i.u, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  store ptr null, ptr %i.v, align 8, !tbaa !41
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 0, ptr %i.w, align 4, !tbaa !42
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.x, align 8, !tbaa !43
  invoke void @_ZN20btAlignedObjectArrayIS_IPK10btDbvtNodeEE6resizeEiRKS3_(ptr noundef nonnull align 8 dereferenceable(25) %i.a, i32 noundef 1, ptr noundef nonnull align 8 dereferenceable(25) %2)
          to label %bb.h unwind label %bb.k

.preheader.preheader:                             ; preds = %bb.a
  %i.y = landingpad { ptr, i32 }
          cleanup
  %.ptr25 = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_ZN6btDbvtD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr25) #19
  br label %.loopexit

bb.f:                                             ; preds = %bb.c
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit

bb.g:                                             ; preds = %bb.d
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.loopexit

bb.h:                                             ; preds = %bb.e
  %i.ab = load ptr, ptr %i.v, align 8, !tbaa !41  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.ab, null
  %i.ac = load i8, ptr %i.u, align 8, !range !44
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.i, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

bb.i:                                             ; preds = %bb.h
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ab)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  call void @__clang_call_terminate(ptr %i.af) #20
  unreachable

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.k:                                             ; preds = %bb.e
  %i.ag = landingpad { ptr, i32 }
          cleanup
  call void @_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %2) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  br label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %bb.g, %bb.k, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %i.ag, %bb.k ], [ %i.aa, %bb.g ], [ %i.z, %bb.f ]
  call void @_ZN20btAlignedObjectArrayIS_IPK10btDbvtNodeEED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.a) #19
  call void @_ZN6btDbvtD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr.ptr.1) #19
  call void @_ZN6btDbvtD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64) %.ptr.ptr) #19
  br label %.loopexit

.loopexit:                                        ; preds = %.preheader.preheader, %.loopexit.loopexit
  %.pn.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.loopexit.loopexit ], [ %i.y, %.preheader.preheader ]
  resume { ptr, i32 } %.pn.pn.pn.pn
}

declare void @_ZN6btDbvtC1Ev(ptr noundef nonnull align 8 dereferenceable(64)) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nounwind
declare void @_ZN6btDbvtD1Ev(ptr noundef nonnull align 8 dead_on_return(64) dereferenceable(64)) unnamed_addr #2

declare noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @_ZN28btHashedOverlappingPairCacheC1Ev(ptr noundef nonnull align 8 dereferenceable(120)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20btAlignedObjectArrayIS_IPK10btDbvtNodeEE6resizeEiRKS3_(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(25) %2) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !19   ; 4 uses
  %i.c = icmp slt i32 %1, %i.b
  br i1 %i.c, label %.preheader, label %bb.e

.preheader:                                       ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = sext i32 %1 to i64
  br label %bb.b

bb.b:                                             ; preds = %.preheader, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit
  %indvars.iv26 = phi i64 [ %i.e, %.preheader ], [ %indvars.iv.next27, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit ] ; 2 uses
  %i.f = load ptr, ptr %i.d, align 8, !tbaa !18
  %i.g = getelementptr inbounds [32 x i8], ptr %i.f, i64 %indvars.iv26 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !41   ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.i, null
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.k = load i8, ptr %i.j, align 8, !range !44
  %i.l = trunc nuw i8 %i.k to i1
  %or.cond.i.i = select i1 %.not.i.i.i, i1 %i.l, i1 false
  br i1 %or.cond.i.i, label %bb.c, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit

bb.c:                                             ; preds = %bb.b
  invoke void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.i)
          to label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          catch ptr null
  %i.n = extractvalue { ptr, i32 } %i.m, 0
  tail call void @__clang_call_terminate(ptr %i.n) #20
  unreachable

_ZN20btAlignedObjectArrayIPK10btDbvtNodeED2Ev.exit: ; preds = %bb.b, %bb.c
  %indvars.iv.next27 = add nsw i64 %indvars.iv26, 1 ; 2 uses
  %lftr.wideiv29 = trunc i64 %indvars.iv.next27 to i32
  %exitcond30.not = icmp eq i32 %i.b, %lftr.wideiv29
  br i1 %exitcond30.not, label %.loopexit, label %bb.b, !llvm.loop !94

bb.e:                                             ; preds = %bb.a
  %i.o = icmp sgt i32 %1, %i.b
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %bb.e
  tail call void @_ZN20btAlignedObjectArrayIS_IPK10btDbvtNodeEE7reserveEi(ptr noundef nonnull align 8 dereferenceable(25) %0, i32 noundef %1)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.s = sext i32 %i.b to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeEC2ERKS3_.exit
  %indvars.iv = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next, %_ZN20btAlignedObjectArrayIPK10btDbvtNodeEC2ERKS3_.exit ] ; 2 uses
  %i.t = load ptr, ptr %i.p, align 8, !tbaa !18
  %i.u = getelementptr inbounds [32 x i8], ptr %i.t, i64 %indvars.iv ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 3 uses
  store i8 1, ptr %i.v, align 8, !tbaa !40
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 3 uses
  store ptr null, ptr %i.w, align 8, !tbaa !41
  %i.x = getelementptr inbounds nuw i8, ptr %i.u, i64 4 ; 4 uses
  store i32 0, ptr %i.x, align 4, !tbaa !42
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store i32 0, ptr %i.y, align 8, !tbaa !43
  %i.z = load i32, ptr %i.q, align 4, !tbaa !42   ; 6 uses
  %i.aa = icmp sgt i32 %i.z, 0
  br i1 %i.aa, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i.i, label %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE6resizeEiRKS2_.exit.i

_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i.i: ; preds = %bb.f
  %i.ab = zext nneg i32 %i.z to i64               ; 6 uses
  %i.ac = shl nuw nsw i64 %i.ab, 3                ; 2 uses
  %i.ad = tail call noundef ptr @_Z22btAlignedAllocInternalmi(i64 noundef %i.ac, i32 noundef 16) ; 15 uses
  %i.ae = ptrtoaddr ptr %i.ad to i64              ; 2 uses
  %.pre.i.i = load i32, ptr %i.x, align 4, !tbaa !42 ; 3 uses
  %i.af = icmp sgt i32 %.pre.i.i, 0
  %i.ag = load ptr, ptr %i.w, align 8, !tbaa !41  ; 9 uses
  br i1 %i.af, label %.lr.ph.i.i.i.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i.i
  %i.ah = ptrtoaddr ptr %i.ag to i64
  %wide.trip.count.i.i.i.i = zext nneg i32 %.pre.i.i to i64 ; 5 uses
  %min.iters.check42 = icmp ult i32 %.pre.i.i, 4
  %i.ai = sub i64 %i.ah, %i.ae
  %diff.check40 = icmp ugt i64 %i.ai, -32
  %or.cond = select i1 %min.iters.check42, i1 true, i1 %diff.check40
  br i1 %or.cond, label %scalar.ph41.preheader, label %vector.ph43

vector.ph43:                                      ; preds = %.lr.ph.i.i.i.i
  %n.vec44 = and i64 %wide.trip.count.i.i.i.i, 2147483644 ; 3 uses
  br label %vector.body45

vector.body45:                                    ; preds = %vector.body45, %vector.ph43
  %index46 = phi i64 [ 0, %vector.ph43 ], [ %index.next49, %vector.body45 ] ; 3 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %index46 ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %index46 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load47 = load <2 x ptr>, ptr %i.ak, align 8, !tbaa !47
  %wide.load48 = load <2 x ptr>, ptr %i.al, align 8, !tbaa !47
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  store <2 x ptr> %wide.load47, ptr %i.aj, align 8, !tbaa !47
  store <2 x ptr> %wide.load48, ptr %i.am, align 8, !tbaa !47
  %index.next49 = add nuw i64 %index46, 4         ; 2 uses
  %i.an = icmp eq i64 %index.next49, %n.vec44
  br i1 %i.an, label %middle.block50, label %vector.body45, !llvm.loop !95

middle.block50:                                   ; preds = %vector.body45
  %cmp.n51 = icmp eq i64 %n.vec44, %wide.trip.count.i.i.i.i
  br i1 %cmp.n51, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i.i, label %scalar.ph41.preheader

scalar.ph41.preheader:                            ; preds = %.lr.ph.i.i.i.i, %middle.block50
  %indvars.iv.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %n.vec44, %middle.block50 ] ; 3 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i.i, 3 ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %scalar.ph41.prol.loopexit, label %scalar.ph41.prol

scalar.ph41.prol:                                 ; preds = %scalar.ph41.preheader, %scalar.ph41.prol
  %indvars.iv.i.i.i.i.prol = phi i64 [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph41.prol ], [ %indvars.iv.i.i.i.i.ph, %scalar.ph41.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph41.prol ], [ 0, %scalar.ph41.preheader ]
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i.i.prol
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i.prol
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !47
  store ptr %i.aq, ptr %i.ao, align 8, !tbaa !47
  %indvars.iv.next.i.i.i.i.prol = add nuw nsw i64 %indvars.iv.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph41.prol.loopexit, label %scalar.ph41.prol, !llvm.loop !96

scalar.ph41.prol.loopexit:                        ; preds = %scalar.ph41.prol, %scalar.ph41.preheader
  %indvars.iv.i.i.i.i.unr = phi i64 [ %indvars.iv.i.i.i.i.ph, %scalar.ph41.preheader ], [ %indvars.iv.next.i.i.i.i.prol, %scalar.ph41.prol ]
  %i.ar = sub nsw i64 %indvars.iv.i.i.i.i.ph, %wide.trip.count.i.i.i.i
  %i.as = icmp ugt i64 %i.ar, -4
  br i1 %i.as, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i.i, label %scalar.ph41

scalar.ph41:                                      ; preds = %scalar.ph41.prol.loopexit, %scalar.ph41
  %indvars.iv.i.i.i.i = phi i64 [ %indvars.iv.next.i.i.i.i.3, %scalar.ph41 ], [ %indvars.iv.i.i.i.i.unr, %scalar.ph41.prol.loopexit ] ; 6 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.i.i.i.i
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.i.i.i.i
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !47
  store ptr %i.av, ptr %i.at, align 8, !tbaa !47
  %indvars.iv.next.i.i.i.i = add nuw nsw i64 %indvars.iv.i.i.i.i, 1 ; 2 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.i
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i.i
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !47
  store ptr %i.ay, ptr %i.aw, align 8, !tbaa !47
  %indvars.iv.next.i.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i.i, 2 ; 2 uses
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.i.1
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i.i.1
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !47
  store ptr %i.bb, ptr %i.az, align 8, !tbaa !47
  %indvars.iv.next.i.i.i.i.2 = add nuw nsw i64 %indvars.iv.i.i.i.i, 3 ; 2 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv.next.i.i.i.i.2
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %indvars.iv.next.i.i.i.i.2
  %i.be = load ptr, ptr %i.bd, align 8, !tbaa !47
  store ptr %i.be, ptr %i.bc, align 8, !tbaa !47
  %indvars.iv.next.i.i.i.i.3 = add nuw nsw i64 %indvars.iv.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.3 = icmp eq i64 %indvars.iv.next.i.i.i.i.3, %wide.trip.count.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.3, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i.i, label %scalar.ph41, !llvm.loop !97

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i.i: ; preds = %_ZN20btAlignedObjectArrayIPK10btDbvtNodeE8allocateEi.exit.i.i.i
  %.not.i5.i.i.i = icmp eq ptr %i.ag, null
  br i1 %.not.i5.i.i.i, label %.lr.ph.i.i, label %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i.i

_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i.i: ; preds = %scalar.ph41.prol.loopexit, %scalar.ph41, %middle.block50, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i.i
  %i.bf = load i8, ptr %i.v, align 8, !tbaa !40, !range !44, !noundef !51
  %i.bg = trunc nuw i8 %i.bf to i1
  br i1 %i.bg, label %bb.g, label %.lr.ph.i.i

bb.g:                                             ; preds = %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i.i
  tail call void @_Z21btAlignedFreeInternalPv(ptr noundef nonnull %i.ag)
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.g, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.thread.i.i.i, %_ZNK20btAlignedObjectArrayIPK10btDbvtNodeE4copyEiiPS2_.exit.i.i.i
  store i8 1, ptr %i.v, align 8, !tbaa !40
end_hunk_0
