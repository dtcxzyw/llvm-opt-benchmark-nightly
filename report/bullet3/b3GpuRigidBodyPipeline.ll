Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuRigidBodyPipeline?download=true
inline.NumInlined: 600
inline.NumDeleted: 254
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 25
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b3GpuGenericConstraint = type { i32, i32, i32, float, %class.b3Vector3, %class.b3Vector3, %class.b3Quaternion, i32, i32, [2 x i32] }
%class.b3Vector3 = type { %union.anon }
%union.anon = type { [4 x float] }
%class.b3Quaternion = type { %class.b3QuadWord }
%class.b3QuadWord = type { %union.anon.0 }
%union.anon.0 = type { [4 x float] }
%class.b3OpenCLArray.27 = type <{ ptr, i64, i64, ptr, ptr, ptr, i8, i8, [6 x i8] }>
%class.b3LauncherCL = type { ptr, ptr, ptr, i32, [4 x i8], %class.b3AlignedObjectArray.39, i32, i8, ptr, %class.b3AlignedObjectArray.41 }
%class.b3AlignedObjectArray.39 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.b3AlignedObjectArray.41 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.b3AlignedObjectArray.37 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.b3OpenCLArray.46 = type <{ ptr, i64, i64, ptr, ptr, ptr, i8, i8, [6 x i8] }>
%class.b3OpenCLArray.48 = type <{ ptr, i64, i64, ptr, ptr, ptr, i8, i8, [6 x i8] }>
%class.b3AlignedObjectArray.52 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.b3AlignedObjectArray.54 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%struct.b3SapAabb = type { %struct.b3Aabb }
%struct.b3Aabb = type { %union.anon.5, %union.anon.6 }
%union.anon.5 = type { [4 x float] }
%union.anon.6 = type { [4 x float] }

$_ZN13b3OpenCLArrayI9b3SapAabbEC2EP11_cl_contextP17_cl_command_queuemb = comdat any

$_ZN13b3OpenCLArrayI6b3Int4EC2EP11_cl_contextP17_cl_command_queuemb = comdat any

$__clang_call_terminate = comdat any

$_ZN13b3OpenCLArrayI22b3GpuGenericConstraintE6resizeEmb = comdat any

$_ZN13b3OpenCLArrayI9b3SapAabbE6resizeEmb = comdat any

$_ZNK13b3OpenCLArrayI22b3GpuGenericConstraintE10copyToHostER20b3AlignedObjectArrayIS0_Eb = comdat any

$_ZN13b3OpenCLArrayI22b3GpuGenericConstraintE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb = comdat any

$_ZN20b3AlignedObjectArrayI22b3GpuGenericConstraintE9push_backERKS0_ = comdat any

$_ZNK13b3OpenCLArrayI9b3SapAabbE10copyToHostER20b3AlignedObjectArrayIS0_Eb = comdat any

$_ZN13b3OpenCLArrayI6b3Int4E12copyFromHostERK20b3AlignedObjectArrayIS0_Eb = comdat any

$_ZN13b3OpenCLArrayI6b3Int4E6resizeEmb = comdat any

$_ZNK13b3OpenCLArrayI6b3Int4E10copyToHostER20b3AlignedObjectArrayIS0_Eb = comdat any

$_ZN20b3AlignedObjectArrayI6b3Int4ED2Ev = comdat any

$_ZN13b3OpenCLArrayI6b3Int4ED2Ev = comdat any

$_ZNK13b3OpenCLArrayI15b3RigidBodyDataE10copyToHostER20b3AlignedObjectArrayIS0_Eb = comdat any

$_ZN13b3OpenCLArrayI15b3RigidBodyDataE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb = comdat any

$_ZN20b3AlignedObjectArrayI13b3InertiaDataED2Ev = comdat any

$_ZN20b3AlignedObjectArrayI15b3RigidBodyDataED2Ev = comdat any

$_ZN13b3OpenCLArrayI13b3InertiaDataED2Ev = comdat any

$_ZN13b3OpenCLArrayI15b3RigidBodyDataED2Ev = comdat any

$_Z24integrateSingleTransformP15b3RigidBodyDataiffRK9b3Vector3 = comdat any

$_ZN13b3OpenCLArrayI9b3SapAabbE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb = comdat any

$_ZN20b3AlignedObjectArrayI9b3SapAabbE9push_backERKS0_ = comdat any

$_ZN13b3OpenCLArrayI9b3SapAabbED2Ev = comdat any

$_ZN13b3OpenCLArrayI9b3SapAabbED0Ev = comdat any

$_ZN13b3OpenCLArrayI6b3Int4ED0Ev = comdat any

$_ZN13b3OpenCLArrayI22b3GpuGenericConstraintED2Ev = comdat any

$_ZN13b3OpenCLArrayI22b3GpuGenericConstraintED0Ev = comdat any

$_ZN13b3OpenCLArrayI15b3RigidBodyDataED0Ev = comdat any

$_ZN13b3OpenCLArrayI13b3InertiaDataED0Ev = comdat any

$_ZTV13b3OpenCLArrayI9b3SapAabbE = comdat any

$_ZTI13b3OpenCLArrayI9b3SapAabbE = comdat any

$_ZTS13b3OpenCLArrayI9b3SapAabbE = comdat any

$_ZTV13b3OpenCLArrayI6b3Int4E = comdat any

$_ZTI13b3OpenCLArrayI6b3Int4E = comdat any

$_ZTS13b3OpenCLArrayI6b3Int4E = comdat any

$_ZTV13b3OpenCLArrayI22b3GpuGenericConstraintE = comdat any

$_ZTI13b3OpenCLArrayI22b3GpuGenericConstraintE = comdat any

$_ZTS13b3OpenCLArrayI22b3GpuGenericConstraintE = comdat any

$_ZTV13b3OpenCLArrayI15b3RigidBodyDataE = comdat any

$_ZTI13b3OpenCLArrayI15b3RigidBodyDataE = comdat any

$_ZTS13b3OpenCLArrayI15b3RigidBodyDataE = comdat any

$_ZTV13b3OpenCLArrayI13b3InertiaDataE = comdat any

$_ZTI13b3OpenCLArrayI13b3InertiaDataE = comdat any

$_ZTS13b3OpenCLArrayI13b3InertiaDataE = comdat any

@useBullet2CpuSolver = dso_local local_unnamed_addr global i8 1, align 1
@gUseJacobi = dso_local local_unnamed_addr global i8 0, align 1
@gUseDbvt = dso_local local_unnamed_addr global i8 0, align 1
@gDumpContactStats = dso_local local_unnamed_addr global i8 0, align 1
@gCalcWorldSpaceAabbOnCpu = dso_local local_unnamed_addr global i8 0, align 1
@gUseCalculateOverlappingPairsHost = dso_local local_unnamed_addr global i8 0, align 1
@gIntegrateOnCpu = dso_local local_unnamed_addr global i8 0, align 1
@gClearPairsOnGpu = dso_local local_unnamed_addr global i8 1, align 1
@_ZTV22b3GpuRigidBodyPipeline = dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI22b3GpuRigidBodyPipeline, ptr @_ZN22b3GpuRigidBodyPipelineD2Ev, ptr @_ZN22b3GpuRigidBodyPipelineD0Ev] }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"src/Bullet3OpenCL/RigidBody/kernels/integrateKernel.cl\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"integrateTransformsKernel\00", align 1
@__clewReleaseProgram = external local_unnamed_addr global ptr, align 8
@.str.3 = private unnamed_addr constant [57 x i8] c"src/Bullet3OpenCL/RigidBody/kernels/updateAabbsKernel.cl\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"initializeGpuAabbsFull\00", align 1
@.str.5 = private unnamed_addr constant [28 x i8] c"clearOverlappingPairsKernel\00", align 1
@__clewReleaseKernel = external local_unnamed_addr global ptr, align 8
@.str.6 = private unnamed_addr constant [14 x i8] c"setupGpuAabbs\00", align 1
@.str.7 = private unnamed_addr constant [8 x i8] c"setAabb\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"calculateOverlappingPairs\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"m_overlappingPairsGPU->copyFromHost\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"m_overlappingPairsGPU->copyToHost\00", align 1
@.str.11 = private unnamed_addr constant [18 x i8] c"numContacts = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"totalPoints=%d\0A\00", align 1
@.str.15 = private unnamed_addr constant [28 x i8] c"m_integrateTransformsKernel\00", align 1
@.str.16 = private unnamed_addr constant [20 x i8] c"m_updateAabbsKernel\00", align 1
@.str.18 = private unnamed_addr constant [17 x i8] c"b3Error[%s,%d]:\0A\00", align 1
@.str.19 = private unnamed_addr constant [87 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3OpenCL/RigidBody/b3GpuRigidBodyPipeline.cpp\00", align 1
@.str.20 = private unnamed_addr constant [55 x i8] c"registerPhysicsInstance using invalid collidableIndex\0A\00", align 1
@_ZTI22b3GpuRigidBodyPipeline = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS22b3GpuRigidBodyPipeline }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS22b3GpuRigidBodyPipeline = dso_local constant [25 x i8] c"22b3GpuRigidBodyPipeline\00", align 1
@.str.21 = private unnamed_addr constant [11337 x i8] c"/*\0ACopyright (c) 2013 Advanced Micro Devices, Inc.  \0AThis software is provided 'as-is', without any express or implied warranty.\0AIn no event will the authors be held liable for any damages arising from the use of this software.\0APermission is granted to anyone to use this software for any purpose, \0Aincluding commercial applications, and to alter it and redistribute it freely, \0Asubject to the following restrictions:\0A1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.\0A2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.\0A3. This notice may not be removed or altered from any source distribution.\0A*/\0A//Originally written by Erwin Coumans\0A#ifndef B3_RIGIDBODY_DATA_H\0A#define B3_RIGIDBODY_DATA_H\0A#ifndef B3_FLOAT4_H\0A#define B3_FLOAT4_H\0A#ifndef B3_PLATFORM_DEFINITIONS_H\0A#define B3_PLATFORM_DEFINITIONS_H\0Astruct MyTest\0A{\0A\09int bla;\0A};\0A#ifdef __cplusplus\0A#else\0A//keep B3_LARGE_FLOAT*B3_LARGE_FLOAT < FLT_MAX\0A#define B3_LARGE_FLOAT 1e18f\0A#define B3_INFINITY 1e18f\0A#define b3Assert(a)\0A#define b3ConstArray(a) __global const a*\0A#define b3AtomicInc atomic_inc\0A#define b3AtomicAdd atomic_add\0A#define b3Fabs fabs\0A#define b3Sqrt native_sqrt\0A#define b3Sin native_sin\0A#define b3Cos native_cos\0A#define B3_STATIC\0A#endif\0A#endif\0A#ifdef __cplusplus\0A#else\0A\09typedef float4\09b3Float4;\0A\09#define b3Float4ConstArg const b3Float4\0A\09#define b3MakeFloat4 (float4)\0A\09float b3Dot3F4(b3Float4ConstArg v0,b3Float4ConstArg v1)\0A\09{\0A\09\09float4 a1 = b3MakeFloat4(v0.xyz,0.f);\0A\09\09float4 b1 = b3MakeFloat4(v1.xyz,0.f);\0A\09\09return dot(a1, b1);\0A\09}\0A\09b3Float4 b3Cross3(b3Float4ConstArg v0,b3Float4ConstArg v1)\0A\09{\0A\09\09float4 a1 = b3MakeFloat4(v0.xyz,0.f);\0A\09\09float4 b1 = b3MakeFloat4(v1.xyz,0.f);\0A\09\09return cross(a1, b1);\0A\09}\0A\09#define b3MinFloat4 min\0A\09#define b3MaxFloat4 max\0A\09#define b3Normalized(a) normalize(a)\0A#endif \0A\09\09\0Ainline bool b3IsAlmostZero(b3Float4ConstArg v)\0A{\0A\09if(b3Fabs(v.x)>1e-6 || b3Fabs(v.y)>1e-6 || b3Fabs(v.z)>1e-6)\09\0A\09\09return false;\0A\09return true;\0A}\0Ainline int    b3MaxDot( b3Float4ConstArg vec, __global const b3Float4* vecArray, int vecLen, float* dotOut )\0A{\0A    float maxDot = -B3_INFINITY;\0A    int i = 0;\0A    int ptIndex = -1;\0A    for( i = 0; i < vecLen; i++ )\0A    {\0A        float dot = b3Dot3F4(vecArray[i],vec);\0A            \0A        if( dot > maxDot )\0A        {\0A            maxDot = dot;\0A            ptIndex = i;\0A        }\0A    }\0A\09b3Assert(ptIndex>=0);\0A    if (ptIndex<0)\0A\09{\0A\09\09ptIndex = 0;\0A\09}\0A    *dotOut = maxDot;\0A    return ptIndex;\0A}\0A#endif //B3_FLOAT4_H\0A#ifndef B3_QUAT_H\0A#define B3_QUAT_H\0A#ifndef B3_PLATFORM_DEFINITIONS_H\0A#ifdef __cplusplus\0A#else\0A#endif\0A#endif\0A#ifndef B3_FLOAT4_H\0A#ifdef __cplusplus\0A#else\0A#endif \0A#endif //B3_FLOAT4_H\0A#ifdef __cplusplus\0A#else\0A\09typedef float4\09b3Quat;\0A\09#define b3QuatConstArg const b3Quat\0A\09\0A\09\0Ainline float4 b3FastNormalize4(float4 v)\0A{\0A\09v = (float4)(v.xyz,0.f);\0A\09return fast_normalize(v);\0A}\0A\09\0Ainline b3Quat b3QuatMul(b3Quat a, b3Quat b);\0Ainline b3Quat b3QuatNormalized(b3QuatConstArg in);\0Ainline b3Quat b3QuatRotate(b3QuatConstArg q, b3QuatConstArg vec);\0Ainline b3Quat b3QuatInvert(b3QuatConstArg q);\0Ainline b3Quat b3QuatInverse(b3QuatConstArg q);\0Ainline b3Quat b3QuatMul(b3QuatConstArg a, b3QuatConstArg b)\0A{\0A\09b3Quat ans;\0A\09ans = b3Cross3( a, b );\0A\09ans += a.w*b+b.w*a;\0A//\09ans.w = a.w*b.w - (a.x*b.x+a.y*b.y+a.z*b.z);\0A\09ans.w = a.w*b.w - b3Dot3F4(a, b);\0A\09return ans;\0A}\0Ainline b3Quat b3QuatNormalized(b3QuatConstArg in)\0A{\0A\09b3Quat q;\0A\09q=in;\0A\09//return b3FastNormalize4(in);\0A\09float len = native_sqrt(dot(q, q));\0A\09if(len > 0.f)\0A\09{\0A\09\09q *= 1.f / len;\0A\09}\0A\09else\0A\09{\0A\09\09q.x = q.y = q.z = 0.f;\0A\09\09q.w = 1.f;\0A\09}\0A\09return q;\0A}\0Ainline float4 b3QuatRotate(b3QuatConstArg q, b3QuatConstArg vec)\0A{\0A\09b3Quat qInv = b3QuatInvert( q );\0A\09float4 vcpy = vec;\0A\09vcpy.w = 0.f;\0A\09float4 out = b3QuatMul(b3QuatMul(q,vcpy),qInv);\0A\09return out;\0A}\0Ainline b3Quat b3QuatInverse(b3QuatConstArg q)\0A{\0A\09return (b3Quat)(-q.xyz, q.w);\0A}\0Ainline b3Quat b3QuatInvert(b3QuatConstArg q)\0A{\0A\09return (b3Quat)(-q.xyz, q.w);\0A}\0Ainline float4 b3QuatInvRotate(b3QuatConstArg q, b3QuatConstArg vec)\0A{\0A\09return b3QuatRotate( b3QuatInvert( q ), vec );\0A}\0Ainline b3Float4 b3TransformPoint(b3Float4ConstArg point, b3Float4ConstArg translation, b3QuatConstArg  orientation)\0A{\0A\09return b3QuatRotate( orientation, point ) + (translation);\0A}\0A\09\0A#endif \0A#endif //B3_QUAT_H\0A#ifndef B3_MAT3x3_H\0A#define B3_MAT3x3_H\0A#ifndef B3_QUAT_H\0A#ifdef __cplusplus\0A#else\0A#endif \0A#endif //B3_QUAT_H\0A#ifdef __cplusplus\0A#else\0Atypedef struct\0A{\0A\09b3Float4 m_row[3];\0A}b3Mat3x3;\0A#define b3Mat3x3ConstArg const b3Mat3x3\0A#define b3GetRow(m,row) (m.m_row[row])\0Ainline b3Mat3x3 b3QuatGetRotationMatrix(b3Quat quat)\0A{\0A\09b3Float4 quat2 = (b3Float4)(quat.x*quat.x, quat.y*quat.y, quat.z*quat.z, 0.f);\0A\09b3Mat3x3 out;\0A\09out.m_row[0].x=1-2*quat2.y-2*quat2.z;\0A\09out.m_row[0].y=2*quat.x*quat.y-2*quat.w*quat.z;\0A\09out.m_row[0].z=2*quat.x*quat.z+2*quat.w*quat.y;\0A\09out.m_row[0].w = 0.f;\0A\09out.m_row[1].x=2*quat.x*quat.y+2*quat.w*quat.z;\0A\09out.m_row[1].y=1-2*quat2.x-2*quat2.z;\0A\09out.m_row[1].z=2*quat.y*quat.z-2*quat.w*quat.x;\0A\09out.m_row[1].w = 0.f;\0A\09out.m_row[2].x=2*quat.x*quat.z-2*quat.w*quat.y;\0A\09out.m_row[2].y=2*quat.y*quat.z+2*quat.w*quat.x;\0A\09out.m_row[2].z=1-2*quat2.x-2*quat2.y;\0A\09out.m_row[2].w = 0.f;\0A\09return out;\0A}\0Ainline b3Mat3x3 b3AbsoluteMat3x3(b3Mat3x3ConstArg matIn)\0A{\0A\09b3Mat3x3 out;\0A\09out.m_row[0] = fabs(matIn.m_row[0]);\0A\09out.m_row[1] = fabs(matIn.m_row[1]);\0A\09out.m_row[2] = fabs(matIn.m_row[2]);\0A\09return out;\0A}\0A__inline\0Ab3Mat3x3 mtZero();\0A__inline\0Ab3Mat3x3 mtIdentity();\0A__inline\0Ab3Mat3x3 mtTranspose(b3Mat3x3 m);\0A__inline\0Ab3Mat3x3 mtMul(b3Mat3x3 a, b3Mat3x3 b);\0A__inline\0Ab3Float4 mtMul1(b3Mat3x3 a, b3Float4 b);\0A__inline\0Ab3Float4 mtMul3(b3Float4 a, b3Mat3x3 b);\0A__inline\0Ab3Mat3x3 mtZero()\0A{\0A\09b3Mat3x3 m;\0A\09m.m_row[0] = (b3Float4)(0.f);\0A\09m.m_row[1] = (b3Float4)(0.f);\0A\09m.m_row[2] = (b3Float4)(0.f);\0A\09return m;\0A}\0A__inline\0Ab3Mat3x3 mtIdentity()\0A{\0A\09b3Mat3x3 m;\0A\09m.m_row[0] = (b3Float4)(1,0,0,0);\0A\09m.m_row[1] = (b3Float4)(0,1,0,0);\0A\09m.m_row[2] = (b3Float4)(0,0,1,0);\0A\09return m;\0A}\0A__inline\0Ab3Mat3x3 mtTranspose(b3Mat3x3 m)\0A{\0A\09b3Mat3x3 out;\0A\09out.m_row[0] = (b3Float4)(m.m_row[0].x, m.m_row[1].x, m.m_row[2].x, 0.f);\0A\09out.m_row[1] = (b3Float4)(m.m_row[0].y, m.m_row[1].y, m.m_row[2].y, 0.f);\0A\09out.m_row[2] = (b3Float4)(m.m_row[0].z, m.m_row[1].z, m.m_row[2].z, 0.f);\0A\09return out;\0A}\0A__inline\0Ab3Mat3x3 mtMul(b3Mat3x3 a, b3Mat3x3 b)\0A{\0A\09b3Mat3x3 transB;\0A\09transB = mtTranspose( b );\0A\09b3Mat3x3 ans;\0A\09//\09why this doesn't run when 0ing in the for{}\0A\09a.m_row[0].w = 0.f;\0A\09a.m_row[1].w = 0.f;\0A\09a.m_row[2].w = 0.f;\0A\09for(int i=0; i<3; i++)\0A\09{\0A//\09a.m_row[i].w = 0.f;\0A\09\09ans.m_row[i].x = b3Dot3F4(a.m_row[i],transB.m_row[0]);\0A\09\09ans.m_row[i].y = b3Dot3F4(a.m_row[i],transB.m_row[1]);\0A\09\09ans.m_row[i].z = b3Dot3F4(a.m_row[i],transB.m_row[2]);\0A\09\09ans.m_row[i].w = 0.f;\0A\09}\0A\09return ans;\0A}\0A__inline\0Ab3Float4 mtMul1(b3Mat3x3 a, b3Float4 b)\0A{\0A\09b3Float4 ans;\0A\09ans.x = b3Dot3F4( a.m_row[0], b );\0A\09ans.y = b3Dot3F4( a.m_row[1], b );\0A\09ans.z = b3Dot3F4( a.m_row[2], b );\0A\09ans.w = 0.f;\0A\09return ans;\0A}\0A__inline\0Ab3Float4 mtMul3(b3Float4 a, b3Mat3x3 b)\0A{\0A\09b3Float4 colx = b3MakeFloat4(b.m_row[0].x, b.m_row[1].x, b.m_row[2].x, 0);\0A\09b3Float4 coly = b3MakeFloat4(b.m_row[0].y, b.m_row[1].y, b.m_row[2].y, 0);\0A\09b3Float4 colz = b3MakeFloat4(b.m_row[0].z, b.m_row[1].z, b.m_row[2].z, 0);\0A\09b3Float4 ans;\0A\09ans.x = b3Dot3F4( a, colx );\0A\09ans.y = b3Dot3F4( a, coly );\0A\09ans.z = b3Dot3F4( a, colz );\0A\09return ans;\0A}\0A#endif\0A#endif //B3_MAT3x3_H\0Atypedef struct b3RigidBodyData b3RigidBodyData_t;\0Astruct b3RigidBodyData\0A{\0A\09b3Float4\09\09\09\09m_pos;\0A\09b3Quat\09\09\09\09\09m_quat;\0A\09b3Float4\09\09\09\09m_linVel;\0A\09b3Float4\09\09\09\09m_angVel;\0A\09int \09\09\09\09\09m_collidableIdx;\0A\09float \09\09\09\09m_invMass;\0A\09float \09\09\09\09m_restituitionCoeff;\0A\09float \09\09\09\09m_frictionCoeff;\0A};\0Atypedef struct b3InertiaData b3InertiaData_t;\0Astruct b3InertiaData\0A{\0A\09b3Mat3x3 m_invInertiaWorld;\0A\09b3Mat3x3 m_initInvInertia;\0A};\0A#endif //B3_RIGIDBODY_DATA_H\0A\09\0A#ifndef B3_RIGIDBODY_DATA_H\0A#endif //B3_RIGIDBODY_DATA_H\0A\09\0Ainline void integrateSingleTransform( __global b3RigidBodyData_t* bodies,int nodeID, float timeStep, float angularDamping, b3Float4ConstArg gravityAcceleration)\0A{\0A\09\0A\09if (bodies[nodeID].m_invMass != 0.f)\0A\09{\0A\09\09float BT_GPU_ANGULAR_MOTION_THRESHOLD = (0.25f * 3.14159254f);\0A\09\09//angular velocity\0A\09\09{\0A\09\09\09b3Float4 axis;\0A\09\09\09//add some hardcoded angular damping\0A\09\09\09bodies[nodeID].m_angVel.x *= angularDamping;\0A\09\09\09bodies[nodeID].m_angVel.y *= angularDamping;\0A\09\09\09bodies[nodeID].m_angVel.z *= angularDamping;\0A\09\09\09\0A\09\09\09b3Float4 angvel = bodies[nodeID].m_angVel;\0A\09\09\09float fAngle = b3Sqrt(b3Dot3F4(angvel, angvel));\0A\09\09\09\0A\09\09\09//limit the angular motion\0A\09\09\09if(fAngle*timeStep > BT_GPU_ANGULAR_MOTION_THRESHOLD)\0A\09\09\09{\0A\09\09\09\09fAngle = BT_GPU_ANGULAR_MOTION_THRESHOLD / timeStep;\0A\09\09\09}\0A\09\09\09if(fAngle < 0.001f)\0A\09\09\09{\0A\09\09\09\09// use Taylor's expansions of sync function\0A\09\09\09\09axis = angvel * (0.5f*timeStep-(timeStep*timeStep*timeStep)*0.020833333333f * fAngle * fAngle);\0A\09\09\09}\0A\09\09\09else\0A\09\09\09{\0A\09\09\09\09// sync(fAngle) = sin(c*fAngle)/t\0A\09\09\09\09axis = angvel * ( b3Sin(0.5f * fAngle * timeStep) / fAngle);\0A\09\09\09}\0A\09\09\09\0A\09\09\09b3Quat dorn;\0A\09\09\09dorn.x = axis.x;\0A\09\09\09dorn.y = axis.y;\0A\09\09\09dorn.z = axis.z;\0A\09\09\09dorn.w = b3Cos(fAngle * timeStep * 0.5f);\0A\09\09\09b3Quat orn0 = bodies[nodeID].m_quat;\0A\09\09\09b3Quat predictedOrn = b3QuatMul(dorn, orn0);\0A\09\09\09predictedOrn = b3QuatNormalized(predictedOrn);\0A\09\09\09bodies[nodeID].m_quat=predictedOrn;\0A\09\09}\0A\09\09//linear velocity\09\09\0A\09\09bodies[nodeID].m_pos +=  bodies[nodeID].m_linVel * timeStep;\0A\09\09\0A\09\09//apply gravity\0A\09\09bodies[nodeID].m_linVel += gravityAcceleration * timeStep;\0A\09\09\0A\09}\0A\09\0A}\0Ainline void b3IntegrateTransform( __global b3RigidBodyData_t* body, float timeStep, float angularDamping, b3Float4ConstArg gravityAcceleration)\0A{\0A\09float BT_GPU_ANGULAR_MOTION_THRESHOLD = (0.25f * 3.14159254f);\0A\09\0A\09if( (body->m_invMass != 0.f))\0A\09{\0A\09\09//angular velocity\0A\09\09{\0A\09\09\09b3Float4 axis;\0A\09\09\09//add some hardcoded angular damping\0A\09\09\09body->m_angVel.x *= angularDamping;\0A\09\09\09body->m_angVel.y *= angularDamping;\0A\09\09\09body->m_angVel.z *= angularDamping;\0A\09\09\09\0A\09\09\09b3Float4 angvel = body->m_angVel;\0A\09\09\09float fAngle = b3Sqrt(b3Dot3F4(angvel, angvel));\0A\09\09\09//limit the angular motion\0A\09\09\09if(fAngle*timeStep > BT_GPU_ANGULAR_MOTION_THRESHOLD)\0A\09\09\09{\0A\09\09\09\09fAngle = BT_GPU_ANGULAR_MOTION_THRESHOLD / timeStep;\0A\09\09\09}\0A\09\09\09if(fAngle < 0.001f)\0A\09\09\09{\0A\09\09\09\09// use Taylor's expansions of sync function\0A\09\09\09\09axis = angvel * (0.5f*timeStep-(timeStep*timeStep*timeStep)*0.020833333333f * fAngle * fAngle);\0A\09\09\09}\0A\09\09\09else\0A\09\09\09{\0A\09\09\09\09// sync(fAngle) = sin(c*fAngle)/t\0A\09\09\09\09axis = angvel * ( b3Sin(0.5f * fAngle * timeStep) / fAngle);\0A\09\09\09}\0A\09\09\09b3Quat dorn;\0A\09\09\09dorn.x = axis.x;\0A\09\09\09dorn.y = axis.y;\0A\09\09\09dorn.z = axis.z;\0A\09\09\09dorn.w = b3Cos(fAngle * timeStep * 0.5f);\0A\09\09\09b3Quat orn0 = body->m_quat;\0A\09\09\09b3Quat predictedOrn = b3QuatMul(dorn, orn0);\0A\09\09\09predictedOrn = b3QuatNormalized(predictedOrn);\0A\09\09\09body->m_quat=predictedOrn;\0A\09\09}\0A\09\09//apply gravity\0A\09\09body->m_linVel += gravityAcceleration * timeStep;\0A\09\09//linear velocity\09\09\0A\09\09body->m_pos +=  body->m_linVel * timeStep;\0A\09\09\0A\09}\0A\09\0A}\0A__kernel void \0A  integrateTransformsKernel( __global b3RigidBodyData_t* bodies,const int numNodes, float timeStep, float angularDamping, float4 gravityAcceleration)\0A{\0A\09int nodeID = get_global_id(0);\0A\09\0A\09if( nodeID < numNodes)\0A\09{\0A\09\09integrateSingleTransform(bodies,nodeID, timeStep, angularDamping,gravityAcceleration);\0A\09}\0A}\0A\00", align 1
@.str.22 = private unnamed_addr constant [11680 x i8] c"#ifndef B3_UPDATE_AABBS_H\0A#define B3_UPDATE_AABBS_H\0A#ifndef B3_AABB_H\0A#define B3_AABB_H\0A#ifndef B3_FLOAT4_H\0A#define B3_FLOAT4_H\0A#ifndef B3_PLATFORM_DEFINITIONS_H\0A#define B3_PLATFORM_DEFINITIONS_H\0Astruct MyTest\0A{\0A\09int bla;\0A};\0A#ifdef __cplusplus\0A#else\0A//keep B3_LARGE_FLOAT*B3_LARGE_FLOAT < FLT_MAX\0A#define B3_LARGE_FLOAT 1e18f\0A#define B3_INFINITY 1e18f\0A#define b3Assert(a)\0A#define b3ConstArray(a) __global const a*\0A#define b3AtomicInc atomic_inc\0A#define b3AtomicAdd atomic_add\0A#define b3Fabs fabs\0A#define b3Sqrt native_sqrt\0A#define b3Sin native_sin\0A#define b3Cos native_cos\0A#define B3_STATIC\0A#endif\0A#endif\0A#ifdef __cplusplus\0A#else\0A\09typedef float4\09b3Float4;\0A\09#define b3Float4ConstArg const b3Float4\0A\09#define b3MakeFloat4 (float4)\0A\09float b3Dot3F4(b3Float4ConstArg v0,b3Float4ConstArg v1)\0A\09{\0A\09\09float4 a1 = b3MakeFloat4(v0.xyz,0.f);\0A\09\09float4 b1 = b3MakeFloat4(v1.xyz,0.f);\0A\09\09return dot(a1, b1);\0A\09}\0A\09b3Float4 b3Cross3(b3Float4ConstArg v0,b3Float4ConstArg v1)\0A\09{\0A\09\09float4 a1 = b3MakeFloat4(v0.xyz,0.f);\0A\09\09float4 b1 = b3MakeFloat4(v1.xyz,0.f);\0A\09\09return cross(a1, b1);\0A\09}\0A\09#define b3MinFloat4 min\0A\09#define b3MaxFloat4 max\0A\09#define b3Normalized(a) normalize(a)\0A#endif \0A\09\09\0Ainline bool b3IsAlmostZero(b3Float4ConstArg v)\0A{\0A\09if(b3Fabs(v.x)>1e-6 || b3Fabs(v.y)>1e-6 || b3Fabs(v.z)>1e-6)\09\0A\09\09return false;\0A\09return true;\0A}\0Ainline int    b3MaxDot( b3Float4ConstArg vec, __global const b3Float4* vecArray, int vecLen, float* dotOut )\0A{\0A    float maxDot = -B3_INFINITY;\0A    int i = 0;\0A    int ptIndex = -1;\0A    for( i = 0; i < vecLen; i++ )\0A    {\0A        float dot = b3Dot3F4(vecArray[i],vec);\0A            \0A        if( dot > maxDot )\0A        {\0A            maxDot = dot;\0A            ptIndex = i;\0A        }\0A    }\0A\09b3Assert(ptIndex>=0);\0A    if (ptIndex<0)\0A\09{\0A\09\09ptIndex = 0;\0A\09}\0A    *dotOut = maxDot;\0A    return ptIndex;\0A}\0A#endif //B3_FLOAT4_H\0A#ifndef B3_MAT3x3_H\0A#define B3_MAT3x3_H\0A#ifndef B3_QUAT_H\0A#define B3_QUAT_H\0A#ifndef B3_PLATFORM_DEFINITIONS_H\0A#ifdef __cplusplus\0A#else\0A#endif\0A#endif\0A#ifndef B3_FLOAT4_H\0A#ifdef __cplusplus\0A#else\0A#endif \0A#endif //B3_FLOAT4_H\0A#ifdef __cplusplus\0A#else\0A\09typedef float4\09b3Quat;\0A\09#define b3QuatConstArg const b3Quat\0A\09\0A\09\0Ainline float4 b3FastNormalize4(float4 v)\0A{\0A\09v = (float4)(v.xyz,0.f);\0A\09return fast_normalize(v);\0A}\0A\09\0Ainline b3Quat b3QuatMul(b3Quat a, b3Quat b);\0Ainline b3Quat b3QuatNormalized(b3QuatConstArg in);\0Ainline b3Quat b3QuatRotate(b3QuatConstArg q, b3QuatConstArg vec);\0Ainline b3Quat b3QuatInvert(b3QuatConstArg q);\0Ainline b3Quat b3QuatInverse(b3QuatConstArg q);\0Ainline b3Quat b3QuatMul(b3QuatConstArg a, b3QuatConstArg b)\0A{\0A\09b3Quat ans;\0A\09ans = b3Cross3( a, b );\0A\09ans += a.w*b+b.w*a;\0A//\09ans.w = a.w*b.w - (a.x*b.x+a.y*b.y+a.z*b.z);\0A\09ans.w = a.w*b.w - b3Dot3F4(a, b);\0A\09return ans;\0A}\0Ainline b3Quat b3QuatNormalized(b3QuatConstArg in)\0A{\0A\09b3Quat q;\0A\09q=in;\0A\09//return b3FastNormalize4(in);\0A\09float len = native_sqrt(dot(q, q));\0A\09if(len > 0.f)\0A\09{\0A\09\09q *= 1.f / len;\0A\09}\0A\09else\0A\09{\0A\09\09q.x = q.y = q.z = 0.f;\0A\09\09q.w = 1.f;\0A\09}\0A\09return q;\0A}\0Ainline float4 b3QuatRotate(b3QuatConstArg q, b3QuatConstArg vec)\0A{\0A\09b3Quat qInv = b3QuatInvert( q );\0A\09float4 vcpy = vec;\0A\09vcpy.w = 0.f;\0A\09float4 out = b3QuatMul(b3QuatMul(q,vcpy),qInv);\0A\09return out;\0A}\0Ainline b3Quat b3QuatInverse(b3QuatConstArg q)\0A{\0A\09return (b3Quat)(-q.xyz, q.w);\0A}\0Ainline b3Quat b3QuatInvert(b3QuatConstArg q)\0A{\0A\09return (b3Quat)(-q.xyz, q.w);\0A}\0Ainline float4 b3QuatInvRotate(b3QuatConstArg q, b3QuatConstArg vec)\0A{\0A\09return b3QuatRotate( b3QuatInvert( q ), vec );\0A}\0Ainline b3Float4 b3TransformPoint(b3Float4ConstArg point, b3Float4ConstArg translation, b3QuatConstArg  orientation)\0A{\0A\09return b3QuatRotate( orientation, point ) + (translation);\0A}\0A\09\0A#endif \0A#endif //B3_QUAT_H\0A#ifdef __cplusplus\0A#else\0Atypedef struct\0A{\0A\09b3Float4 m_row[3];\0A}b3Mat3x3;\0A#define b3Mat3x3ConstArg const b3Mat3x3\0A#define b3GetRow(m,row) (m.m_row[row])\0Ainline b3Mat3x3 b3QuatGetRotationMatrix(b3Quat quat)\0A{\0A\09b3Float4 quat2 = (b3Float4)(quat.x*quat.x, quat.y*quat.y, quat.z*quat.z, 0.f);\0A\09b3Mat3x3 out;\0A\09out.m_row[0].x=1-2*quat2.y-2*quat2.z;\0A\09out.m_row[0].y=2*quat.x*quat.y-2*quat.w*quat.z;\0A\09out.m_row[0].z=2*quat.x*quat.z+2*quat.w*quat.y;\0A\09out.m_row[0].w = 0.f;\0A\09out.m_row[1].x=2*quat.x*quat.y+2*quat.w*quat.z;\0A\09out.m_row[1].y=1-2*quat2.x-2*quat2.z;\0A\09out.m_row[1].z=2*quat.y*quat.z-2*quat.w*quat.x;\0A\09out.m_row[1].w = 0.f;\0A\09out.m_row[2].x=2*quat.x*quat.z-2*quat.w*quat.y;\0A\09out.m_row[2].y=2*quat.y*quat.z+2*quat.w*quat.x;\0A\09out.m_row[2].z=1-2*quat2.x-2*quat2.y;\0A\09out.m_row[2].w = 0.f;\0A\09return out;\0A}\0Ainline b3Mat3x3 b3AbsoluteMat3x3(b3Mat3x3ConstArg matIn)\0A{\0A\09b3Mat3x3 out;\0A\09out.m_row[0] = fabs(matIn.m_row[0]);\0A\09out.m_row[1] = fabs(matIn.m_row[1]);\0A\09out.m_row[2] = fabs(matIn.m_row[2]);\0A\09return out;\0A}\0A__inline\0Ab3Mat3x3 mtZero();\0A__inline\0Ab3Mat3x3 mtIdentity();\0A__inline\0Ab3Mat3x3 mtTranspose(b3Mat3x3 m);\0A__inline\0Ab3Mat3x3 mtMul(b3Mat3x3 a, b3Mat3x3 b);\0A__inline\0Ab3Float4 mtMul1(b3Mat3x3 a, b3Float4 b);\0A__inline\0Ab3Float4 mtMul3(b3Float4 a, b3Mat3x3 b);\0A__inline\0Ab3Mat3x3 mtZero()\0A{\0A\09b3Mat3x3 m;\0A\09m.m_row[0] = (b3Float4)(0.f);\0A\09m.m_row[1] = (b3Float4)(0.f);\0A\09m.m_row[2] = (b3Float4)(0.f);\0A\09return m;\0A}\0A__inline\0Ab3Mat3x3 mtIdentity()\0A{\0A\09b3Mat3x3 m;\0A\09m.m_row[0] = (b3Float4)(1,0,0,0);\0A\09m.m_row[1] = (b3Float4)(0,1,0,0);\0A\09m.m_row[2] = (b3Float4)(0,0,1,0);\0A\09return m;\0A}\0A__inline\0Ab3Mat3x3 mtTranspose(b3Mat3x3 m)\0A{\0A\09b3Mat3x3 out;\0A\09out.m_row[0] = (b3Float4)(m.m_row[0].x, m.m_row[1].x, m.m_row[2].x, 0.f);\0A\09out.m_row[1] = (b3Float4)(m.m_row[0].y, m.m_row[1].y, m.m_row[2].y, 0.f);\0A\09out.m_row[2] = (b3Float4)(m.m_row[0].z, m.m_row[1].z, m.m_row[2].z, 0.f);\0A\09return out;\0A}\0A__inline\0Ab3Mat3x3 mtMul(b3Mat3x3 a, b3Mat3x3 b)\0A{\0A\09b3Mat3x3 transB;\0A\09transB = mtTranspose( b );\0A\09b3Mat3x3 ans;\0A\09//\09why this doesn't run when 0ing in the for{}\0A\09a.m_row[0].w = 0.f;\0A\09a.m_row[1].w = 0.f;\0A\09a.m_row[2].w = 0.f;\0A\09for(int i=0; i<3; i++)\0A\09{\0A//\09a.m_row[i].w = 0.f;\0A\09\09ans.m_row[i].x = b3Dot3F4(a.m_row[i],transB.m_row[0]);\0A\09\09ans.m_row[i].y = b3Dot3F4(a.m_row[i],transB.m_row[1]);\0A\09\09ans.m_row[i].z = b3Dot3F4(a.m_row[i],transB.m_row[2]);\0A\09\09ans.m_row[i].w = 0.f;\0A\09}\0A\09return ans;\0A}\0A__inline\0Ab3Float4 mtMul1(b3Mat3x3 a, b3Float4 b)\0A{\0A\09b3Float4 ans;\0A\09ans.x = b3Dot3F4( a.m_row[0], b );\0A\09ans.y = b3Dot3F4( a.m_row[1], b );\0A\09ans.z = b3Dot3F4( a.m_row[2], b );\0A\09ans.w = 0.f;\0A\09return ans;\0A}\0A__inline\0Ab3Float4 mtMul3(b3Float4 a, b3Mat3x3 b)\0A{\0A\09b3Float4 colx = b3MakeFloat4(b.m_row[0].x, b.m_row[1].x, b.m_row[2].x, 0);\0A\09b3Float4 coly = b3MakeFloat4(b.m_row[0].y, b.m_row[1].y, b.m_row[2].y, 0);\0A\09b3Float4 colz = b3MakeFloat4(b.m_row[0].z, b.m_row[1].z, b.m_row[2].z, 0);\0A\09b3Float4 ans;\0A\09ans.x = b3Dot3F4( a, colx );\0A\09ans.y = b3Dot3F4( a, coly );\0A\09ans.z = b3Dot3F4( a, colz );\0A\09return ans;\0A}\0A#endif\0A#endif //B3_MAT3x3_H\0Atypedef struct b3Aabb b3Aabb_t;\0Astruct b3Aabb\0A{\0A\09union\0A\09{\0A\09\09float m_min[4];\0A\09\09b3Float4 m_minVec;\0A\09\09int m_minIndices[4];\0A\09};\0A\09union\0A\09{\0A\09\09float\09m_max[4];\0A\09\09b3Float4 m_maxVec;\0A\09\09int m_signedMaxIndices[4];\0A\09};\0A};\0Ainline void b3TransformAabb2(b3Float4ConstArg localAabbMin,b3Float4ConstArg localAabbMax, float margin,\0A\09\09\09\09\09\09b3Float4ConstArg pos,\0A\09\09\09\09\09\09b3QuatConstArg orn,\0A\09\09\09\09\09\09b3Float4* aabbMinOut,b3Float4* aabbMaxOut)\0A{\0A\09\09b3Float4 localHalfExtents = 0.5f*(localAabbMax-localAabbMin);\0A\09\09localHalfExtents+=b3MakeFloat4(margin,margin,margin,0.f);\0A\09\09b3Float4 localCenter = 0.5f*(localAabbMax+localAabbMin);\0A\09\09b3Mat3x3 m;\0A\09\09m = b3QuatGetRotationMatrix(orn);\0A\09\09b3Mat3x3 abs_b = b3AbsoluteMat3x3(m);\0A\09\09b3Float4 center = b3TransformPoint(localCenter,pos,orn);\0A\09\09\0A\09\09b3Float4 extent = b3MakeFloat4(b3Dot3F4(localHalfExtents,b3GetRow(abs_b,0)),\0A\09\09\09\09\09\09\09\09\09\09 b3Dot3F4(localHalfExtents,b3GetRow(abs_b,1)),\0A\09\09\09\09\09\09\09\09\09\09 b3Dot3F4(localHalfExtents,b3GetRow(abs_b,2)),\0A\09\09\09\09\09\09\09\09\09\09 0.f);\0A\09\09*aabbMinOut = center-extent;\0A\09\09*aabbMaxOut = center+extent;\0A}\0A/// conservative test for overlap between two aabbs\0Ainline bool b3TestAabbAgainstAabb(b3Float4ConstArg aabbMin1,b3Float4ConstArg aabbMax1,\0A\09\09\09\09\09\09\09\09b3Float4ConstArg aabbMin2, b3Float4ConstArg aabbMax2)\0A{\0A\09bool overlap = true;\0A\09overlap = (aabbMin1.x > aabbMax2.x || aabbMax1.x < aabbMin2.x) ? false : overlap;\0A\09overlap = (aabbMin1.z > aabbMax2.z || aabbMax1.z < aabbMin2.z) ? false : overlap;\0A\09overlap = (aabbMin1.y > aabbMax2.y || aabbMax1.y < aabbMin2.y) ? false : overlap;\0A\09return overlap;\0A}\0A#endif //B3_AABB_H\0A#ifndef B3_COLLIDABLE_H\0A#define B3_COLLIDABLE_H\0A#ifndef B3_FLOAT4_H\0A#ifdef __cplusplus\0A#else\0A#endif \0A#endif //B3_FLOAT4_H\0A#ifndef B3_QUAT_H\0A#ifdef __cplusplus\0A#else\0A#endif \0A#endif //B3_QUAT_H\0Aenum b3ShapeTypes\0A{\0A\09SHAPE_HEIGHT_FIELD=1,\0A\09SHAPE_CONVEX_HULL=3,\0A\09SHAPE_PLANE=4,\0A\09SHAPE_CONCAVE_TRIMESH=5,\0A\09SHAPE_COMPOUND_OF_CONVEX_HULLS=6,\0A\09SHAPE_SPHERE=7,\0A\09MAX_NUM_SHAPE_TYPES,\0A};\0Atypedef struct b3Collidable b3Collidable_t;\0Astruct b3Collidable\0A{\0A\09union {\0A\09\09int m_numChildShapes;\0A\09\09int m_bvhIndex;\0A\09};\0A\09union\0A\09{\0A\09\09float m_radius;\0A\09\09int\09m_compoundBvhIndex;\0A\09};\0A\09int m_shapeType;\0A\09union\0A\09{\0A\09\09int m_shapeIndex;\0A\09\09float m_height;\0A\09};\0A};\0Atypedef struct b3GpuChildShape b3GpuChildShape_t;\0Astruct b3GpuChildShape\0A{\0A\09b3Float4\09m_childPosition;\0A\09b3Quat\09\09m_childOrientation;\0A\09union\0A\09{\0A\09\09int\09\09\09m_shapeIndex;//used for SHAPE_COMPOUND_OF_CONVEX_HULLS\0A\09\09int\09\09\09m_capsuleAxis;\0A\09};\0A\09union \0A\09{\0A\09\09float\09\09m_radius;//used for childshape of SHAPE_COMPOUND_OF_SPHERES or SHAPE_COMPOUND_OF_CAPSULES\0A\09\09int\09\09\09m_numChildShapes;//used for compound shape\0A\09};\0A\09union \0A\09{\0A\09\09float\09\09m_height;//used for childshape of SHAPE_COMPOUND_OF_CAPSULES\0A\09\09int\09m_collidableShapeIndex;\0A\09};\0A\09int\09\09\09m_shapeType;\0A};\0Astruct b3CompoundOverlappingPair\0A{\0A\09int m_bodyIndexA;\0A\09int m_bodyIndexB;\0A//\09int\09m_pairType;\0A\09int m_childShapeIndexA;\0A\09int m_childShapeIndexB;\0A};\0A#endif //B3_COLLIDABLE_H\0A#ifndef B3_RIGIDBODY_DATA_H\0A#define B3_RIGIDBODY_DATA_H\0A#ifndef B3_FLOAT4_H\0A#ifdef __cplusplus\0A#else\0A#endif \0A#endif //B3_FLOAT4_H\0A#ifndef B3_QUAT_H\0A#ifdef __cplusplus\0A#else\0A#endif \0A#endif //B3_QUAT_H\0A#ifndef B3_MAT3x3_H\0A#ifdef __cplusplus\0A#else\0A#endif\0A#endif //B3_MAT3x3_H\0Atypedef struct b3RigidBodyData b3RigidBodyData_t;\0Astruct b3RigidBodyData\0A{\0A\09b3Float4\09\09\09\09m_pos;\0A\09b3Quat\09\09\09\09\09m_quat;\0A\09b3Float4\09\09\09\09m_linVel;\0A\09b3Float4\09\09\09\09m_angVel;\0A\09int \09\09\09\09\09m_collidableIdx;\0A\09float \09\09\09\09m_invMass;\0A\09float \09\09\09\09m_restituitionCoeff;\0A\09float \09\09\09\09m_frictionCoeff;\0A};\0Atypedef struct b3InertiaData b3InertiaData_t;\0Astruct b3InertiaData\0A{\0A\09b3Mat3x3 m_invInertiaWorld;\0A\09b3Mat3x3 m_initInvInertia;\0A};\0A#endif //B3_RIGIDBODY_DATA_H\0A\09\0Avoid b3ComputeWorldAabb(  int bodyId, __global const b3RigidBodyData_t* bodies, __global const  b3Collidable_t* collidables, __global const  b3Aabb_t* localShapeAABB, __global b3Aabb_t* worldAabbs)\0A{\0A\09__global const b3RigidBodyData_t* body = &bodies[bodyId];\0A\09b3Float4 position = body->m_pos;\0A\09b3Quat\09orientation = body->m_quat;\0A\09\0A\09int collidableIndex = body->m_collidableIdx;\0A\09int shapeIndex = collidables[collidableIndex].m_shapeIndex;\0A\09\09\0A\09if (shapeIndex>=0)\0A\09{\0A\09\09\09\09\0A\09\09b3Aabb_t localAabb = localShapeAABB[collidableIndex];\0A\09\09b3Aabb_t worldAabb;\0A\09\09\0A\09\09b3Float4 aabbAMinOut,aabbAMaxOut;\09\0A\09\09float margin = 0.f;\0A\09\09b3TransformAabb2(localAabb.m_minVec,localAabb.m_maxVec,margin,position,orientation,&aabbAMinOut,&aabbAMaxOut);\0A\09\09\0A\09\09worldAabb.m_minVec =aabbAMinOut;\0A\09\09worldAabb.m_minIndices[3] = bodyId;\0A\09\09worldAabb.m_maxVec = aabbAMaxOut;\0A\09\09worldAabb.m_signedMaxIndices[3] = body[bodyId].m_invMass==0.f? 0 : 1;\0A\09\09worldAabbs[bodyId] = worldAabb;\0A\09}\0A}\0A#endif //B3_UPDATE_AABBS_H\0A__kernel void initializeGpuAabbsFull(  const int numNodes, __global b3RigidBodyData_t* gBodies,__global b3Collidable_t* collidables, __global b3Aabb_t* plocalShapeAABB, __global b3Aabb_t* pAABB)\0A{\0A\09int nodeID = get_global_id(0);\0A\09if( nodeID < numNodes )\0A\09{\0A\09\09b3ComputeWorldAabb(nodeID, gBodies, collidables, plocalShapeAABB,pAABB);\0A\09}\0A}\0A__kernel void clearOverlappingPairsKernel(  __global int4* pairs, int numPairs)\0A{\0A\09int pairId = get_global_id(0);\0A\09if( pairId< numPairs )\0A\09{\0A\09\09pairs[pairId].z = 0xffffffff;\0A\09}\0A}\0A\00", align 1
@__const._ZN12b3LauncherCL8launch2DEiiii.lRange = private unnamed_addr constant [3 x i64] [i64 1, i64 1, i64 1], align 16
@__clewEnqueueNDRangeKernel = external local_unnamed_addr global ptr, align 8
@.str.23 = private unnamed_addr constant [27 x i8] c"Error: OpenCL status = %d\0A\00", align 1
@_ZTV13b3OpenCLArrayI9b3SapAabbE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI9b3SapAabbE, ptr @_ZN13b3OpenCLArrayI9b3SapAabbED2Ev, ptr @_ZN13b3OpenCLArrayI9b3SapAabbED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI9b3SapAabbE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI9b3SapAabbE }, comdat, align 8
@_ZTS13b3OpenCLArrayI9b3SapAabbE = linkonce_odr dso_local constant [28 x i8] c"13b3OpenCLArrayI9b3SapAabbE\00", comdat, align 1
@__clewCreateBuffer = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [85 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3OpenCL/ParallelPrimitives/b3OpenCLArray.h\00", align 1
@.str.25 = private unnamed_addr constant [22 x i8] c"OpenCL out-of-memory\0A\00", align 1
@__clewEnqueueCopyBuffer = external local_unnamed_addr global ptr, align 8
@__clewReleaseMemObject = external local_unnamed_addr global ptr, align 8
@_ZTV13b3OpenCLArrayI6b3Int4E = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI6b3Int4E, ptr @_ZN13b3OpenCLArrayI6b3Int4ED2Ev, ptr @_ZN13b3OpenCLArrayI6b3Int4ED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI6b3Int4E = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI6b3Int4E }, comdat, align 8
@_ZTS13b3OpenCLArrayI6b3Int4E = linkonce_odr dso_local constant [25 x i8] c"13b3OpenCLArrayI6b3Int4E\00", comdat, align 1
@_ZTV13b3OpenCLArrayI22b3GpuGenericConstraintE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI22b3GpuGenericConstraintE, ptr @_ZN13b3OpenCLArrayI22b3GpuGenericConstraintED2Ev, ptr @_ZN13b3OpenCLArrayI22b3GpuGenericConstraintED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI22b3GpuGenericConstraintE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI22b3GpuGenericConstraintE }, comdat, align 8
@_ZTS13b3OpenCLArrayI22b3GpuGenericConstraintE = linkonce_odr dso_local constant [42 x i8] c"13b3OpenCLArrayI22b3GpuGenericConstraintE\00", comdat, align 1
@.str.26 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3Common/b3AlignedObjectArray.h\00", align 1
@.str.27 = private unnamed_addr constant [44 x i8] c"b3AlignedObjectArray reserve out-of-memory\0A\00", align 1
@__clewEnqueueReadBuffer = external local_unnamed_addr global ptr, align 8
@__clewFinish = external local_unnamed_addr global ptr, align 8
@.str.28 = private unnamed_addr constant [33 x i8] c"copyToHostPointer invalid range\0A\00", align 1
@__clewEnqueueWriteBuffer = external local_unnamed_addr global ptr, align 8
@__clewSetKernelArg = external local_unnamed_addr global ptr, align 8
@_ZTV13b3OpenCLArrayI15b3RigidBodyDataE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI15b3RigidBodyDataE, ptr @_ZN13b3OpenCLArrayI15b3RigidBodyDataED2Ev, ptr @_ZN13b3OpenCLArrayI15b3RigidBodyDataED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI15b3RigidBodyDataE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI15b3RigidBodyDataE }, comdat, align 8
@_ZTS13b3OpenCLArrayI15b3RigidBodyDataE = linkonce_odr dso_local constant [35 x i8] c"13b3OpenCLArrayI15b3RigidBodyDataE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI13b3InertiaDataE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI13b3InertiaDataE, ptr @_ZN13b3OpenCLArrayI13b3InertiaDataED2Ev, ptr @_ZN13b3OpenCLArrayI13b3InertiaDataED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI13b3InertiaDataE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI13b3InertiaDataE }, comdat, align 8
@_ZTS13b3OpenCLArrayI13b3InertiaDataE = linkonce_odr dso_local constant [33 x i8] c"13b3OpenCLArrayI13b3InertiaDataE\00", comdat, align 1

@_ZN22b3GpuRigidBodyPipelineC1EP11_cl_contextP13_cl_device_idP17_cl_command_queueP16b3GpuNarrowPhaseP24b3GpuBroadphaseInterfaceP22b3DynamicBvhBroadphaseRK8b3Config = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr), ptr @_ZN22b3GpuRigidBodyPipelineC2EP11_cl_contextP13_cl_device_idP17_cl_command_queueP16b3GpuNarrowPhaseP24b3GpuBroadphaseInterfaceP22b3DynamicBvhBroadphaseRK8b3Config
@_ZN22b3GpuRigidBodyPipelineD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN22b3GpuRigidBodyPipelineD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_Z18b3ComputeWorldAabbiPK15b3RigidBodyDataPK12b3CollidablePK6b3AabbPS5_(i32 noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef writeonly captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64                       ; 3 uses
  %i.b = getelementptr inbounds [80 x i8], ptr %1, i64 %i.a ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.d = load i32, ptr %i.c, align 16, !tbaa !189
  %i.e = sext i32 %i.d to i64                     ; 2 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %2, i64 %i.e
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 12
  %i.h = load i32, ptr %i.g, align 4, !tbaa !30
  %i.i = icmp sgt i32 %i.h, -1
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.530.0.copyload = load float, ptr %.sroa.530.0..sroa_idx, align 8
  %i.k = getelementptr inbounds [32 x i8], ptr %3, i64 %i.e ; 2 uses
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.l = load <2 x float>, ptr %i.b, align 16
  %i.m = load <3 x float>, ptr %i.k, align 16     ; 2 uses
  %i.n = load <3 x float>, ptr %.sroa.623.0..sroa_idx, align 16 ; 2 uses
  %i.o = fsub <3 x float> %i.n, %i.m
  %i.p = fmul <3 x float> %i.o, splat (float 5.000000e-01)
  %i.q = fadd <3 x float> %i.p, zeroinitializer   ; 6 uses
  %i.r = fadd <3 x float> %i.m, %i.n
  %i.s = fmul <3 x float> %i.r, splat (float 5.000000e-01) ; 6 uses
  %5 = load <2 x float>, ptr %.sroa.526.0..sroa_idx, align 8 ; 2 uses
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %7 = load <2 x float>, ptr %i.j, align 16       ; 2 uses
  %8 = shufflevector <2 x float> %7, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 0> ; 4 uses
  %9 = load <3 x float>, ptr %i.j, align 16
  %10 = shufflevector <3 x float> %9, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 1>
  %.sroa.526.0.copyload = load float, ptr %.sroa.526.0..sroa_idx, align 8 ; 2 uses
  %foldExtExtBinop = fmul <4 x float> %8, %8
  %11 = extractelement <4 x float> %foldExtExtBinop, i64 0
  %12 = extractelement <2 x float> %7, i64 0      ; 2 uses
  %i.t = tail call float @llvm.fmuladd.f32(float %12, float %12, float %11)
  %i.u = tail call float @llvm.fmuladd.f32(float %.sroa.526.0.copyload, float %.sroa.526.0.copyload, float %i.t)
  %13 = extractelement <2 x float> %5, i64 1      ; 3 uses
  %14 = tail call noundef float @llvm.fmuladd.f32(float %13, float %13, float %i.u)
  %15 = fdiv float 2.000000e+00, %14
  %16 = insertelement <4 x float> poison, float %15, i64 0
  %17 = shufflevector <4 x float> %16, <4 x float> poison, <4 x i32> zeroinitializer
  %18 = fmul <4 x float> %10, %17                 ; 4 uses
  %19 = extractelement <4 x float> %18, i64 2
  %i.v = fmul float %13, %19                      ; 2 uses
  %20 = fmul <4 x float> %8, %18                  ; 5 uses
  %shift = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop33 = fmul <4 x float> %8, %shift
  %21 = extractelement <4 x float> %foldExtExtBinop33, i64 0 ; 2 uses
  %22 = shufflevector <4 x float> %18, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 1>
  %23 = fmul <4 x float> %6, %22                  ; 3 uses
  %24 = fadd <4 x float> %20, %23                 ; 3 uses
  %25 = extractelement <4 x float> %24, i64 0
  %26 = fsub float 1.000000e+00, %25
  %27 = shufflevector <4 x float> %20, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.w = insertelement <2 x float> %27, float 1.000000e+00, i64 1
  %28 = shufflevector <4 x float> %24, <4 x float> %23, <2 x i32> <i32 7, i32 2>
  %i.x = fsub <2 x float> %i.w, %28               ; 2 uses
  %i.y = fsub float %21, %i.v
  %foldExtExtBinop35 = fsub <4 x float> %20, %23
  %29 = extractelement <4 x float> %foldExtExtBinop35, i64 1 ; 2 uses
  %i.z = fadd float %21, %i.v                     ; 2 uses
  %shift37 = shufflevector <4 x float> %20, <4 x float> poison, <4 x i32> <i32 2, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop38 = fadd <4 x float> %shift37, %20
  %30 = extractelement <4 x float> %foldExtExtBinop38, i64 0
  %i.aa = fsub float 1.000000e+00, %30            ; 2 uses
  %31 = shufflevector <4 x float> %24, <4 x float> poison, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.ab = insertelement <2 x float> %31, float %26, i64 0 ; 2 uses
  %i.ac = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ab)
  %i.ad = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.x)
  %i.ae = insertelement <2 x float> %31, float %i.y, i64 1 ; 2 uses
  %i.af = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.ae)
  %i.ag = tail call noundef float @llvm.fabs.f32(float %29)
  %i.ah = tail call noundef float @llvm.fabs.f32(float %i.z)
  %i.ai = tail call noundef float @llvm.fabs.f32(float %i.aa)
  %i.aj = shufflevector <3 x float> %i.s, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ak = fmul <2 x float> %i.x, %i.aj
  %i.al = shufflevector <3 x float> %i.s, <3 x float> poison, <2 x i32> zeroinitializer
  %i.am = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.al, <2 x float> %i.ab, <2 x float> %i.ak)
  %i.an = shufflevector <3 x float> %i.s, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ao = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.an, <2 x float> %i.ae, <2 x float> %i.am)
  %i.ap = extractelement <3 x float> %i.s, i64 1
  %i.aq = fmul float %i.z, %i.ap
  %i.ar = extractelement <3 x float> %i.s, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.ar, float %29, float %i.aq)
  %i.at = extractelement <3 x float> %i.s, i64 2
  %i.au = tail call noundef float @llvm.fmuladd.f32(float %i.at, float %i.aa, float %i.as)
  %i.av = fadd <2 x float> %i.l, %i.ao            ; 2 uses
  %i.aw = fadd float %.sroa.530.0.copyload, %i.au ; 2 uses
  %i.ax = shufflevector <3 x float> %i.q, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ay = fmul <2 x float> %i.ad, %i.ax
  %i.az = shufflevector <3 x float> %i.q, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ba = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.az, <2 x float> %i.ac, <2 x float> %i.ay)
  %i.bb = shufflevector <3 x float> %i.q, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bb, <2 x float> %i.af, <2 x float> %i.ba) ; 2 uses
  %i.bd = extractelement <3 x float> %i.q, i64 1
  %i.be = fmul float %i.ah, %i.bd
  %i.bf = extractelement <3 x float> %i.q, i64 0
  %i.bg = tail call float @llvm.fmuladd.f32(float %i.bf, float %i.ag, float %i.be)
  %i.bh = extractelement <3 x float> %i.q, i64 2
  %i.bi = tail call noundef float @llvm.fmuladd.f32(float %i.bh, float %i.ai, float %i.bg) ; 2 uses
  %i.bj = fsub <2 x float> %i.av, %i.bc
  %i.bk = fsub float %i.aw, %i.bi
  %i.bl = fadd <2 x float> %i.av, %i.bc
  %i.bm = fadd float %i.aw, %i.bi
  %i.bn = getelementptr inbounds [80 x i8], ptr %i.b, i64 %i.a
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 68
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !31
  %i.bq = fcmp une float %i.bp, 0.000000e+00
  %i.br = zext i1 %i.bq to i32
  %i.bs = getelementptr inbounds [32 x i8], ptr %4, i64 %i.a ; 6 uses
  store <2 x float> %i.bj, ptr %i.bs, align 16
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  store float %i.bk, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 12
  store i32 %0, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !30
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  store <2 x float> %i.bl, ptr %.sroa.5.0..sroa_idx, align 16
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  store float %i.bm, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 28
  store i32 %i.br, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !30
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22b3GpuRigidBodyPipelineC2EP11_cl_contextP13_cl_device_idP17_cl_command_queueP16b3GpuNarrowPhaseP24b3GpuBroadphaseInterfaceP22b3DynamicBvhBroadphaseRK8b3Config(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(48) %7) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV22b3GpuRigidBodyPipeline, i64 16), ptr %0, align 8, !tbaa !33
  %i.b = tail call noalias noundef nonnull dereferenceable(304) ptr @_Znwm(i64 noundef 304) #20 ; 18 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store i8 1, ptr %i.c, align 8, !tbaa !39
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr null, ptr %i.d, align 8, !tbaa !40
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  store i32 0, ptr %i.e, align 4, !tbaa !41
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store i32 0, ptr %i.f, align 8, !tbaa !42
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store i8 1, ptr %i.g, align 8, !tbaa !46
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr null, ptr %i.h, align 8, !tbaa !47
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 164
  store i32 0, ptr %i.i, align 4, !tbaa !48
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store i32 0, ptr %i.j, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store i8 1, ptr %i.k, align 8, !tbaa !54
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr null, ptr %i.l, align 8, !tbaa !55
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 196
  store i32 0, ptr %i.m, align 4, !tbaa !56
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store i32 0, ptr %i.n, align 8, !tbaa !57
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 256
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 16 uses
  store ptr %i.b, ptr %i.p, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 224
  store i32 0, ptr %i.q, align 16, !tbaa !78
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.o, ptr noundef nonnull align 4 dereferenceable(48) %7, i64 48, i1 false), !tbaa.struct !190
  store ptr %1, ptr %i.b, align 16, !tbaa !80
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.r, align 8, !tbaa !191
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %3, ptr %i.s, align 16, !tbaa !81
  %i.t = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef 448, i32 noundef 16) ; 3 uses
  invoke void @_ZN17b3PgsJacobiSolverC1Eb(ptr noundef nonnull align 8 dereferenceable(448) %i.t, i1 noundef zeroext true)
          to label %bb.b unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.u = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  store ptr %i.t, ptr %i.v, align 16, !tbaa !82
  %i.w = tail call noalias noundef nonnull dereferenceable(232) ptr @_Znwm(i64 noundef 232) #20 ; 3 uses
  invoke void @_ZN24b3GpuPgsConstraintSolverC1EP11_cl_contextP13_cl_device_idP17_cl_command_queueb(ptr noundef nonnull align 8 dereferenceable(228) %i.w, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext true)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.x = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  store ptr %i.w, ptr %i.y, align 8, !tbaa !83
  %i.z = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 3 uses
  %i.aa = load i32, ptr %7, align 4, !tbaa !192
  %i.ab = sext i32 %i.aa to i64
  invoke void @_ZN13b3OpenCLArrayI9b3SapAabbEC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.z, ptr noundef %1, ptr noundef %3, i64 noundef %i.ab, i1 noundef zeroext true)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.ac = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 104
  store ptr %i.z, ptr %i.ad, align 8, !tbaa !84
  %i.ae = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.ag = load i32, ptr %i.af, align 4, !tbaa !193
  %i.ah = sext i32 %i.ag to i64
  invoke void @_ZN13b3OpenCLArrayI6b3Int4EC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.ae, ptr noundef %1, ptr noundef %3, i64 noundef %i.ah, i1 noundef zeroext true)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.ai = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 144
  store ptr %i.ae, ptr %i.aj, align 16, !tbaa !85
  %i.ak = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #20 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI22b3GpuGenericConstraintE, i64 16), ptr %i.ak, align 8, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.am, align 8, !tbaa !89
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %3, ptr %i.an, align 8, !tbaa !90
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i8 1, ptr %i.ao, align 8, !tbaa !194
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 49
  store i8 1, ptr %i.ap, align 1, !tbaa !91
  %i.aq = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 152
  store ptr %i.ak, ptr %i.ar, align 8, !tbaa !92
  %i.as = tail call noalias noundef nonnull dereferenceable(40) ptr @_Znwm(i64 noundef 40) #20 ; 3 uses
  %i.at = load i32, ptr %i.af, align 4, !tbaa !193
  invoke void @_ZN24b3GpuJacobiContactSolverC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(40) %i.as, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.at)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 72
  store ptr %i.as, ptr %i.av, align 8, !tbaa !93
  %i.aw = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #20 ; 3 uses
  %i.ax = load i32, ptr %i.af, align 4, !tbaa !193
  invoke void @_ZN21b3GpuPgsContactSolverC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(24) %i.aw, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %i.ax)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.ay = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 64
  store ptr %i.aw, ptr %i.az, align 16, !tbaa !94
  %i.ba = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #20 ; 3 uses
  invoke void @_ZN12b3GpuRaycastC1EP11_cl_contextP13_cl_device_idP17_cl_command_queue(ptr noundef nonnull align 8 dereferenceable(16) %i.ba, ptr noundef %1, ptr noundef %2, ptr noundef %3)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.bb = load ptr, ptr %i.p, align 8, !tbaa !60  ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 80
  store ptr %i.ba, ptr %i.bc, align 16, !tbaa !95
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 96
  store ptr %6, ptr %i.bd, align 16, !tbaa !96
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 88
  store ptr %5, ptr %i.be, align 8, !tbaa !97
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bb, i64 232
  store ptr %4, ptr %i.bf, align 8, !tbaa !98
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bb, i64 240
  store <4 x float> <float 0.000000e+00, float -9.800000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.bg, align 16, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  store i32 0, ptr %i.a, align 4, !tbaa !79
  %i.bh = load ptr, ptr %i.p, align 8, !tbaa !60  ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 16, !tbaa !80
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !191
  %i.bl = call noundef ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef %i.bi, ptr noundef %i.bk, ptr noundef nonnull @.str.21, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i1 noundef zeroext false) ; 2 uses
  %i.bm = load ptr, ptr %i.p, align 8, !tbaa !60  ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 16, !tbaa !80
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !tbaa !191
  %i.bq = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %i.bn, ptr noundef %i.bp, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, ptr noundef %i.bl, ptr noundef nonnull @.str)
  %i.br = load ptr, ptr %i.p, align 8, !tbaa !60
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 24
  store ptr %i.bq, ptr %i.bs, align 8, !tbaa !99
  %i.bt = load ptr, ptr @__clewReleaseProgram, align 8, !tbaa !100
  %i.bu = call i32 %i.bt(ptr noundef %i.bl)       ; 0 uses
  %i.bv = load ptr, ptr %i.p, align 8, !tbaa !60  ; 2 uses
  %i.bw = load ptr, ptr %i.bv, align 16, !tbaa !80
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bv, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !191
end_hunk_0
begin_hunk_1_@_ZN13b3OpenCLArrayI9b3SapAabbE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb:bb.a

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.l = load i8, ptr %i.k, align 1, !tbaa !106, !range !109, !noundef !119
  %i.m = trunc nuw i8 %i.l to i1
  br i1 %i.m, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #21
  %i.n = shl nsw i64 %i.d, 5
  %i.o = load ptr, ptr @__clewCreateBuffer, align 8, !tbaa !100
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !104
  %i.r = call ptr %i.o(ptr noundef %i.q, i64 noundef 1, i64 noundef %i.n, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !311
  %i.s = load i32, ptr %i.a, align 4, !tbaa !79
  %.not.i.i = icmp eq i32 %i.s, 0                 ; 2 uses
  br i1 %.not.i.i, label %_ZNK13b3OpenCLArrayI9b3SapAabbE8copyToCLEP7_cl_memmmm.exit.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.d
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.24, i32 noundef 166)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.25)
  br label %_ZNK13b3OpenCLArrayI9b3SapAabbE8copyToCLEP7_cl_memmmm.exit.i.i

_ZNK13b3OpenCLArrayI9b3SapAabbE8copyToCLEP7_cl_memmmm.exit.i.i: ; preds = %bb.d, %.thread.i.i
  %.01017.i.i = phi i64 [ 0, %.thread.i.i ], [ %i.d, %bb.d ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !108  ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.u, null
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.w = load i8, ptr %i.v, align 8, !range !109
  %i.x = trunc nuw i8 %i.w to i1
  %or.cond.i.i.i = select i1 %.not.i.i.i, i1 %i.x, i1 false
  br i1 %or.cond.i.i.i, label %bb.e, label %_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.i

bb.e:                                             ; preds = %_ZNK13b3OpenCLArrayI9b3SapAabbE8copyToCLEP7_cl_memmmm.exit.i.i
  %i.y = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !100
  %i.z = call i32 %i.y(ptr noundef nonnull %i.u), !inline_history !312 ; 0 uses
  br label %_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.i

bb.f:                                             ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !tbaa !108 ; 2 uses
  %.not.i12.i.i = icmp ne ptr %i.ab, null
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load i8, ptr %i.ac, align 8, !range !109
  %i.ae = trunc nuw i8 %i.ad to i1
  %or.cond.i13.i.i = select i1 %.not.i12.i.i, i1 %i.ae, i1 false
  br i1 %or.cond.i13.i.i, label %bb.g, label %_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.thread12.i

bb.g:                                             ; preds = %bb.f
  %i.af = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !100
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %i.ab), !inline_history !312 ; 0 uses
  br label %_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.thread12.i

_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.thread12.i: ; preds = %bb.g, %bb.f
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.h

_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.i: ; preds = %bb.e, %_ZNK13b3OpenCLArrayI9b3SapAabbE8copyToCLEP7_cl_memmmm.exit.i.i
  store ptr %i.r, ptr %i.t, align 8, !tbaa !108
  store i64 %.01017.i.i, ptr %i.h, align 8, !tbaa !110
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #21
  br i1 %.not.i.i, label %_ZN13b3OpenCLArrayI9b3SapAabbE6resizeEmb.exit, label %bb.h

bb.h:                                             ; preds = %_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.i, %_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.thread12.i
  br label %_ZN13b3OpenCLArrayI9b3SapAabbE6resizeEmb.exit

_ZN13b3OpenCLArrayI9b3SapAabbE6resizeEmb.exit:    ; preds = %bb.a, %bb.b, %_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.i, %bb.h
  %storemerge.i = phi i64 [ 0, %bb.h ], [ %i.d, %bb.b ], [ %i.d, %bb.a ], [ %i.d, %_ZN13b3OpenCLArrayI9b3SapAabbE7reserveEmb.exit.i ]
  store i64 %storemerge.i, ptr %i.e, align 8, !tbaa !107
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %_ZN13b3OpenCLArrayI9b3SapAabbE19copyFromHostPointerEPKS0_mmb.exit, label %bb.i

bb.i:                                             ; preds = %_ZN13b3OpenCLArrayI9b3SapAabbE6resizeEmb.exit
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !40
  %i.aj = shl nsw i64 %i.d, 5
  %i.ak = load ptr, ptr @__clewEnqueueWriteBuffer, align 8, !tbaa !100
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !105
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !108
  %i.ap = call i32 %i.ak(ptr noundef %i.am, ptr noundef %i.ao, i32 noundef 0, i64 noundef 0, i64 noundef %i.aj, ptr noundef nonnull %i.ai, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !313 ; 0 uses
  br i1 %2, label %bb.j, label %_ZN13b3OpenCLArrayI9b3SapAabbE19copyFromHostPointerEPKS0_mmb.exit

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr @__clewFinish, align 8, !tbaa !100
  %i.ar = load ptr, ptr %i.al, align 8, !tbaa !105
  %i.as = call i32 %i.aq(ptr noundef %i.ar), !inline_history !313 ; 0 uses
  br label %_ZN13b3OpenCLArrayI9b3SapAabbE19copyFromHostPointerEPKS0_mmb.exit

_ZN13b3OpenCLArrayI9b3SapAabbE19copyFromHostPointerEPKS0_mmb.exit: ; preds = %bb.j, %bb.i, %_ZN13b3OpenCLArrayI9b3SapAabbE6resizeEmb.exit
  ret void
}

declare noundef ptr @_ZN16b3GpuNarrowPhase17getCollidablesGpuEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

declare noundef ptr @_ZN16b3GpuNarrowPhase26getAabbLocalSpaceBufferGpuEv(ptr noundef nonnull align 8 dereferenceable(56)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN22b3GpuRigidBodyPipeline13getBodyBufferEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = tail call noundef ptr @_ZN16b3GpuNarrowPhase12getBodiesGpuEv(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  ret ptr %i.e
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZNK22b3GpuRigidBodyPipeline12getNumBodiesEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 232
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !98
  %i.e = tail call noundef i32 @_ZNK16b3GpuNarrowPhase17getNumRigidBodiesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.d)
  ret i32 %i.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @_ZN22b3GpuRigidBodyPipeline10setGravityEPKf(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #16 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load float, ptr %1, align 4, !tbaa !132
  store float %i.f, ptr %i.c, align 16, !tbaa !30
  %i.g = load float, ptr %i.d, align 4, !tbaa !132
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 244
  store float %i.g, ptr %i.h, align 4, !tbaa !30
  %i.i = load float, ptr %i.e, align 4, !tbaa !132
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.k = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.i, i64 0
  store <2 x float> %i.k, ptr %i.j, align 8, !tbaa !30
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22b3GpuRigidBodyPipeline21copyConstraintsToHostEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !92
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  tail call void @_ZNK13b3OpenCLArrayI22b3GpuGenericConstraintE10copyToHostER20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.d, ptr noundef nonnull align 8 dereferenceable(25) %i.e, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN22b3GpuRigidBodyPipeline22writeAllInstancesToGpuEv(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !84
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  tail call void @_ZN13b3OpenCLArrayI9b3SapAabbE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.d, ptr noundef nonnull align 8 dereferenceable(25) %i.e, i1 noundef zeroext true)
  %i.f = load ptr, ptr %i.a, align 8, !tbaa !60   ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !92
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 160
  tail call void @_ZN13b3OpenCLArrayI22b3GpuGenericConstraintE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.h, ptr noundef nonnull align 8 dereferenceable(25) %i.i, i1 noundef zeroext true)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN22b3GpuRigidBodyPipeline23registerPhysicsInstanceEfPKfS1_iib(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, float noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, i32 noundef %5, i1 noundef zeroext %6) local_unnamed_addr #12 align 2 {
bb.a:
  %7 = alloca %class.b3Vector3, align 16          ; 9 uses
  %8 = alloca %class.b3Vector3, align 16          ; 9 uses
  %9 = alloca %struct.b3SapAabb, align 16         ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #21
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #21
  %i.a = icmp sgt i32 %4, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %8, i64 8
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 7 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 232
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !98
  %i.h = tail call noundef nonnull align 16 dereferenceable(32) ptr @_ZNK16b3GpuNarrowPhase17getLocalSpaceAabbEi(ptr noundef nonnull align 8 dereferenceable(56) %i.g, i32 noundef %4) ; 2 uses
  %.sroa.613.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load float, ptr %i.i, align 4, !tbaa !132
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 12
  %i.n = load float, ptr %i.m, align 4, !tbaa !132 ; 5 uses
  %i.o = load <3 x float>, ptr %i.h, align 16     ; 2 uses
  %i.p = load <3 x float>, ptr %.sroa.613.0..sroa_idx, align 16 ; 2 uses
  %i.q = load <2 x float>, ptr %2, align 4, !tbaa !132
  %i.r = load float, ptr %3, align 4, !tbaa !132  ; 6 uses
  %i.s = load float, ptr %i.k, align 4, !tbaa !132 ; 5 uses
  %i.t = load float, ptr %i.l, align 4, !tbaa !132 ; 4 uses
  %i.u = fmul float %i.s, %i.s
  %i.v = tail call float @llvm.fmuladd.f32(float %i.r, float %i.r, float %i.u)
  %i.w = tail call float @llvm.fmuladd.f32(float %i.t, float %i.t, float %i.v)
  %i.x = tail call noundef float @llvm.fmuladd.f32(float %i.n, float %i.n, float %i.w)
  %i.y = fdiv float 2.000000e+00, %i.x            ; 3 uses
  %i.z = fmul float %i.r, %i.y                    ; 2 uses
  %i.aa = fmul float %i.s, %i.y                   ; 3 uses
  %i.ab = fmul float %i.t, %i.y                   ; 4 uses
  %i.ac = fmul float %i.n, %i.z                   ; 2 uses
  %i.ad = fmul float %i.n, %i.aa                  ; 2 uses
  %i.ae = fmul float %i.r, %i.z                   ; 2 uses
  %i.af = fmul float %i.r, %i.aa                  ; 2 uses
  %i.ag = fmul float %i.r, %i.ab                  ; 2 uses
  %i.ah = fmul float %i.s, %i.aa                  ; 2 uses
  %i.ai = fmul float %i.s, %i.ab                  ; 2 uses
  %i.aj = fmul float %i.t, %i.ab                  ; 2 uses
  %i.ak = fadd float %i.ah, %i.aj
  %i.al = fsub float 1.000000e+00, %i.ak
  %i.am = fadd float %i.ag, %i.ad
  %i.an = fmul float %i.n, %i.ab                  ; 2 uses
  %10 = fadd float %i.af, %i.an
  %i.ao = fadd float %i.ae, %i.aj
  %i.ap = insertelement <2 x float> <float poison, float 1.000000e+00>, float %i.af, i64 0
  %i.aq = insertelement <2 x float> poison, float %i.an, i64 0
  %i.ar = insertelement <2 x float> %i.aq, float %i.ao, i64 1
  %i.as = fsub <2 x float> %i.ap, %i.ar           ; 2 uses
  %i.at = fsub float %i.ai, %i.ac
  %i.au = fsub float %i.ag, %i.ad                 ; 2 uses
  %i.av = fadd float %i.ai, %i.ac                 ; 2 uses
  %i.aw = fadd float %i.ae, %i.ah
  %i.ax = fsub float 1.000000e+00, %i.aw          ; 2 uses
  %i.ay = fsub <3 x float> %i.p, %i.o
  %i.az = fmul <3 x float> %i.ay, splat (float 5.000000e-01)
  %i.ba = fadd <3 x float> %i.az, splat (float f0x3C23D70A) ; 6 uses
  %i.bb = fadd <3 x float> %i.o, %i.p
  %i.bc = fmul <3 x float> %i.bb, splat (float 5.000000e-01) ; 6 uses
  %i.bd = insertelement <2 x float> poison, float %i.al, i64 0
  %i.be = insertelement <2 x float> %i.bd, float %10, i64 1 ; 2 uses
  %i.bf = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.be)
  %i.bg = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.as)
  %i.bh = insertelement <2 x float> poison, float %i.am, i64 0
  %i.bi = insertelement <2 x float> %i.bh, float %i.at, i64 1 ; 2 uses
  %i.bj = tail call <2 x float> @llvm.fabs.v2f32(<2 x float> %i.bi)
  %i.bk = tail call noundef float @llvm.fabs.f32(float %i.au)
  %i.bl = tail call noundef float @llvm.fabs.f32(float %i.av)
  %i.bm = tail call noundef float @llvm.fabs.f32(float %i.ax)
  %i.bn = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.bo = fmul <2 x float> %i.bn, %i.as
  %i.bp = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> zeroinitializer
  %i.bq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bp, <2 x float> %i.be, <2 x float> %i.bo)
  %i.br = shufflevector <3 x float> %i.bc, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.bs = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.br, <2 x float> %i.bi, <2 x float> %i.bq)
  %i.bt = extractelement <3 x float> %i.bc, i64 1
  %i.bu = fmul float %i.bt, %i.av
  %i.bv = extractelement <3 x float> %i.bc, i64 0
  %i.bw = tail call float @llvm.fmuladd.f32(float %i.bv, float %i.au, float %i.bu)
  %i.bx = extractelement <3 x float> %i.bc, i64 2
  %i.by = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.ax, float %i.bw)
  %i.bz = fadd <2 x float> %i.q, %i.bs            ; 2 uses
  %i.ca = fadd float %i.j, %i.by                  ; 2 uses
  %i.cb = shufflevector <3 x float> %i.ba, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.cc = fmul <2 x float> %i.cb, %i.bg
  %i.cd = shufflevector <3 x float> %i.ba, <3 x float> poison, <2 x i32> zeroinitializer
  %i.ce = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cd, <2 x float> %i.bf, <2 x float> %i.cc)
  %i.cf = shufflevector <3 x float> %i.ba, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.cg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.bj, <2 x float> %i.ce) ; 2 uses
  %i.ch = extractelement <3 x float> %i.ba, i64 1
  %i.ci = fmul float %i.ch, %i.bl
  %i.cj = extractelement <3 x float> %i.ba, i64 0
  %i.ck = tail call float @llvm.fmuladd.f32(float %i.cj, float %i.bk, float %i.ci)
  %i.cl = extractelement <3 x float> %i.ba, i64 2
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %i.cl, float %i.bm, float %i.ck) ; 2 uses
  %i.cn = fsub <2 x float> %i.bz, %i.cg
  %i.co = fsub float %i.ca, %i.cm
  %.sroa.3.12.vec.insert.i.i30.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.co, i64 0
  store <2 x float> %i.cn, ptr %7, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i30.i, ptr %i.c, align 8, !tbaa !30
  %i.cp = fadd <2 x float> %i.cg, %i.bz
  %i.cq = fadd float %i.cm, %i.ca
  %.sroa.3.12.vec.insert.i.i35.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.cq, i64 0
  store <2 x float> %i.cp, ptr %8, align 16
  store <2 x float> %.sroa.3.12.vec.insert.i.i35.i, ptr %i.b, align 8, !tbaa !30
  %i.cr = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 232
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !98
  %i.cu = tail call noundef i32 @_ZNK16b3GpuNarrowPhase17getNumRigidBodiesEv(ptr noundef nonnull align 8 dereferenceable(56) %i.ct) ; 0 uses
  %i.cv = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 232
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !98
  %i.cy = call noundef i32 @_ZN16b3GpuNarrowPhase17registerRigidBodyEifPKfS1_S1_S1_b(ptr noundef nonnull align 8 dereferenceable(56) %i.cx, i32 noundef %4, float noundef %1, ptr noundef nonnull %2, ptr noundef nonnull %3, ptr noundef nonnull %7, ptr noundef nonnull %8, i1 noundef zeroext false) ; 9 uses
  %i.cz = icmp sgt i32 %i.cy, -1
  br i1 %i.cz, label %bb.d, label %bb.k

bb.c:                                             ; preds = %bb.a
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 622)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.20)
  br label %bb.k

bb.d:                                             ; preds = %bb.b
  %i.da = load i8, ptr @gUseDbvt, align 1, !tbaa !135, !range !109, !noundef !119
  %i.db = trunc nuw i8 %i.da to i1
  br i1 %i.db, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %i.dc = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 96
  %i.de = load ptr, ptr %i.dd, align 16, !tbaa !96
  %i.df = call noundef ptr @_ZN22b3DynamicBvhBroadphase11createProxyERK9b3Vector3S2_iPvii(ptr noundef nonnull align 8 dereferenceable(315) %i.de, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, i32 noundef %i.cy, ptr noundef null, i32 noundef 1, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #21
  %i.dg = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.dh = getelementptr inbounds nuw i8, ptr %9, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %9, ptr noundef nonnull align 16 dereferenceable(12) %7, i64 12, i1 false), !tbaa !30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(12) %i.dg, ptr noundef nonnull align 16 dereferenceable(12) %8, i64 12, i1 false), !tbaa !30
  store i32 %i.cy, ptr %i.dh, align 4, !tbaa !30
  %i.di = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 112
  call void @_ZN20b3AlignedObjectArrayI9b3SapAabbE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %i.dj, ptr noundef nonnull align 16 dereferenceable(32) %9)
  br i1 %6, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.dk = load ptr, ptr %i.d, align 8, !tbaa !60  ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 104
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !84
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dk, i64 112
  call void @_ZN13b3OpenCLArrayI9b3SapAabbE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.dm, ptr noundef nonnull align 8 dereferenceable(25) %i.dn, i1 noundef zeroext true)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #21
  br label %bb.k

bb.h:                                             ; preds = %bb.d
  %i.do = fcmp une float %1, 0.000000e+00
  %i.dp = load ptr, ptr %i.d, align 8, !tbaa !60
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 88
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !97 ; 3 uses
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !33 ; 2 uses
  br i1 %i.do, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.ds, i64 16
  %i.du = load ptr, ptr %i.dt, align 8
  call void %i.du(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, i32 noundef %i.cy, i32 noundef 1, i32 noundef 1)
  br label %bb.k

bb.j:                                             ; preds = %bb.h
  %i.dv = getelementptr inbounds nuw i8, ptr %i.ds, i64 24
  %i.dw = load ptr, ptr %i.dv, align 8
  call void %i.dw(ptr noundef nonnull align 8 dereferenceable(8) %i.dr, ptr noundef nonnull align 16 dereferenceable(16) %7, ptr noundef nonnull align 16 dereferenceable(16) %8, i32 noundef %i.cy, i32 noundef 1, i32 noundef 1)
  br label %bb.k

bb.k:                                             ; preds = %bb.b, %bb.i, %bb.j, %bb.g, %bb.c
  %.031 = phi i32 [ -1, %bb.c ], [ %i.cy, %bb.g ], [ %i.cy, %bb.j ], [ %i.cy, %bb.i ], [ %i.cy, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #21
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #21
  ret i32 %.031
}

declare noundef nonnull align 16 dereferenceable(32) ptr @_ZNK16b3GpuNarrowPhase17getLocalSpaceAabbEi(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef) local_unnamed_addr #5

declare void @b3OutputErrorMessageVarArgsInternal(ptr noundef, ...) local_unnamed_addr #5

declare noundef i32 @_ZN16b3GpuNarrowPhase17registerRigidBodyEifPKfS1_S1_S1_b(ptr noundef nonnull align 8 dereferenceable(56), i32 noundef, float noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #5

declare noundef ptr @_ZN22b3DynamicBvhBroadphase11createProxyERK9b3Vector3S2_iPvii(ptr noundef nonnull align 8 dereferenceable(315), ptr noundef nonnull align 16 dereferenceable(16), ptr noundef nonnull align 16 dereferenceable(16), i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI9b3SapAabbE9push_backERKS0_(ptr noundef nonnull align 8 dereferenceable(25) %0, ptr noundef nonnull align 16 dereferenceable(32) %1) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 6 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !41   ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !42
  %i.e = icmp eq i32 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE7reserveEi.exit

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq i32 %i.b, 0
  %i.f = shl nsw i32 %i.b, 1
  %i.g = select i1 %.not.i, i32 1, i32 %i.f       ; 6 uses
  %i.h = icmp slt i32 %i.b, %i.g
  br i1 %i.h, label %bb.c, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE7reserveEi.exit

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq i32 %i.g, 0
  br i1 %.not.i.i, label %.split7.i, label %_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i

_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i: ; preds = %bb.c
  %i.i = sext i32 %i.g to i64
  %i.j = shl nsw i64 %i.i, 5
  %i.k = tail call noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.j, i32 noundef 16) ; 7 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %.split7.i, label %.split.i

.split.i:                                         ; preds = %_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i
  %i.m = load i32, ptr %i.a, align 4, !tbaa !41   ; 4 uses
  %i.n = icmp sgt i32 %i.m, 0
  br i1 %i.n, label %.lr.ph.i.i, label %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i

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
  %i.r = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.s = getelementptr inbounds nuw [32 x i8], ptr %i.r, i64 %indvars.iv.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.q, ptr noundef nonnull align 16 dereferenceable(32) %i.s, i64 32, i1 false)
  %indvars.iv.next.i.i = or disjoint i64 %indvars.iv.i.i, 1 ; 2 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.k, i64 %indvars.iv.next.i.i
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !40
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %i.u, i64 %indvars.iv.next.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.t, ptr noundef nonnull align 16 dereferenceable(32) %i.v, i64 32, i1 false)
  %indvars.iv.next.i.i.1 = add nuw nsw i64 %indvars.iv.i.i, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, label %bb.d, !llvm.loop !15

.split7.i:                                        ; preds = %_ZN20b3AlignedObjectArrayI9b3SapAabbE8allocateEi.exit.i, %bb.c
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.26, i32 noundef 301)
  tail call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.27)
  store i32 0, ptr %i.a, align 4, !tbaa !41
  br label %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i

_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa, %.lr.ph.i.i
  %indvars.iv.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i ], [ %indvars.iv.next.i.i.1, %_ZNK20b3AlignedObjectArrayI9b3SapAabbE4copyEiiPS0_.exit.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod6 = trunc i32 %i.m to i1
  tail call void @llvm.assume(i1 %lcmp.mod6)
end_hunk_1
