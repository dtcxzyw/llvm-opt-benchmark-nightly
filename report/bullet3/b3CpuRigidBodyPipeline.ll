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
  %i.f = phi ptr [ %i.cp, %bb.c ], [ %i.b, %bb.a ] ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !17
  %i.i = getelementptr inbounds nuw [80 x i8], ptr %i.h, i64 %indvars.iv ; 6 uses
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.525.0.copyload = load float, ptr %.sroa.525.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = load <2 x float>, ptr %i.i, align 16
  %i.l = load <2 x float>, ptr %i.j, align 16     ; 4 uses
  %.sroa.521.0.copyload = load float, ptr %.sroa.521.0..sroa_idx, align 8 ; 4 uses
  %.sroa.622.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 28
  %.sroa.521.0.copyload.a = load float, ptr %.sroa.622.0..sroa_idx, align 4 ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.n = load i32, ptr %i.m, align 16, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !38
  %i.q = tail call noundef nonnull align 4 dereferenceable(16) ptr @_ZN16b3CpuNarrowPhase16getCollidableCpuEi(ptr noundef nonnull align 8 dereferenceable(28) %i.p, i32 noundef %i.n)
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.s = load i32, ptr %i.r, align 4, !tbaa !48   ; 2 uses
  %i.t = icmp sgt i32 %i.s, -1
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph
  %i.u = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !38
  %i.x = tail call noundef nonnull align 16 dereferenceable(32) ptr @_ZNK16b3CpuNarrowPhase17getLocalSpaceAabbEi(ptr noundef nonnull align 8 dereferenceable(28) %i.w, i32 noundef %i.s) ; 2 uses
  %.sroa.618.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.y = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 80
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %indvars.iv ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16 ; 2 uses
  %1 = extractelement <2 x float> %i.l, i64 1     ; 3 uses
  %2 = fmul float %1, %1
  %i.ad = extractelement <2 x float> %i.l, i64 0  ; 4 uses
  %i.ae = tail call float @llvm.fmuladd.f32(float %i.ad, float %i.ad, float %2)
  %i.af = tail call float @llvm.fmuladd.f32(float %.sroa.521.0.copyload, float %.sroa.521.0.copyload, float %i.ae)
  %i.ag = tail call noundef float @llvm.fmuladd.f32(float %.sroa.521.0.copyload.a, float %.sroa.521.0.copyload.a, float %i.af)
  %i.ah = fdiv float 2.000000e+00, %i.ag          ; 2 uses
  %i.ai = load <3 x float>, ptr %i.x, align 16    ; 2 uses
  %i.aj = load <3 x float>, ptr %.sroa.618.0..sroa_idx, align 16 ; 2 uses
  %i.ak = fsub <3 x float> %i.aj, %i.ai
  %i.al = fmul <3 x float> %i.ak, splat (float 5.000000e-01)
  %i.am = fadd <3 x float> %i.al, zeroinitializer ; 6 uses
  %i.an = fadd <3 x float> %i.ai, %i.aj
  %i.ao = fmul <3 x float> %i.an, splat (float 5.000000e-01) ; 6 uses
  %3 = fmul float %.sroa.521.0.copyload, %i.ah    ; 4 uses
  %4 = fmul float %.sroa.521.0.copyload.a, %3     ; 2 uses
  %5 = fmul float %i.ad, %3                       ; 2 uses
  %6 = insertelement <2 x float> poison, float %i.ah, i64 0
  %7 = shufflevector <2 x float> %6, <2 x float> poison, <2 x i32> zeroinitializer
  %8 = fmul <2 x float> %i.l, %7                  ; 3 uses
  %9 = extractelement <2 x float> %8, i64 0
  %10 = fmul float %.sroa.521.0.copyload.a, %9    ; 2 uses
  %i.ap = extractelement <2 x float> %8, i64 1    ; 2 uses
  %11 = fmul float %.sroa.521.0.copyload.a, %i.ap ; 2 uses
  %12 = fmul float %i.ad, %i.ap                   ; 2 uses
  %13 = fmul <2 x float> %i.l, %8                 ; 3 uses
  %14 = fmul float %1, %3                         ; 2 uses
  %15 = fmul float %.sroa.521.0.copyload, %3      ; 2 uses
  %16 = extractelement <2 x float> %13, i64 1
  %17 = fadd float %16, %15
  %18 = fsub float 1.000000e+00, %17
  %i.aq = fsub float %12, %4
  %19 = fadd float %5, %11
  %20 = fadd float %12, %4
  %i.ar = extractelement <2 x float> %13, i64 0
  %i.as = fadd float %i.ar, %15
  %21 = fsub float 1.000000e+00, %i.as
  %22 = fsub float %14, %10
  %23 = fsub float %5, %11                        ; 2 uses
  %24 = fadd float %14, %10                       ; 2 uses
  %25 = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %13)
  %i.at = fsub float 1.000000e+00, %25            ; 2 uses
  %26 = insertelement <2 x float> poison, float %18, i64 0
  %i.au = insertelement <2 x float> %26, float %20, i64 1 ; 2 uses
  %i.av = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.au)
  %i.aw = insertelement <2 x float> poison, float %i.aq, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %21, i64 1 ; 2 uses
  %i.ay = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ax)
  %27 = insertelement <2 x float> poison, float %19, i64 0
  %i.az = insertelement <2 x float> %27, float %22, i64 1 ; 2 uses
  %i.ba = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.az)
  %i.bb = tail call noundef float @llvm.fabs.f32(float %23)
  %i.bc = tail call noundef float @llvm.fabs.f32(float %24)
  %i.bd = tail call noundef float @llvm.fabs.f32(float %i.at)
  %i.be = shufflevector <3 x float> %i.ao, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bf = fmul <2 x float> %i.ax, %i.be
  %i.bg = shufflevector <3 x float> %i.ao, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bg, <2 x float> %i.au, <2 x float> %i.bf)
  %i.bi = shufflevector <3 x float> %i.ao, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bi, <2 x float> %i.az, <2 x float> %i.bh)
  %i.bk = extractelement <3 x float> %i.ao, i64 1
  %i.bl = fmul float %24, %i.bk
  %i.bm = extractelement <3 x float> %i.ao, i64 0
  %i.bn = tail call float @llvm.fmuladd.f32(float %i.bm, float %23, float %i.bl)
  %i.bo = extractelement <3 x float> %i.ao, i64 2
  %i.bp = tail call noundef float @llvm.fmuladd.f32(float %i.bo, float %i.at, float %i.bn)
  %i.bq = fadd <2 x float> %i.k, %i.bj            ; 2 uses
  %i.br = fadd float %.sroa.525.0.copyload, %i.bp ; 2 uses
  %i.bs = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bt = fmul <2 x float> %i.ay, %i.bs
  %i.bu = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.av, <2 x float> %i.bt)
  %i.bw = shufflevector <3 x float> %i.am, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bx = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bw, <2 x float> %i.ba, <2 x float> %i.bv) ; 2 uses
  %i.by = extractelement <3 x float> %i.am, i64 1
  %i.bz = fmul float %i.bc, %i.by
  %i.ca = extractelement <3 x float> %i.am, i64 0
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.ca, float %i.bb, float %i.bz)
  %i.cc = extractelement <3 x float> %i.am, i64 2
  %i.cd = tail call noundef float @llvm.fmuladd.f32(float %i.cc, float %i.bd, float %i.cb) ; 2 uses
  %i.ce = fsub <2 x float> %i.bq, %i.bx
  %i.cf = fsub float %i.br, %i.cd
  %.sroa.3.12.vec.insert.i.i32.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cf, i64 0
  store <2 x float> %i.ce, ptr %i.ab, align 16
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store <2 x float> %.sroa.3.12.vec.insert.i.i32.i, ptr %.sroa.42.0..sroa_idx.i, align 8, !tbaa !48
  %i.cg = fadd <2 x float> %i.bq, %i.bx
  %i.ch = fadd float %i.br, %i.cd
  %.sroa.3.12.vec.insert.i.i37.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.ch, i64 0
  store <2 x float> %i.cg, ptr %i.ac, align 16
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store <2 x float> %.sroa.3.12.vec.insert.i.i37.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !48
  %i.ci = load ptr, ptr %i.a, align 8, !tbaa !33
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 96
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !39 ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !10
  %i.cm = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = trunc nuw nsw i64 %indvars.iv to i32
  tail call void %i.cn(ptr noundef nonnull align 8 dereferenceable(315) %i.ck, i32 noundef %i.co, ptr noundef nonnull align 16 dereferenceable(16) %i.ab, ptr noundef nonnull align 16 dereferenceable(16) %i.ac, ptr noundef null)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cp = load ptr, ptr %i.a, align 8, !tbaa !33  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 4
  %i.cr = load i32, ptr %i.cq, align 4, !tbaa !18
  %i.cs = sext i32 %i.cr to i64
  %i.ct = icmp slt i64 %indvars.iv.next, %i.cs
  br i1 %i.ct, label %.lr.ph, label %._crit_edge, !llvm.loop !72
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
begin_hunk_1_@_ZN20b3AlignedObjectArrayI6b3AabbE6expandERKS0_:bb.a
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20b3AlignedObjectArrayI6b3AabbE7reserveEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %.split7.i, label %_ZN20b3AlignedObjectArrayI6b3AabbE8allocateEi.exit.i

_ZN20b3AlignedObjectArrayI6b3AabbE8allocateEi.exit.i: ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 5
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i, label %.split.i

.split.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI6b3AabbE8allocateEi.exit.i
  %i.m = load i32, ptr %i.a, align 4, !tbaa !29   ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i

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
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(32) %i.s, i64 32, i1 false), !tbaa.struct !114
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.t, ptr noundef nonnull align 16 dereferenceable(32) %i.v, i64 32, i1 false), !tbaa.struct !114
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !113

.split7.i:                                        ; preds = %_ZN20b3AlignedObjectArrayI6b3AabbE8allocateEi.exit.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.5, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.6)
  store i32 0, ptr %i.a, align 4, !tbaa !29
  br label %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod8 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod8)
  %i.w = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.i.i.epil.init
  %i.x = load ptr, ptr %i.o, align 8, !tbaa !28
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.x, i64 %indvars.iv.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.w, ptr noundef nonnull align 16 dereferenceable(32) %i.y, i64 32, i1 false), !tbaa.struct !114
  br label %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.split7.i, %.split.i
  %.0.i12.i = phi ptr [ null, %.split7.i ], [ %i.k, %.split.i ], [ %i.k, %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.k, %.epil.preheader ]
  %.0.i = phi i32 [ 0, %.split7.i ], [ %i.g, %.split.i ], [ %i.g, %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ], [ %i.g, %.epil.preheader ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !28  ; 2 uses
  %.not.i10.i = icmp eq ptr %i.aa, null
  br i1 %.not.i10.i, label %_ZN20b3AlignedObjectArrayI6b3AabbE10deallocateEv.exit.i, label %bb.e

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !27, !range !41, !noundef !65
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.f, label %_ZN20b3AlignedObjectArrayI6b3AabbE10deallocateEv.exit.i

bb.f:                                             ; preds = %bb.e
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aa)
  br label %_ZN20b3AlignedObjectArrayI6b3AabbE10deallocateEv.exit.i

_ZN20b3AlignedObjectArrayI6b3AabbE10deallocateEv.exit.i: ; preds = %bb.f, %bb.e, %_ZNK20b3AlignedObjectArrayI6b3AabbE4copyEiiPS0_.exit.i
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 1, ptr %i.ae, align 8, !tbaa !27
  store ptr %.0.i12.i, ptr %i.z, align 8, !tbaa !28
  store i32 %.0.i, ptr %i.c, align 8, !tbaa !30
  %.pre = load i32, ptr %i.a, align 4, !tbaa !29
  br label %_ZN20b3AlignedObjectArrayI6b3AabbE7reserveEi.exit

_ZN20b3AlignedObjectArrayI6b3AabbE7reserveEi.exit: ; preds = %_ZN20b3AlignedObjectArrayI6b3AabbE10deallocateEv.exit.i, %bb.b, %bb.a
  %i.af = phi i32 [ %.pre, %_ZN20b3AlignedObjectArrayI6b3AabbE10deallocateEv.exit.i ], [ %i.b, %bb.b ], [ %i.b, %bb.a ]
  %i.ag = add nsw i32 %i.af, 1
  store i32 %i.ag, ptr %i.a, align 4, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.aj = sext i32 %i.b to i64                    ; 2 uses
  %i.ak = getelementptr inbounds [32 x i8], ptr %i.ai, i64 %i.aj
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.ak, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false), !tbaa.struct !114
  %i.al = load ptr, ptr %i.ah, align 8, !tbaa !28
  %i.am = getelementptr inbounds [32 x i8], ptr %i.al, i64 %i.aj
  ret ptr %i.am
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #11

declare noundef ptr @_ZN22b3DynamicBvhBroadphase11createProxyERK9b3Vector3S2_iPvii(ptr noundef nonnull align 8 dereferenceable(315), ptr noundef nonnull align 16 dereferenceable(16), ptr noundef nonnull align 16 dereferenceable(16), i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

declare void @b3OutputErrorMessageVarArgsInternal(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef ptr @_ZNK22b3CpuRigidBodyPipeline13getBodyBufferEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !33   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.d = load i32, ptr %i.c, align 4, !tbaa !18
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.g = phi ptr [ %i.f, %bb.b ], [ null, %bb.a ]
  ret ptr %i.g
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #12 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #20 ; 0 uses
  tail call void @_ZSt9terminatev() #18
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #13

declare void @_Z21b3AlignedFreeInternalPv(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #14

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayIiED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !41
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #18
  unreachable
}

declare noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sinf(float noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @cosf(float noundef) local_unnamed_addr #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.sqrt.v2f32(<2 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <3 x float> @llvm.fmuladd.v3f32(<3 x float>, <3 x float>, <3 x float>) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #16

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { inlinehint mustprogress uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { inlinehint mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #12 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { cold nofree noreturn }
attributes #14 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #17 = { builtin allocsize(0) }
attributes #18 = { noreturn nounwind }
attributes #19 = { builtin nounwind }
attributes #20 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"vtable pointer", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTS18b3AlignedAllocatorI15b3RigidBodyDataLj16EE"}
!12 = !{!"any pointer", !5, i64 0}
!13 = !{!"p1 _ZTS15b3RigidBodyData", !12, i64 0}
!14 = !{!"bool", !5, i64 0}
!15 = !{!"_ZTS20b3AlignedObjectArrayI15b3RigidBodyDataE", !11, i64 0, !6, i64 4, !6, i64 8, !13, i64 16, !14, i64 24}
!16 = !{!15, !14, i64 24}
!17 = !{!15, !13, i64 16}
!18 = !{!15, !6, i64 4}
!19 = !{!15, !6, i64 8}
!20 = !{!"_ZTS18b3AlignedAllocatorI9b3InertiaLj16EE"}
!21 = !{!"p1 _ZTS9b3Inertia", !12, i64 0}
!22 = !{!"_ZTS20b3AlignedObjectArrayI9b3InertiaE", !20, i64 0, !6, i64 4, !6, i64 8, !21, i64 16, !14, i64 24}
!23 = !{!22, !21, i64 16}
!24 = !{!"_ZTS18b3AlignedAllocatorI6b3AabbLj16EE"}
!25 = !{!"p1 _ZTS6b3Aabb", !12, i64 0}
!26 = !{!"_ZTS20b3AlignedObjectArrayI6b3AabbE", !24, i64 0, !6, i64 4, !6, i64 8, !25, i64 16, !14, i64 24}
!27 = !{!26, !14, i64 24}
!28 = !{!26, !25, i64 16}
!29 = !{!26, !6, i64 4}
!30 = !{!26, !6, i64 8}
!31 = !{!"p1 _ZTS34b3CpuRigidBodyPipelineInternalData", !12, i64 0}
!32 = !{!"_ZTS22b3CpuRigidBodyPipeline", !31, i64 8}
!33 = !{!32, !31, i64 8}
!34 = !{!"p1 _ZTS22b3DynamicBvhBroadphase", !12, i64 0}
!35 = !{!"p1 _ZTS16b3CpuNarrowPhase", !12, i64 0}
!36 = !{!"_ZTS8b3Config", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !6, i64 24, !6, i64 28, !6, i64 32, !6, i64 36, !6, i64 40, !6, i64 44}
!37 = !{!"_ZTS34b3CpuRigidBodyPipelineInternalData", !15, i64 0, !22, i64 32, !26, i64 64, !34, i64 96, !35, i64 104, !36, i64 112}
!38 = !{!37, !35, i64 104}
!39 = !{!37, !34, i64 96}
!40 = !{!6, !6, i64 0}
!41 = !{i8 0, i8 2}
!42 = !{!"_ZTS9b3Vector3", !5, i64 0}
!43 = !{!"_ZTS10b3QuadWord", !5, i64 0}
!44 = !{!"_ZTS12b3Quaternion", !43, i64 0}
!45 = !{!"float", !5, i64 0}
!46 = !{!"_ZTS15b3RigidBodyData", !42, i64 0, !44, i64 16, !42, i64 32, !42, i64 48, !6, i64 64, !45, i64 68, !45, i64 72, !45, i64 76}
!47 = !{!46, !6, i64 64}
!48 = !{!5, !5, i64 0}
!49 = !{!"llvm.loop.mustprogress"}
!50 = !{!"_ZTS18b3AlignedAllocatorI20b3ContactConstraint4Lj16EE"}
!51 = !{!"p1 _ZTS20b3ContactConstraint4", !12, i64 0}
!52 = !{!"_ZTS20b3AlignedObjectArrayI20b3ContactConstraint4E", !50, i64 0, !6, i64 4, !6, i64 8, !51, i64 16, !14, i64 24}
!53 = !{!52, !51, i64 16}
!54 = !{!"p1 _ZTS20b3AlignedObjectArrayI15b3RigidBodyDataE", !12, i64 0}
!55 = !{!"p1 _ZTS20b3AlignedObjectArrayI9b3InertiaE", !12, i64 0}
!56 = !{!"p1 _ZTS20b3AlignedObjectArrayI20b3ContactConstraint4E", !12, i64 0}
!57 = !{!"p1 _ZTS20b3AlignedObjectArrayIiE", !12, i64 0}
!58 = !{!"_ZTS11b3SolveTask", !54, i64 0, !55, i64 8, !56, i64 16, !57, i64 24, !6, i64 32, !6, i64 36, !6, i64 40, !14, i64 44, !6, i64 48}
!59 = !{!58, !6, i64 48}
!60 = !{!58, !14, i64 44}
!61 = !{!"_ZTS18b3AlignedAllocatorIiLj16EE"}
!62 = !{!"p1 int", !12, i64 0}
!63 = !{!"_ZTS20b3AlignedObjectArrayIiE", !61, i64 0, !6, i64 4, !6, i64 8, !62, i64 16, !14, i64 24}
!64 = !{!63, !62, i64 16}
!65 = !{}
!66 = !{!46, !45, i64 68}
!67 = !{!45, !45, i64 0}
!68 = !{!22, !14, i64 24}
!69 = !{!22, !6, i64 4}
!70 = !{!22, !6, i64 8}
!71 = !{i64 0, i64 4, !40, i64 4, i64 4, !40, i64 8, i64 4, !40, i64 12, i64 4, !40, i64 16, i64 4, !40, i64 20, i64 4, !40, i64 24, i64 4, !40, i64 28, i64 4, !40, i64 32, i64 4, !40, i64 36, i64 4, !40, i64 40, i64 4, !40, i64 44, i64 4, !40}
!72 = distinct !{!72, !49}
!73 = !{!52, !14, i64 24}
!74 = !{!52, !6, i64 4}
!75 = !{!52, !6, i64 8}
!76 = !{!54, !54, i64 0}
!77 = !{!55, !55, i64 0}
!78 = !{!56, !56, i64 0}
!79 = distinct !{!79, !49, !106, !107}
!80 = distinct !{!80, !108}
!81 = distinct !{!81, !49, !106}
!82 = distinct !{!82, !49, !106, !107}
!83 = distinct !{!83, !108}
!84 = distinct !{!84, !49, !106}
!85 = distinct !{!85, !49}
!86 = distinct !{!86, !49}
!87 = distinct !{!87, !49}
!88 = distinct !{!88, !49, !106, !107}
!89 = distinct !{!89, !108}
!90 = distinct !{!90, !49, !106}
!91 = distinct !{!91, !49}
!92 = distinct !{!92, !49}
!93 = !{!63, !14, i64 24}
!94 = !{!63, !6, i64 4}
!95 = !{!63, !6, i64 8}
!96 = !{!58, !6, i64 40}
!97 = !{!58, !57, i64 24}
!98 = !{!58, !6, i64 36}
!99 = !{!58, !56, i64 16}
!100 = !{i64 8}
!101 = !{!"_ZTS20b3ContactConstraint4", !42, i64 0, !5, i64 16, !42, i64 80, !5, i64 96, !5, i64 112, !5, i64 128, !5, i64 144, !5, i64 152, !6, i64 160, !6, i64 164, !6, i64 168, !6, i64 172}
!102 = !{!101, !6, i64 168}
!103 = !{!101, !6, i64 160}
!104 = !{!101, !6, i64 164}
!105 = !{!58, !54, i64 0}
!106 = !{!"llvm.loop.isvectorized", i32 1}
!107 = !{!"llvm.loop.unroll.runtime.disable"}
!108 = !{!"llvm.loop.unroll.disable"}
!109 = !{!58, !55, i64 8}
!110 = !{!58, !6, i64 32}
!111 = distinct !{!111, !49}
!112 = distinct !{!112, !49}
!113 = distinct !{!113, !49}
!114 = !{i64 0, i64 16, !48, i64 16, i64 16, !48}
end_hunk_1
