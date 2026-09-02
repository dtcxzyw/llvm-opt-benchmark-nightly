Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/btConvexPlaneCollisionAlgorithm?download=true
inline.NumInlined: 262
inline.NumDeleted: 79
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%class.btVector3 = type { [4 x float] }
%class.btQuaternion = type { %class.btQuadWord }
%class.btQuadWord = type { [4 x float] }

$_ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE = comdat any

$_ZTI20btCollisionAlgorithm = comdat any

$_ZTS20btCollisionAlgorithm = comdat any

@_ZTV31btConvexPlaneCollisionAlgorithm = dso_local unnamed_addr constant { [7 x ptr] } { [7 x ptr] [ptr null, ptr @_ZTI31btConvexPlaneCollisionAlgorithm, ptr @_ZN31btConvexPlaneCollisionAlgorithmD2Ev, ptr @_ZN31btConvexPlaneCollisionAlgorithmD0Ev, ptr @_ZN31btConvexPlaneCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, ptr @_ZN31btConvexPlaneCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult, ptr @_ZN31btConvexPlaneCollisionAlgorithm22getAllContactManifoldsER20btAlignedObjectArrayIP20btPersistentManifoldE] }, align 8
@gContactBreakingThreshold = external local_unnamed_addr global float, align 4
@_ZTI31btConvexPlaneCollisionAlgorithm = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS31btConvexPlaneCollisionAlgorithm, ptr @_ZTI20btCollisionAlgorithm }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS31btConvexPlaneCollisionAlgorithm = dso_local constant [34 x i8] c"31btConvexPlaneCollisionAlgorithm\00", align 1
@_ZTI20btCollisionAlgorithm = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS20btCollisionAlgorithm }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS20btCollisionAlgorithm = linkonce_odr dso_local constant [23 x i8] c"20btCollisionAlgorithm\00", comdat, align 1

@_ZN31btConvexPlaneCollisionAlgorithmC1EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_bii = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, i1, i32, i32), ptr @_ZN31btConvexPlaneCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_bii
@_ZN31btConvexPlaneCollisionAlgorithmD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN31btConvexPlaneCollisionAlgorithmD2Ev

; Function Attrs: uwtable
define dso_local void @_ZN31btConvexPlaneCollisionAlgorithmC2EP20btPersistentManifoldRK36btCollisionAlgorithmConstructionInfoP17btCollisionObjectS6_bii(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, ptr noundef %3, ptr noundef %4, i1 noundef zeroext %5, i32 noundef %6, i32 noundef %7) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = zext i1 %5 to i8
  tail call void @_ZN20btCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfo(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %2)
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV31btConvexPlaneCollisionAlgorithm, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.a, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %6, ptr %i.e, align 4, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %7, ptr %i.f, align 8, !tbaa !20
  %i.g = select i1 %5, ptr %4, ptr %3             ; 2 uses
  %i.h = select i1 %5, ptr %3, ptr %4             ; 2 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef zeroext i1 %i.m(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.g, ptr noundef %i.h)
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr %i.i, align 8, !tbaa !21   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = tail call noundef ptr %i.r(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef %i.g, ptr noundef %i.h)
  store ptr %i.s, ptr %i.c, align 8, !tbaa !17
  store i8 1, ptr %i.b, align 8, !tbaa !16
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

declare void @_ZN20btCollisionAlgorithmC2ERK36btCollisionAlgorithmConstructionInfo(ptr noundef nonnull align 8 dereferenceable(16), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: uwtable
define dso_local void @_ZN31btConvexPlaneCollisionAlgorithmD2Ev(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(44) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV31btConvexPlaneCollisionAlgorithm, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !16, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.e)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN31btConvexPlaneCollisionAlgorithmD0Ev(ptr noundef nonnull align 8 dereferenceable(44) initializes((0, 8)) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 40) (i8, ptr @_ZTV31btConvexPlaneCollisionAlgorithm, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i8, ptr %i.a, align 8, !tbaa !16, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.b, label %_ZN31btConvexPlaneCollisionAlgorithmD2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17   ; 2 uses
  %.not.i = icmp eq ptr %i.e, null
  br i1 %.not.i, label %_ZN31btConvexPlaneCollisionAlgorithmD2Ev.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !21   ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8
  invoke void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %i.g, ptr noundef nonnull %i.e)
          to label %_ZN31btConvexPlaneCollisionAlgorithmD2Ev.exit unwind label %bb.d, !inline_history !37

_ZN31btConvexPlaneCollisionAlgorithmD2Ev.exit:    ; preds = %bb.b, %bb.a, %bb.c
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  ret void

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #8
  resume { ptr, i32 } %i.k
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #3

; Function Attrs: uwtable
define dso_local void @_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree nonnull readnone align 8 captures(none) %4, ptr noundef initializes((8, 16)) %5) local_unnamed_addr #4 align 2 {
bb.a:
  %6 = alloca %class.btVector3, align 8           ; 5 uses
  %7 = alloca %class.btVector3, align 8           ; 5 uses
  %8 = alloca %class.btVector3, align 8           ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = load i8, ptr %i.a, align 8, !tbaa !18, !range !22, !noundef !23
  %i.c = trunc nuw i8 %i.b to i1                  ; 2 uses
  %i.d = select i1 %i.c, ptr %3, ptr %2           ; 13 uses
  %i.e = select i1 %i.c, ptr %2, ptr %3           ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !31   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 60 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.0170.0.copyload = load float, ptr %i.l, align 8 ; 3 uses
  %.sroa.7173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %.sroa.7173.0.copyload = load float, ptr %.sroa.7173.0..sroa_idx, align 4 ; 3 uses
  %.sroa.11176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.11176.0.copyload = load float, ptr %.sroa.11176.0..sroa_idx, align 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.16180.16.copyload = load float, ptr %i.m, align 8 ; 3 uses
  %.sroa.21.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %.sroa.21.16.copyload = load float, ptr %.sroa.21.16..sroa_idx, align 4 ; 3 uses
  %.sroa.25.16..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.25.16.copyload = load float, ptr %.sroa.25.16..sroa_idx, align 8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.30.32.copyload = load float, ptr %i.n, align 8 ; 3 uses
  %.sroa.35.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %.sroa.35.32.copyload = load float, ptr %.sroa.35.32..sroa_idx, align 4 ; 3 uses
  %.sroa.39.32..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.39.32.copyload = load float, ptr %.sroa.39.32..sroa_idx, align 8 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.44.48.copyload = load float, ptr %i.o, align 8
  %.sroa.47.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %.sroa.47.48.copyload = load float, ptr %.sroa.47.48..sroa_idx, align 4
  %.sroa.49.48..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.49.48.copyload = load float, ptr %.sroa.49.48..sroa_idx, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 40 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 44 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 2 uses
  %i.x = load float, ptr %i.w, align 8, !tbaa !32, !noalias !42
  %i.y = fneg float %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.aa = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.ab = load <2 x float>, ptr %i.z, align 4, !tbaa !32, !noalias !42
  %i.ac = fneg <2 x float> %i.ab                  ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.ag = load float, ptr %i.af, align 4, !tbaa !32 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.aj = load <3 x float>, ptr %i.p, align 8, !tbaa !32, !noalias !43 ; 5 uses
  %i.ak = shufflevector <3 x float> %i.aj, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 5 uses
  %i.al = load float, ptr %i.p, align 8, !tbaa !32, !noalias !43 ; 2 uses
  %i.am = load <3 x float>, ptr %i.q, align 8, !tbaa !32, !noalias !43 ; 5 uses
  %i.an = shufflevector <3 x float> %i.am, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 5 uses
  %i.ao = load float, ptr %i.q, align 8, !tbaa !32, !noalias !43 ; 2 uses
  %i.ap = load <3 x float>, ptr %i.r, align 8, !tbaa !32, !noalias !43 ; 5 uses
  %i.aq = shufflevector <3 x float> %i.ap, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1> ; 5 uses
  %i.ar = load float, ptr %i.r, align 8, !tbaa !32, !noalias !43 ; 2 uses
  %i.as = shufflevector <2 x float> %i.ac, <2 x float> poison, <3 x i32> zeroinitializer
  %i.at = fmul <3 x float> %i.an, %i.as
  %i.au = insertelement <3 x float> poison, float %i.y, i64 0
  %i.av = shufflevector <3 x float> %i.au, <3 x float> poison, <3 x i32> zeroinitializer
  %i.aw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ak, <3 x float> %i.av, <3 x float> %i.at)
  %i.ax = shufflevector <2 x float> %i.ac, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.ay = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aq, <3 x float> %i.ax, <3 x float> %i.aw)
  %i.az = insertelement <3 x float> poison, float %.sroa.16180.16.copyload, i64 0
  %i.ba = shufflevector <3 x float> %i.az, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bb = fmul <3 x float> %i.ba, %i.an
  %i.bc = insertelement <3 x float> poison, float %.sroa.0170.0.copyload, i64 0
  %i.bd = shufflevector <3 x float> %i.bc, <3 x float> poison, <3 x i32> zeroinitializer
  %i.be = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bd, <3 x float> %i.ak, <3 x float> %i.bb)
  %i.bf = insertelement <3 x float> poison, float %.sroa.30.32.copyload, i64 0
  %i.bg = shufflevector <3 x float> %i.bf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bg, <3 x float> %i.aq, <3 x float> %i.be)
  %i.bi = insertelement <3 x float> poison, float %.sroa.21.16.copyload, i64 0
  %i.bj = shufflevector <3 x float> %i.bi, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bk = fmul <3 x float> %i.bj, %i.an
  %i.bl = insertelement <3 x float> poison, float %.sroa.7173.0.copyload, i64 0
  %i.bm = shufflevector <3 x float> %i.bl, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bm, <3 x float> %i.ak, <3 x float> %i.bk)
  %i.bo = insertelement <3 x float> poison, float %.sroa.35.32.copyload, i64 0
  %i.bp = shufflevector <3 x float> %i.bo, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bp, <3 x float> %i.aq, <3 x float> %i.bn)
  %i.br = insertelement <3 x float> poison, float %.sroa.25.16.copyload, i64 0
  %i.bs = shufflevector <3 x float> %i.br, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bt = fmul <3 x float> %i.bs, %i.an
  %i.bu = insertelement <3 x float> poison, float %.sroa.11176.0.copyload, i64 0
  %i.bv = shufflevector <3 x float> %i.bu, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bw = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bv, <3 x float> %i.ak, <3 x float> %i.bt)
  %i.bx = insertelement <3 x float> poison, float %.sroa.39.32.copyload, i64 0
  %i.by = shufflevector <3 x float> %i.bx, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bz = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.by, <3 x float> %i.aq, <3 x float> %i.bw)
  %i.ca = insertelement <3 x float> poison, float %.sroa.47.48.copyload, i64 0
  %i.cb = shufflevector <3 x float> %i.ca, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cc = fmul <3 x float> %i.cb, %i.an
  %i.cd = insertelement <3 x float> poison, float %.sroa.44.48.copyload, i64 0
  %i.ce = shufflevector <3 x float> %i.cd, <3 x float> poison, <3 x i32> zeroinitializer
  %i.cf = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ak, <3 x float> %i.ce, <3 x float> %i.cc)
  %i.cg = insertelement <3 x float> poison, float %.sroa.49.48.copyload, i64 0
  %i.ch = shufflevector <3 x float> %i.cg, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ci = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.aq, <3 x float> %i.ch, <3 x float> %i.cf)
  %i.cj = fadd <3 x float> %i.ci, %i.ay
  %i.ck = extractelement <3 x float> %i.am, i64 1
  %i.cl = extractelement <3 x float> %i.aj, i64 1
  %i.cm = extractelement <3 x float> %i.ap, i64 1
  %i.cn = extractelement <3 x float> %i.am, i64 2
  %i.co = extractelement <3 x float> %i.aj, i64 2
  %i.cp = extractelement <3 x float> %i.ap, i64 2
  %i.cq = load float, ptr %1, align 4, !tbaa !32  ; 6 uses
  %i.cr = load float, ptr %i.ae, align 4, !tbaa !32 ; 4 uses
  %i.cs = load float, ptr %i.ad, align 4, !tbaa !32 ; 5 uses
  %i.ct = fmul float %i.cs, %i.cs
  %i.cu = tail call float @llvm.fmuladd.f32(float %i.cq, float %i.cq, float %i.ct)
  %i.cv = tail call float @llvm.fmuladd.f32(float %i.cr, float %i.cr, float %i.cu)
  %i.cw = tail call noundef float @llvm.fmuladd.f32(float %i.ag, float %i.ag, float %i.cv)
  %i.cx = fdiv float 2.000000e+00, %i.cw          ; 3 uses
  %i.cy = fmul float %i.cq, %i.cx                 ; 2 uses
  %i.cz = fmul float %i.cs, %i.cx                 ; 3 uses
  %i.da = fmul float %i.ag, %i.cy                 ; 2 uses
  %i.db = fmul float %i.ag, %i.cz                 ; 2 uses
  %i.dc = fmul float %i.cq, %i.cy                 ; 2 uses
  %i.dd = fmul float %i.cq, %i.cz                 ; 2 uses
  %i.de = fmul float %i.cr, %i.cx                 ; 4 uses
  %i.df = fmul float %i.cs, %i.cz                 ; 2 uses
  %i.dg = fmul float %i.cs, %i.de                 ; 2 uses
  %i.dh = fmul float %i.cq, %i.de                 ; 2 uses
  %i.di = fmul float %i.cr, %i.de                 ; 2 uses
  %i.dj = fmul float %i.ag, %i.de                 ; 2 uses
  %i.dk = fadd float %i.df, %i.di
  %i.dl = insertelement <2 x float> <float 1.000000e+00, float poison>, float %i.dd, i64 1
  %i.dm = insertelement <2 x float> poison, float %i.dk, i64 0
  %i.dn = insertelement <2 x float> %i.dm, float %i.dj, i64 1
  %i.do = fsub <2 x float> %i.dl, %i.dn           ; 3 uses
  %i.dp = fadd float %i.dh, %i.db                 ; 3 uses
  %i.dq = fadd float %i.dc, %i.di
  %i.dr = fsub float 1.000000e+00, %i.dq
  %i.ds = fadd float %i.dd, %i.dj
  %i.dt = fsub float %i.dg, %i.da                 ; 3 uses
  %i.du = fadd float %i.dg, %i.da
  %i.dv = fsub float %i.dh, %i.db
  %i.dw = fadd float %i.dc, %i.df
  %i.dx = fsub float 1.000000e+00, %i.dw          ; 3 uses
  %i.dy = insertelement <2 x float> poison, float %.sroa.7173.0.copyload, i64 0
  %i.dz = shufflevector <2 x float> %i.dy, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ea = insertelement <2 x float> poison, float %i.ds, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %i.dr, i64 1 ; 3 uses
  %i.ec = fmul <2 x float> %i.dz, %i.eb
  %i.ed = insertelement <2 x float> poison, float %.sroa.0170.0.copyload, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.ee, <2 x float> %i.ec)
  %i.eg = insertelement <2 x float> poison, float %i.dv, i64 0
  %i.eh = insertelement <2 x float> %i.eg, float %i.du, i64 1 ; 3 uses
  %i.ei = insertelement <2 x float> poison, float %.sroa.11176.0.copyload, i64 0
  %i.ej = shufflevector <2 x float> %i.ei, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ek = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.ej, <2 x float> %i.ef) ; 3 uses
  %i.el = fmul float %.sroa.7173.0.copyload, %i.dt
  %i.em = tail call float @llvm.fmuladd.f32(float %i.dp, float %.sroa.0170.0.copyload, float %i.el)
  %i.en = tail call noundef float @llvm.fmuladd.f32(float %i.dx, float %.sroa.11176.0.copyload, float %i.em) ; 3 uses
  %i.eo = insertelement <2 x float> poison, float %.sroa.21.16.copyload, i64 0
  %i.ep = shufflevector <2 x float> %i.eo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eq = fmul <2 x float> %i.ep, %i.eb
  %i.er = insertelement <2 x float> poison, float %.sroa.16180.16.copyload, i64 0
  %i.es = shufflevector <2 x float> %i.er, <2 x float> poison, <2 x i32> zeroinitializer
  %i.et = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.es, <2 x float> %i.eq)
  %i.eu = insertelement <2 x float> poison, float %.sroa.25.16.copyload, i64 0
  %i.ev = shufflevector <2 x float> %i.eu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ew = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.ev, <2 x float> %i.et) ; 3 uses
  %i.ex = fmul float %.sroa.21.16.copyload, %i.dt
  %i.ey = tail call float @llvm.fmuladd.f32(float %i.dp, float %.sroa.16180.16.copyload, float %i.ex)
  %i.ez = tail call noundef float @llvm.fmuladd.f32(float %i.dx, float %.sroa.25.16.copyload, float %i.ey) ; 3 uses
  %i.fa = insertelement <2 x float> poison, float %.sroa.35.32.copyload, i64 0
  %i.fb = shufflevector <2 x float> %i.fa, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fc = fmul <2 x float> %i.fb, %i.eb
  %i.fd = insertelement <2 x float> poison, float %.sroa.30.32.copyload, i64 0
  %i.fe = shufflevector <2 x float> %i.fd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ff = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.do, <2 x float> %i.fe, <2 x float> %i.fc)
  %i.fg = insertelement <2 x float> poison, float %.sroa.39.32.copyload, i64 0
  %i.fh = shufflevector <2 x float> %i.fg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eh, <2 x float> %i.fh, <2 x float> %i.ff) ; 3 uses
  %i.fj = fmul float %.sroa.35.32.copyload, %i.dt
  %i.fk = tail call float @llvm.fmuladd.f32(float %i.dp, float %.sroa.30.32.copyload, float %i.fj)
  %i.fl = tail call noundef float @llvm.fmuladd.f32(float %i.dx, float %.sroa.39.32.copyload, float %i.fk) ; 3 uses
  %i.fm = load <3 x float>, ptr %i.j, align 4, !tbaa !32
  %i.fn = fneg <3 x float> %i.fm                  ; 6 uses
  %i.fo = insertelement <2 x float> poison, float %i.ao, i64 0
  %i.fp = shufflevector <2 x float> %i.fo, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fq = fmul <2 x float> %i.fp, %i.ew
  %i.fr = insertelement <2 x float> poison, float %i.al, i64 0
  %i.fs = shufflevector <2 x float> %i.fr, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ft = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fs, <2 x float> %i.ek, <2 x float> %i.fq)
  %i.fu = insertelement <2 x float> poison, float %i.ar, i64 0
  %i.fv = shufflevector <2 x float> %i.fu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.fi, <2 x float> %i.ft)
  %i.fx = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.fy = fmul <2 x float> %i.fx, %i.ew
  %i.fz = shufflevector <3 x float> %i.aj, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ga = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fz, <2 x float> %i.ek, <2 x float> %i.fy)
  %i.gb = shufflevector <3 x float> %i.ap, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gb, <2 x float> %i.fi, <2 x float> %i.ga)
  %i.gd = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ge = fmul <2 x float> %i.gd, %i.ew
  %i.gf = shufflevector <3 x float> %i.aj, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gf, <2 x float> %i.ek, <2 x float> %i.ge)
  %i.gh = shufflevector <3 x float> %i.ap, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gh, <2 x float> %i.fi, <2 x float> %i.gg)
  %i.gj = fmul float %i.ao, %i.ez
  %i.gk = tail call float @llvm.fmuladd.f32(float %i.al, float %i.en, float %i.gj)
  %i.gl = tail call noundef float @llvm.fmuladd.f32(float %i.ar, float %i.fl, float %i.gk)
  %i.gm = fmul float %i.ck, %i.ez
  %i.gn = tail call float @llvm.fmuladd.f32(float %i.cl, float %i.en, float %i.gm)
  %i.go = tail call noundef float @llvm.fmuladd.f32(float %i.cm, float %i.fl, float %i.gn)
  %i.gp = fmul float %i.cn, %i.ez
  %i.gq = tail call float @llvm.fmuladd.f32(float %i.co, float %i.en, float %i.gp)
  %i.gr = tail call noundef float @llvm.fmuladd.f32(float %i.cp, float %i.fl, float %i.gq)
  %i.gs = shufflevector <3 x float> %i.fn, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.gt = fmul <2 x float> %i.gc, %i.gs
  %i.gu = shufflevector <3 x float> %i.fn, <3 x float> poison, <2 x i32> zeroinitializer
  %i.gv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fw, <2 x float> %i.gu, <2 x float> %i.gt)
  %i.gw = shufflevector <3 x float> %i.fn, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.gx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gi, <2 x float> %i.gw, <2 x float> %i.gv)
  %i.gy = extractelement <3 x float> %i.fn, i64 1
  %i.gz = fmul float %i.go, %i.gy
  %i.ha = extractelement <3 x float> %i.fn, i64 0
  %i.hb = tail call float @llvm.fmuladd.f32(float %i.gl, float %i.ha, float %i.gz)
  %i.hc = extractelement <3 x float> %i.fn, i64 2
  %i.hd = tail call noundef float @llvm.fmuladd.f32(float %i.gr, float %i.hc, float %i.hb)
  %.sroa.3.12.vec.insert.i52 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.hd, i64 0
  store <2 x float> %i.gx, ptr %6, align 8
  store <2 x float> %.sroa.3.12.vec.insert.i52, ptr %i.ai, align 8
  %i.he = load ptr, ptr %i.g, align 8, !tbaa !9
  %i.hf = getelementptr inbounds nuw i8, ptr %i.he, i64 96
  %i.hg = load ptr, ptr %i.hf, align 8
  %i.hh = call { <2 x float>, <2 x float> } %i.hg(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 4 dereferenceable(16) %6) ; 2 uses
  %i.hi = extractvalue { <2 x float>, <2 x float> } %i.hh, 0 ; 2 uses
  %i.hj = extractvalue { <2 x float>, <2 x float> } %i.hh, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #9
  %i.hk = shufflevector <2 x float> %i.hi, <2 x float> poison, <3 x i32> <i32 1, i32 1, i32 1>
  %i.hl = fmul <3 x float> %i.bq, %i.hk
  %i.hm = shufflevector <2 x float> %i.hi, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hn = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bh, <3 x float> %i.hm, <3 x float> %i.hl)
  %i.ho = shufflevector <2 x float> %i.hj, <2 x float> poison, <3 x i32> zeroinitializer
  %i.hp = call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.bz, <3 x float> %i.ho, <3 x float> %i.hn)
  %i.hq = fadd <3 x float> %i.cj, %i.hp           ; 4 uses
  %i.hr = load float, ptr %i.ah, align 4, !tbaa !32
  %i.hs = load <3 x float>, ptr %i.j, align 4, !tbaa !32 ; 3 uses
  %i.ht = extractelement <3 x float> %i.hq, i64 2
  %i.hu = fmul float %i.hr, %i.ht
  %i.hv = extractelement <3 x float> %i.hq, i64 1
  %i.hw = extractelement <3 x float> %i.hs, i64 0
  %i.hx = call float @llvm.fmuladd.f32(float %i.hw, float %i.hv, float %i.hu)
  %i.hy = extractelement <3 x float> %i.hq, i64 0
  %i.hz = extractelement <3 x float> %i.hs, i64 2
  %i.ia = call noundef float @llvm.fmuladd.f32(float %i.hz, float %i.hy, float %i.hx)
  %i.ib = load float, ptr %i.k, align 4, !tbaa !32
  %i.ic = fsub float %i.ia, %i.ib                 ; 3 uses
  %i.id = load <2 x float>, ptr %i.p, align 8, !tbaa !32 ; 2 uses
  %i.ie = load float, ptr %i.t, align 8, !tbaa !32
  %i.if = load <2 x float>, ptr %i.q, align 8, !tbaa !32 ; 2 uses
  %i.ig = load float, ptr %i.u, align 8, !tbaa !32
  %i.ih = load <2 x float>, ptr %i.w, align 8, !tbaa !32
  %i.ii = load float, ptr %i.r, align 8, !tbaa !32
  %i.ij = load float, ptr %i.s, align 4, !tbaa !32
  %i.ik = load float, ptr %i.v, align 8, !tbaa !32
  %i.il = load float, ptr %i.aa, align 8, !tbaa !32
  %i.im = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !17
  %i.io = call noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(744) %i.in)
  %i.ip = fcmp olt float %i.ic, %i.io
  %i.iq = load ptr, ptr %i.im, align 8, !tbaa !17
  %i.ir = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !36
  br i1 %i.ip, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.is = getelementptr inbounds nuw i8, ptr %i.i, i64 68
  %9 = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %10 = getelementptr inbounds nuw i8, ptr %i.e, i64 12
  %i.it = insertelement <3 x float> poison, float %i.ic, i64 0
  %i.iu = shufflevector <3 x float> %i.hs, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.iv = shufflevector <3 x float> %i.it, <3 x float> poison, <3 x i32> zeroinitializer
  %i.iw = fmul <3 x float> %i.iu, %i.iv
  %i.ix = fsub <3 x float> %i.hq, %i.iw           ; 6 uses
  %i.iy = extractelement <3 x float> %i.ix, i64 2
  %i.iz = fmul float %i.iy, %i.ij
  %i.ja = extractelement <3 x float> %i.ix, i64 1
  %i.jb = call float @llvm.fmuladd.f32(float %i.ii, float %i.ja, float %i.iz)
  %i.jc = extractelement <3 x float> %i.ix, i64 0
  %i.jd = call noundef float @llvm.fmuladd.f32(float %i.ik, float %i.jc, float %i.jb)
  %i.je = fadd float %i.il, %i.jd
  %.sroa.3.12.vec.insert.i.i70 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.je, i64 0
  %i.jf = shufflevector <2 x float> %i.id, <2 x float> %i.if, <2 x i32> <i32 1, i32 3>
  %i.jg = shufflevector <3 x float> %i.ix, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.jh = fmul <2 x float> %i.jf, %i.jg
  %i.ji = shufflevector <2 x float> %i.id, <2 x float> %i.if, <2 x i32> <i32 0, i32 2>
  %i.jj = shufflevector <3 x float> %i.ix, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.jk = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ji, <2 x float> %i.jj, <2 x float> %i.jh)
  %i.jl = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.jm = insertelement <2 x float> %i.jl, float %i.ig, i64 1
  %i.jn = shufflevector <3 x float> %i.ix, <3 x float> poison, <2 x i32> zeroinitializer
  %i.jo = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jm, <2 x float> %i.jn, <2 x float> %i.jk)
  %i.jp = fadd <2 x float> %i.ih, %i.jo
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #9
  %i.jq = load float, ptr %i.t, align 8, !tbaa !32
  %i.jr = load float, ptr %i.u, align 8, !tbaa !32
  %i.js = load <2 x float>, ptr %i.p, align 8, !tbaa !32
  %11 = load float, ptr %10, align 4, !tbaa !32
  %i.jt = load float, ptr %i.ah, align 4, !tbaa !32 ; 3 uses
  %i.ju = load float, ptr %i.j, align 4, !tbaa !32 ; 2 uses
  %i.jv = load float, ptr %i.is, align 4, !tbaa !32 ; 2 uses
  %i.jw = load <2 x float>, ptr %i.q, align 8, !tbaa !32
  %12 = load float, ptr %9, align 4, !tbaa !32
  %13 = fmul float %i.jt, %12
  %14 = fmul float %11, %i.jt
  %15 = shufflevector <2 x float> %i.js, <2 x float> %i.jw, <2 x i32> <i32 0, i32 2>
  %16 = insertelement <2 x float> poison, float %i.ju, i64 0
  %17 = shufflevector <2 x float> %16, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jx = insertelement <2 x float> poison, float %14, i64 0
  %18 = insertelement <2 x float> %i.jx, float %13, i64 1
  %i.jy = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %15, <2 x float> %17, <2 x float> %18)
  %i.jz = insertelement <2 x float> poison, float %i.jq, i64 0
  %i.ka = insertelement <2 x float> %i.jz, float %i.jr, i64 1
  %i.kb = insertelement <2 x float> poison, float %i.jv, i64 0
  %i.kc = shufflevector <2 x float> %i.kb, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kd = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ka, <2 x float> %i.kc, <2 x float> %i.jy)
  %i.ke = load float, ptr %i.r, align 8, !tbaa !32
  %i.kf = load float, ptr %i.s, align 4, !tbaa !32
  %i.kg = fmul float %i.jt, %i.kf
  %i.kh = call float @llvm.fmuladd.f32(float %i.ke, float %i.ju, float %i.kg)
  %i.ki = load float, ptr %i.v, align 8, !tbaa !32
  %i.kj = call noundef float @llvm.fmuladd.f32(float %i.ki, float %i.jv, float %i.kh)
  %.sroa.3.12.vec.insert.i75 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kj, i64 0
  store <2 x float> %i.kd, ptr %7, align 8
  %i.kk = getelementptr inbounds nuw i8, ptr %7, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i75, ptr %i.kk, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #9
  store <2 x float> %i.jp, ptr %8, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %8, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i70, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !44
  %i.kl = load ptr, ptr %5, align 8, !tbaa !9
  %i.km = getelementptr inbounds nuw i8, ptr %i.kl, i64 32
  %i.kn = load ptr, ptr %i.km, align 8
  call void %i.kn(ptr noundef nonnull align 8 dereferenceable(176) %5, ptr noundef nonnull align 4 dereferenceable(16) %7, ptr noundef nonnull align 4 dereferenceable(16) %8, float noundef %i.ic)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #9
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #9
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

declare noundef float @_ZNK20btPersistentManifold27getContactBreakingThresholdEv(ptr noundef nonnull align 8 dereferenceable(744)) local_unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN31btConvexPlaneCollisionAlgorithm16processCollisionEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(44) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree nonnull readnone align 8 captures(none) %3, ptr noundef %4) unnamed_addr #4 align 2 {
bb.a:
  %5 = alloca %class.btQuaternion, align 16       ; 4 uses
  %6 = alloca %class.btQuaternion, align 8        ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !17
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %_ZN16btManifoldResult20refreshContactPointsEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load i8, ptr %i.c, align 8, !tbaa !18, !range !22, !noundef !23
  %i.e = trunc nuw i8 %i.d to i1                  ; 2 uses
  %i.f = select i1 %i.e, ptr %2, ptr %1
  %i.g = select i1 %i.e, ptr %1, ptr %2
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 200
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !31   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 200
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !31   ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 60 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #9
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %5, align 16, !tbaa !32
  call void @_ZN31btConvexPlaneCollisionAlgorithm20collideSingleContactERK12btQuaternionP17btCollisionObjectS4_RK16btDispatcherInfoP16btManifoldResult(ptr noundef nonnull align 8 dereferenceable(44) %0, ptr noundef nonnull align 4 dereferenceable(16) %5, ptr noundef %1, ptr noundef %2, ptr nonnull align 8 poison, ptr noundef %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #9
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !36
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 728
  %i.p = load i32, ptr %i.o, align 8, !tbaa !47
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i32, ptr %i.q, align 8, !tbaa !20
  %i.s = icmp slt i32 %i.p, %i.r
  br i1 %i.s, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 68 ; 2 uses
  %i.u = load float, ptr %i.t, align 4, !tbaa !32 ; 4 uses
  %i.v = tail call noundef float @llvm.fabs.f32(float %i.u)
  %i.w = fcmp ogt float %i.v, f0x3F3504F3
  br i1 %i.w, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.y = load float, ptr %i.x, align 4, !tbaa !32 ; 3 uses
  %i.z = fmul nnan float %i.u, %i.u
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.y, float %i.y, float %i.z)
  %sqrt.i = tail call float @llvm.sqrt.f32(float %i.aa)
  %i.ab = fdiv float 1.000000e+00, %sqrt.i        ; 2 uses
  %i.ac = fneg float %i.u
  %i.ad = fmul float %i.ab, %i.ac
  %i.ae = fmul float %i.y, %i.ab
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

bb.e:                                             ; preds = %bb.c
  %i.af = load float, ptr %i.l, align 4, !tbaa !32 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  %i.ah = load float, ptr %i.ag, align 4, !tbaa !32 ; 3 uses
  %i.ai = fmul float %i.ah, %i.ah
  %i.aj = tail call float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ai)
  %sqrt46.i = tail call float @llvm.sqrt.f32(float %i.aj)
  %i.ak = fdiv float 1.000000e+00, %sqrt46.i      ; 2 uses
  %i.al = fneg float %i.ah
  %i.am = fmul float %i.ak, %i.al
  %i.an = fmul float %i.af, %i.ak
  br label %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit

_Z13btPlaneSpace1RK9btVector3RS_S2_.exit:         ; preds = %bb.d, %bb.e
  %.sroa.052.0 = phi float [ 0.000000e+00, %bb.d ], [ %i.am, %bb.e ] ; 3 uses
  %.sroa.553.0 = phi float [ %i.ad, %bb.d ], [ %i.an, %bb.e ] ; 3 uses
  %.sroa.854.0 = phi float [ %i.ae, %bb.d ], [ 0.000000e+00, %bb.e ] ; 3 uses
  %i.ao = load ptr, ptr %i.i, align 8, !tbaa !9
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8
  %i.ar = tail call noundef float %i.aq(ptr noundef nonnull align 8 dereferenceable(24) %i.i)
  %i.as = load float, ptr @gContactBreakingThreshold, align 4, !tbaa !32
  %i.at = fdiv float %i.as, %i.ar                 ; 2 uses
  %i.au = fcmp ogt float %i.at, f0x3EC90FDB
  %spec.store.select = select i1 %i.au, float f0x3EC90FDB, float %i.at
  %i.av = fmul float %.sroa.553.0, %.sroa.553.0
  %i.aw = tail call float @llvm.fmuladd.f32(float %.sroa.052.0, float %.sroa.052.0, float %i.av)
  %i.ax = tail call noundef float @llvm.fmuladd.f32(float %.sroa.854.0, float %.sroa.854.0, float %i.aw)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.ax)
  %i.ay = fmul float %spec.store.select, 5.000000e-01 ; 2 uses
  %i.az = tail call noundef float @sinf(float noundef %i.ay) #9, !tbaa !7
  %i.ba = fdiv float %i.az, %sqrt.i.i.i           ; 2 uses
  %i.bb = fmul float %.sroa.553.0, %i.ba          ; 4 uses
  %i.bc = insertelement <2 x float> poison, float %i.ba, i64 0
  %i.bd = shufflevector <2 x float> %i.bc, <2 x float> poison, <2 x i32> zeroinitializer
  %i.be = insertelement <2 x float> poison, float %.sroa.854.0, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %.sroa.052.0, i64 1
  %i.bg = fmul <2 x float> %i.bf, %i.bd           ; 5 uses
  %i.bh = tail call noundef float @cosf(float noundef %i.ay) #9, !tbaa !7 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 2 uses
  %i.bj = load i32, ptr %i.bi, align 4, !tbaa !19 ; 2 uses
  %i.bk = icmp sgt i32 %i.bj, 0
  br i1 %i.bk, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %_Z13btPlaneSpace1RK9btVector3RS_S2_.exit
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bm = insertelement <2 x float> poison, float %i.bb, i64 1
  %i.bn = shufflevector <2 x float> %i.bg, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.bo = insertelement <2 x float> %i.bn, float %i.bb, i64 0
  %i.bp = insertelement <2 x float> poison, float %i.bh, i64 0
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.br = extractelement <2 x float> %i.bg, i64 0 ; 2 uses
  %i.bs = extractelement <2 x float> %i.bg, i64 1 ; 2 uses
  %i.bt = shufflevector <2 x float> %i.bm, <2 x float> %i.bg, <2 x i32> <i32 3, i32 1>
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %i.bu = phi i32 [ %i.bj, %.lr.ph ], [ %i.em, %bb.f ]
  %.060 = phi i32 [ 0, %.lr.ph ], [ %i.el, %bb.f ] ; 2 uses
  %i.bv = uitofp nneg i32 %.060 to float
  %i.bw = sitofp i32 %i.bu to float
  %i.bx = fdiv nnan float f0x40C90FDB, %i.bw
  %i.by = fmul float %i.bx, %i.bv
  %i.bz = fmul float %i.by, 5.000000e-01          ; 2 uses
  %i.ca = tail call noundef float @sinf(float noundef %i.bz) #9, !tbaa !7
  %i.cb = tail call noundef float @cosf(float noundef %i.bz) #9, !tbaa !7 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #9
  %i.cc = load <2 x float>, ptr %i.l, align 4, !tbaa !32 ; 4 uses
  %i.cd = load float, ptr %i.t, align 4, !tbaa !32 ; 3 uses
  %foldExtExtBinop = fmul <2 x float> %i.cc, %i.cc
  %i.ce = extractelement <2 x float> %foldExtExtBinop, i64 1
  %i.cf = extractelement <2 x float> %i.cc, i64 0 ; 2 uses
  %i.cg = tail call float @llvm.fmuladd.f32(float %i.cf, float %i.cf, float %i.ce)
  %i.ch = tail call noundef float @llvm.fmuladd.f32(float %i.cd, float %i.cd, float %i.cg)
  %sqrt.i.i.i25 = tail call noundef float @llvm.sqrt.f32(float %i.ch)
  %i.ci = fdiv float %i.ca, %sqrt.i.i.i25         ; 2 uses
  %i.cj = insertelement <2 x float> poison, float %i.ci, i64 0
  %i.ck = shufflevector <2 x float> %i.cj, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x float> %i.cc, %i.ck           ; 6 uses
  %i.cm = extractelement <2 x float> %i.cl, i64 0 ; 4 uses
  %i.cn = fmul float %i.cd, %i.ci                 ; 8 uses
  %i.co = fneg float %i.cm                        ; 2 uses
  %i.cp = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cq = insertelement <2 x float> %i.cp, float %i.cn, i64 0
  %i.cr = fneg <2 x float> %i.cq
  %i.cs = insertelement <2 x float> %i.cp, float %i.cn, i64 1
  %i.ct = fneg <2 x float> %i.cs                  ; 2 uses
  %i.cu = fmul float %i.bh, %i.co
  %i.cv = fmul <2 x float> %i.bq, %i.ct
  %i.cw = insertelement <2 x float> poison, float %i.cb, i64 0
  %i.cx = shufflevector <2 x float> %i.cw, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.cy = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cx, <2 x float> %i.bo, <2 x float> %i.cv)
  %i.cz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cr, <2 x float> %i.bt, <2 x float> %i.cy)
  %i.da = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cl, <2 x float> %i.bg, <2 x float> %i.cz) ; 3 uses
  %i.db = extractelement <2 x float> %i.da, i64 1 ; 3 uses
  %i.dc = fmul float %i.bs, %i.cm
  %i.dd = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.bh, float %i.dc)
  %i.de = extractelement <2 x float> %i.cl, i64 1 ; 3 uses
  %i.df = tail call float @llvm.fmuladd.f32(float %i.de, float %i.bb, float %i.dd)
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.br, float %i.df) ; 3 uses
  %i.dh = fneg float %i.db
  %i.di = fneg <2 x float> %i.da                  ; 2 uses
  %i.dj = tail call float @llvm.fmuladd.f32(float %i.cb, float %i.bs, float %i.cu)
  %i.dk = extractelement <2 x float> %i.ct, i64 0
  %i.dl = tail call float @llvm.fmuladd.f32(float %i.dk, float %i.br, float %i.dj)
  %i.dm = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.bb, float %i.dl) ; 4 uses
  %i.dn = fmul float %i.cb, %i.dm
  %i.do = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.cm, float %i.dn)
  %i.dp = extractelement <2 x float> %i.da, i64 0 ; 2 uses
  %i.dq = tail call float @llvm.fmuladd.f32(float %i.dp, float %i.cn, float %i.do)
  %i.dr = tail call float @llvm.fmuladd.f32(float %i.dh, float %i.de, float %i.dq)
  %i.ds = fmul float %i.cb, %i.dp
  %i.dt = tail call float @llvm.fmuladd.f32(float %i.dg, float %i.de, float %i.ds)
  %i.du = tail call float @llvm.fmuladd.f32(float %i.db, float %i.cm, float %i.dt)
end_hunk_0
