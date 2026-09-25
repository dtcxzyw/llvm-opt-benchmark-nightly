Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3CpuRigidBodyPipeline?download=true
inline.NumInlined: 437
inline.NumDeleted: 149
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 10
begin_hunk_0
target triple = "x86_64-pc-linux-gnu"

%class.b3AlignedObjectArray.19 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%struct.b3SolveTask = type <{ ptr, ptr, ptr, ptr, i32, i32, i32, i8, [3 x i8], i32, [4 x i8] }>
%class.b3Vector3 = type { %union.anon }
%union.anon = type { [4 x float] }
%class.b3AlignedObjectArray.25 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%struct.b3RigidBodyData = type { %class.b3Vector3, %class.b3Quaternion, %class.b3Vector3, %class.b3Vector3, i32, float, float, float }
%class.b3Quaternion = type { %class.b3QuadWord }
%class.b3QuadWord = type { %union.anon.4 }
%union.anon.4 = type { [4 x float] }
%struct.b3Aabb = type { %union.anon.9, %union.anon.10 }
%union.anon.9 = type { [4 x float] }
%union.anon.10 = type { [4 x float] }

$_ZN11b3SolveTask3runEi = comdat any

$_ZN20b3AlignedObjectArrayI20b3ContactConstraint4ED2Ev = comdat any

$_Z20b3IntegrateTransformP15b3RigidBodyDataffRK9b3Vector3 = comdat any

$_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE9push_backERKS0_ = comdat any

$_ZN20b3AlignedObjectArrayI6b3AabbE6expandERKS0_ = comdat any

$__clang_call_terminate = comdat any

$_ZN20b3AlignedObjectArrayIiED2Ev = comdat any

@_ZTV22b3CpuRigidBodyPipeline = dso_local constant { [10 x ptr] } { [10 x ptr] [ptr null, ptr @_ZTI22b3CpuRigidBodyPipeline, ptr @_ZN22b3CpuRigidBodyPipelineD2Ev, ptr @_ZN22b3CpuRigidBodyPipelineD0Ev, ptr @_ZN22b3CpuRigidBodyPipeline14stepSimulationEf, ptr @_ZN22b3CpuRigidBodyPipeline9integrateEf, ptr @_ZN22b3CpuRigidBodyPipeline20updateAabbWorldSpaceEv, ptr @_ZN22b3CpuRigidBodyPipeline23computeOverlappingPairsEv, ptr @_ZN22b3CpuRigidBodyPipeline20computeContactPointsEv, ptr @_ZN22b3CpuRigidBodyPipeline23solveContactConstraintsEv] }, align 8
@.str = private unnamed_addr constant [13 x i8] c"numPairs=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"b3Error[%s,%d]:\0A\00", align 1
@.str.2 = private unnamed_addr constant [79 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3Dynamics/b3CpuRigidBodyPipeline.cpp\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"registerPhysicsInstance using invalid collidableIndex\0A\00", align 1
@_ZTI22b3CpuRigidBodyPipeline = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS22b3CpuRigidBodyPipeline }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS22b3CpuRigidBodyPipeline = dso_local constant [25 x i8] c"22b3CpuRigidBodyPipeline\00", align 1
@.str.5 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3Common/b3AlignedObjectArray.h\00", align 1
@.str.6 = private unnamed_addr constant [44 x i8] c"b3AlignedObjectArray reserve out-of-memory\0A\00", align 1

@_ZN22b3CpuRigidBodyPipelineC1EP16b3CpuNarrowPhaseP22b3DynamicBvhBroadphaseRK8b3Config = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN22b3CpuRigidBodyPipelineC2EP16b3CpuNarrowPhaseP22b3DynamicBvhBroadphaseRK8b3Config
@_ZN22b3CpuRigidBodyPipelineD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN22b3CpuRigidBodyPipelineD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22b3CpuRigidBodyPipelineC2EP16b3CpuNarrowPhaseP22b3DynamicBvhBroadphaseRK8b3Config(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV22b3CpuRigidBodyPipeline, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = tail call noalias noundef nonnull dereferenceable(160) ptr @_Znwm(i64 noundef 160) #17 ; 16 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i8 1, ptr %i.b, align 8, !tbaa !16
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr null, ptr %i.c, align 8, !tbaa !17
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 0, ptr %i.d, align 4, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 0, ptr %i.e, align 8, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i8 1, ptr %i.f, align 8, !tbaa !68
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr null, ptr %i.g, align 8, !tbaa !23
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 36
  store i32 0, ptr %i.h, align 4, !tbaa !69
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i32 0, ptr %i.i, align 8, !tbaa !70
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i8 1, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store ptr null, ptr %i.k, align 8, !tbaa !28
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 68
  store i32 0, ptr %i.l, align 4, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 0, ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %i.o, align 8, !tbaa !33
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %1, ptr %i.p, align 8, !tbaa !38
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %2, ptr %i.q, align 8, !tbaa !39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 4 dereferenceable(48) %3, i64 48, i1 false), !tbaa.struct !71
  ret void
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN22b3CpuRigidBodyPipelineD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 64) (i8, ptr @_ZTV22b3CpuRigidBodyPipeline, i64 16), ptr %0, align 8, !tbaa !10
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 8 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !28   ; 2 uses
  %.not.i.i.i.i = icmp ne ptr %i.e, null
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.g = load i8, ptr %i.f, align 8, !range !41
  %i.h = trunc nuw i8 %i.g to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i.i, i1 %i.h, i1 false
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN20b3AlignedObjectArrayI6b3AabbED2Ev.exit.i

bb.c:                                             ; preds = %bb.b
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.e)
          to label %_ZN20b3AlignedObjectArrayI6b3AabbED2Ev.exit.i unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #18
  unreachable

_ZN20b3AlignedObjectArrayI6b3AabbED2Ev.exit.i:    ; preds = %bb.c, %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !23   ; 2 uses
  %.not.i.i.i1.i = icmp ne ptr %i.l, null
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.n = load i8, ptr %i.m, align 8, !range !41
  %i.o = trunc nuw i8 %i.n to i1
  %or.cond.i.i2.i = select i1 %.not.i.i.i1.i, i1 %i.o, i1 false
  br i1 %or.cond.i.i2.i, label %bb.e, label %_ZN20b3AlignedObjectArrayI9b3InertiaED2Ev.exit.i

bb.e:                                             ; preds = %_ZN20b3AlignedObjectArrayI6b3AabbED2Ev.exit.i
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.l)
          to label %_ZN20b3AlignedObjectArrayI9b3InertiaED2Ev.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  tail call void @__clang_call_terminate(ptr %i.q) #18
  unreachable

_ZN20b3AlignedObjectArrayI9b3InertiaED2Ev.exit.i: ; preds = %bb.e, %_ZN20b3AlignedObjectArrayI6b3AabbED2Ev.exit.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !17   ; 2 uses
  %.not.i.i.i3.i = icmp ne ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.u = load i8, ptr %i.t, align 8, !range !41
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond.i.i4.i = select i1 %.not.i.i.i3.i, i1 %i.v, i1 false
  br i1 %or.cond.i.i4.i, label %bb.g, label %_ZN34b3CpuRigidBodyPipelineInternalDataD2Ev.exit

bb.g:                                             ; preds = %_ZN20b3AlignedObjectArrayI9b3InertiaED2Ev.exit.i
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.s)
          to label %_ZN34b3CpuRigidBodyPipelineInternalDataD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          catch ptr null
  %i.x = extractvalue { ptr, i32 } %i.w, 0
  tail call void @__clang_call_terminate(ptr %i.x) #18
  unreachable

_ZN34b3CpuRigidBodyPipelineInternalDataD2Ev.exit: ; preds = %_ZN20b3AlignedObjectArrayI9b3InertiaED2Ev.exit.i, %bb.g
  tail call void @_ZdlPvm(ptr noundef nonnull %i.b, i64 noundef 160) #19
  br label %bb.i

bb.i:                                             ; preds = %_ZN34b3CpuRigidBodyPipelineInternalDataD2Ev.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN22b3CpuRigidBodyPipelineD0Ev(ptr noundef nonnull align 8 dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #4 align 2 {
bb.a:
  tail call void @_ZN22b3CpuRigidBodyPipelineD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 16) #19
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22b3CpuRigidBodyPipeline20updateAabbWorldSpaceEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #5 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %bb.c, %bb.a
  ret void

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ 0, %bb.a ] ; 4 uses
  %i.f = phi ptr [ %i.cm, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %indvars.iv ; 5 uses
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.525.0.copyload = load float, ptr %.sroa.525.0..sroa_idx, align 8
  %.sroa.420.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  %i.j = load <2 x float>, ptr %i.i, align 16
  %1 = load <2 x float>, ptr %.sroa.420.0..sroa_idx, align 16 ; 2 uses
  %2 = load <3 x float>, ptr %.sroa.420.0..sroa_idx, align 16
  %3 = load <2 x float>, ptr %.sroa.521.0..sroa_idx, align 8 ; 2 uses
  %.sroa.622.0.copyload = load float, ptr %.sroa.521.0..sroa_idx, align 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.l = load i32, ptr %i.k, align 16, !tbaa !47
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !38
  %i.o = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZN16b3CpuNarrowPhase16getCollidableCpuEi(ptr noundef nonnull align 8 dereferenceable(28) %i.n, i32 noundef %i.l)
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 12
  %i.q = load i32, ptr %i.p, align 4, !tbaa !48   ; 2 uses
  %i.r = icmp sgt i32 %i.q, -1
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %5 = shufflevector <3 x float> %2, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %6 = shufflevector <2 x float> %1, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0> ; 4 uses
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !38
  %i.v = tail call noundef nonnull align 16 dereferenceable(32) ptr @_ZNK16b3CpuNarrowPhase17getLocalSpaceAabbEi(ptr noundef nonnull align 8 dereferenceable(28) %i.u, i32 noundef %i.q) ; 2 uses
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.w = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 80
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !28
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.y, i64 %indvars.iv ; 5 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %foldExtExtBinop = fmul <4 x float> %6, %6
  %7 = extractelement <4 x float> %foldExtExtBinop, i64 0
  %8 = extractelement <2 x float> %1, i64 0       ; 2 uses
  %i.ab = tail call float @llvm.fmuladd.f32(float %8, float %8, float %7)
  %i.ac = tail call float @llvm.fmuladd.f32(float %.sroa.622.0.copyload, float %.sroa.622.0.copyload, float %i.ab)
  %9 = extractelement <2 x float> %3, i64 1       ; 3 uses
  %i.ad = tail call noundef float @llvm.fmuladd.f32(float %9, float %9, float %i.ac)
  %i.ae = fdiv float 2.000000e+00, %i.ad
  %i.af = load <3 x float>, ptr %i.v, align 16    ; 2 uses
  %i.ag = load <3 x float>, ptr %.sroa.618.0..sroa_idx, align 16 ; 2 uses
  %i.ah = fsub <3 x float> %i.ag, %i.af
  %i.ai = fmul <3 x float> %i.ah, splat (float 5.000000e-01)
  %i.aj = fadd <3 x float> %i.ai, zeroinitializer ; 6 uses
  %i.ak = fadd <3 x float> %i.af, %i.ag
  %i.al = fmul <3 x float> %i.ak, splat (float 5.000000e-01) ; 6 uses
  %10 = insertelement <4 x float> poison, float %i.ae, i64 0
  %11 = shufflevector <4 x float> %10, <4 x float> poison, <4 x i32> zeroinitializer
  %12 = fmul <4 x float> %5, %11                  ; 4 uses
  %13 = extractelement <4 x float> %12, i64 2
  %i.am = fmul float %9, %13                      ; 2 uses
  %14 = fmul <4 x float> %6, %12                  ; 5 uses
  %shift = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop30 = fmul <4 x float> %6, %shift
  %15 = extractelement <4 x float> %foldExtExtBinop30, i64 0 ; 2 uses
  %16 = shufflevector <4 x float> %12, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %17 = fmul <4 x float> %4, %16                  ; 3 uses
  %18 = fadd <4 x float> %14, %17                 ; 3 uses
  %19 = extractelement <4 x float> %18, i64 0
  %20 = fsub float 1.000000e+00, %19
  %foldExtExtBinop32 = fsub <4 x float> %14, %17
  %21 = extractelement <4 x float> %foldExtExtBinop32, i64 3
  %22 = extractelement <4 x float> %18, i64 2
  %i.an = fsub float 1.000000e+00, %22
  %i.ao = fsub float %15, %i.am
  %foldExtExtBinop34 = fsub <4 x float> %14, %17
  %23 = extractelement <4 x float> %foldExtExtBinop34, i64 1 ; 2 uses
  %i.ap = fadd float %15, %i.am                   ; 2 uses
  %shift36 = shufflevector <4 x float> %14, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop37 = fadd <4 x float> %shift36, %14
  %24 = extractelement <4 x float> %foldExtExtBinop37, i64 0
  %i.aq = fsub float 1.000000e+00, %24            ; 2 uses
  %25 = shufflevector <4 x float> %18, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ar = insertelement <2 x float> %25, float %20, i64 0 ; 2 uses
  %i.as = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ar)
  %i.at = insertelement <2 x float> poison, float %21, i64 0
  %i.au = insertelement <2 x float> %i.at, float %i.an, i64 1 ; 2 uses
  %i.av = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.au)
  %i.aw = insertelement <2 x float> %25, float %i.ao, i64 1 ; 2 uses
  %i.ax = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.aw)
  %i.ay = tail call noundef float @llvm.fabs.f32(float %23)
  %i.az = tail call noundef float @llvm.fabs.f32(float %i.ap)
  %i.ba = tail call noundef float @llvm.fabs.f32(float %i.aq)
  %i.bb = shufflevector <3 x float> %i.al, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = fmul <2 x float> %i.au, %i.bb
  %i.bd = shufflevector <3 x float> %i.al, <3 x float> poison, <2 x i32> zeroinitializer
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bd, <2 x float> %i.ar, <2 x float> %i.bc)
  %i.bf = shufflevector <3 x float> %i.al, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bf, <2 x float> %i.aw, <2 x float> %i.be)
  %i.bh = extractelement <3 x float> %i.al, i64 1
  %i.bi = fmul float %i.ap, %i.bh
  %i.bj = extractelement <3 x float> %i.al, i64 0
  %i.bk = tail call float @llvm.fmuladd.f32(float %i.bj, float %23, float %i.bi)
  %i.bl = extractelement <3 x float> %i.al, i64 2
  %i.bm = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.aq, float %i.bk)
  %i.bn = fadd <2 x float> %i.j, %i.bg            ; 2 uses
  %i.bo = fadd float %.sroa.525.0.copyload, %i.bm ; 2 uses
  %i.bp = shufflevector <3 x float> %i.aj, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bq = fmul <2 x float> %i.av, %i.bp
  %i.br = shufflevector <3 x float> %i.aj, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.as, <2 x float> %i.bq)
  %i.bt = shufflevector <3 x float> %i.aj, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bt, <2 x float> %i.ax, <2 x float> %i.bs) ; 2 uses
  %i.bv = extractelement <3 x float> %i.aj, i64 1
  %i.bw = fmul float %i.az, %i.bv
  %i.bx = extractelement <3 x float> %i.aj, i64 0
  %i.by = tail call float @llvm.fmuladd.f32(float %i.bx, float %i.ay, float %i.bw)
  %i.bz = extractelement <3 x float> %i.aj, i64 2
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.bz, float %i.ba, float %i.by) ; 2 uses
  %i.cb = fsub <2 x float> %i.bn, %i.bu
  %i.cc = fsub float %i.bo, %i.ca
  %.sroa.3.12.vec.insert.i.i32.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cc, i64 0
  store <2 x float> %i.cb, ptr %i.z, align 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i32.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !48
  %i.cd = fadd <2 x float> %i.bn, %i.bu
  %i.ce = fadd float %i.bo, %i.ca
  %.sroa.3.12.vec.insert.i.i37.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ce, i64 0
  store <2 x float> %i.cd, ptr %i.aa, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i.i37.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !48
  %i.cf = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 96
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !39 ; 2 uses
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !10
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  %i.ck = load ptr, ptr %i.cj, align 8
  %i.cl = trunc nuw nsw i64 %indvars.iv to i32
  tail call void %i.ck(ptr noundef nonnull align 8 dereferenceable(315) %i.ch, i32 noundef %i.cl, ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %i.aa, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cm = load ptr, ptr %i.a, align 8, !tbaa !33  ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 4
  %i.co = load i32, ptr %i.cn, align 4, !tbaa !18
  %i.cp = sext i32 %i.co to i64
  %i.cq = icmp slt i64 %indvars.iv.next, %i.cp
  br i1 %i.cq, label %.lr.ph, label %._crit_edge, !llvm.loop !72
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZNK22b3CpuRigidBodyPipeline12getNumBodiesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  ret i32 %i.d
}

declare noundef nonnull align 4 dereferenceable(16) ptr @_ZN16b3CpuNarrowPhase16getCollidableCpuEi(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) local_unnamed_addr #7

declare noundef nonnull align 16 dereferenceable(32) ptr @_ZNK16b3CpuNarrowPhase17getLocalSpaceAabbEi(ptr noundef nonnull align 8 dereferenceable(28), i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22b3CpuRigidBodyPipeline23computeOverlappingPairsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(315) %i.d) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef i32 %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h) ; 0 uses
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !39   ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(315) %i.o, ptr noundef null)
  %i.s = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 96
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !39   ; 2 uses
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !10
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 64
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = tail call noundef ptr %i.x(ptr noundef nonnull align 8 dereferenceable(315) %i.u) ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !10
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = tail call noundef i32 %i.ab(ptr noundef nonnull align 8 dereferenceable(8) %i.y)
  %i.ad = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.ac) ; 0 uses
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #8

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22b3CpuRigidBodyPipeline20computeContactPointsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !39   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef ptr %i.g(ptr noundef nonnull align 8 dereferenceable(315) %i.d) ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !10
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef nonnull align 8 dereferenceable(25) ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.m = load ptr, ptr %i.a, align 8, !tbaa !33   ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 104
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !38   ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  %i.q = load ptr, ptr %i.o, align 8, !tbaa !10
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.s = load ptr, ptr %i.r, align 8
  tail call void %i.s(ptr noundef nonnull align 8 dereferenceable(28) %i.o, ptr noundef nonnull align 8 dereferenceable(25) %i.l, ptr noundef nonnull align 8 dereferenceable(25) %i.p, ptr noundef nonnull align 8 dereferenceable(25) %i.m)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22b3CpuRigidBodyPipeline14stepSimulationEf(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.c = load ptr, ptr %i.b, align 8
  tail call void %i.c(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.d = load ptr, ptr %0, align 8, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.f = load ptr, ptr %i.e, align 8
  tail call void %i.f(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.g = load ptr, ptr %0, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8
  tail call void %i.i(ptr noundef nonnull align 8 dereferenceable(16) %0)
  %i.j = load ptr, ptr %0, align 8, !tbaa !10
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(16) %0, float noundef %1)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22b3CpuRigidBodyPipeline23solveContactConstraintsEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %class.b3AlignedObjectArray.19, align 8 ; 16 uses
  %2 = alloca %struct.b3SolveTask, align 8        ; 22 uses
  %3 = alloca %struct.b3SolveTask, align 8        ; 22 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #20
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !73
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  store ptr null, ptr %i.b, align 8, !tbaa !53
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 4
  store i32 0, ptr %i.c, align 4, !tbaa !74
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 0, ptr %i.d, align 8, !tbaa !75
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.k = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.k, ptr %2, align 8, !tbaa !76
  store ptr %i.l, ptr %i.f, align 8, !tbaa !77
  store ptr %1, ptr %i.g, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.h, i8 0, i64 20, i1 false)
  store i32 250, ptr %i.j, align 8, !tbaa !59
  store i8 0, ptr %i.i, align 4, !tbaa !60
  invoke void @_ZN11b3SolveTask3runEi(ptr noundef nonnull align 8 dereferenceable(52) %2, i32 noundef 0)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #20
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #20
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !33   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr %i.m, ptr %2, align 8, !tbaa !76
  store ptr %i.n, ptr %i.f, align 8, !tbaa !77
  store ptr %1, ptr %i.g, align 8, !tbaa !78
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.h, i8 0, i64 20, i1 false)
  store i32 250, ptr %i.j, align 8, !tbaa !59
  store i8 0, ptr %i.i, align 4, !tbaa !60
end_hunk_0
begin_hunk_1_@_ZN22b3CpuRigidBodyPipeline9integrateEf:bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !18
  %i.n = sext i32 %i.m to i64
  %i.o = icmp slt i64 %indvars.iv.next, %i.n
  br i1 %i.o, label %.lr.ph, label %._crit_edge, !llvm.loop !111
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_Z20b3IntegrateTransformP15b3RigidBodyDataffRK9b3Vector3(ptr noundef %0, float noundef %1, float noundef %2, ptr noundef nonnull align 16 dereferenceable(16) %3) local_unnamed_addr #9 comdat {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.b = load float, ptr %i.a, align 4, !tbaa !66
  %i.c = fcmp une float %i.b, 0.000000e+00
  br i1 %i.c, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load float, ptr %i.d, align 16, !tbaa !48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.g = load <2 x float>, ptr %i.f, align 4, !tbaa !48 ; 2 uses
  %i.h = insertelement <2 x float> poison, float %2, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.j = shufflevector <2 x float> %i.g, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.k = insertelement <2 x float> %i.j, float %i.e, i64 1
  %i.l = fmul <2 x float> %i.i, %i.k              ; 2 uses
  %i.m = extractelement <2 x float> %i.l, i64 1   ; 3 uses
  store float %i.m, ptr %i.d, align 16, !tbaa !48
  %i.n = fmul <2 x float> %i.i, %i.g              ; 5 uses
  %i.o = extractelement <2 x float> %i.n, i64 1   ; 2 uses
  store <2 x float> %i.n, ptr %i.f, align 4, !tbaa !48
  %foldExtExtBinop = fmul <2 x float> %i.n, %i.n
  %i.p = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.q = tail call float @llvm.fmuladd.f32(float %i.m, float %i.m, float %i.p)
  %i.r = tail call noundef float @llvm.fmuladd.f32(float %i.o, float %i.o, float %i.q)
  %sqrt = tail call float @llvm.sqrt.f32(float %i.r) ; 2 uses
  %i.s = fmul float %1, %sqrt
  %i.t = fcmp ogt float %i.s, f0x3F490FDA
  %i.u = fdiv float f0x3F490FDA, %1
  %.0 = select i1 %i.t, float %i.u, float %sqrt   ; 6 uses
  %i.v = fcmp olt float %.0, 1.000000e-03
  br i1 %i.v, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.w = fmul float %1, %1
  %i.x = fmul float %1, %i.w
  %i.y = fmul float %i.x, f0x3CAAAAAB
  %i.z = fmul float %i.y, %.0
  %i.aa = fneg float %.0
  %i.ab = fmul float %i.z, %i.aa
  %i.ac = tail call float @llvm.fmuladd.f32(float %1, float 5.000000e-01, float %i.ab)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.ad = fmul float %.0, 5.000000e-01
  %i.ae = fmul float %1, %i.ad
  %i.af = tail call noundef float @sinf(float noundef %i.ae) #20
  %i.ag = fdiv float %i.af, %.0
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.sink79 = phi float [ %i.ag, %bb.d ], [ %i.ac, %bb.c ]
  %i.ah = insertelement <2 x float> poison, float %.sink79, i64 0
  %i.ai = shufflevector <2 x float> %i.ah, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.aj = fmul <2 x float> %i.l, %i.ai            ; 4 uses
  %i.ak = fmul <2 x float> %i.n, %i.ai            ; 4 uses
  %i.al = fmul float %1, %.0
  %i.am = fmul float %i.al, 5.000000e-01
  %i.an = tail call noundef float @cosf(float noundef %i.am) #20
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.sroa.553.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load <2 x float>, ptr %.sroa.553.0..sroa_idx, align 8 ; 6 uses
  %i.aq = fneg <2 x float> %i.ak                  ; 2 uses
  %i.ar = insertelement <2 x float> poison, float %i.an, i64 0
  %i.as = shufflevector <2 x float> %i.ar, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.at = shufflevector <2 x float> %i.aj, <2 x float> %i.aq, <2 x i32> <i32 1, i32 2>
  %i.au = load <2 x float>, ptr %i.ao, align 16   ; 6 uses
  %i.av = shufflevector <2 x float> %i.ak, <2 x float> %i.aj, <2 x i32> <i32 1, i32 3>
  %i.aw = fneg <2 x float> %i.av
  %i.ax = shufflevector <2 x float> %i.aj, <2 x float> %i.ak, <2 x i32> <i32 1, i32 2>
  %i.ay = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.az = fmul <2 x float> %i.ax, %i.ay
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.au, <2 x float> %i.az)
  %i.bb = shufflevector <2 x float> %i.ap, <2 x float> %i.au, <2 x i32> <i32 0, i32 2>
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ak, <2 x float> %i.bb, <2 x float> %i.ba)
  %i.bd = shufflevector <2 x float> %i.au, <2 x float> %i.ap, <2 x i32> <i32 1, i32 2>
  %i.be = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> %i.bd, <2 x float> %i.bc) ; 4 uses
  %i.bf = fneg <2 x float> %i.au
  %i.bg = shufflevector <2 x float> %i.ap, <2 x float> %i.bf, <2 x i32> <i32 1, i32 2>
  %i.bh = fmul <2 x float> %i.aj, %i.bg
  %i.bi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.as, <2 x float> %i.ap, <2 x float> %i.bh)
  %i.bj = shufflevector <2 x float> %i.au, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.at, <2 x float> %i.bj, <2 x float> %i.bi)
  %i.bl = shufflevector <2 x float> %i.au, <2 x float> %i.ap, <2 x i32> <i32 0, i32 2>
  %i.bm = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aq, <2 x float> %i.bl, <2 x float> %i.bk) ; 3 uses
  %foldExtExtBinop81 = fmul <2 x float> %i.be, %i.be
  %i.bn = extractelement <2 x float> %foldExtExtBinop81, i64 1
  %i.bo = extractelement <2 x float> %i.be, i64 0 ; 2 uses
  %i.bp = tail call float @llvm.fmuladd.f32(float %i.bo, float %i.bo, float %i.bn)
  %i.bq = extractelement <2 x float> %i.bm, i64 0 ; 2 uses
  %i.br = tail call float @llvm.fmuladd.f32(float %i.bq, float %i.bq, float %i.bp)
  %i.bs = extractelement <2 x float> %i.bm, i64 1 ; 2 uses
  %i.bt = tail call noundef float @llvm.fmuladd.f32(float %i.bs, float %i.bs, float %i.br)
  %sqrt.i.i.i = tail call noundef float @llvm.sqrt.f32(float %i.bt)
  %i.bu = fdiv float 1.000000e+00, %sqrt.i.i.i
  %i.bv = insertelement <2 x float> poison, float %i.bu, i64 0
  %i.bw = shufflevector <2 x float> %i.bv, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.bx = fmul <2 x float> %i.be, %i.bw
  %i.by = fmul <2 x float> %i.bm, %i.bw
  store <2 x float> %i.bx, ptr %i.ao, align 16
  store <2 x float> %i.by, ptr %.sroa.553.0..sroa_idx, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ca = load float, ptr %i.bz, align 8, !tbaa !48
  %i.cb = fmul float %1, %i.ca
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.ce = load float, ptr %i.cd, align 8, !tbaa !48
  %i.cf = fadd float %i.cb, %i.ce                 ; 2 uses
  %i.cg = fmul float %1, %i.cf
  %i.ch = load <2 x float>, ptr %3, align 16, !tbaa !48
  %i.ci = insertelement <2 x float> poison, float %1, i64 0
  %i.cj = shufflevector <2 x float> %i.ci, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ck = fmul <2 x float> %i.cj, %i.ch
  %i.cl = load <2 x float>, ptr %i.cc, align 16, !tbaa !48
  %i.cm = fadd <2 x float> %i.ck, %i.cl           ; 2 uses
  store <2 x float> %i.cm, ptr %i.cc, align 16, !tbaa !48
  store float %i.cf, ptr %i.cd, align 8, !tbaa !48
  %i.cn = fmul <2 x float> %i.cj, %i.cm
  %i.co = load <2 x float>, ptr %0, align 16, !tbaa !48
  %i.cp = fadd <2 x float> %i.cn, %i.co
  store <2 x float> %i.cp, ptr %0, align 16, !tbaa !48
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.cr = load float, ptr %i.cq, align 8, !tbaa !48
  %i.cs = fadd float %i.cg, %i.cr
  store float %i.cs, ptr %i.cq, align 8, !tbaa !48
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN22b3CpuRigidBodyPipeline23registerPhysicsInstanceEfPKfS1_ii(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, float noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #5 align 2 {
bb.a:
  %6 = alloca %struct.b3RigidBodyData, align 16   ; 12 uses
  %7 = alloca %struct.b3Aabb, align 16            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #20
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18   ; 2 uses
  %i.e = fcmp une float %1, 0.000000e+00
  %i.f = fdiv float 1.000000e+00, %1
  %i.g = select i1 %i.e, float %i.f, float 0.000000e+00
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 68
  store float %i.g, ptr %i.h, align 4, !tbaa !66
  %i.i = getelementptr inbounds nuw i8, ptr %6, i64 48
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 %4, ptr %i.j, align 16, !tbaa !47
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.k, i8 0, i64 16, i1 false)
  %i.m = load <2 x float>, ptr %2, align 4, !tbaa !67
  store <2 x float> %i.m, ptr %6, align 16, !tbaa !48
  %i.n = load float, ptr %i.l, align 4, !tbaa !67
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %i.n, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 12
  store float 0.000000e+00, ptr %i.p, align 4, !tbaa !48
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.r = load <4 x float>, ptr %3, align 4, !tbaa !67
  store <4 x float> %i.r, ptr %i.q, align 16, !tbaa !48
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 72
  store <2 x float> <float 0.000000e+00, float 3.000000e-01>, ptr %i.s, align 8, !tbaa !67
  call void @_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.b, ptr noundef nonnull align 16 dereferenceable(80) %6)
  %i.t = icmp sgt i32 %4, -1
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.x = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %7, i8 0, i64 32, i1 false)
  %i.z = call noundef nonnull align 16 dereferenceable(32) ptr @_ZN20b3AlignedObjectArrayI6b3AabbE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.y, ptr noundef nonnull align 16 dereferenceable(32) %7) ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #20
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 104
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !38
  %i.ad = call noundef nonnull align 16 dereferenceable(32) ptr @_ZNK16b3CpuNarrowPhase17getLocalSpaceAabbEi(ptr noundef nonnull align 8 dereferenceable(28) %i.ac, i32 noundef %4) ; 2 uses
  %.sroa.61.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.ae = load float, ptr %i.l, align 4, !tbaa !67
  %i.af = load float, ptr %i.u, align 4, !tbaa !67 ; 5 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.ah = load <3 x float>, ptr %i.ad, align 16   ; 2 uses
  %i.ai = load <3 x float>, ptr %.sroa.61.0..sroa_idx, align 16 ; 2 uses
  %i.aj = load <2 x float>, ptr %2, align 4, !tbaa !67
  %i.ak = load float, ptr %3, align 4, !tbaa !67  ; 6 uses
  %i.al = load float, ptr %i.w, align 4, !tbaa !67 ; 5 uses
  %i.am = load float, ptr %i.v, align 4, !tbaa !67 ; 4 uses
  %i.an = fmul float %i.al, %i.al
  %i.ao = call float @llvm.fmuladd.f32(float %i.ak, float %i.ak, float %i.an)
  %i.ap = call float @llvm.fmuladd.f32(float %i.am, float %i.am, float %i.ao)
  %i.aq = call noundef float @llvm.fmuladd.f32(float %i.af, float %i.af, float %i.ap)
  %i.ar = fdiv float 2.000000e+00, %i.aq          ; 3 uses
  %i.as = fmul float %i.ak, %i.ar                 ; 2 uses
  %i.at = fmul float %i.al, %i.ar                 ; 3 uses
  %i.au = fmul float %i.am, %i.ar                 ; 4 uses
  %i.av = fmul float %i.af, %i.as                 ; 2 uses
  %i.aw = fmul float %i.af, %i.at                 ; 2 uses
  %i.ax = fmul float %i.ak, %i.as                 ; 2 uses
  %i.ay = fmul float %i.ak, %i.at                 ; 2 uses
  %i.az = fmul float %i.ak, %i.au                 ; 2 uses
  %i.ba = fmul float %i.al, %i.at                 ; 2 uses
  %i.bb = fmul float %i.al, %i.au                 ; 2 uses
  %i.bc = fmul float %i.am, %i.au                 ; 2 uses
  %i.bd = fadd float %i.ba, %i.bc
  %i.be = fsub float 1.000000e+00, %i.bd
  %i.bf = fadd float %i.az, %i.aw
  %i.bg = fmul float %i.af, %i.au                 ; 2 uses
  %8 = fadd float %i.ay, %i.bg
  %i.bh = fadd float %i.ax, %i.bc
  %i.bi = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.ay, i64 0
  %i.bj = insertelement <2 x float> poison, float %i.bg, i64 0
  %i.bk = insertelement <2 x float> %i.bj, float %i.bh, i64 1
  %i.bl = fsub <2 x float> %i.bi, %i.bk           ; 2 uses
  %i.bm = fsub float %i.bb, %i.av
  %i.bn = fsub float %i.az, %i.aw                 ; 2 uses
  %i.bo = fadd float %i.bb, %i.av                 ; 2 uses
  %i.bp = fadd float %i.ax, %i.ba
  %i.bq = fsub float 1.000000e+00, %i.bp          ; 2 uses
  %i.br = fsub <3 x float> %i.ai, %i.ah
  %i.bs = fmul <3 x float> %i.br, splat (float 5.000000e-01)
  %i.bt = fadd <3 x float> %i.bs, splat (float f0x3C23D70A) ; 6 uses
  %i.bu = fadd <3 x float> %i.ah, %i.ai
  %i.bv = fmul <3 x float> %i.bu, splat (float 5.000000e-01) ; 6 uses
  %i.bw = insertelement <2 x float> poison, float %i.be, i64 0
  %i.bx = insertelement <2 x float> %i.bw, float %8, i64 1 ; 2 uses
  %i.by = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bx)
  %i.bz = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bl)
  %i.ca = insertelement <2 x float> poison, float %i.bf, i64 0
  %i.cb = insertelement <2 x float> %i.ca, float %i.bm, i64 1 ; 2 uses
  %i.cc = call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cb)
  %i.cd = call noundef float @llvm.fabs.f32(float %i.bn)
  %i.ce = call noundef float @llvm.fabs.f32(float %i.bo)
  %i.cf = call noundef float @llvm.fabs.f32(float %i.bq)
  %i.cg = shufflevector <3 x float> %i.bv, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ch = fmul <2 x float> %i.cg, %i.bl
  %i.ci = shufflevector <3 x float> %i.bv, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ci, <2 x float> %i.bx, <2 x float> %i.ch)
  %i.ck = shufflevector <3 x float> %i.bv, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cl = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ck, <2 x float> %i.cb, <2 x float> %i.cj)
  %i.cm = extractelement <3 x float> %i.bv, i64 1
  %i.cn = fmul float %i.cm, %i.bo
  %i.co = extractelement <3 x float> %i.bv, i64 0
  %i.cp = call float @llvm.fmuladd.f32(float %i.co, float %i.bn, float %i.cn)
  %i.cq = extractelement <3 x float> %i.bv, i64 2
  %i.cr = call noundef float @llvm.fmuladd.f32(float %i.cq, float %i.bq, float %i.cp)
  %i.cs = fadd <2 x float> %i.aj, %i.cl           ; 2 uses
  %i.ct = fadd float %i.ae, %i.cr                 ; 2 uses
  %i.cu = shufflevector <3 x float> %i.bt, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cv = fmul <2 x float> %i.cu, %i.bz
  %i.cw = shufflevector <3 x float> %i.bt, <3 x float> poison, <2 x i32> zeroinitializer
  %i.cx = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cw, <2 x float> %i.by, <2 x float> %i.cv)
  %i.cy = shufflevector <3 x float> %i.bt, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cy, <2 x float> %i.cc, <2 x float> %i.cx) ; 2 uses
  %i.da = extractelement <3 x float> %i.bt, i64 1
  %i.db = fmul float %i.da, %i.ce
  %i.dc = extractelement <3 x float> %i.bt, i64 0
  %i.dd = call float @llvm.fmuladd.f32(float %i.dc, float %i.cd, float %i.db)
  %i.de = extractelement <3 x float> %i.bt, i64 2
  %i.df = call noundef float @llvm.fmuladd.f32(float %i.de, float %i.cf, float %i.dd) ; 2 uses
  %i.dg = fsub <2 x float> %i.cs, %i.cz
  %i.dh = fsub float %i.ct, %i.df
  %.sroa.3.12.vec.insert.i.i30.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dh, i64 0
  store <2 x float> %i.dg, ptr %i.z, align 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i30.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !48
  %i.di = fadd <2 x float> %i.cz, %i.cs
  %i.dj = fadd float %i.df, %i.ct
  %.sroa.3.12.vec.insert.i.i35.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.dj, i64 0
  store <2 x float> %i.di, ptr %i.ag, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i.i35.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !48
  %i.dk = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 96
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !39
  %i.dn = call noundef ptr @_ZN22b3DynamicBvhBroadphase11createProxyERK9b3Vector3S2_iPvii(ptr noundef nonnull align 8 dereferenceable(315) %i.dm, ptr noundef nonnull align 16 dereferenceable(16) %i.z, ptr noundef nonnull align 16 dereferenceable(16) %i.ag, i32 noundef %i.d, ptr noundef null, i32 noundef 1, i32 noundef 1) ; 0 uses
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, i32 noundef 433)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.3)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #20
  ret i32 %i.d
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 16 dereferenceable(80) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !18   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !19
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f       ; 6 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE7reserveEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %.split7.i, label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE8allocateEi.exit.i

_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE8allocateEi.exit.i: ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = mul nsw i64 %i.i, 80
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i, label %.split.i

.split.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE8allocateEi.exit.i
  %i.m = load i32, ptr %i.a, align 4, !tbaa !18   ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i

.lr.ph.i.i:                                       ; preds = %.split.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %wide.trip.count.i.i = zext nneg i32 %i.m to i64 ; 2 uses
  %xtraiter = and i64 %wide.trip.count.i.i, 1
  %i.p = icmp eq i32 %i.m, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.i.i.new

.lr.ph.i.i.new:                                   ; preds = %.lr.ph.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.new
  %indvars.iv.i.i = phi i64 [ 0, %.lr.ph.i.i.new ], [ %indvars.iv.next.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.q = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %i.r, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.q, ptr noundef nonnull align 16 dereferenceable(80) %i.s, i64 80, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.v = getelementptr inbounds nuw [80 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.t, ptr noundef nonnull align 16 dereferenceable(80) %i.v, i64 80, i1 false)
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !112

.split7.i:                                        ; preds = %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE8allocateEi.exit.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6)
  store i32 0, ptr %i.a, align 4, !tbaa !18
  br label %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
  %i.w = getelementptr inbounds nuw [80 x i8], ptr %i.k, i64 %indvars.iv.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !17
  %i.y = getelementptr inbounds nuw [80 x i8], ptr %i.x, i64 %indvars.iv.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.w, ptr noundef nonnull align 16 dereferenceable(80) %i.y, i64 80, i1 false)
  br label %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.split7.i, %.split.i
  %.0.i12.i = phi ptr [ null, %.split7.i ], [ %i.k, %.split.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i = phi i32 [ 0, %.split7.i ], [ %i.g, %.split.i ], [ %i.g, %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.g, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !17  ; 2 uses
  %.not.i10.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i, label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE10deallocateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !16, !range !41, !noundef !65
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE10deallocateEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE10deallocateEv.exit.i

_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE10deallocateEv.exit.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !16
  store ptr %.0.i12.i, ptr %i.z, align 8, !tbaa !17
  store i32 %.0.i, ptr %i.c, align 8, !tbaa !19
  %.pre = load i32, ptr %i.a, align 4, !tbaa !18
  br label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE7reserveEi.exit

_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE7reserveEi.exit: ; preds = %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE10deallocateEv.exit.i, %bb.b, %bb.a
  %i.af = phi i32 [ %.pre, %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE10deallocateEv.exit.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !17
  %i.ai = sext i32 %i.af to i64
  %i.aj = getelementptr inbounds [80 x i8], ptr %i.ah, i64 %i.ai
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.aj, ptr noundef nonnull align 16 dereferenceable(80) %1, i64 80, i1 false)
  %i.ak = load i32, ptr %i.a, align 4, !tbaa !18
  %i.al = add nsw i32 %i.ak, 1
  store i32 %i.al, ptr %i.a, align 4, !tbaa !18
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef nonnull align 16 dereferenceable(32) ptr @_ZN20b3AlignedObjectArrayI6b3AabbE6expandERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 16 dereferenceable(32) %1) local_unnamed_addr #10 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 5 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !29   ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !30
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20b3AlignedObjectArrayI6b3AabbE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f       ; 6 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20b3AlignedObjectArrayI6b3AabbE7reserveEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %.split7.i, label %_ZN20b3AlignedObjectArrayI6b3AabbE8allocateEi.exit.i

end_hunk_1
