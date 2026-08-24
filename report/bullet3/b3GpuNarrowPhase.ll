Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuNarrowPhase?download=true
inline.NumInlined: 1268
inline.NumDeleted: 521
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 61
loop-unroll.NumUnrolled: 63
begin_hunk_0

$_ZN13b3OpenCLArrayI15b3GpuChildShapeED0Ev = comdat any

$_ZN13b3OpenCLArrayI22b3ConvexPolyhedronDataED2Ev = comdat any

$_ZN13b3OpenCLArrayI22b3ConvexPolyhedronDataED0Ev = comdat any

$_ZN13b3OpenCLArrayI9b3Vector3ED2Ev = comdat any

$_ZN13b3OpenCLArrayI9b3Vector3ED0Ev = comdat any

$_ZN13b3OpenCLArrayIiED2Ev = comdat any

$_ZN13b3OpenCLArrayIiED0Ev = comdat any

$_ZN13b3OpenCLArrayI16b3BvhSubtreeInfoED2Ev = comdat any

$_ZN13b3OpenCLArrayI16b3BvhSubtreeInfoED0Ev = comdat any

$_ZN13b3OpenCLArrayI18b3QuantizedBvhNodeED2Ev = comdat any

$_ZN13b3OpenCLArrayI18b3QuantizedBvhNodeED0Ev = comdat any

$_ZN13b3OpenCLArrayI9b3BvhInfoED2Ev = comdat any

$_ZN13b3OpenCLArrayI9b3BvhInfoED0Ev = comdat any

$_ZN13b3OpenCLArrayI6b3AabbED0Ev = comdat any

$_ZTV13b3OpenCLArrayI6b3Int4E = comdat any

$_ZTI13b3OpenCLArrayI6b3Int4E = comdat any

$_ZTS13b3OpenCLArrayI6b3Int4E = comdat any

$_ZTV13b3OpenCLArrayI10b3Contact4E = comdat any

$_ZTI13b3OpenCLArrayI10b3Contact4E = comdat any

$_ZTS13b3OpenCLArrayI10b3Contact4E = comdat any

$_ZTV13b3OpenCLArrayI13b3InertiaDataE = comdat any

$_ZTI13b3OpenCLArrayI13b3InertiaDataE = comdat any

$_ZTS13b3OpenCLArrayI13b3InertiaDataE = comdat any

$_ZTV13b3OpenCLArrayI12b3CollidableE = comdat any

$_ZTI13b3OpenCLArrayI12b3CollidableE = comdat any

$_ZTS13b3OpenCLArrayI12b3CollidableE = comdat any

$_ZTV13b3OpenCLArrayI9b3SapAabbE = comdat any

$_ZTI13b3OpenCLArrayI9b3SapAabbE = comdat any

$_ZTS13b3OpenCLArrayI9b3SapAabbE = comdat any

$_ZTV13b3OpenCLArrayI15b3RigidBodyDataE = comdat any

$_ZTI13b3OpenCLArrayI15b3RigidBodyDataE = comdat any

$_ZTS13b3OpenCLArrayI15b3RigidBodyDataE = comdat any

$_ZTV13b3OpenCLArrayI9b3GpuFaceE = comdat any

$_ZTI13b3OpenCLArrayI9b3GpuFaceE = comdat any

$_ZTS13b3OpenCLArrayI9b3GpuFaceE = comdat any

$_ZTV13b3OpenCLArrayI15b3GpuChildShapeE = comdat any

$_ZTI13b3OpenCLArrayI15b3GpuChildShapeE = comdat any

$_ZTS13b3OpenCLArrayI15b3GpuChildShapeE = comdat any

$_ZTV13b3OpenCLArrayI22b3ConvexPolyhedronDataE = comdat any

$_ZTI13b3OpenCLArrayI22b3ConvexPolyhedronDataE = comdat any

$_ZTS13b3OpenCLArrayI22b3ConvexPolyhedronDataE = comdat any

$_ZTV13b3OpenCLArrayI9b3Vector3E = comdat any

$_ZTI13b3OpenCLArrayI9b3Vector3E = comdat any

$_ZTS13b3OpenCLArrayI9b3Vector3E = comdat any

$_ZTV13b3OpenCLArrayIiE = comdat any

$_ZTI13b3OpenCLArrayIiE = comdat any

$_ZTS13b3OpenCLArrayIiE = comdat any

$_ZTV13b3OpenCLArrayI16b3BvhSubtreeInfoE = comdat any

$_ZTI13b3OpenCLArrayI16b3BvhSubtreeInfoE = comdat any

$_ZTS13b3OpenCLArrayI16b3BvhSubtreeInfoE = comdat any

$_ZTV13b3OpenCLArrayI18b3QuantizedBvhNodeE = comdat any

$_ZTI13b3OpenCLArrayI18b3QuantizedBvhNodeE = comdat any

$_ZTS13b3OpenCLArrayI18b3QuantizedBvhNodeE = comdat any

$_ZTV13b3OpenCLArrayI9b3BvhInfoE = comdat any

$_ZTI13b3OpenCLArrayI9b3BvhInfoE = comdat any

$_ZTS13b3OpenCLArrayI9b3BvhInfoE = comdat any

$_ZTV13b3OpenCLArrayI6b3AabbE = comdat any

$_ZTI13b3OpenCLArrayI6b3AabbE = comdat any

$_ZTS13b3OpenCLArrayI6b3AabbE = comdat any

@_ZTV16b3GpuNarrowPhase = dso_local constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTI16b3GpuNarrowPhase, ptr @_ZN16b3GpuNarrowPhaseD2Ev, ptr @_ZN16b3GpuNarrowPhaseD0Ev, ptr @_ZN16b3GpuNarrowPhase15computeContactsEP7_cl_memiS1_i] }, align 8
@.str = private unnamed_addr constant [17 x i8] c"b3Error[%s,%d]:\0A\00", align 1
@.str.1 = private unnamed_addr constant [81 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3OpenCL/RigidBody/b3GpuNarrowPhase.cpp\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"allocateCollidable out-of-range %d\0A\00", align 1
@__clewFinish = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [42 x i8] c"min org (%f) and new (%f) ? at i:%d,c:%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"max org (%f) and new (%f) ? at i:%d,c:%d\0A\00", align 1
@.str.5 = private unnamed_addr constant [67 x i8] c"registerRigidBody: exceeding the number of rigid bodies, %d > %d \0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"b3Warning[%s,%d]:\0A\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"setObjectVelocityCpu out of range.\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"getObjectTransformFromCpu out of range.\0A\00", align 1
@_ZTI16b3GpuNarrowPhase = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS16b3GpuNarrowPhase }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS16b3GpuNarrowPhase = dso_local constant [19 x i8] c"16b3GpuNarrowPhase\00", align 1
@_ZTV15b3ConvexUtility = external constant { [4 x ptr] }, align 8
@_ZTV26b3TriangleIndexVertexArray = external constant { [16 x ptr] }, align 8
@.str.9 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3Common/b3AlignedObjectArray.h\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"b3AlignedObjectArray reserve out-of-memory\0A\00", align 1
@_ZTV13b3OpenCLArrayI6b3Int4E = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI6b3Int4E, ptr @_ZN13b3OpenCLArrayI6b3Int4ED2Ev, ptr @_ZN13b3OpenCLArrayI6b3Int4ED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI6b3Int4E = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI6b3Int4E }, comdat, align 8
@_ZTS13b3OpenCLArrayI6b3Int4E = linkonce_odr dso_local constant [25 x i8] c"13b3OpenCLArrayI6b3Int4E\00", comdat, align 1
@__clewCreateBuffer = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [85 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3OpenCL/ParallelPrimitives/b3OpenCLArray.h\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"OpenCL out-of-memory\0A\00", align 1
@__clewEnqueueCopyBuffer = external local_unnamed_addr global ptr, align 8
@__clewReleaseMemObject = external local_unnamed_addr global ptr, align 8
@_ZTV13b3OpenCLArrayI10b3Contact4E = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI10b3Contact4E, ptr @_ZN13b3OpenCLArrayI10b3Contact4ED2Ev, ptr @_ZN13b3OpenCLArrayI10b3Contact4ED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI10b3Contact4E = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI10b3Contact4E }, comdat, align 8
@_ZTS13b3OpenCLArrayI10b3Contact4E = linkonce_odr dso_local constant [30 x i8] c"13b3OpenCLArrayI10b3Contact4E\00", comdat, align 1
@_ZTV13b3OpenCLArrayI13b3InertiaDataE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI13b3InertiaDataE, ptr @_ZN13b3OpenCLArrayI13b3InertiaDataED2Ev, ptr @_ZN13b3OpenCLArrayI13b3InertiaDataED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI13b3InertiaDataE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI13b3InertiaDataE }, comdat, align 8
@_ZTS13b3OpenCLArrayI13b3InertiaDataE = linkonce_odr dso_local constant [33 x i8] c"13b3OpenCLArrayI13b3InertiaDataE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI12b3CollidableE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI12b3CollidableE, ptr @_ZN13b3OpenCLArrayI12b3CollidableED2Ev, ptr @_ZN13b3OpenCLArrayI12b3CollidableED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI12b3CollidableE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI12b3CollidableE }, comdat, align 8
@_ZTS13b3OpenCLArrayI12b3CollidableE = linkonce_odr dso_local constant [32 x i8] c"13b3OpenCLArrayI12b3CollidableE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI9b3SapAabbE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI9b3SapAabbE, ptr @_ZN13b3OpenCLArrayI9b3SapAabbED2Ev, ptr @_ZN13b3OpenCLArrayI9b3SapAabbED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI9b3SapAabbE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI9b3SapAabbE }, comdat, align 8
@_ZTS13b3OpenCLArrayI9b3SapAabbE = linkonce_odr dso_local constant [28 x i8] c"13b3OpenCLArrayI9b3SapAabbE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI15b3RigidBodyDataE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI15b3RigidBodyDataE, ptr @_ZN13b3OpenCLArrayI15b3RigidBodyDataED2Ev, ptr @_ZN13b3OpenCLArrayI15b3RigidBodyDataED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI15b3RigidBodyDataE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI15b3RigidBodyDataE }, comdat, align 8
@_ZTS13b3OpenCLArrayI15b3RigidBodyDataE = linkonce_odr dso_local constant [35 x i8] c"13b3OpenCLArrayI15b3RigidBodyDataE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI9b3GpuFaceE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI9b3GpuFaceE, ptr @_ZN13b3OpenCLArrayI9b3GpuFaceED2Ev, ptr @_ZN13b3OpenCLArrayI9b3GpuFaceED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI9b3GpuFaceE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI9b3GpuFaceE }, comdat, align 8
@_ZTS13b3OpenCLArrayI9b3GpuFaceE = linkonce_odr dso_local constant [28 x i8] c"13b3OpenCLArrayI9b3GpuFaceE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI15b3GpuChildShapeE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI15b3GpuChildShapeE, ptr @_ZN13b3OpenCLArrayI15b3GpuChildShapeED2Ev, ptr @_ZN13b3OpenCLArrayI15b3GpuChildShapeED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI15b3GpuChildShapeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI15b3GpuChildShapeE }, comdat, align 8
@_ZTS13b3OpenCLArrayI15b3GpuChildShapeE = linkonce_odr dso_local constant [35 x i8] c"13b3OpenCLArrayI15b3GpuChildShapeE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI22b3ConvexPolyhedronDataE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI22b3ConvexPolyhedronDataE, ptr @_ZN13b3OpenCLArrayI22b3ConvexPolyhedronDataED2Ev, ptr @_ZN13b3OpenCLArrayI22b3ConvexPolyhedronDataED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI22b3ConvexPolyhedronDataE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI22b3ConvexPolyhedronDataE }, comdat, align 8
@_ZTS13b3OpenCLArrayI22b3ConvexPolyhedronDataE = linkonce_odr dso_local constant [42 x i8] c"13b3OpenCLArrayI22b3ConvexPolyhedronDataE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI9b3Vector3E = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI9b3Vector3E, ptr @_ZN13b3OpenCLArrayI9b3Vector3ED2Ev, ptr @_ZN13b3OpenCLArrayI9b3Vector3ED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI9b3Vector3E = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI9b3Vector3E }, comdat, align 8
@_ZTS13b3OpenCLArrayI9b3Vector3E = linkonce_odr dso_local constant [28 x i8] c"13b3OpenCLArrayI9b3Vector3E\00", comdat, align 1
@_ZTV13b3OpenCLArrayIiE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayIiE, ptr @_ZN13b3OpenCLArrayIiED2Ev, ptr @_ZN13b3OpenCLArrayIiED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayIiE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayIiE }, comdat, align 8
@_ZTS13b3OpenCLArrayIiE = linkonce_odr dso_local constant [19 x i8] c"13b3OpenCLArrayIiE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI16b3BvhSubtreeInfoE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI16b3BvhSubtreeInfoE, ptr @_ZN13b3OpenCLArrayI16b3BvhSubtreeInfoED2Ev, ptr @_ZN13b3OpenCLArrayI16b3BvhSubtreeInfoED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI16b3BvhSubtreeInfoE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI16b3BvhSubtreeInfoE }, comdat, align 8
@_ZTS13b3OpenCLArrayI16b3BvhSubtreeInfoE = linkonce_odr dso_local constant [36 x i8] c"13b3OpenCLArrayI16b3BvhSubtreeInfoE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI18b3QuantizedBvhNodeE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI18b3QuantizedBvhNodeE, ptr @_ZN13b3OpenCLArrayI18b3QuantizedBvhNodeED2Ev, ptr @_ZN13b3OpenCLArrayI18b3QuantizedBvhNodeED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI18b3QuantizedBvhNodeE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI18b3QuantizedBvhNodeE }, comdat, align 8
@_ZTS13b3OpenCLArrayI18b3QuantizedBvhNodeE = linkonce_odr dso_local constant [38 x i8] c"13b3OpenCLArrayI18b3QuantizedBvhNodeE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI9b3BvhInfoE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI9b3BvhInfoE, ptr @_ZN13b3OpenCLArrayI9b3BvhInfoED2Ev, ptr @_ZN13b3OpenCLArrayI9b3BvhInfoED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI9b3BvhInfoE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI9b3BvhInfoE }, comdat, align 8
@_ZTS13b3OpenCLArrayI9b3BvhInfoE = linkonce_odr dso_local constant [28 x i8] c"13b3OpenCLArrayI9b3BvhInfoE\00", comdat, align 1
@__clewEnqueueReadBuffer = external local_unnamed_addr global ptr, align 8
@.str.13 = private unnamed_addr constant [33 x i8] c"copyToHostPointer invalid range\0A\00", align 1
@_ZTV13b3OpenCLArrayI6b3AabbE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI6b3AabbE, ptr @_ZN13b3OpenCLArrayI6b3AabbED2Ev, ptr @_ZN13b3OpenCLArrayI6b3AabbED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI6b3AabbE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI6b3AabbE }, comdat, align 8
@_ZTS13b3OpenCLArrayI6b3AabbE = linkonce_odr dso_local constant [25 x i8] c"13b3OpenCLArrayI6b3AabbE\00", comdat, align 1
@__clewEnqueueWriteBuffer = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [35 x i8] c"copyFromHostPointer invalid range\0A\00", align 1

@_ZN16b3GpuNarrowPhaseC1EP11_cl_contextP13_cl_device_idP17_cl_command_queueRK8b3Config = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN16b3GpuNarrowPhaseC2EP11_cl_contextP13_cl_device_idP17_cl_command_queueRK8b3Config
@_ZN16b3GpuNarrowPhaseD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN16b3GpuNarrowPhaseD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN16b3GpuNarrowPhaseC2EP11_cl_contextP13_cl_device_idP17_cl_command_queueRK8b3Config(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(56) initializes((0, 16), (20, 28), (32, 56)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.b3InertiaData, align 16     ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV16b3GpuNarrowPhase, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 26 uses
  store ptr null, ptr %i.a, align 8, !tbaa !11
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i32 -1, ptr %i.b, align 4, !tbaa !18
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 -1, ptr %i.c, align 8, !tbaa !19
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  store ptr %1, ptr %i.d, align 8, !tbaa !20
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %2, ptr %i.e, align 8, !tbaa !21
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  store ptr %3, ptr %i.f, align 8, !tbaa !22
  %i.g = tail call noalias noundef nonnull dereferenceable(664) ptr @_Znwm(i64 noundef 664) #16 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 616
  store ptr %i.g, ptr %i.a, align 8, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(616) %i.g, i8 0, i64 616, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 4 dereferenceable(48) %4, i64 48, i1 false), !tbaa.struct !23
  %i.i = tail call noalias noundef nonnull dereferenceable(864) ptr @_Znwm(i64 noundef 864) #16 ; 3 uses
  invoke void @_ZN15GpuSatCollisionC1EP11_cl_contextP13_cl_device_idP17_cl_command_queue(ptr noundef nonnull align 8 dereferenceable(864) %i.i, ptr noundef %1, ptr noundef %2, ptr noundef %3)
          to label %bb.b unwind label %bb.bg

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 288
  store ptr %i.i, ptr %i.k, align 8, !tbaa !25
  %i.l = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 3 uses
  %i.m = load ptr, ptr %i.d, align 8, !tbaa !20
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 44
  %i.p = load i32, ptr %i.o, align 4, !tbaa !82
  %i.q = sext i32 %i.p to i64
  invoke void @_ZN13b3OpenCLArrayI6b3Int4EC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.l, ptr noundef %i.m, ptr noundef %i.n, i64 noundef %i.q, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.bh

bb.c:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.a, align 8, !tbaa !11   ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 296
  store ptr %i.l, ptr %i.s, align 8, !tbaa !83
  %i.t = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #16 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 24 ; 3 uses
  store i8 1, ptr %i.u, align 8, !tbaa !84
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 4 uses
  store ptr null, ptr %i.v, align 8, !tbaa !88
  %i.w = getelementptr inbounds nuw i8, ptr %i.t, i64 4 ; 4 uses
  store i32 0, ptr %i.w, align 4, !tbaa !89
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store i32 0, ptr %i.x, align 8, !tbaa !90
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 328
  store ptr %i.t, ptr %i.y, align 8, !tbaa !91
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !92  ; 7 uses
  %i.ab = icmp sgt i32 %i.aa, 0
  br i1 %i.ab, label %_ZN20b3AlignedObjectArrayI10b3Contact4E8allocateEi.exit.i.i, label %.loopexit203

_ZN20b3AlignedObjectArrayI10b3Contact4E8allocateEi.exit.i.i: ; preds = %bb.c
  %i.ac = zext nneg i32 %i.aa to i64              ; 3 uses
  %i.ad = mul nuw nsw i64 %i.ac, 112
  %i.ae = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.ad, i32 noundef 16) ; 14 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %.split7.i.i, label %.split.i.i

.split.i.i:                                       ; preds = %_ZN20b3AlignedObjectArrayI10b3Contact4E8allocateEi.exit.i.i
  %i.ag = load i32, ptr %i.w, align 4, !tbaa !89  ; 4 uses
  %i.ah = icmp sgt i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph.i.i.i, label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %.split.i.i
  %wide.trip.count.i.i.i = zext nneg i32 %i.ag to i64 ; 2 uses
  %i.ai = load ptr, ptr %i.v, align 8, !tbaa !88  ; 5 uses
  %xtraiter = and i64 %wide.trip.count.i.i.i, 1
  %i.aj = icmp eq i32 %i.ag, 1
  br i1 %i.aj, label %.epil.preheader, label %.lr.ph.i.i.i.new

.lr.ph.i.i.i.new:                                 ; preds = %.lr.ph.i.i.i
  %unroll_iter = and i64 %wide.trip.count.i.i.i, 2147483646
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.new
  %indvars.iv.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %indvars.iv.next.i.i.i.1, %bb.d ] ; 4 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.new ], [ %niter.next.1, %bb.d ]
  %i.ak = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i
  %i.al = getelementptr inbounds nuw [112 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ak, ptr noundef nonnull align 16 dereferenceable(112) %i.al, i64 112, i1 false)
  %indvars.iv.next.i.i.i = or disjoint i64 %indvars.iv.i.i.i, 1 ; 2 uses
  %i.am = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.next.i.i.i
  %i.an = getelementptr inbounds nuw [112 x i8], ptr %i.ai, i64 %indvars.iv.next.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.am, ptr noundef nonnull align 16 dereferenceable(112) %i.an, i64 112, i1 false)
  %indvars.iv.next.i.i.i.1 = add nuw nsw i64 %indvars.iv.i.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa, label %bb.d, !llvm.loop !93

.split7.i.i:                                      ; preds = %_ZN20b3AlignedObjectArrayI10b3Contact4E8allocateEi.exit.i.i
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10)
  store i32 0, ptr %i.w, align 4, !tbaa !89
  br label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i: ; preds = %.split7.i.i, %.split.i.i
  %.0.i.i.ph = phi i32 [ %i.aa, %.split.i.i ], [ 0, %.split7.i.i ] ; 2 uses
  %.pr = load ptr, ptr %i.v, align 8, !tbaa !88   ; 2 uses
  %.not.i10.i.i = icmp eq ptr %.pr, null
  br i1 %.not.i10.i.i, label %.lr.ph.i, label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.thread

_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.thread, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa, %.lr.ph.i.i.i
  %indvars.iv.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i ], [ %indvars.iv.next.i.i.i.1, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod268 = trunc i32 %i.ag to i1
  tail call void @llvm.assume(i1 %lcmp.mod268)
  %i.ao = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i.i.i.epil.init
  %i.ap = getelementptr inbounds nuw [112 x i8], ptr %i.ai, i64 %indvars.iv.i.i.i.epil.init
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ao, ptr noundef nonnull align 16 dereferenceable(112) %i.ap, i64 112, i1 false)
  br label %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.thread

_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.thread: ; preds = %.epil.preheader, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i
  %.0.i.i191 = phi i32 [ %.0.i.i.ph, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i ], [ %i.aa, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa ], [ %i.aa, %.epil.preheader ] ; 2 uses
  %i.aq = phi ptr [ %.pr, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i ], [ %i.ai, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa ], [ %i.ai, %.epil.preheader ]
  %i.ar = load i8, ptr %i.u, align 8, !tbaa !84, !range !95, !noundef !96
  %i.as = trunc nuw i8 %i.ar to i1
  br i1 %i.as, label %bb.e, label %.lr.ph.i

bb.e:                                             ; preds = %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.thread
  tail call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.aq)
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.thread, %bb.e
  %.0.i.i192 = phi i32 [ %.0.i.i191, %bb.e ], [ %.0.i.i191, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i.thread ], [ %.0.i.i.ph, %_ZNK20b3AlignedObjectArrayI10b3Contact4E4copyEiiPS0_.exit.i.i ]
  store i8 1, ptr %i.u, align 8, !tbaa !84
  store ptr %i.ae, ptr %i.v, align 8, !tbaa !88
  store i32 %.0.i.i192, ptr %i.x, align 8, !tbaa !90
  %xtraiter270 = and i64 %i.ac, 7                 ; 3 uses
  %i.at = icmp ult i32 %i.aa, 8
  br i1 %i.at, label %.epil.preheader269, label %.lr.ph.i.new

.lr.ph.i.new:                                     ; preds = %.lr.ph.i
  %unroll_iter273 = and i64 %i.ac, 2147483640
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %.lr.ph.i.new
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i.new ], [ %indvars.iv.next.i.7, %bb.f ] ; 9 uses
  %niter274 = phi i64 [ 0, %.lr.ph.i.new ], [ %niter274.next.7, %bb.f ]
  %i.au = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.au, i8 0, i64 112, i1 false)
  %i.av = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.aw, i8 0, i64 112, i1 false)
  %i.ax = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 224
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ay, i8 0, i64 112, i1 false)
  %i.az = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 336
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ba, i8 0, i64 112, i1 false)
  %i.bb = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 448
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bc, i8 0, i64 112, i1 false)
  %i.bd = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 560
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.be, i8 0, i64 112, i1 false)
  %i.bf = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 672
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bg, i8 0, i64 112, i1 false)
  %i.bh = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 784
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bi, i8 0, i64 112, i1 false)
  %indvars.iv.next.i.7 = add nuw nsw i64 %indvars.iv.i, 8 ; 2 uses
  %niter274.next.7 = add i64 %niter274, 8         ; 2 uses
  %niter274.ncmp.7 = icmp eq i64 %niter274.next.7, %unroll_iter273
  br i1 %niter274.ncmp.7, label %.loopexit203.loopexit.unr-lcssa, label %bb.f, !llvm.loop !97

.loopexit203.loopexit.unr-lcssa:                  ; preds = %bb.f
  %lcmp.mod271.not = icmp eq i64 %xtraiter270, 0
  br i1 %lcmp.mod271.not, label %.loopexit203, label %.epil.preheader269

.epil.preheader269:                               ; preds = %.loopexit203.loopexit.unr-lcssa, %.lr.ph.i
  %indvars.iv.i.epil.init = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i.7, %.loopexit203.loopexit.unr-lcssa ]
  %lcmp.mod272 = icmp ne i64 %xtraiter270, 0
  tail call void @llvm.assume(i1 %lcmp.mod272)
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.epil.preheader269
  %indvars.iv.i.epil = phi i64 [ %indvars.iv.i.epil.init, %.epil.preheader269 ], [ %indvars.iv.next.i.epil, %bb.g ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader269 ], [ %epil.iter.next, %bb.g ]
  %i.bj = getelementptr inbounds nuw [112 x i8], ptr %i.ae, i64 %indvars.iv.i.epil
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.bj, i8 0, i64 112, i1 false)
  %indvars.iv.next.i.epil = add nuw nsw i64 %indvars.iv.i.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter270
  br i1 %epil.iter.cmp.not, label %.loopexit203, label %bb.g, !llvm.loop !98

.loopexit203:                                     ; preds = %.loopexit203.loopexit.unr-lcssa, %bb.g, %bb.c
  store i32 %i.aa, ptr %i.w, align 4, !tbaa !89
  %i.bk = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #16 ; 5 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 24 ; 3 uses
  store i8 1, ptr %i.bl, align 8, !tbaa !100
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bk, i64 16 ; 4 uses
  store ptr null, ptr %i.bm, align 8, !tbaa !104
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bk, i64 4 ; 4 uses
  store i32 0, ptr %i.bn, align 4, !tbaa !105
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bk, i64 8 ; 2 uses
  store i32 0, ptr %i.bo, align 8, !tbaa !106
  %i.bp = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 336
  store ptr %i.bk, ptr %i.bq, align 8, !tbaa !107
  %i.br = load i32, ptr %4, align 4, !tbaa !108   ; 7 uses
  %i.bs = icmp sgt i32 %i.br, 0
  br i1 %i.bs, label %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE8allocateEi.exit.i.i, label %.loopexit202

_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE8allocateEi.exit.i.i: ; preds = %.loopexit203
  %i.bt = zext nneg i32 %i.br to i64              ; 3 uses
  %i.bu = mul nuw nsw i64 %i.bt, 80
  %i.bv = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.bu, i32 noundef 16) ; 14 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %.split7.i.i94, label %.split.i.i85

.split.i.i85:                                     ; preds = %_ZN20b3AlignedObjectArrayI15b3RigidBodyDataE8allocateEi.exit.i.i
  %i.bx = load i32, ptr %i.bn, align 4, !tbaa !105 ; 4 uses
  %i.by = icmp sgt i32 %i.bx, 0
  br i1 %i.by, label %.lr.ph.i.i.i89, label %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i89:                                   ; preds = %.split.i.i85
  %wide.trip.count.i.i.i90 = zext nneg i32 %i.bx to i64 ; 2 uses
  %i.bz = load ptr, ptr %i.bm, align 8, !tbaa !104 ; 5 uses
  %xtraiter276 = and i64 %wide.trip.count.i.i.i90, 1
  %i.ca = icmp eq i32 %i.bx, 1
  br i1 %i.ca, label %.epil.preheader275, label %.lr.ph.i.i.i89.new

.lr.ph.i.i.i89.new:                               ; preds = %.lr.ph.i.i.i89
  %unroll_iter280 = and i64 %wide.trip.count.i.i.i90, 2147483646
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.lr.ph.i.i.i89.new
  %indvars.iv.i.i.i91 = phi i64 [ 0, %.lr.ph.i.i.i89.new ], [ %indvars.iv.next.i.i.i92.1, %bb.h ] ; 4 uses
  %niter281 = phi i64 [ 0, %.lr.ph.i.i.i89.new ], [ %niter281.next.1, %bb.h ]
  %i.cb = getelementptr inbounds nuw [80 x i8], ptr %i.bv, i64 %indvars.iv.i.i.i91
  %i.cc = getelementptr inbounds nuw [80 x i8], ptr %i.bz, i64 %indvars.iv.i.i.i91
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.cb, ptr noundef nonnull align 16 dereferenceable(80) %i.cc, i64 80, i1 false)
  %indvars.iv.next.i.i.i92 = or disjoint i64 %indvars.iv.i.i.i91, 1 ; 2 uses
  %i.cd = getelementptr inbounds nuw [80 x i8], ptr %i.bv, i64 %indvars.iv.next.i.i.i92
  %i.ce = getelementptr inbounds nuw [80 x i8], ptr %i.bz, i64 %indvars.iv.next.i.i.i92
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.cd, ptr noundef nonnull align 16 dereferenceable(80) %i.ce, i64 80, i1 false)
  %indvars.iv.next.i.i.i92.1 = add nuw nsw i64 %indvars.iv.i.i.i91, 2 ; 2 uses
  %niter281.next.1 = add i64 %niter281, 2         ; 2 uses
  %niter281.ncmp.1 = icmp eq i64 %niter281.next.1, %unroll_iter280
  br i1 %niter281.ncmp.1, label %_ZNK20b3AlignedObjectArrayI15b3RigidBodyDataE4copyEiiPS0_.exit.i.i.thread.loopexit.unr-lcssa, label %bb.h, !llvm.loop !109

end_hunk_0
begin_hunk_1_@_ZN16b3GpuNarrowPhaseC2EP11_cl_contextP13_cl_device_idP17_cl_command_queueRK8b3Config:bb.a
  invoke void @_ZN13b3OpenCLArrayIiEC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.ls, ptr noundef %1, ptr noundef %3, i64 noundef %i.lv, i1 noundef zeroext true)
          to label %bb.ar unwind label %bb.bt

bb.ar:                                            ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E7reserveEi.exit142
  %i.lw = load ptr, ptr %i.a, align 8, !tbaa !11  ; 8 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lw, i64 160
  store ptr %i.ls, ptr %i.lx, align 8, !tbaa !173
  %i.ly = load i32, ptr %i.lt, align 4, !tbaa !172 ; 7 uses
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 112 ; 2 uses
  %i.ma = load i32, ptr %i.lz, align 8, !tbaa !174
  %i.mb = icmp slt i32 %i.ma, %i.ly
  br i1 %i.mb, label %bb.as, label %_ZN20b3AlignedObjectArrayIiE7reserveEi.exit

bb.as:                                            ; preds = %bb.ar
  %.not.i.i143 = icmp eq i32 %i.ly, 0
  br i1 %.not.i.i143, label %.split7.i153, label %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i

_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i:   ; preds = %bb.as
  %i.mc = sext i32 %i.ly to i64
  %i.md = shl nsw i64 %i.mc, 2
  %i.me = call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.md, i32 noundef 16) ; 12 uses
  %i.mf = ptrtoaddr ptr %i.me to i64
  %i.mg = icmp eq ptr %i.me, null
  br i1 %i.mg, label %.split7.i153, label %.split.i144

.split.i144:                                      ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i
  %i.mh = getelementptr inbounds nuw i8, ptr %i.lw, i64 108
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !175 ; 3 uses
  %i.mj = icmp sgt i32 %i.mi, 0
  br i1 %i.mj, label %.lr.ph.i.i148, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i

.lr.ph.i.i148:                                    ; preds = %.split.i144
  %i.mk = getelementptr inbounds nuw i8, ptr %i.lw, i64 120
  %i.ml = load ptr, ptr %i.mk, align 8, !tbaa !176 ; 7 uses
  %wide.trip.count.i.i149 = zext nneg i32 %i.mi to i64 ; 5 uses
  %min.iters.check = icmp ult i32 %i.mi, 8
  %i.mm = ptrtoaddr ptr %i.ml to i64
  %i.mn = sub i64 %i.mm, %i.mf
  %diff.check = icmp ugt i64 %i.mn, -32
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i148
  %n.vec = and i64 %wide.trip.count.i.i149, 2147483640 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.mo = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %index ; 2 uses
  %i.mp = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %index ; 2 uses
  %i.mq = getelementptr inbounds nuw i8, ptr %i.mp, i64 16
  %wide.load = load <4 x i32>, ptr %i.mp, align 4, !tbaa !24
  %wide.load250 = load <4 x i32>, ptr %i.mq, align 4, !tbaa !24
  %i.mr = getelementptr inbounds nuw i8, ptr %i.mo, i64 16
  store <4 x i32> %wide.load, ptr %i.mo, align 4, !tbaa !24
  store <4 x i32> %wide.load250, ptr %i.mr, align 4, !tbaa !24
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ms = icmp eq i64 %index.next, %n.vec
  br i1 %i.ms, label %middle.block, label %vector.body, !llvm.loop !177

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %wide.trip.count.i.i149
  br i1 %cmp.n, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i.i148, %middle.block
  %indvars.iv.i.i150.ph = phi i64 [ 0, %.lr.ph.i.i148 ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter324 = and i64 %wide.trip.count.i.i149, 3 ; 2 uses
  %lcmp.mod325.not = icmp eq i64 %xtraiter324, 0
  br i1 %lcmp.mod325.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %indvars.iv.i.i150.prol = phi i64 [ %indvars.iv.next.i.i151.prol, %scalar.ph.prol ], [ %indvars.iv.i.i150.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.mt = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv.i.i150.prol
  %i.mu = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %indvars.iv.i.i150.prol
  %i.mv = load i32, ptr %i.mu, align 4, !tbaa !24
  store i32 %i.mv, ptr %i.mt, align 4, !tbaa !24
  %indvars.iv.next.i.i151.prol = add nuw nsw i64 %indvars.iv.i.i150.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter324
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !180

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %indvars.iv.i.i150.unr = phi i64 [ %indvars.iv.i.i150.ph, %scalar.ph.preheader ], [ %indvars.iv.next.i.i151.prol, %scalar.ph.prol ]
  %i.mw = sub nsw i64 %indvars.iv.i.i150.ph, %wide.trip.count.i.i149
  %i.mx = icmp ugt i64 %i.mw, -4
  br i1 %i.mx, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %indvars.iv.i.i150 = phi i64 [ %indvars.iv.next.i.i151.3, %scalar.ph ], [ %indvars.iv.i.i150.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.my = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv.i.i150
  %i.mz = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %indvars.iv.i.i150
  %i.na = load i32, ptr %i.mz, align 4, !tbaa !24
  store i32 %i.na, ptr %i.my, align 4, !tbaa !24
  %indvars.iv.next.i.i151 = add nuw nsw i64 %indvars.iv.i.i150, 1 ; 2 uses
  %i.nb = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv.next.i.i151
  %i.nc = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %indvars.iv.next.i.i151
  %i.nd = load i32, ptr %i.nc, align 4, !tbaa !24
  store i32 %i.nd, ptr %i.nb, align 4, !tbaa !24
  %indvars.iv.next.i.i151.1 = add nuw nsw i64 %indvars.iv.i.i150, 2 ; 2 uses
  %i.ne = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv.next.i.i151.1
  %i.nf = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %indvars.iv.next.i.i151.1
  %i.ng = load i32, ptr %i.nf, align 4, !tbaa !24
  store i32 %i.ng, ptr %i.ne, align 4, !tbaa !24
  %indvars.iv.next.i.i151.2 = add nuw nsw i64 %indvars.iv.i.i150, 3 ; 2 uses
  %i.nh = getelementptr inbounds nuw [4 x i8], ptr %i.me, i64 %indvars.iv.next.i.i151.2
  %i.ni = getelementptr inbounds nuw [4 x i8], ptr %i.ml, i64 %indvars.iv.next.i.i151.2
  %i.nj = load i32, ptr %i.ni, align 4, !tbaa !24
  store i32 %i.nj, ptr %i.nh, align 4, !tbaa !24
  %indvars.iv.next.i.i151.3 = add nuw nsw i64 %indvars.iv.i.i150, 4 ; 2 uses
  %exitcond.not.i.i152.3 = icmp eq i64 %indvars.iv.next.i.i151.3, %wide.trip.count.i.i149
  br i1 %exitcond.not.i.i152.3, label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i, label %scalar.ph, !llvm.loop !181

.split7.i153:                                     ; preds = %_ZN20b3AlignedObjectArrayIiE8allocateEi.exit.i, %bb.as
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 301)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10)
  %i.nk = getelementptr inbounds nuw i8, ptr %i.lw, i64 108
  store i32 0, ptr %i.nk, align 4, !tbaa !175
  br label %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i

_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i:   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block, %.split7.i153, %.split.i144
  %.0.i12.i145 = phi ptr [ null, %.split7.i153 ], [ %i.me, %.split.i144 ], [ %i.me, %middle.block ], [ %i.me, %scalar.ph ], [ %i.me, %scalar.ph.prol.loopexit ]
  %.0.i146 = phi i32 [ 0, %.split7.i153 ], [ %i.ly, %.split.i144 ], [ %i.ly, %middle.block ], [ %i.ly, %scalar.ph ], [ %i.ly, %scalar.ph.prol.loopexit ]
  %i.nl = getelementptr inbounds nuw i8, ptr %i.lw, i64 120 ; 2 uses
  %i.nm = load ptr, ptr %i.nl, align 8, !tbaa !176 ; 2 uses
  %.not.i10.i147 = icmp eq ptr %i.nm, null
  br i1 %.not.i10.i147, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i, label %bb.at

bb.at:                                            ; preds = %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i
  %i.nn = getelementptr inbounds nuw i8, ptr %i.lw, i64 128
  %i.no = load i8, ptr %i.nn, align 8, !tbaa !182, !range !95, !noundef !96
  %i.np = trunc nuw i8 %i.no to i1
  br i1 %i.np, label %bb.au, label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i

bb.au:                                            ; preds = %bb.at
  call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.nm)
  br label %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i

_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i: ; preds = %bb.au, %bb.at, %_ZNK20b3AlignedObjectArrayIiE4copyEiiPi.exit.i
  %i.nq = getelementptr inbounds nuw i8, ptr %i.lw, i64 128
  store i8 1, ptr %i.nq, align 8, !tbaa !182
  store ptr %.0.i12.i145, ptr %i.nl, align 8, !tbaa !176
  store i32 %.0.i146, ptr %i.lz, align 8, !tbaa !174
  br label %_ZN20b3AlignedObjectArrayIiE7reserveEi.exit

_ZN20b3AlignedObjectArrayIiE7reserveEi.exit:      ; preds = %bb.ar, %_ZN20b3AlignedObjectArrayIiE10deallocateEv.exit.i
  %i.nr = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 3 uses
  %i.ns = load i32, ptr %4, align 4, !tbaa !108
  %i.nt = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 3 uses
  %i.nu = load i32, ptr %i.nt, align 4, !tbaa !183
  %i.nv = mul nsw i32 %i.nu, %i.ns
  %i.nw = sext i32 %i.nv to i64
  invoke void @_ZN13b3OpenCLArrayI9b3Vector3EC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.nr, ptr noundef %1, ptr noundef %3, i64 noundef %i.nw, i1 noundef zeroext true)
          to label %bb.av unwind label %bb.bu

bb.av:                                            ; preds = %_ZN20b3AlignedObjectArrayIiE7reserveEi.exit
  %i.nx = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.ny = getelementptr inbounds nuw i8, ptr %i.nx, i64 168
  store ptr %i.nr, ptr %i.ny, align 8, !tbaa !184
  %i.nz = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 3 uses
  %i.oa = load i32, ptr %4, align 4, !tbaa !108
  %i.ob = sext i32 %i.oa to i64
  invoke void @_ZN13b3OpenCLArrayI6b3Int4EC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.nz, ptr noundef %1, ptr noundef %3, i64 noundef %i.ob, i1 noundef zeroext true)
          to label %bb.aw unwind label %bb.bv

bb.aw:                                            ; preds = %bb.av
  %i.oc = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.od = getelementptr inbounds nuw i8, ptr %i.oc, i64 176
  store ptr %i.nz, ptr %i.od, align 8, !tbaa !185
  %i.oe = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 3 uses
  %i.of = load i32, ptr %4, align 4, !tbaa !108
  %i.og = sext i32 %i.of to i64
  invoke void @_ZN13b3OpenCLArrayI9b3Vector3EC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.oe, ptr noundef %1, ptr noundef %3, i64 noundef %i.og, i1 noundef zeroext true)
          to label %bb.ax unwind label %bb.bw

bb.ax:                                            ; preds = %bb.aw
  %i.oh = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.oi = getelementptr inbounds nuw i8, ptr %i.oh, i64 184
  store ptr %i.oe, ptr %i.oi, align 8, !tbaa !186
  %i.oj = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 3 uses
  %i.ok = load i32, ptr %4, align 4, !tbaa !108
  %i.ol = load i32, ptr %i.nt, align 4, !tbaa !183
  %i.om = mul nsw i32 %i.ol, %i.ok
  %i.on = sext i32 %i.om to i64
  invoke void @_ZN13b3OpenCLArrayI9b3Vector3EC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.oj, ptr noundef %1, ptr noundef %3, i64 noundef %i.on, i1 noundef zeroext true)
          to label %bb.ay unwind label %bb.bx

bb.ay:                                            ; preds = %bb.ax
  %i.oo = load ptr, ptr %i.a, align 8, !tbaa !11
  %i.op = getelementptr inbounds nuw i8, ptr %i.oo, i64 192
  store ptr %i.oj, ptr %i.op, align 8, !tbaa !187
  %i.oq = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 3 uses
  %i.or = load i32, ptr %4, align 4, !tbaa !108
  %i.os = load i32, ptr %i.nt, align 4, !tbaa !183
  %i.ot = mul nsw i32 %i.os, %i.or
  %i.ou = sext i32 %i.ot to i64
  invoke void @_ZN13b3OpenCLArrayI9b3Vector3EC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.oq, ptr noundef %1, ptr noundef %3, i64 noundef %i.ou, i1 noundef zeroext true)
          to label %bb.az unwind label %bb.by

bb.az:                                            ; preds = %bb.ay
  %i.ov = load ptr, ptr %i.a, align 8, !tbaa !11  ; 3 uses
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ov, i64 200
  store ptr %i.oq, ptr %i.ow, align 8, !tbaa !188
  %i.ox = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #16 ; 5 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.ox, i64 24 ; 3 uses
  store i8 1, ptr %i.oy, align 8, !tbaa !189
  %i.oz = getelementptr inbounds nuw i8, ptr %i.ox, i64 16 ; 4 uses
  store ptr null, ptr %i.oz, align 8, !tbaa !193
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 4 ; 4 uses
  store i32 0, ptr %i.pa, align 4, !tbaa !194
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ox, i64 8 ; 2 uses
  store i32 0, ptr %i.pb, align 8, !tbaa !195
  store ptr %i.ox, ptr %i.ov, align 8, !tbaa !196
  %i.pc = load i32, ptr %i.ea, align 4, !tbaa !124 ; 8 uses
  %i.pd = icmp sgt i32 %i.pc, 0
  br i1 %i.pd, label %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE8allocateEi.exit.i.i, label %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE6resizeEiRKS1_.exit

_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE8allocateEi.exit.i.i: ; preds = %bb.az
  %i.pe = zext nneg i32 %i.pc to i64
  %i.pf = shl nuw nsw i64 %i.pe, 3                ; 2 uses
  %i.pg = call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.pf, i32 noundef 16) ; 10 uses
  %i.ph = ptrtoaddr ptr %i.pg to i64
  %i.pi = icmp eq ptr %i.pg, null
  br i1 %i.pi, label %.split7.i.i169, label %.split.i.i160

.split.i.i160:                                    ; preds = %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE8allocateEi.exit.i.i
  %i.pj = load i32, ptr %i.pa, align 4, !tbaa !194 ; 3 uses
  %i.pk = icmp sgt i32 %i.pj, 0
  %.pre205 = load ptr, ptr %i.oz, align 8, !tbaa !193 ; 11 uses
  br i1 %i.pk, label %.lr.ph.i.i.i164, label %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i

.lr.ph.i.i.i164:                                  ; preds = %.split.i.i160
  %.pre205252 = ptrtoaddr ptr %.pre205 to i64
  %wide.trip.count.i.i.i165 = zext nneg i32 %i.pj to i64 ; 5 uses
  %min.iters.check255 = icmp ult i32 %i.pj, 8
  %i.pl = sub i64 %.pre205252, %i.ph
  %diff.check253 = icmp ugt i64 %i.pl, -32
  %or.cond267 = select i1 %min.iters.check255, i1 true, i1 %diff.check253
  br i1 %or.cond267, label %scalar.ph254.preheader, label %vector.ph256

vector.ph256:                                     ; preds = %.lr.ph.i.i.i164
  %n.vec257 = and i64 %wide.trip.count.i.i.i165, 2147483644 ; 3 uses
  br label %vector.body258

vector.body258:                                   ; preds = %vector.body258, %vector.ph256
  %index259 = phi i64 [ 0, %vector.ph256 ], [ %index.next262, %vector.body258 ] ; 3 uses
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %index259 ; 2 uses
  %i.pn = getelementptr inbounds nuw [8 x i8], ptr %.pre205, i64 %index259 ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 16
  %wide.load260 = load <2 x ptr>, ptr %i.pn, align 8, !tbaa !197
  %wide.load261 = load <2 x ptr>, ptr %i.po, align 8, !tbaa !197
  %i.pp = getelementptr inbounds nuw i8, ptr %i.pm, i64 16
  store <2 x ptr> %wide.load260, ptr %i.pm, align 8, !tbaa !197
  store <2 x ptr> %wide.load261, ptr %i.pp, align 8, !tbaa !197
  %index.next262 = add nuw i64 %index259, 4       ; 2 uses
  %i.pq = icmp eq i64 %index.next262, %n.vec257
  br i1 %i.pq, label %middle.block263, label %vector.body258, !llvm.loop !199

middle.block263:                                  ; preds = %vector.body258
  %cmp.n264 = icmp eq i64 %n.vec257, %wide.trip.count.i.i.i165
  br i1 %cmp.n264, label %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i.thread, label %scalar.ph254.preheader

scalar.ph254.preheader:                           ; preds = %.lr.ph.i.i.i164, %middle.block263
  %indvars.iv.i.i.i166.ph = phi i64 [ 0, %.lr.ph.i.i.i164 ], [ %n.vec257, %middle.block263 ] ; 3 uses
  %xtraiter326 = and i64 %wide.trip.count.i.i.i165, 3 ; 2 uses
  %lcmp.mod327.not = icmp eq i64 %xtraiter326, 0
  br i1 %lcmp.mod327.not, label %scalar.ph254.prol.loopexit, label %scalar.ph254.prol

scalar.ph254.prol:                                ; preds = %scalar.ph254.preheader, %scalar.ph254.prol
  %indvars.iv.i.i.i166.prol = phi i64 [ %indvars.iv.next.i.i.i167.prol, %scalar.ph254.prol ], [ %indvars.iv.i.i.i166.ph, %scalar.ph254.preheader ] ; 3 uses
  %prol.iter328 = phi i64 [ %prol.iter328.next, %scalar.ph254.prol ], [ 0, %scalar.ph254.preheader ]
  %i.pr = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %indvars.iv.i.i.i166.prol
  %i.ps = getelementptr inbounds nuw [8 x i8], ptr %.pre205, i64 %indvars.iv.i.i.i166.prol
  %i.pt = load ptr, ptr %i.ps, align 8, !tbaa !197
  store ptr %i.pt, ptr %i.pr, align 8, !tbaa !197
  %indvars.iv.next.i.i.i167.prol = add nuw nsw i64 %indvars.iv.i.i.i166.prol, 1 ; 2 uses
  %prol.iter328.next = add i64 %prol.iter328, 1   ; 2 uses
  %prol.iter328.cmp.not = icmp eq i64 %prol.iter328.next, %xtraiter326
  br i1 %prol.iter328.cmp.not, label %scalar.ph254.prol.loopexit, label %scalar.ph254.prol, !llvm.loop !200

scalar.ph254.prol.loopexit:                       ; preds = %scalar.ph254.prol, %scalar.ph254.preheader
  %indvars.iv.i.i.i166.unr = phi i64 [ %indvars.iv.i.i.i166.ph, %scalar.ph254.preheader ], [ %indvars.iv.next.i.i.i167.prol, %scalar.ph254.prol ]
  %i.pu = sub nsw i64 %indvars.iv.i.i.i166.ph, %wide.trip.count.i.i.i165
  %i.pv = icmp ugt i64 %i.pu, -4
  br i1 %i.pv, label %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i.thread, label %scalar.ph254

scalar.ph254:                                     ; preds = %scalar.ph254.prol.loopexit, %scalar.ph254
  %indvars.iv.i.i.i166 = phi i64 [ %indvars.iv.next.i.i.i167.3, %scalar.ph254 ], [ %indvars.iv.i.i.i166.unr, %scalar.ph254.prol.loopexit ] ; 6 uses
  %i.pw = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %indvars.iv.i.i.i166
  %i.px = getelementptr inbounds nuw [8 x i8], ptr %.pre205, i64 %indvars.iv.i.i.i166
  %i.py = load ptr, ptr %i.px, align 8, !tbaa !197
  store ptr %i.py, ptr %i.pw, align 8, !tbaa !197
  %indvars.iv.next.i.i.i167 = add nuw nsw i64 %indvars.iv.i.i.i166, 1 ; 2 uses
  %i.pz = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %indvars.iv.next.i.i.i167
  %i.qa = getelementptr inbounds nuw [8 x i8], ptr %.pre205, i64 %indvars.iv.next.i.i.i167
  %i.qb = load ptr, ptr %i.qa, align 8, !tbaa !197
  store ptr %i.qb, ptr %i.pz, align 8, !tbaa !197
  %indvars.iv.next.i.i.i167.1 = add nuw nsw i64 %indvars.iv.i.i.i166, 2 ; 2 uses
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %indvars.iv.next.i.i.i167.1
  %i.qd = getelementptr inbounds nuw [8 x i8], ptr %.pre205, i64 %indvars.iv.next.i.i.i167.1
  %i.qe = load ptr, ptr %i.qd, align 8, !tbaa !197
  store ptr %i.qe, ptr %i.qc, align 8, !tbaa !197
  %indvars.iv.next.i.i.i167.2 = add nuw nsw i64 %indvars.iv.i.i.i166, 3 ; 2 uses
  %i.qf = getelementptr inbounds nuw [8 x i8], ptr %i.pg, i64 %indvars.iv.next.i.i.i167.2
  %i.qg = getelementptr inbounds nuw [8 x i8], ptr %.pre205, i64 %indvars.iv.next.i.i.i167.2
  %i.qh = load ptr, ptr %i.qg, align 8, !tbaa !197
  store ptr %i.qh, ptr %i.qf, align 8, !tbaa !197
  %indvars.iv.next.i.i.i167.3 = add nuw nsw i64 %indvars.iv.i.i.i166, 4 ; 2 uses
  %exitcond.not.i.i.i168.3 = icmp eq i64 %indvars.iv.next.i.i.i167.3, %wide.trip.count.i.i.i165
  br i1 %exitcond.not.i.i.i168.3, label %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i.thread, label %scalar.ph254, !llvm.loop !201

.split7.i.i169:                                   ; preds = %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE8allocateEi.exit.i.i
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 301)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10)
  store i32 0, ptr %i.pa, align 4, !tbaa !194
  %.pre = load ptr, ptr %i.oz, align 8, !tbaa !193
  br label %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i

_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i: ; preds = %.split7.i.i169, %.split.i.i160
  %i.qi = phi ptr [ %.pre, %.split7.i.i169 ], [ %.pre205, %.split.i.i160 ] ; 2 uses
  %.0.i.i162 = phi i32 [ 0, %.split7.i.i169 ], [ %i.pc, %.split.i.i160 ] ; 2 uses
  %.not.i10.i.i163 = icmp eq ptr %i.qi, null
  br i1 %.not.i10.i.i163, label %.lr.ph.i154, label %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i.thread

_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i.thread: ; preds = %scalar.ph254.prol.loopexit, %scalar.ph254, %middle.block263, %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i
  %.0.i.i162248 = phi i32 [ %.0.i.i162, %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i ], [ %i.pc, %middle.block263 ], [ %i.pc, %scalar.ph254 ], [ %i.pc, %scalar.ph254.prol.loopexit ] ; 2 uses
  %i.qj = phi ptr [ %i.qi, %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i ], [ %.pre205, %middle.block263 ], [ %.pre205, %scalar.ph254 ], [ %.pre205, %scalar.ph254.prol.loopexit ]
  %i.qk = load i8, ptr %i.oy, align 8, !tbaa !189, !range !95, !noundef !96
  %i.ql = trunc nuw i8 %i.qk to i1
  br i1 %i.ql, label %bb.ba, label %.lr.ph.i154

bb.ba:                                            ; preds = %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i.thread
  call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.qj)
  br label %.lr.ph.i154

.lr.ph.i154:                                      ; preds = %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i, %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i.thread, %bb.ba
  %.0.i.i162249 = phi i32 [ %.0.i.i162, %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i ], [ %.0.i.i162248, %_ZNK20b3AlignedObjectArrayIP15b3ConvexUtilityE4copyEiiPS1_.exit.i.i.thread ], [ %.0.i.i162248, %bb.ba ]
  store i8 1, ptr %i.oy, align 8, !tbaa !189
  store ptr %i.pg, ptr %i.oz, align 8, !tbaa !193
  store i32 %.0.i.i162249, ptr %i.pb, align 8, !tbaa !195
  call void @llvm.memset.p0.i64(ptr align 8 %i.pg, i8 0, i64 %i.pf, i1 false), !tbaa !197
  %.pr201 = load i32, ptr %i.ea, align 4, !tbaa !124
  %.pre206 = load ptr, ptr %i.a, align 8, !tbaa !11
  br label %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE6resizeEiRKS1_.exit

_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE6resizeEiRKS1_.exit: ; preds = %.lr.ph.i154, %bb.az
  %i.qm = phi ptr [ %.pre206, %.lr.ph.i154 ], [ %i.ov, %bb.az ] ; 8 uses
  %i.qn = phi i32 [ %.pr201, %.lr.ph.i154 ], [ %i.pc, %bb.az ] ; 9 uses
  store i32 %i.pc, ptr %i.pa, align 4, !tbaa !194
  %i.qo = getelementptr inbounds nuw i8, ptr %i.qm, i64 12 ; 4 uses
  %i.qp = load i32, ptr %i.qo, align 4, !tbaa !155 ; 2 uses
  %i.qq = icmp sgt i32 %i.qn, %i.qp
  br i1 %i.qq, label %bb.bb, label %.loopexit

bb.bb:                                            ; preds = %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE6resizeEiRKS1_.exit
  %i.qr = getelementptr inbounds nuw i8, ptr %i.qm, i64 16 ; 2 uses
  %i.qs = load i32, ptr %i.qr, align 8, !tbaa !154
  %i.qt = icmp slt i32 %i.qs, %i.qn
  br i1 %i.qt, label %bb.bc, label %.lr.ph.i170

bb.bc:                                            ; preds = %bb.bb
  %.not.i.i.i175 = icmp eq i32 %i.qn, 0
  br i1 %.not.i.i.i175, label %.split7.i.i185, label %_ZN20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE8allocateEi.exit.i.i: ; preds = %bb.bc
  %i.qu = sext i32 %i.qn to i64
  %i.qv = mul nsw i64 %i.qu, 96
  %i.qw = call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.qv, i32 noundef 16) ; 7 uses
  %i.qx = icmp eq ptr %i.qw, null
  br i1 %i.qx, label %.split7.i.i185, label %.split.i.i176

.split.i.i176:                                    ; preds = %_ZN20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE8allocateEi.exit.i.i
  %i.qy = load i32, ptr %i.qo, align 4, !tbaa !155 ; 4 uses
  %i.qz = icmp sgt i32 %i.qy, 0
  br i1 %i.qz, label %.lr.ph.i.i.i180, label %_ZNK20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE4copyEiiPS0_.exit.i.i

.lr.ph.i.i.i180:                                  ; preds = %.split.i.i176
  %i.ra = getelementptr inbounds nuw i8, ptr %i.qm, i64 24 ; 3 uses
  %wide.trip.count.i.i.i181 = zext nneg i32 %i.qy to i64 ; 2 uses
  %xtraiter330 = and i64 %wide.trip.count.i.i.i181, 1
  %i.rb = icmp eq i32 %i.qy, 1
  br i1 %i.rb, label %.epil.preheader329, label %.lr.ph.i.i.i180.new

.lr.ph.i.i.i180.new:                              ; preds = %.lr.ph.i.i.i180
  %unroll_iter334 = and i64 %wide.trip.count.i.i.i181, 2147483646
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bd, %.lr.ph.i.i.i180.new
  %indvars.iv.i.i.i182 = phi i64 [ 0, %.lr.ph.i.i.i180.new ], [ %indvars.iv.next.i.i.i183.1, %bb.bd ] ; 4 uses
  %niter335 = phi i64 [ 0, %.lr.ph.i.i.i180.new ], [ %niter335.next.1, %bb.bd ]
  %i.rc = getelementptr inbounds nuw [96 x i8], ptr %i.qw, i64 %indvars.iv.i.i.i182
  %i.rd = load ptr, ptr %i.ra, align 8, !tbaa !156
  %i.re = getelementptr inbounds nuw [96 x i8], ptr %i.rd, i64 %indvars.iv.i.i.i182
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.rc, ptr noundef nonnull align 16 dereferenceable(96) %i.re, i64 96, i1 false), !tbaa.struct !157
  %indvars.iv.next.i.i.i183 = or disjoint i64 %indvars.iv.i.i.i182, 1 ; 2 uses
  %i.rf = getelementptr inbounds nuw [96 x i8], ptr %i.qw, i64 %indvars.iv.next.i.i.i183
  %i.rg = load ptr, ptr %i.ra, align 8, !tbaa !156
  %i.rh = getelementptr inbounds nuw [96 x i8], ptr %i.rg, i64 %indvars.iv.next.i.i.i183
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.rf, ptr noundef nonnull align 16 dereferenceable(96) %i.rh, i64 96, i1 false), !tbaa.struct !157
  %indvars.iv.next.i.i.i183.1 = add nuw nsw i64 %indvars.iv.i.i.i182, 2 ; 2 uses
  %niter335.next.1 = add i64 %niter335, 2         ; 2 uses
  %niter335.ncmp.1 = icmp eq i64 %niter335.next.1, %unroll_iter334
  br i1 %niter335.ncmp.1, label %_ZNK20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, label %bb.bd, !llvm.loop !160

.split7.i.i185:                                   ; preds = %_ZN20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE8allocateEi.exit.i.i, %bb.bc
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef 301)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.10)
  store i32 0, ptr %i.qo, align 4, !tbaa !155
  br label %_ZNK20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa: ; preds = %bb.bd
  %lcmp.mod332.not = icmp eq i64 %xtraiter330, 0
  br i1 %lcmp.mod332.not, label %_ZNK20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE4copyEiiPS0_.exit.i.i, label %.epil.preheader329

.epil.preheader329:                               ; preds = %_ZNK20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i180
  %indvars.iv.i.i.i182.epil.init = phi i64 [ 0, %.lr.ph.i.i.i180 ], [ %indvars.iv.next.i.i.i183.1, %_ZNK20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod333 = trunc i32 %i.qy to i1
  call void @llvm.assume(i1 %lcmp.mod333)
  %i.ri = getelementptr inbounds nuw [96 x i8], ptr %i.qw, i64 %indvars.iv.i.i.i182.epil.init
  %i.rj = load ptr, ptr %i.ra, align 8, !tbaa !156
  %i.rk = getelementptr inbounds nuw [96 x i8], ptr %i.rj, i64 %indvars.iv.i.i.i182.epil.init
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.ri, ptr noundef nonnull align 16 dereferenceable(96) %i.rk, i64 96, i1 false), !tbaa.struct !157
  br label %_ZNK20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE4copyEiiPS0_.exit.i.i

_ZNK20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE4copyEiiPS0_.exit.i.i: ; preds = %.epil.preheader329, %_ZNK20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa, %.split7.i.i185, %.split.i.i176
  %.0.i12.i.i177 = phi ptr [ null, %.split7.i.i185 ], [ %i.qw, %.split.i.i176 ], [ %i.qw, %_ZNK20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.qw, %.epil.preheader329 ]
  %.0.i.i178 = phi i32 [ 0, %.split7.i.i185 ], [ %i.qn, %.split.i.i176 ], [ %i.qn, %_ZNK20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE4copyEiiPS0_.exit.i.i.loopexit.unr-lcssa ], [ %i.qn, %.epil.preheader329 ]
  %i.rl = getelementptr inbounds nuw i8, ptr %i.qm, i64 24 ; 2 uses
  %i.rm = load ptr, ptr %i.rl, align 8, !tbaa !156 ; 2 uses
  %.not.i10.i.i179 = icmp eq ptr %i.rm, null
  br i1 %.not.i10.i.i179, label %_ZN20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE10deallocateEv.exit.i.i, label %bb.be

bb.be:                                            ; preds = %_ZNK20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE4copyEiiPS0_.exit.i.i
  %i.rn = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  %i.ro = load i8, ptr %i.rn, align 8, !tbaa !161, !range !95, !noundef !96
  %i.rp = trunc nuw i8 %i.ro to i1
  br i1 %i.rp, label %bb.bf, label %_ZN20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE10deallocateEv.exit.i.i

bb.bf:                                            ; preds = %bb.be
  call void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.rm)
  br label %_ZN20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE10deallocateEv.exit.i.i

_ZN20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE10deallocateEv.exit.i.i: ; preds = %bb.bf, %bb.be, %_ZNK20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE4copyEiiPS0_.exit.i.i
  %i.rq = getelementptr inbounds nuw i8, ptr %i.qm, i64 32
  store i8 1, ptr %i.rq, align 8, !tbaa !161
  store ptr %.0.i12.i.i177, ptr %i.rl, align 8, !tbaa !156
  store i32 %.0.i.i178, ptr %i.qr, align 8, !tbaa !154
  br label %.lr.ph.i170

.lr.ph.i170:                                      ; preds = %_ZN20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE10deallocateEv.exit.i.i, %bb.bb
  %i.rr = getelementptr inbounds nuw i8, ptr %i.qm, i64 24 ; 5 uses
  %i.rs = sext i32 %i.qp to i64                   ; 4 uses
  %wide.trip.count.i171 = sext i32 %i.qn to i64   ; 3 uses
  %i.rt = sub nsw i64 %wide.trip.count.i171, %i.rs
  %xtraiter336 = and i64 %i.rt, 3                 ; 2 uses
  %lcmp.mod337.not = icmp eq i64 %xtraiter336, 0
  br i1 %lcmp.mod337.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %.lr.ph.i170, %.prol.preheader
  %indvars.iv.i172.prol = phi i64 [ %indvars.iv.next.i173.prol, %.prol.preheader ], [ %i.rs, %.lr.ph.i170 ] ; 2 uses
  %prol.iter338 = phi i64 [ %prol.iter338.next, %.prol.preheader ], [ 0, %.lr.ph.i170 ]
  %i.ru = load ptr, ptr %i.rr, align 8, !tbaa !156
  %i.rv = getelementptr inbounds [96 x i8], ptr %i.ru, i64 %indvars.iv.i172.prol
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.rv, i8 0, i64 96, i1 false)
  %indvars.iv.next.i173.prol = add nsw i64 %indvars.iv.i172.prol, 1 ; 2 uses
  %prol.iter338.next = add i64 %prol.iter338, 1   ; 2 uses
  %prol.iter338.cmp.not = icmp eq i64 %prol.iter338.next, %xtraiter336
  br i1 %prol.iter338.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !202

.prol.loopexit:                                   ; preds = %.prol.preheader, %.lr.ph.i170
  %indvars.iv.i172.unr = phi i64 [ %i.rs, %.lr.ph.i170 ], [ %indvars.iv.next.i173.prol, %.prol.preheader ]
  %i.rw = sub nsw i64 %i.rs, %wide.trip.count.i171
  %i.rx = icmp ugt i64 %i.rw, -4
  br i1 %i.rx, label %.loopexit.loopexit, label %.lr.ph.i170.new

.lr.ph.i170.new:                                  ; preds = %.prol.loopexit, %.lr.ph.i170.new
  %indvars.iv.i172 = phi i64 [ %indvars.iv.next.i173.3, %.lr.ph.i170.new ], [ %indvars.iv.i172.unr, %.prol.loopexit ] ; 5 uses
  %i.ry = load ptr, ptr %i.rr, align 8, !tbaa !156
  %i.rz = getelementptr inbounds [96 x i8], ptr %i.ry, i64 %indvars.iv.i172
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.rz, i8 0, i64 96, i1 false)
  %i.sa = load ptr, ptr %i.rr, align 8, !tbaa !156
  %i.sb = getelementptr [96 x i8], ptr %i.sa, i64 %indvars.iv.i172
  %i.sc = getelementptr i8, ptr %i.sb, i64 96
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.sc, i8 0, i64 96, i1 false)
  %i.sd = load ptr, ptr %i.rr, align 8, !tbaa !156
  %i.se = getelementptr [96 x i8], ptr %i.sd, i64 %indvars.iv.i172
  %i.sf = getelementptr i8, ptr %i.se, i64 192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.sf, i8 0, i64 96, i1 false)
  %i.sg = load ptr, ptr %i.rr, align 8, !tbaa !156
  %i.sh = getelementptr [96 x i8], ptr %i.sg, i64 %indvars.iv.i172
  %i.si = getelementptr i8, ptr %i.sh, i64 288
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.si, i8 0, i64 96, i1 false)
  %indvars.iv.next.i173.3 = add nsw i64 %indvars.iv.i172, 4 ; 2 uses
  %exitcond.not.i174.3 = icmp eq i64 %indvars.iv.next.i173.3, %wide.trip.count.i171
  br i1 %exitcond.not.i174.3, label %.loopexit.loopexit, label %.lr.ph.i170.new, !llvm.loop !203

.loopexit.loopexit:                               ; preds = %.lr.ph.i170.new, %.prol.loopexit
  %.pre207 = load ptr, ptr %i.a, align 8, !tbaa !11
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE6resizeEiRKS1_.exit
  %i.sj = phi ptr [ %.pre207, %.loopexit.loopexit ], [ %i.qm, %_ZN20b3AlignedObjectArrayIP15b3ConvexUtilityE6resizeEiRKS1_.exit ] ; 5 uses
  store i32 %i.qn, ptr %i.qo, align 4, !tbaa !155
  %i.sk = getelementptr inbounds nuw i8, ptr %i.sj, i64 368
  store i32 0, ptr %i.sk, align 8, !tbaa !204
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sj, i64 372
  store i32 0, ptr %i.sl, align 4, !tbaa !205
  %i.sm = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 7 uses
  %i.sn = load ptr, ptr %i.d, align 8, !tbaa !20  ; 3 uses
  %i.so = load ptr, ptr %i.f, align 8, !tbaa !22  ; 3 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI16b3BvhSubtreeInfoE, i64 16), ptr %i.sm, align 8, !tbaa !9
  %i.sp = getelementptr inbounds nuw i8, ptr %i.sm, i64 8
  %i.sq = getelementptr inbounds nuw i8, ptr %i.sm, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sp, i8 0, i64 24, i1 false)
  store ptr %i.sn, ptr %i.sq, align 8, !tbaa !206
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sm, i64 40
  store ptr %i.so, ptr %i.sr, align 8, !tbaa !210
  %i.ss = getelementptr inbounds nuw i8, ptr %i.sm, i64 48
  store i8 1, ptr %i.ss, align 8, !tbaa !211
  %i.st = getelementptr inbounds nuw i8, ptr %i.sm, i64 49
  store i8 1, ptr %i.st, align 1, !tbaa !212
  %i.su = getelementptr inbounds nuw i8, ptr %i.sj, i64 608
  store ptr %i.sm, ptr %i.su, align 8, !tbaa !213
  %i.sv = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI18b3QuantizedBvhNodeE, i64 16), ptr %i.sv, align 8, !tbaa !9
  %i.sw = getelementptr inbounds nuw i8, ptr %i.sv, i64 8
  %i.sx = getelementptr inbounds nuw i8, ptr %i.sv, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.sw, i8 0, i64 24, i1 false)
  store ptr %i.sn, ptr %i.sx, align 8, !tbaa !214
  %i.sy = getelementptr inbounds nuw i8, ptr %i.sv, i64 40
  store ptr %i.so, ptr %i.sy, align 8, !tbaa !216
  %i.sz = getelementptr inbounds nuw i8, ptr %i.sv, i64 48
  store i8 1, ptr %i.sz, align 8, !tbaa !217
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sv, i64 49
  store i8 1, ptr %i.ta, align 1, !tbaa !218
  %i.tb = getelementptr inbounds nuw i8, ptr %i.sj, i64 600
  store ptr %i.sv, ptr %i.tb, align 8, !tbaa !219
  %i.tc = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI9b3BvhInfoE, i64 16), ptr %i.tc, align 8, !tbaa !9
  %i.td = getelementptr inbounds nuw i8, ptr %i.tc, i64 8
  %i.te = getelementptr inbounds nuw i8, ptr %i.tc, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.td, i8 0, i64 24, i1 false)
  store ptr %i.sn, ptr %i.te, align 8, !tbaa !220
  %i.tf = getelementptr inbounds nuw i8, ptr %i.tc, i64 40
  store ptr %i.so, ptr %i.tf, align 8, !tbaa !222
  %i.tg = getelementptr inbounds nuw i8, ptr %i.tc, i64 48
  store i8 1, ptr %i.tg, align 8, !tbaa !223
  %i.th = getelementptr inbounds nuw i8, ptr %i.tc, i64 49
  store i8 1, ptr %i.th, align 1, !tbaa !224
  %i.ti = getelementptr inbounds nuw i8, ptr %i.sj, i64 592
  store ptr %i.tc, ptr %i.ti, align 8, !tbaa !225
  ret void

bb.bg:                                            ; preds = %bb.a
  %i.tj = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.i, i64 noundef 864) #18
  br label %bb.bz

bb.bh:                                            ; preds = %bb.b
  %i.tk = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.l, i64 noundef 56) #18
  br label %bb.bz

bb.bi:                                            ; preds = %.loopexit202
  %i.tl = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 56) #18
  br label %bb.bz

bb.bj:                                            ; preds = %bb.l
  %i.tm = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dp, i64 noundef 56) #18
  br label %bb.bz

bb.bk:                                            ; preds = %bb.m
  %i.tn = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.du, i64 noundef 56) #18
  br label %bb.bz

bb.bl:                                            ; preds = %bb.n
  %i.to = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.dz, i64 noundef 56) #18
  br label %bb.bz

bb.bm:                                            ; preds = %bb.t
  %i.tp = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fp, i64 noundef 56) #18
  br label %bb.bz

bb.bn:                                            ; preds = %bb.u
  %i.tq = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fu, i64 noundef 56) #18
  br label %bb.bz

bb.bo:                                            ; preds = %bb.v
  %i.tr = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.fz, i64 noundef 56) #18
  br label %bb.bz

bb.bp:                                            ; preds = %_ZN20b3AlignedObjectArrayI9b3GpuFaceE7reserveEi.exit
  %i.ts = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hm, i64 noundef 56) #18
  br label %bb.bz

bb.bq:                                            ; preds = %bb.ab
  %i.tt = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.hs, i64 noundef 56) #18
  br label %bb.bz

bb.br:                                            ; preds = %_ZN20b3AlignedObjectArrayI22b3ConvexPolyhedronDataE7reserveEi.exit
  %i.tu = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ja, i64 noundef 56) #18
  br label %bb.bz

bb.bs:                                            ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E7reserveEi.exit
  %i.tv = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.kj, i64 noundef 56) #18
  br label %bb.bz

bb.bt:                                            ; preds = %_ZN20b3AlignedObjectArrayI9b3Vector3E7reserveEi.exit142
  %i.tw = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.ls, i64 noundef 56) #18
  br label %bb.bz

bb.bu:                                            ; preds = %_ZN20b3AlignedObjectArrayIiE7reserveEi.exit
  %i.tx = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nr, i64 noundef 56) #18
  br label %bb.bz

bb.bv:                                            ; preds = %bb.av
  %i.ty = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.nz, i64 noundef 56) #18
  br label %bb.bz

bb.bw:                                            ; preds = %bb.aw
  %i.tz = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.oe, i64 noundef 56) #18
  br label %bb.bz

bb.bx:                                            ; preds = %bb.ax
  %i.ua = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.oj, i64 noundef 56) #18
  br label %bb.bz

bb.by:                                            ; preds = %bb.ay
  %i.ub = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.oq, i64 noundef 56) #18
  br label %bb.bz

bb.bz:                                            ; preds = %bb.by, %bb.bx, %bb.bw, %bb.bv, %bb.bu, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bp, %bb.bo, %bb.bn, %bb.bm, %bb.bl, %bb.bk, %bb.bj, %bb.bi, %bb.bh, %bb.bg
  %.pn = phi { ptr, i32 } [ %i.tn, %bb.bk ], [ %i.tm, %bb.bj ], [ %i.tl, %bb.bi ], [ %i.tj, %bb.bg ], [ %i.ub, %bb.by ], [ %i.ua, %bb.bx ], [ %i.tz, %bb.bw ], [ %i.ty, %bb.bv ], [ %i.tx, %bb.bu ], [ %i.tw, %bb.bt ], [ %i.tv, %bb.bs ], [ %i.tu, %bb.br ], [ %i.tt, %bb.bq ], [ %i.ts, %bb.bp ], [ %i.tr, %bb.bo ], [ %i.tq, %bb.bn ], [ %i.tp, %bb.bm ], [ %i.tk, %bb.bh ], [ %i.to, %bb.bl ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

declare void @_ZN15GpuSatCollisionC1EP11_cl_contextP13_cl_device_idP17_cl_command_queue(ptr noundef nonnull align 8 dereferenceable(864), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI6b3Int4EC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI6b3Int4E, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.e, align 8, !tbaa !226
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %2, ptr %i.f, align 8, !tbaa !228
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 1, ptr %i.g, align 8, !tbaa !229
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  store i8 1, ptr %i.h, align 1, !tbaa !230
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.i = shl i64 %3, 4
  %i.j = load ptr, ptr @__clewCreateBuffer, align 8, !tbaa !231
  %i.k = call ptr %i.j(ptr noundef %1, i64 noundef 1, i64 noundef %i.i, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !232 ; 2 uses
  %i.l = load i32, ptr %i.a, align 4, !tbaa !24
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef 166)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.12)
  br label %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.b, align 8, !tbaa !233  ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr @__clewEnqueueCopyBuffer, align 8, !tbaa !231
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !228
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !234
  %i.r = shl i64 %i.m, 4
  %i.s = call i32 %i.o(ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.k, i64 noundef 0, i64 noundef 0, i64 noundef %i.r, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !235 ; 0 uses
  br label %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i

_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i: ; preds = %bb.d, %bb.c, %.thread.i
  %.01017.i = phi i64 [ 0, %.thread.i ], [ %3, %bb.d ], [ %3, %bb.c ]
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !234  ; 2 uses
  %.not.i.i = icmp ne ptr %i.t, null
  %i.u = load i8, ptr %i.g, align 8, !range !95
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.v, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit

bb.e:                                             ; preds = %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i
  %i.w = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !231
  %i.x = call i32 %i.w(ptr noundef nonnull %i.t), !inline_history !236 ; 0 uses
  br label %_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit

_ZN13b3OpenCLArrayI6b3Int4E7reserveEmb.exit:      ; preds = %_ZNK13b3OpenCLArrayI6b3Int4E8copyToCLEP7_cl_memmmm.exit.i, %bb.e
end_hunk_1
