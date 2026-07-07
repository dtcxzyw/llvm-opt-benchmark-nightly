inline.NumInlined: 51
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.btPointCollector = type <{ %"struct.btDiscreteCollisionDetectorInterface::Result", %class.btVector3, %class.btVector3, float, i8, [3 x i8] }>
%"struct.btDiscreteCollisionDetectorInterface::Result" = type { ptr }
%class.btVector3 = type { [4 x float] }
%class.btGjkPairDetector = type { %struct.btDiscreteCollisionDetectorInterface, %class.btVector3, ptr, ptr, ptr, ptr, i32, i32, float, float, i8, float, i32, i32, i32, i32 }
%struct.btDiscreteCollisionDetectorInterface = type { ptr }
%"struct.btDiscreteCollisionDetectorInterface::ClosestPointInput" = type { %class.btTransform, %class.btTransform, float, ptr }
%class.btTransform = type { %class.btMatrix3x3, %class.btVector3 }
%class.btMatrix3x3 = type { [3 x %class.btVector3] }

$_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev = comdat any

$_ZN15btGjkConvexCastD0Ev = comdat any

$_ZN16btPointCollectorD0Ev = comdat any

$_ZN16btPointCollector20setShapeIdentifiersAEii = comdat any

$_ZN16btPointCollector20setShapeIdentifiersBEii = comdat any

$_ZN16btPointCollector15addContactPointERK9btVector3S2_f = comdat any

$_ZTV16btPointCollector = comdat any

$_ZTI16btPointCollector = comdat any

$_ZTS16btPointCollector = comdat any

$_ZTIN36btDiscreteCollisionDetectorInterface6ResultE = comdat any

$_ZTSN36btDiscreteCollisionDetectorInterface6ResultE = comdat any

@_ZTV15btGjkConvexCast = dso_local unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI15btGjkConvexCast, ptr @_ZN12btConvexCastD2Ev, ptr @_ZN15btGjkConvexCastD0Ev, ptr @_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE] }, align 8
@_ZTI15btGjkConvexCast = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS15btGjkConvexCast, ptr @_ZTI12btConvexCast }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS15btGjkConvexCast = dso_local constant [18 x i8] c"15btGjkConvexCast\00", align 1
@_ZTI12btConvexCast = external constant ptr
@_ZTV16btPointCollector = linkonce_odr dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI16btPointCollector, ptr @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev, ptr @_ZN16btPointCollectorD0Ev, ptr @_ZN16btPointCollector20setShapeIdentifiersAEii, ptr @_ZN16btPointCollector20setShapeIdentifiersBEii, ptr @_ZN16btPointCollector15addContactPointERK9btVector3S2_f] }, comdat, align 8
@_ZTI16btPointCollector = linkonce_odr dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS16btPointCollector, ptr @_ZTIN36btDiscreteCollisionDetectorInterface6ResultE }, comdat, align 8
@_ZTS16btPointCollector = linkonce_odr dso_local constant [19 x i8] c"16btPointCollector\00", comdat, align 1
@_ZTIN36btDiscreteCollisionDetectorInterface6ResultE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN36btDiscreteCollisionDetectorInterface6ResultE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN36btDiscreteCollisionDetectorInterface6ResultE = linkonce_odr dso_local constant [48 x i8] c"N36btDiscreteCollisionDetectorInterface6ResultE\00", comdat, align 1

@_ZN15btGjkConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN15btGjkConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN15btGjkConvexCastC2EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV15btGjkConvexCast, i64 16), ptr %0, align 8, !tbaa !8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %3, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %1, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !17
  ret void
}

; Function Attrs: uwtable
define dso_local noundef zeroext i1 @_ZN15btGjkConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %1, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(64) %4, ptr noundef nonnull align 8 dereferenceable(188) %5) unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.sroa.079 = alloca [4 x float], align 4        ; 5 uses
  %6 = alloca %struct.btPointCollector, align 8   ; 12 uses
  %7 = alloca %class.btGjkPairDetector, align 8   ; 5 uses
  %8 = alloca %"struct.btDiscreteCollisionDetectorInterface::ClosestPointInput", align 8 ; 16 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10
  tail call void @_ZN22btVoronoiSimplexSolver5resetEv(ptr noundef nonnull align 4 dereferenceable(353) %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.e = load float, ptr %i.c, align 4, !tbaa !18
  %i.f = load float, ptr %i.d, align 4, !tbaa !18
  %i.g = fsub float %i.e, %i.f
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 52
  %i.i = load float, ptr %i.h, align 4, !tbaa !18
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 52
  %i.k = load float, ptr %i.j, align 4, !tbaa !18
  %i.l = fsub float %i.i, %i.k
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 2 uses
  %i.n = load float, ptr %i.m, align 4, !tbaa !18
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !18
  %i.q = fsub float %i.n, %i.p
  %i.r = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 3 uses
  %i.t = load float, ptr %i.r, align 4, !tbaa !18
  %i.u = load float, ptr %i.s, align 4, !tbaa !18
  %i.v = fsub float %i.t, %i.u
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 52
  %i.x = load float, ptr %i.w, align 4, !tbaa !18
  %i.y = getelementptr inbounds nuw i8, ptr %3, i64 52
  %i.z = load float, ptr %i.y, align 4, !tbaa !18
  %i.aa = fsub float %i.x, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 2 uses
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !18
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !18
  %i.af = fsub float %i.ac, %i.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.079)
  %i.ag = fsub float %i.g, %i.v                   ; 2 uses
  %i.ah = fsub float %i.l, %i.aa                  ; 2 uses
  %i.ai = fsub float %i.q, %i.af                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #8
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV16btPointCollector, i64 16), ptr %6, align 8, !tbaa !8
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 40 ; 3 uses
  store float f0x5D5E0B6B, ptr %i.aj, align 8, !tbaa !20
  %i.ak = getelementptr inbounds nuw i8, ptr %6, i64 44 ; 3 uses
  store i8 0, ptr %i.ak, align 4, !tbaa !25
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !16
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !17
  %i.ap = load ptr, ptr %i.a, align 8, !tbaa !10
  call void @_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef %i.am, ptr noundef %i.ao, ptr noundef %i.ap, ptr noundef null)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #8
  %i.aq = getelementptr inbounds nuw i8, ptr %8, i64 128
  store float f0x5D5E0B6B, ptr %i.aq, align 8, !tbaa !26
  %i.ar = getelementptr inbounds nuw i8, ptr %8, i64 136
  store ptr null, ptr %i.ar, align 8, !tbaa !31
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %8, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 16, i1 false), !tbaa.struct !32
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %8, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.at, ptr noundef nonnull align 4 dereferenceable(16) %i.as, i64 16, i1 false), !tbaa.struct !32
  %i.au = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.av = getelementptr inbounds nuw i8, ptr %8, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.av, ptr noundef nonnull align 4 dereferenceable(16) %i.au, i64 16, i1 false), !tbaa.struct !32
  %i.aw = getelementptr inbounds nuw i8, ptr %8, i64 48 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 4 dereferenceable(16) %i.d, i64 16, i1 false), !tbaa.struct !32
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 64
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ax, ptr noundef nonnull align 4 dereferenceable(64) %3, i64 16, i1 false), !tbaa.struct !32
  %i.ay = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.az, ptr noundef nonnull align 4 dereferenceable(16) %i.ay, i64 16, i1 false), !tbaa.struct !32
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.bb = getelementptr inbounds nuw i8, ptr %8, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bb, ptr noundef nonnull align 4 dereferenceable(16) %i.ba, i64 16, i1 false), !tbaa.struct !32
  %i.bc = getelementptr inbounds nuw i8, ptr %8, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.bc, ptr noundef nonnull align 4 dereferenceable(16) %i.s, i64 16, i1 false), !tbaa.struct !32
  call void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null, i1 noundef zeroext false)
  %i.bd = load i8, ptr %i.ak, align 4, !tbaa !25, !range !34, !noundef !35
  %i.be = trunc nuw i8 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %6, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.079, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !32
  br i1 %i.be, label %bb.b, label %.thread

bb.b:                                             ; preds = %bb.a
  %i.bg = load float, ptr %i.aj, align 8, !tbaa !20 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 3 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 12 ; 2 uses
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 20
  %i.bi = load <4 x float>, ptr %i.bh, align 8    ; 3 uses
  %i.bj = extractelement <4 x float> %i.bi, i64 2 ; 2 uses
  %i.bk = fcmp ogt float %i.bg, 1.000000e-03
  br i1 %i.bk, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.b
  %.sroa.11.0.copyload = load float, ptr %.sroa.11.0..sroa_idx, align 4
  %i.bl = getelementptr inbounds nuw i8, ptr %8, i64 56
  %i.bm = getelementptr inbounds nuw i8, ptr %8, i64 120
  %i.bn = extractelement <4 x float> %i.bi, i64 0
  br label %bb.d

bb.c:                                             ; preds = %bb.h
  %.sroa.11.0.copyload93 = load float, ptr %.sroa.11.0..sroa_idx, align 4
  %i.bo = add nuw nsw i32 %i.bq, 1
  %exitcond = icmp eq i32 %i.bq, 32
  %i.bp = extractelement <2 x float> %i.cy, i64 0
  br i1 %exitcond, label %.thread, label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %i.bq = phi i32 [ 1, %.lr.ph ], [ %i.bo, %bb.c ] ; 2 uses
  %.sroa.082.0145165 = phi float [ %i.bn, %.lr.ph ], [ %i.bp, %bb.c ]
  %.sroa.11.0146164 = phi float [ %.sroa.11.0.copyload, %.lr.ph ], [ %.sroa.11.0.copyload93, %bb.c ]
  %.sroa.14.0147163 = phi float [ %i.bj, %.lr.ph ], [ %.sroa.14.0.copyload102, %bb.c ]
  %.054148162 = phi float [ 0.000000e+00, %.lr.ph ], [ %i.bv, %bb.c ] ; 2 uses
  %.047150161 = phi float [ %i.bg, %.lr.ph ], [ %i.cu, %bb.c ]
  %i.br = fmul float %i.ah, %.sroa.11.0146164
  %i.bs = call float @llvm.fmuladd.f32(float %i.ag, float %.sroa.082.0145165, float %i.br)
  %i.bt = call noundef float @llvm.fmuladd.f32(float %i.ai, float %.sroa.14.0147163, float %i.bs)
  %i.bu = fdiv float %.047150161, %i.bt
  %i.bv = fsub float %.054148162, %i.bu           ; 11 uses
  %i.bw = fcmp ule float %i.bv, 1.000000e+00
  %i.bx = fcmp uge float %i.bv, 0.000000e+00
  %or.cond.not134 = and i1 %i.bw, %i.bx
  %i.by = fcmp ugt float %i.bv, %.054148162
  %or.cond60 = and i1 %i.by, %or.cond.not134
  br i1 %or.cond60, label %bb.e, label %.thread

bb.e:                                             ; preds = %bb.d
  %i.bz = load ptr, ptr %5, align 8, !tbaa !8
  %i.ca = load ptr, ptr %i.bz, align 8
  call void %i.ca(ptr noundef nonnull align 8 dereferenceable(188) %5, float noundef %i.bv)
  %i.cb = fsub float 1.000000e+00, %i.bv          ; 3 uses
  %i.cc = load <2 x float>, ptr %i.d, align 4, !tbaa !18
  %i.cd = load <2 x float>, ptr %i.c, align 4, !tbaa !18
  %i.ce = insertelement <2 x float> poison, float %i.bv, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cg = fmul <2 x float> %i.cf, %i.cd
  %i.ch = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.ci = shufflevector <2 x float> %i.ch, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cc, <2 x float> %i.cg)
  store <2 x float> %i.cj, ptr %i.aw, align 8, !tbaa !18
  %i.ck = load float, ptr %i.o, align 4, !tbaa !18
  %i.cl = load float, ptr %i.m, align 4, !tbaa !18
  %9 = fmul float %i.bv, %i.cl
  %10 = call float @llvm.fmuladd.f32(float %i.cb, float %i.ck, float %9)
  store float %10, ptr %i.bl, align 8, !tbaa !18
  %i.cm = load <2 x float>, ptr %i.s, align 4, !tbaa !18
  %i.cn = load <2 x float>, ptr %i.r, align 4, !tbaa !18
  %i.co = fmul <2 x float> %i.cf, %i.cn
  %i.cp = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.cm, <2 x float> %i.co)
  store <2 x float> %i.cp, ptr %i.bc, align 8, !tbaa !18
  %i.cq = load float, ptr %i.ad, align 4, !tbaa !18
  %i.cr = load float, ptr %i.ab, align 4, !tbaa !18
  %11 = fmul float %i.bv, %i.cr
  %12 = call float @llvm.fmuladd.f32(float %i.cb, float %i.cq, float %11)
  store float %12, ptr %i.bm, align 8, !tbaa !18
  call void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(96) %7, ptr noundef nonnull align 8 dereferenceable(144) %8, ptr noundef nonnull align 8 dereferenceable(8) %6, ptr noundef null, i1 noundef zeroext false)
  %i.cs = load i8, ptr %i.ak, align 4, !tbaa !25, !range !34, !noundef !35
  %i.ct = trunc nuw i8 %i.cs to i1
  br i1 %i.ct, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.cu = load float, ptr %i.aj, align 8, !tbaa !20 ; 3 uses
  %i.cv = fcmp olt float %i.cu, 0.000000e+00
  br i1 %i.cv, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.cw = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %i.bv, ptr %i.cw, align 8, !tbaa !36
  %i.cx = load <4 x float>, ptr %i.bh, align 8
  br label %.thread.sink.split

bb.h:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.079, ptr noundef nonnull align 8 dereferenceable(16) %i.bf, i64 16, i1 false), !tbaa.struct !32
  %i.cy = load <2 x float>, ptr %i.bh, align 8    ; 2 uses
  %.sroa.14.0.copyload102 = load float, ptr %.sroa.14.0..sroa_idx, align 8 ; 3 uses
  %i.cz = fcmp ogt float %i.cu, 1.000000e-03
  br i1 %i.cz, label %bb.c, label %._crit_edge.loopexit

._crit_edge.loopexit:                             ; preds = %bb.h
  %.sroa.17.0.copyload111 = load float, ptr %.sroa.17.0..sroa_idx, align 4, !tbaa !33
  %i.da = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.db = insertelement <4 x float> %i.da, float %.sroa.14.0.copyload102, i64 2
  %i.dc = insertelement <4 x float> %i.db, float %.sroa.17.0.copyload111, i64 3
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.b
  %.sroa.14.0.lcssa = phi float [ %i.bj, %bb.b ], [ %.sroa.14.0.copyload102, %._crit_edge.loopexit ]
  %.054.lcssa = phi float [ 0.000000e+00, %bb.b ], [ %i.bv, %._crit_edge.loopexit ]
  %i.dd = phi <4 x float> [ %i.bi, %bb.b ], [ %i.dc, %._crit_edge.loopexit ] ; 3 uses
  %i.de = extractelement <4 x float> %i.dd, i64 1
  %i.df = fmul float %i.ah, %i.de
  %i.dg = extractelement <4 x float> %i.dd, i64 0
  %i.dh = call float @llvm.fmuladd.f32(float %i.dg, float %i.ag, float %i.df)
  %i.di = call noundef float @llvm.fmuladd.f32(float %.sroa.14.0.lcssa, float %i.ai, float %i.dh)
  %i.dj = getelementptr inbounds nuw i8, ptr %5, i64 184
  %i.dk = load float, ptr %i.dj, align 8, !tbaa !39
  %i.dl = fneg float %i.dk
  %i.dm = fcmp ult float %i.di, %i.dl
  br i1 %i.dm, label %bb.i, label %.thread

bb.i:                                             ; preds = %._crit_edge
  %i.dn = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %.054.lcssa, ptr %i.dn, align 8, !tbaa !36
  br label %.thread.sink.split

.thread.sink.split:                               ; preds = %bb.i, %bb.g
  %.sink159 = phi ptr [ %i.bf, %bb.g ], [ %.sroa.079, %bb.i ]
  %i.do = phi <4 x float> [ %i.cx, %bb.g ], [ %i.dd, %bb.i ]
  %i.dp = getelementptr inbounds nuw i8, ptr %5, i64 136
  store <4 x float> %i.do, ptr %i.dp, align 8
  %i.dq = getelementptr inbounds nuw i8, ptr %5, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.dq, ptr noundef nonnull align 4 dereferenceable(16) %.sink159, i64 16, i1 false)
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.d, %bb.c, %.thread.sink.split, %bb.a, %._crit_edge
  %.3 = phi i1 [ false, %._crit_edge ], [ true, %.thread.sink.split ], [ false, %bb.a ], [ false, %bb.c ], [ false, %bb.d ], [ false, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.079)
  ret i1 %.3
}

declare void @_ZN22btVoronoiSimplexSolver5resetEv(ptr noundef nonnull align 4 dereferenceable(353)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

declare void @_ZN17btGjkPairDetectorC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolverP30btConvexPenetrationDepthSolver(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

declare void @_ZN17btGjkPairDetector16getClosestPointsERKN36btDiscreteCollisionDetectorInterface17ClosestPointInputERNS0_6ResultEP12btIDebugDrawb(ptr noundef nonnull align 8 dereferenceable(96), ptr noundef nonnull align 8 dereferenceable(144), ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i1 noundef zeroext) unnamed_addr #2

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN36btDiscreteCollisionDetectorInterface6ResultD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %0) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

declare void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #2

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN15btGjkConvexCastD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN12btConvexCastD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void

bb.c:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  resume { ptr, i32 } %i.a
}

; Function Attrs: inlinehint uwtable
define linkonce_odr dso_local void @_ZN16btPointCollectorD0Ev(ptr noundef nonnull align 8 dereferenceable(45) %0) unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #9
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btPointCollector20setShapeIdentifiersAEii(ptr noundef nonnull align 8 dereferenceable(45) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btPointCollector20setShapeIdentifiersBEii(ptr noundef nonnull align 8 dereferenceable(45) %0, i32 noundef %1, i32 noundef %2) unnamed_addr #4 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btPointCollector15addContactPointERK9btVector3S2_f(ptr noundef nonnull align 8 dereferenceable(45) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, float noundef %3) unnamed_addr #4 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.b = load float, ptr %i.a, align 8, !tbaa !20
  %i.c = fcmp olt float %3, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 1, ptr %i.d, align 4, !tbaa !25
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, ptr noundef nonnull align 4 dereferenceable(16) %1, i64 16, i1 false), !tbaa.struct !32
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, ptr noundef nonnull align 4 dereferenceable(16) %2, i64 16, i1 false), !tbaa.struct !32
  store float %3, ptr %i.a, align 8, !tbaa !20
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #7

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { inlinehint uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind }
attributes #9 = { builtin nounwind }

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
!10 = !{!11, !13, i64 8}
!11 = !{!"_ZTS15btGjkConvexCast", !12, i64 0, !13, i64 8, !15, i64 16, !15, i64 24}
!12 = !{!"_ZTS12btConvexCast"}
!13 = !{!"p1 _ZTS22btVoronoiSimplexSolver", !14, i64 0}
!14 = !{!"any pointer", !6, i64 0}
!15 = !{!"p1 _ZTS13btConvexShape", !14, i64 0}
!16 = !{!11, !15, i64 16}
!17 = !{!11, !15, i64 24}
!18 = !{!19, !19, i64 0}
!19 = !{!"float", !6, i64 0}
!20 = !{!21, !19, i64 40}
!21 = !{!"_ZTS16btPointCollector", !22, i64 0, !23, i64 8, !23, i64 24, !19, i64 40, !24, i64 44}
!22 = !{!"_ZTSN36btDiscreteCollisionDetectorInterface6ResultE"}
!23 = !{!"_ZTS9btVector3", !6, i64 0}
!24 = !{!"bool", !6, i64 0}
end_hunk_0
