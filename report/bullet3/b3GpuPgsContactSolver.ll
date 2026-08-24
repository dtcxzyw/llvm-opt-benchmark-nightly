Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuPgsContactSolver?download=true
inline.NumInlined: 588
inline.NumDeleted: 176
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 44
begin_hunk_0
$_ZN13b3OpenCLArrayI16b3GpuConstraint4ED0Ev = comdat any

$_ZN20b3AlignedObjectArrayI10b3Contact4E17quickSortInternalIFbRKS0_S4_EEEvRKT_ii = comdat any

$_ZN20b3AlignedObjectArrayI10b3SortDataE17quickSortInternalIFbRKS0_S4_EEEvRKT_ii = comdat any

$_ZZN21b3GpuPgsContactSolver22sortConstraintByBatch3EP10b3Contact4iiiiPiE8maxSwaps = comdat any

$_ZZN21b3GpuPgsContactSolver22sortConstraintByBatch3EP10b3Contact4iiiiPiE17maxNumConstraints = comdat any

$_ZTV13b3OpenCLArrayIiE = comdat any

$_ZTI13b3OpenCLArrayIiE = comdat any

$_ZTS13b3OpenCLArrayIiE = comdat any

$_ZTV13b3OpenCLArrayI15b3RigidBodyDataE = comdat any

$_ZTI13b3OpenCLArrayI15b3RigidBodyDataE = comdat any

$_ZTS13b3OpenCLArrayI15b3RigidBodyDataE = comdat any

$_ZTV13b3OpenCLArrayI13b3InertiaDataE = comdat any

$_ZTI13b3OpenCLArrayI13b3InertiaDataE = comdat any

$_ZTS13b3OpenCLArrayI13b3InertiaDataE = comdat any

$_ZTV13b3OpenCLArrayI10b3Contact4E = comdat any

$_ZTI13b3OpenCLArrayI10b3Contact4E = comdat any

$_ZTS13b3OpenCLArrayI10b3Contact4E = comdat any

$_ZTV13b3OpenCLArrayI10b3SortDataE = comdat any

$_ZTI13b3OpenCLArrayI10b3SortDataE = comdat any

$_ZTS13b3OpenCLArrayI10b3SortDataE = comdat any

$_ZTV13b3OpenCLArrayIjE = comdat any

$_ZTI13b3OpenCLArrayIjE = comdat any

$_ZTS13b3OpenCLArrayIjE = comdat any

$_ZTV13b3OpenCLArrayI16b3GpuConstraint4E = comdat any

$_ZTI13b3OpenCLArrayI16b3GpuConstraint4E = comdat any

$_ZTS13b3OpenCLArrayI16b3GpuConstraint4E = comdat any

@gUseLargeBatches = dso_local local_unnamed_addr global i8 0, align 1
@gCpuBatchContacts = dso_local local_unnamed_addr global i8 0, align 1
@gCpuSolveConstraint = dso_local local_unnamed_addr global i8 0, align 1
@gCpuRadixSort = dso_local local_unnamed_addr global i8 0, align 1
@gCpuSetSortData = dso_local local_unnamed_addr global i8 0, align 1
@gCpuSortContactsDeterminism = dso_local local_unnamed_addr global i8 0, align 1
@gUseCpuCopyConstraints = dso_local local_unnamed_addr global i8 0, align 1
@gUseScanHost = dso_local local_unnamed_addr global i8 0, align 1
@gReorderContactsOnCpu = dso_local local_unnamed_addr global i8 0, align 1
@optionalSortContactsDeterminism = dso_local local_unnamed_addr global i8 1, align 1
@_ZTV21b3GpuPgsContactSolver = dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI21b3GpuPgsContactSolver, ptr @_ZN21b3GpuPgsContactSolverD2Ev, ptr @_ZN21b3GpuPgsContactSolverD0Ev] }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"src/Bullet3OpenCL/RigidBody/kernels/solveContact.cl\00", align 1
@.str.2 = private unnamed_addr constant [53 x i8] c"src/Bullet3OpenCL/RigidBody/kernels/solveFriction.cl\00", align 1
@.str.3 = private unnamed_addr constant [52 x i8] c"src/Bullet3OpenCL/RigidBody/kernels/solverSetup2.cl\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"src/Bullet3OpenCL/RigidBody/kernels/solverSetup.cl\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"BatchSolveKernelFriction\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"BatchSolveKernelContact\00", align 1
@.str.7 = private unnamed_addr constant [25 x i8] c"solveSingleContactKernel\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"solveSingleFrictionKernel\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"ContactToConstraintKernel\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"SetSortDataKernel\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"SetDeterminismSortDataBodyA\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"SetDeterminismSortDataBodyB\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"SetDeterminismSortDataChildShapeA\00", align 1
@.str.14 = private unnamed_addr constant [34 x i8] c"SetDeterminismSortDataChildShapeB\00", align 1
@.str.15 = private unnamed_addr constant [21 x i8] c"ReorderContactKernel\00", align 1
@.str.16 = private unnamed_addr constant [21 x i8] c"CopyConstraintKernel\00", align 1
@.str.17 = private unnamed_addr constant [55 x i8] c"src/Bullet3OpenCL/RigidBody/kernels/batchingKernels.cl\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"CreateBatches\00", align 1
@.str.19 = private unnamed_addr constant [58 x i8] c"src/Bullet3OpenCL/RigidBody/kernels/batchingKernelsNew.cl\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"CreateBatchesNew\00", align 1
@__clewReleaseKernel = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [33 x i8] c"solveContactConstraintBatchSizes\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"m_solveSingleContactKernel\00", align 1
@.str.23 = private unnamed_addr constant [28 x i8] c"m_solveSingleFrictionKernel\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"m_batchSolveKernel iterations\00", align 1
@.str.25 = private unnamed_addr constant [21 x i8] c"m_solveContactKernel\00", align 1
@__clewFinish = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [31 x i8] c"m_batchSolveKernel iterations2\00", align 1
@.str.27 = private unnamed_addr constant [22 x i8] c"m_solveFrictionKernel\00", align 1
@.str.28 = private unnamed_addr constant [14 x i8] c"solveContacts\00", align 1
@.str.29 = private unnamed_addr constant [43 x i8] c"GPU Sort contact constraints (determinism)\00", align 1
@.str.30 = private unnamed_addr constant [42 x i8] c"m_setDeterminismSortDataChildShapeBKernel\00", align 1
@.str.31 = private unnamed_addr constant [42 x i8] c"m_setDeterminismSortDataChildShapeAKernel\00", align 1
@.str.32 = private unnamed_addr constant [36 x i8] c"m_setDeterminismSortDataBodyBKernel\00", align 1
@.str.33 = private unnamed_addr constant [36 x i8] c"m_setDeterminismSortDataBodyAKernel\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"gpu reorderContactKernel (determinism)\00", align 1
@.str.35 = private unnamed_addr constant [23 x i8] c"m_reorderContactKernel\00", align 1
@.str.36 = private unnamed_addr constant [43 x i8] c"CPU Sort contact constraints (determinism)\00", align 1
@.str.37 = private unnamed_addr constant [48 x i8] c"c[%d].m_bodyA = %d, m_bodyB = %d, batchId = %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [9 x i8] c"batching\00", align 1
@.str.39 = private unnamed_addr constant [17 x i8] c"GPU set cell idx\00", align 1
@.str.40 = private unnamed_addr constant [20 x i8] c"m_setSortDataKernel\00", align 1
@.str.41 = private unnamed_addr constant [13 x i8] c"gpuRadixSort\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"cpuBoundSearch\00", align 1
@.str.43 = private unnamed_addr constant [15 x i8] c"gpuBoundSearch\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"cpu m_reorderContactKernel\00", align 1
@.str.45 = private unnamed_addr constant [27 x i8] c"gpu m_reorderContactKernel\00", align 1
@.str.46 = private unnamed_addr constant [27 x i8] c"gpu m_copyConstraintKernel\00", align 1
@.str.47 = private unnamed_addr constant [23 x i8] c"m_copyConstraintKernel\00", align 1
@.str.48 = private unnamed_addr constant [18 x i8] c"gpu batchContacts\00", align 1
@.str.49 = private unnamed_addr constant [18 x i8] c"cpu batchContacts\00", align 1
@_ZZN21b3GpuPgsContactSolver13solveContactsEiP7_cl_memS1_iS1_RK8b3ConfigiE11cpuContacts = internal global %class.b3AlignedObjectArray.2 zeroinitializer, align 8
@_ZGVZN21b3GpuPgsContactSolver13solveContactsEiP7_cl_memS1_iS1_RK8b3ConfigiE11cpuContacts = internal global i64 0, align 8
@__dso_handle = external hidden global i8
@.str.50 = private unnamed_addr constant [11 x i8] c"copyToHost\00", align 1
@.str.51 = private unnamed_addr constant [38 x i8] c"countsNative/offsetsNative copyToHost\00", align 1
@_ZZN21b3GpuPgsContactSolver13solveContactsEiP7_cl_memS1_iS1_RK8b3ConfigiE14globalMaxBatch = internal unnamed_addr global i32 0, align 4
@.str.52 = private unnamed_addr constant [20 x i8] c"maxNumBatches = %d\0A\00", align 1
@.str.53 = private unnamed_addr constant [15 x i8] c"cpu batch grid\00", align 1
@_ZZN21b3GpuPgsContactSolver13solveContactsEiP7_cl_memS1_iS1_RK8b3ConfigiE14globalMaxBatch_0 = internal unnamed_addr global i32 0, align 4
@.str.54 = private unnamed_addr constant [30 x i8] c"m_contactBuffer->copyFromHost\00", align 1
@_ZZN21b3GpuPgsContactSolver13solveContactsEiP7_cl_memS1_iS1_RK8b3ConfigiE11cpuContacts_0 = internal global %class.b3AlignedObjectArray.2 zeroinitializer, align 8
@_ZGVZN21b3GpuPgsContactSolver13solveContactsEiP7_cl_memS1_iS1_RK8b3ConfigiE11cpuContacts_0 = internal global i64 0, align 8
@_ZZN21b3GpuPgsContactSolver13solveContactsEiP7_cl_memS1_iS1_RK8b3ConfigiE14globalMaxBatch_1 = internal unnamed_addr global i32 0, align 4
@.str.55 = private unnamed_addr constant [25 x i8] c"gpu convertToConstraints\00", align 1
@.str.56 = private unnamed_addr constant [27 x i8] c"GPU solveContactConstraint\00", align 1
@.str.57 = private unnamed_addr constant [28 x i8] c"Host solveContactConstraint\00", align 1
@idxBuffer = dso_local global %class.b3AlignedObjectArray zeroinitializer, align 8
@sortData = dso_local global %class.b3AlignedObjectArray.0 zeroinitializer, align 8
@old = dso_local global %class.b3AlignedObjectArray.2 zeroinitializer, align 8
@bodyUsed2 = dso_local global %class.b3AlignedObjectArray.4 zeroinitializer, align 8
@bodyUsed = dso_local global %class.b3AlignedObjectArray.4 zeroinitializer, align 8
@curUsed = dso_local global %class.b3AlignedObjectArray.4 zeroinitializer, align 8
@_ZTI21b3GpuPgsContactSolver = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS21b3GpuPgsContactSolver }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS21b3GpuPgsContactSolver = dso_local constant [24 x i8] c"21b3GpuPgsContactSolver\00", align 1
@.str.63 = private unnamed_addr constant [10605 x i8] c"/*\0ACopyright (c) 2012 Advanced Micro Devices, Inc.  \0AThis software is provided 'as-is', without any express or implied warranty.\0AIn no event will the authors be held liable for any damages arising from the use of this software.\0APermission is granted to anyone to use this software for any purpose, \0Aincluding commercial applications, and to alter it and redistribute it freely, \0Asubject to the following restrictions:\0A1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.\0A2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.\0A3. This notice may not be removed or altered from any source distribution.\0A*/\0A//Originally written by Takahiro Harada\0A#ifndef B3_CONTACT4DATA_H\0A#define B3_CONTACT4DATA_H\0A#ifndef B3_FLOAT4_H\0A#define B3_FLOAT4_H\0A#ifndef B3_PLATFORM_DEFINITIONS_H\0A#define B3_PLATFORM_DEFINITIONS_H\0Astruct MyTest\0A{\0A\09int bla;\0A};\0A#ifdef __cplusplus\0A#else\0A//keep B3_LARGE_FLOAT*B3_LARGE_FLOAT < FLT_MAX\0A#define B3_LARGE_FLOAT 1e18f\0A#define B3_INFINITY 1e18f\0A#define b3Assert(a)\0A#define b3ConstArray(a) __global const a*\0A#define b3AtomicInc atomic_inc\0A#define b3AtomicAdd atomic_add\0A#define b3Fabs fabs\0A#define b3Sqrt native_sqrt\0A#define b3Sin native_sin\0A#define b3Cos native_cos\0A#define B3_STATIC\0A#endif\0A#endif\0A#ifdef __cplusplus\0A#else\0A\09typedef float4\09b3Float4;\0A\09#define b3Float4ConstArg const b3Float4\0A\09#define b3MakeFloat4 (float4)\0A\09float b3Dot3F4(b3Float4ConstArg v0,b3Float4ConstArg v1)\0A\09{\0A\09\09float4 a1 = b3MakeFloat4(v0.xyz,0.f);\0A\09\09float4 b1 = b3MakeFloat4(v1.xyz,0.f);\0A\09\09return dot(a1, b1);\0A\09}\0A\09b3Float4 b3Cross3(b3Float4ConstArg v0,b3Float4ConstArg v1)\0A\09{\0A\09\09float4 a1 = b3MakeFloat4(v0.xyz,0.f);\0A\09\09float4 b1 = b3MakeFloat4(v1.xyz,0.f);\0A\09\09return cross(a1, b1);\0A\09}\0A\09#define b3MinFloat4 min\0A\09#define b3MaxFloat4 max\0A\09#define b3Normalized(a) normalize(a)\0A#endif \0A\09\09\0Ainline bool b3IsAlmostZero(b3Float4ConstArg v)\0A{\0A\09if(b3Fabs(v.x)>1e-6 || b3Fabs(v.y)>1e-6 || b3Fabs(v.z)>1e-6)\09\0A\09\09return false;\0A\09return true;\0A}\0Ainline int    b3MaxDot( b3Float4ConstArg vec, __global const b3Float4* vecArray, int vecLen, float* dotOut )\0A{\0A    float maxDot = -B3_INFINITY;\0A    int i = 0;\0A    int ptIndex = -1;\0A    for( i = 0; i < vecLen; i++ )\0A    {\0A        float dot = b3Dot3F4(vecArray[i],vec);\0A            \0A        if( dot > maxDot )\0A        {\0A            maxDot = dot;\0A            ptIndex = i;\0A        }\0A    }\0A\09b3Assert(ptIndex>=0);\0A    if (ptIndex<0)\0A\09{\0A\09\09ptIndex = 0;\0A\09}\0A    *dotOut = maxDot;\0A    return ptIndex;\0A}\0A#endif //B3_FLOAT4_H\0Atypedef  struct b3Contact4Data b3Contact4Data_t;\0Astruct b3Contact4Data\0A{\0A\09b3Float4\09m_worldPosB[4];\0A//\09b3Float4\09m_localPosA[4];\0A//\09b3Float4\09m_localPosB[4];\0A\09b3Float4\09m_worldNormalOnB;\09//\09w: m_nPoints\0A\09unsigned short  m_restituitionCoeffCmp;\0A\09unsigned short  m_frictionCoeffCmp;\0A\09int m_batchIdx;\0A\09int m_bodyAPtrAndSignBit;//x:m_bodyAPtr, y:m_bodyBPtr\0A\09int m_bodyBPtrAndSignBit;\0A\09int\09m_childIndexA;\0A\09int\09m_childIndexB;\0A\09int m_unused1;\0A\09int m_unused2;\0A};\0Ainline int b3Contact4Data_getNumPoints(const struct b3Contact4Data* contact)\0A{\0A\09return (int)contact->m_worldNormalOnB.w;\0A};\0Ainline void b3Contact4Data_setNumPoints(struct b3Contact4Data* contact, int numPoints)\0A{\0A\09contact->m_worldNormalOnB.w = (float)numPoints;\0A};\0A#endif //B3_CONTACT4DATA_H\0A#pragma OPENCL EXTENSION cl_amd_printf : enable\0A#pragma OPENCL EXTENSION cl_khr_local_int32_base_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_local_int32_extended_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable\0A#ifdef cl_ext_atomic_counters_32\0A#pragma OPENCL EXTENSION cl_ext_atomic_counters_32 : enable\0A#else\0A#define counter32_t volatile __global int*\0A#endif\0Atypedef unsigned int u32;\0Atypedef unsigned short u16;\0Atypedef unsigned char u8;\0A#define GET_GROUP_IDX get_group_id(0)\0A#define GET_LOCAL_IDX get_local_id(0)\0A#define GET_GLOBAL_IDX get_global_id(0)\0A#define GET_GROUP_SIZE get_local_size(0)\0A#define GET_NUM_GROUPS get_num_groups(0)\0A#define GROUP_LDS_BARRIER barrier(CLK_LOCAL_MEM_FENCE)\0A#define GROUP_MEM_FENCE mem_fence(CLK_LOCAL_MEM_FENCE)\0A#define AtomInc(x) atom_inc(&(x))\0A#define AtomInc1(x, out) out = atom_inc(&(x))\0A#define AppendInc(x, out) out = atomic_inc(x)\0A#define AtomAdd(x, value) atom_add(&(x), value)\0A#define AtomCmpxhg(x, cmp, value) atom_cmpxchg( &(x), cmp, value )\0A#define AtomXhg(x, value) atom_xchg ( &(x), value )\0A#define SELECT_UINT4( b, a, condition ) select( b,a,condition )\0A#define make_float4 (float4)\0A#define make_float2 (float2)\0A#define make_uint4 (uint4)\0A#define make_int4 (int4)\0A#define make_uint2 (uint2)\0A#define make_int2 (int2)\0A#define max2 max\0A#define min2 min\0A#define WG_SIZE 64\0Atypedef struct \0A{\0A\09int m_n;\0A\09int m_start;\0A\09int m_staticIdx;\0A\09int m_paddings[1];\0A} ConstBuffer;\0Atypedef struct \0A{\0A\09int m_a;\0A\09int m_b;\0A\09u32 m_idx;\0A}Elem;\0A#define STACK_SIZE (WG_SIZE*10)\0A//#define STACK_SIZE (WG_SIZE)\0A#define RING_SIZE 1024\0A#define RING_SIZE_MASK (RING_SIZE-1)\0A#define CHECK_SIZE (WG_SIZE)\0A#define GET_RING_CAPACITY (RING_SIZE - ldsRingEnd)\0A#define RING_END ldsTmp\0Au32 readBuf(__local u32* buff, int idx)\0A{\0A\09idx = idx % (32*CHECK_SIZE);\0A\09int bitIdx = idx%32;\0A\09int bufIdx = idx/32;\0A\09return buff[bufIdx] & (1<<bitIdx);\0A}\0Avoid writeBuf(__local u32* buff, int idx)\0A{\0A\09idx = idx % (32*CHECK_SIZE);\0A\09int bitIdx = idx%32;\0A\09int bufIdx = idx/32;\0A//\09buff[bufIdx] |= (1<<bitIdx);\0A\09atom_or( &buff[bufIdx], (1<<bitIdx) );\0A}\0Au32 tryWrite(__local u32* buff, int idx)\0A{\0A\09idx = idx % (32*CHECK_SIZE);\0A\09int bitIdx = idx%32;\0A\09int bufIdx = idx/32;\0A\09u32 ans = (u32)atom_or( &buff[bufIdx], (1<<bitIdx) );\0A\09return ((ans >> bitIdx)&1) == 0;\0A}\0A//\09batching on the GPU\0A__kernel void CreateBatches( __global const struct b3Contact4Data* gConstraints, __global struct b3Contact4Data* gConstraintsOut,\0A\09\09__global const u32* gN, __global const u32* gStart, __global int* batchSizes, \0A\09\09int m_staticIdx )\0A{\0A\09__local u32 ldsStackIdx[STACK_SIZE];\0A\09__local u32 ldsStackEnd;\0A\09__local Elem ldsRingElem[RING_SIZE];\0A\09__local u32 ldsRingEnd;\0A\09__local u32 ldsTmp;\0A\09__local u32 ldsCheckBuffer[CHECK_SIZE];\0A\09__local u32 ldsFixedBuffer[CHECK_SIZE];\0A\09__local u32 ldsGEnd;\0A\09__local u32 ldsDstEnd;\0A\09int wgIdx = GET_GROUP_IDX;\0A\09int lIdx = GET_LOCAL_IDX;\0A\09\0A\09const int m_n = gN[wgIdx];\0A\09const int m_start = gStart[wgIdx];\0A\09\09\0A\09if( lIdx == 0 )\0A\09{\0A\09\09ldsRingEnd = 0;\0A\09\09ldsGEnd = 0;\0A\09\09ldsStackEnd = 0;\0A\09\09ldsDstEnd = m_start;\0A\09}\0A\09\0A\09\0A\09\0A//\09while(1)\0A//was 250\0A\09int ie=0;\0A\09int maxBatch = 0;\0A\09for(ie=0; ie<50; ie++)\0A\09{\0A\09\09ldsFixedBuffer[lIdx] = 0;\0A\09\09for(int giter=0; giter<4; giter++)\0A\09\09{\0A\09\09\09int ringCap = GET_RING_CAPACITY;\0A\09\09\0A\09\09\09//\091. fill ring\0A\09\09\09if( ldsGEnd < m_n )\0A\09\09\09{\0A\09\09\09\09while( ringCap > WG_SIZE )\0A\09\09\09\09{\0A\09\09\09\09\09if( ldsGEnd >= m_n ) break;\0A\09\09\09\09\09if( lIdx < ringCap - WG_SIZE )\0A\09\09\09\09\09{\0A\09\09\09\09\09\09int srcIdx;\0A\09\09\09\09\09\09AtomInc1( ldsGEnd, srcIdx );\0A\09\09\09\09\09\09if( srcIdx < m_n )\0A\09\09\09\09\09\09{\0A\09\09\09\09\09\09\09int dstIdx;\0A\09\09\09\09\09\09\09AtomInc1( ldsRingEnd, dstIdx );\0A\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09int a = gConstraints[m_start+srcIdx].m_bodyAPtrAndSignBit;\0A\09\09\09\09\09\09\09int b = gConstraints[m_start+srcIdx].m_bodyBPtrAndSignBit;\0A\09\09\09\09\09\09\09ldsRingElem[dstIdx].m_a = (a>b)? b:a;\0A\09\09\09\09\09\09\09ldsRingElem[dstIdx].m_b = (a>b)? a:b;\0A\09\09\09\09\09\09\09ldsRingElem[dstIdx].m_idx = srcIdx;\0A\09\09\09\09\09\09}\0A\09\09\09\09\09}\0A\09\09\09\09\09ringCap = GET_RING_CAPACITY;\0A\09\09\09\09}\0A\09\09\09}\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\0A\09\09\09//\092. fill stack\0A\09\09\09__local Elem* dst = ldsRingElem;\0A\09\09\09if( lIdx == 0 ) RING_END = 0;\0A\09\09\09int srcIdx=lIdx;\0A\09\09\09int end = ldsRingEnd;\0A\09\09\09{\0A\09\09\09\09for(int ii=0; ii<end; ii+=WG_SIZE, srcIdx+=WG_SIZE)\0A\09\09\09\09{\0A\09\09\09\09\09Elem e;\0A\09\09\09\09\09if(srcIdx<end) e = ldsRingElem[srcIdx];\0A\09\09\09\09\09bool done = (srcIdx<end)?false:true;\0A\09\09\09\09\09for(int i=lIdx; i<CHECK_SIZE; i+=WG_SIZE) ldsCheckBuffer[lIdx] = 0;\0A\09\09\09\09\09\0A\09\09\09\09\09if( !done )\0A\09\09\09\09\09{\0A\09\09\09\09\09\09int aUsed = readBuf( ldsFixedBuffer, abs(e.m_a));\0A\09\09\09\09\09\09int bUsed = readBuf( ldsFixedBuffer, abs(e.m_b));\0A\09\09\09\09\09\09if( aUsed==0 && bUsed==0 )\0A\09\09\09\09\09\09{\0A\09\09\09\09\09\09\09int aAvailable=1;\0A\09\09\09\09\09\09\09int bAvailable=1;\0A\09\09\09\09\09\09\09int ea = abs(e.m_a);\0A\09\09\09\09\09\09\09int eb = abs(e.m_b);\0A\09\09\09\09\09\09\09bool aStatic = (e.m_a<0) ||(ea==m_staticIdx);\0A\09\09\09\09\09\09\09bool bStatic = (e.m_b<0) ||(eb==m_staticIdx);\0A\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09if (!aStatic)\0A\09\09\09\09\09\09\09\09aAvailable = tryWrite( ldsCheckBuffer, ea );\0A\09\09\09\09\09\09\09if (!bStatic)\0A\09\09\09\09\09\09\09\09bAvailable = tryWrite( ldsCheckBuffer, eb );\0A\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09//aAvailable = aStatic? 1: aAvailable;\0A\09\09\09\09\09\09\09//bAvailable = bStatic? 1: bAvailable;\0A\09\09\09\09\09\09\09bool success = (aAvailable && bAvailable);\0A\09\09\09\09\09\09\09if(success)\0A\09\09\09\09\09\09\09{\0A\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09if (!aStatic)\0A\09\09\09\09\09\09\09\09\09writeBuf( ldsFixedBuffer, ea );\0A\09\09\09\09\09\09\09\09if (!bStatic)\0A\09\09\09\09\09\09\09\09\09writeBuf( ldsFixedBuffer, eb );\0A\09\09\09\09\09\09\09}\0A\09\09\09\09\09\09\09done = success;\0A\09\09\09\09\09\09}\0A\09\09\09\09\09}\0A\09\09\09\09\09//\09put it aside\0A\09\09\09\09\09if(srcIdx<end)\0A\09\09\09\09\09{\0A\09\09\09\09\09\09if( done )\0A\09\09\09\09\09\09{\0A\09\09\09\09\09\09\09int dstIdx; AtomInc1( ldsStackEnd, dstIdx );\0A\09\09\09\09\09\09\09if( dstIdx < STACK_SIZE )\0A\09\09\09\09\09\09\09\09ldsStackIdx[dstIdx] = e.m_idx;\0A\09\09\09\09\09\09\09else{\0A\09\09\09\09\09\09\09\09done = false;\0A\09\09\09\09\09\09\09\09AtomAdd( ldsStackEnd, -1 );\0A\09\09\09\09\09\09\09}\0A\09\09\09\09\09\09}\0A\09\09\09\09\09\09if( !done )\0A\09\09\09\09\09\09{\0A\09\09\09\09\09\09\09int dstIdx; AtomInc1( RING_END, dstIdx );\0A\09\09\09\09\09\09\09dst[dstIdx] = e;\0A\09\09\09\09\09\09}\0A\09\09\09\09\09}\0A\09\09\09\09\09//\09if filled, flush\0A\09\09\09\09\09if( ldsStackEnd == STACK_SIZE )\0A\09\09\09\09\09{\0A\09\09\09\09\09\09for(int i=lIdx; i<STACK_SIZE; i+=WG_SIZE)\0A\09\09\09\09\09\09{\0A\09\09\09\09\09\09\09int idx = m_start + ldsStackIdx[i];\0A\09\09\09\09\09\09\09int dstIdx; AtomInc1( ldsDstEnd, dstIdx );\0A\09\09\09\09\09\09\09gConstraintsOut[ dstIdx ] = gConstraints[ idx ];\0A\09\09\09\09\09\09\09gConstraintsOut[ dstIdx ].m_batchIdx = ie;\0A\09\09\09\09\09\09}\0A\09\09\09\09\09\09if( lIdx == 0 ) ldsStackEnd = 0;\0A\09\09\09\09\09\09//for(int i=lIdx; i<CHECK_SIZE; i+=WG_SIZE) \0A\09\09\09\09\09\09ldsFixedBuffer[lIdx] = 0;\0A\09\09\09\09\09}\0A\09\09\09\09}\0A\09\09\09}\0A\09\09\09if( lIdx == 0 ) ldsRingEnd = RING_END;\0A\09\09}\0A\09\09GROUP_LDS_BARRIER;\0A\09\09for(int i=lIdx; i<ldsStackEnd; i+=WG_SIZE)\0A\09\09{\0A\09\09\09int idx = m_start + ldsStackIdx[i];\0A\09\09\09int dstIdx; AtomInc1( ldsDstEnd, dstIdx );\0A\09\09\09gConstraintsOut[ dstIdx ] = gConstraints[ idx ];\0A\09\09\09gConstraintsOut[ dstIdx ].m_batchIdx = ie;\0A\09\09}\0A\09\09//\09in case it couldn't consume any pair. Flush them\0A\09\09//\09todo. Serial batch worth while?\0A\09\09if( ldsStackEnd == 0 )\0A\09\09{\0A\09\09\09for(int i=lIdx; i<ldsRingEnd; i+=WG_SIZE)\0A\09\09\09{\0A\09\09\09\09int idx = m_start + ldsRingElem[i].m_idx;\0A\09\09\09\09int dstIdx; AtomInc1( ldsDstEnd, dstIdx );\0A\09\09\09\09gConstraintsOut[ dstIdx ] = gConstraints[ idx ];\0A\09\09\09\09int curBatch = 100+i;\0A\09\09\09\09if (maxBatch < curBatch)\0A\09\09\09\09\09maxBatch = curBatch;\0A\09\09\09\09\0A\09\09\09\09gConstraintsOut[ dstIdx ].m_batchIdx = curBatch;\0A\09\09\09\09\0A\09\09\09}\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\09\09if( lIdx == 0 ) ldsRingEnd = 0;\0A\09\09}\0A\09\09if( lIdx == 0 ) ldsStackEnd = 0;\0A\09\09GROUP_LDS_BARRIER;\0A\09\09//\09termination\0A\09\09if( ldsGEnd == m_n && ldsRingEnd == 0 )\0A\09\09\09break;\0A\09}\0A\09if( lIdx == 0 )\0A\09{\0A\09\09if (maxBatch < ie)\0A\09\09\09maxBatch=ie;\0A\09\09batchSizes[wgIdx]=maxBatch;\0A\09}\0A}\0A\00", align 1
@.str.64 = private unnamed_addr constant [7975 x i8] c"/*\0ACopyright (c) 2012 Advanced Micro Devices, Inc.  \0AThis software is provided 'as-is', without any express or implied warranty.\0AIn no event will the authors be held liable for any damages arising from the use of this software.\0APermission is granted to anyone to use this software for any purpose, \0Aincluding commercial applications, and to alter it and redistribute it freely, \0Asubject to the following restrictions:\0A1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.\0A2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.\0A3. This notice may not be removed or altered from any source distribution.\0A*/\0A//Originally written by Erwin Coumans\0A#ifndef B3_CONTACT4DATA_H\0A#define B3_CONTACT4DATA_H\0A#ifndef B3_FLOAT4_H\0A#define B3_FLOAT4_H\0A#ifndef B3_PLATFORM_DEFINITIONS_H\0A#define B3_PLATFORM_DEFINITIONS_H\0Astruct MyTest\0A{\0A\09int bla;\0A};\0A#ifdef __cplusplus\0A#else\0A//keep B3_LARGE_FLOAT*B3_LARGE_FLOAT < FLT_MAX\0A#define B3_LARGE_FLOAT 1e18f\0A#define B3_INFINITY 1e18f\0A#define b3Assert(a)\0A#define b3ConstArray(a) __global const a*\0A#define b3AtomicInc atomic_inc\0A#define b3AtomicAdd atomic_add\0A#define b3Fabs fabs\0A#define b3Sqrt native_sqrt\0A#define b3Sin native_sin\0A#define b3Cos native_cos\0A#define B3_STATIC\0A#endif\0A#endif\0A#ifdef __cplusplus\0A#else\0A\09typedef float4\09b3Float4;\0A\09#define b3Float4ConstArg const b3Float4\0A\09#define b3MakeFloat4 (float4)\0A\09float b3Dot3F4(b3Float4ConstArg v0,b3Float4ConstArg v1)\0A\09{\0A\09\09float4 a1 = b3MakeFloat4(v0.xyz,0.f);\0A\09\09float4 b1 = b3MakeFloat4(v1.xyz,0.f);\0A\09\09return dot(a1, b1);\0A\09}\0A\09b3Float4 b3Cross3(b3Float4ConstArg v0,b3Float4ConstArg v1)\0A\09{\0A\09\09float4 a1 = b3MakeFloat4(v0.xyz,0.f);\0A\09\09float4 b1 = b3MakeFloat4(v1.xyz,0.f);\0A\09\09return cross(a1, b1);\0A\09}\0A\09#define b3MinFloat4 min\0A\09#define b3MaxFloat4 max\0A\09#define b3Normalized(a) normalize(a)\0A#endif \0A\09\09\0Ainline bool b3IsAlmostZero(b3Float4ConstArg v)\0A{\0A\09if(b3Fabs(v.x)>1e-6 || b3Fabs(v.y)>1e-6 || b3Fabs(v.z)>1e-6)\09\0A\09\09return false;\0A\09return true;\0A}\0Ainline int    b3MaxDot( b3Float4ConstArg vec, __global const b3Float4* vecArray, int vecLen, float* dotOut )\0A{\0A    float maxDot = -B3_INFINITY;\0A    int i = 0;\0A    int ptIndex = -1;\0A    for( i = 0; i < vecLen; i++ )\0A    {\0A        float dot = b3Dot3F4(vecArray[i],vec);\0A            \0A        if( dot > maxDot )\0A        {\0A            maxDot = dot;\0A            ptIndex = i;\0A        }\0A    }\0A\09b3Assert(ptIndex>=0);\0A    if (ptIndex<0)\0A\09{\0A\09\09ptIndex = 0;\0A\09}\0A    *dotOut = maxDot;\0A    return ptIndex;\0A}\0A#endif //B3_FLOAT4_H\0Atypedef  struct b3Contact4Data b3Contact4Data_t;\0Astruct b3Contact4Data\0A{\0A\09b3Float4\09m_worldPosB[4];\0A//\09b3Float4\09m_localPosA[4];\0A//\09b3Float4\09m_localPosB[4];\0A\09b3Float4\09m_worldNormalOnB;\09//\09w: m_nPoints\0A\09unsigned short  m_restituitionCoeffCmp;\0A\09unsigned short  m_frictionCoeffCmp;\0A\09int m_batchIdx;\0A\09int m_bodyAPtrAndSignBit;//x:m_bodyAPtr, y:m_bodyBPtr\0A\09int m_bodyBPtrAndSignBit;\0A\09int\09m_childIndexA;\0A\09int\09m_childIndexB;\0A\09int m_unused1;\0A\09int m_unused2;\0A};\0Ainline int b3Contact4Data_getNumPoints(const struct b3Contact4Data* contact)\0A{\0A\09return (int)contact->m_worldNormalOnB.w;\0A};\0Ainline void b3Contact4Data_setNumPoints(struct b3Contact4Data* contact, int numPoints)\0A{\0A\09contact->m_worldNormalOnB.w = (float)numPoints;\0A};\0A#endif //B3_CONTACT4DATA_H\0A#pragma OPENCL EXTENSION cl_amd_printf : enable\0A#pragma OPENCL EXTENSION cl_khr_local_int32_base_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_local_int32_extended_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable\0A#ifdef cl_ext_atomic_counters_32\0A#pragma OPENCL EXTENSION cl_ext_atomic_counters_32 : enable\0A#else\0A#define counter32_t volatile __global int*\0A#endif\0A#define SIMD_WIDTH 64\0Atypedef unsigned int u32;\0Atypedef unsigned short u16;\0Atypedef unsigned char u8;\0A#define GET_GROUP_IDX get_group_id(0)\0A#define GET_LOCAL_IDX get_local_id(0)\0A#define GET_GLOBAL_IDX get_global_id(0)\0A#define GET_GROUP_SIZE get_local_size(0)\0A#define GET_NUM_GROUPS get_num_groups(0)\0A#define GROUP_LDS_BARRIER barrier(CLK_LOCAL_MEM_FENCE)\0A#define GROUP_MEM_FENCE mem_fence(CLK_LOCAL_MEM_FENCE)\0A#define AtomInc(x) atom_inc(&(x))\0A#define AtomInc1(x, out) out = atom_inc(&(x))\0A#define AppendInc(x, out) out = atomic_inc(x)\0A#define AtomAdd(x, value) atom_add(&(x), value)\0A#define AtomCmpxhg(x, cmp, value) atom_cmpxchg( &(x), cmp, value )\0A#define AtomXhg(x, value) atom_xchg ( &(x), value )\0A#define SELECT_UINT4( b, a, condition ) select( b,a,condition )\0A#define make_float4 (float4)\0A#define make_float2 (float2)\0A#define make_uint4 (uint4)\0A#define make_int4 (int4)\0A#define make_uint2 (uint2)\0A#define make_int2 (int2)\0A#define max2 max\0A#define min2 min\0A#define WG_SIZE 64\0Atypedef struct \0A{\0A\09int m_n;\0A\09int m_start;\0A\09int m_staticIdx;\0A\09int m_paddings[1];\0A} ConstBuffer;\0Atypedef struct \0A{\0A\09int m_a;\0A\09int m_b;\0A\09u32 m_idx;\0A}Elem;\0A//\09batching on the GPU\0A__kernel void CreateBatchesBruteForce( __global struct b3Contact4Data* gConstraints, \09__global const u32* gN, __global const u32* gStart, int m_staticIdx )\0A{\0A\09int wgIdx = GET_GROUP_IDX;\0A\09int lIdx = GET_LOCAL_IDX;\0A\09\0A\09const int m_n = gN[wgIdx];\0A\09const int m_start = gStart[wgIdx];\0A\09\09\0A\09if( lIdx == 0 )\0A\09{\0A\09\09for (int i=0;i<m_n;i++)\0A\09\09{\0A\09\09\09int srcIdx = i+m_start;\0A\09\09\09int batchIndex = i;\0A\09\09\09gConstraints[ srcIdx ].m_batchIdx = batchIndex;\09\0A\09\09}\0A\09}\0A}\0A#define CHECK_SIZE (WG_SIZE)\0Au32 readBuf(__local u32* buff, int idx)\0A{\0A\09idx = idx % (32*CHECK_SIZE);\0A\09int bitIdx = idx%32;\0A\09int bufIdx = idx/32;\0A\09return buff[bufIdx] & (1<<bitIdx);\0A}\0Avoid writeBuf(__local u32* buff, int idx)\0A{\0A\09idx = idx % (32*CHECK_SIZE);\0A\09int bitIdx = idx%32;\0A\09int bufIdx = idx/32;\0A\09buff[bufIdx] |= (1<<bitIdx);\0A\09//atom_or( &buff[bufIdx], (1<<bitIdx) );\0A}\0Au32 tryWrite(__local u32* buff, int idx)\0A{\0A\09idx = idx % (32*CHECK_SIZE);\0A\09int bitIdx = idx%32;\0A\09int bufIdx = idx/32;\0A\09u32 ans = (u32)atom_or( &buff[bufIdx], (1<<bitIdx) );\0A\09return ((ans >> bitIdx)&1) == 0;\0A}\0A//\09batching on the GPU\0A__kernel void CreateBatchesNew( __global struct b3Contact4Data* gConstraints, __global const u32* gN, __global const u32* gStart, __global int* batchSizes, int staticIdx )\0A{\0A\09int wgIdx = GET_GROUP_IDX;\0A\09int lIdx = GET_LOCAL_IDX;\0A\09const int numConstraints = gN[wgIdx];\0A\09const int m_start = gStart[wgIdx];\0A\09b3Contact4Data_t tmp;\0A\09\0A\09__local u32 ldsFixedBuffer[CHECK_SIZE];\0A\09\09\0A\09\0A\09\0A\09\0A\09\0A\09if( lIdx == 0 )\0A\09{\0A\09\0A\09\09\0A\09\09__global struct b3Contact4Data* cs = &gConstraints[m_start];\09\0A\09\0A\09\09\0A\09\09int numValidConstraints = 0;\0A\09\09int batchIdx = 0;\0A\09\09while( numValidConstraints < numConstraints)\0A\09\09{\0A\09\09\09int nCurrentBatch = 0;\0A\09\09\09//\09clear flag\0A\09\0A\09\09\09for(int i=0; i<CHECK_SIZE; i++) \0A\09\09\09\09ldsFixedBuffer[i] = 0;\09\09\0A\09\09\09for(int i=numValidConstraints; i<numConstraints; i++)\0A\09\09\09{\0A\09\09\09\09int bodyAS = cs[i].m_bodyAPtrAndSignBit;\0A\09\09\09\09int bodyBS = cs[i].m_bodyBPtrAndSignBit;\0A\09\09\09\09int bodyA = abs(bodyAS);\0A\09\09\09\09int bodyB = abs(bodyBS);\0A\09\09\09\09bool aIsStatic = (bodyAS<0) || bodyAS==staticIdx;\0A\09\09\09\09bool bIsStatic = (bodyBS<0) || bodyBS==staticIdx;\0A\09\09\09\09int aUnavailable = aIsStatic ? 0 : readBuf( ldsFixedBuffer, bodyA);\0A\09\09\09\09int bUnavailable = bIsStatic ? 0 : readBuf( ldsFixedBuffer, bodyB);\0A\09\09\09\09\0A\09\09\09\09if( aUnavailable==0 && bUnavailable==0 ) // ok\0A\09\09\09\09{\0A\09\09\09\09\09if (!aIsStatic)\0A\09\09\09\09\09{\0A\09\09\09\09\09\09writeBuf( ldsFixedBuffer, bodyA );\0A\09\09\09\09\09}\0A\09\09\09\09\09if (!bIsStatic)\0A\09\09\09\09\09{\0A\09\09\09\09\09\09writeBuf( ldsFixedBuffer, bodyB );\0A\09\09\09\09\09}\0A\09\09\09\09\09cs[i].m_batchIdx = batchIdx;\0A\09\09\09\09\09if (i!=numValidConstraints)\0A\09\09\09\09\09{\0A\09\09\09\09\09\09tmp = cs[i];\0A\09\09\09\09\09\09cs[i] = cs[numValidConstraints];\0A\09\09\09\09\09\09cs[numValidConstraints]  = tmp;\0A\09\09\09\09\09}\0A\09\09\09\09\09numValidConstraints++;\0A\09\09\09\09\09\0A\09\09\09\09\09nCurrentBatch++;\0A\09\09\09\09\09if( nCurrentBatch == SIMD_WIDTH)\0A\09\09\09\09\09{\0A\09\09\09\09\09\09nCurrentBatch = 0;\0A\09\09\09\09\09\09for(int i=0; i<CHECK_SIZE; i++) \0A\09\09\09\09\09\09\09ldsFixedBuffer[i] = 0;\0A\09\09\09\09\09\09\0A\09\09\09\09\09}\0A\09\09\09\09}\0A\09\09\09}//for\0A\09\09\09batchIdx ++;\0A\09\09}//while\0A\09\09\0A\09\09batchSizes[wgIdx] = batchIdx;\0A\09}//if( lIdx == 0 )\0A\09\0A\09//return batchIdx;\0A}\0A\00", align 1
@.str.65 = private unnamed_addr constant [18920 x i8] c"/*\0ACopyright (c) 2012 Advanced Micro Devices, Inc.  \0AThis software is provided 'as-is', without any express or implied warranty.\0AIn no event will the authors be held liable for any damages arising from the use of this software.\0APermission is granted to anyone to use this software for any purpose, \0Aincluding commercial applications, and to alter it and redistribute it freely, \0Asubject to the following restrictions:\0A1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.\0A2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.\0A3. This notice may not be removed or altered from any source distribution.\0A*/\0A//Originally written by Takahiro Harada\0A#ifndef B3_CONTACT4DATA_H\0A#define B3_CONTACT4DATA_H\0A#ifndef B3_FLOAT4_H\0A#define B3_FLOAT4_H\0A#ifndef B3_PLATFORM_DEFINITIONS_H\0A#define B3_PLATFORM_DEFINITIONS_H\0Astruct MyTest\0A{\0A\09int bla;\0A};\0A#ifdef __cplusplus\0A#else\0A//keep B3_LARGE_FLOAT*B3_LARGE_FLOAT < FLT_MAX\0A#define B3_LARGE_FLOAT 1e18f\0A#define B3_INFINITY 1e18f\0A#define b3Assert(a)\0A#define b3ConstArray(a) __global const a*\0A#define b3AtomicInc atomic_inc\0A#define b3AtomicAdd atomic_add\0A#define b3Fabs fabs\0A#define b3Sqrt native_sqrt\0A#define b3Sin native_sin\0A#define b3Cos native_cos\0A#define B3_STATIC\0A#endif\0A#endif\0A#ifdef __cplusplus\0A#else\0A\09typedef float4\09b3Float4;\0A\09#define b3Float4ConstArg const b3Float4\0A\09#define b3MakeFloat4 (float4)\0A\09float b3Dot3F4(b3Float4ConstArg v0,b3Float4ConstArg v1)\0A\09{\0A\09\09float4 a1 = b3MakeFloat4(v0.xyz,0.f);\0A\09\09float4 b1 = b3MakeFloat4(v1.xyz,0.f);\0A\09\09return dot(a1, b1);\0A\09}\0A\09b3Float4 b3Cross3(b3Float4ConstArg v0,b3Float4ConstArg v1)\0A\09{\0A\09\09float4 a1 = b3MakeFloat4(v0.xyz,0.f);\0A\09\09float4 b1 = b3MakeFloat4(v1.xyz,0.f);\0A\09\09return cross(a1, b1);\0A\09}\0A\09#define b3MinFloat4 min\0A\09#define b3MaxFloat4 max\0A\09#define b3Normalized(a) normalize(a)\0A#endif \0A\09\09\0Ainline bool b3IsAlmostZero(b3Float4ConstArg v)\0A{\0A\09if(b3Fabs(v.x)>1e-6 || b3Fabs(v.y)>1e-6 || b3Fabs(v.z)>1e-6)\09\0A\09\09return false;\0A\09return true;\0A}\0Ainline int    b3MaxDot( b3Float4ConstArg vec, __global const b3Float4* vecArray, int vecLen, float* dotOut )\0A{\0A    float maxDot = -B3_INFINITY;\0A    int i = 0;\0A    int ptIndex = -1;\0A    for( i = 0; i < vecLen; i++ )\0A    {\0A        float dot = b3Dot3F4(vecArray[i],vec);\0A            \0A        if( dot > maxDot )\0A        {\0A            maxDot = dot;\0A            ptIndex = i;\0A        }\0A    }\0A\09b3Assert(ptIndex>=0);\0A    if (ptIndex<0)\0A\09{\0A\09\09ptIndex = 0;\0A\09}\0A    *dotOut = maxDot;\0A    return ptIndex;\0A}\0A#endif //B3_FLOAT4_H\0Atypedef  struct b3Contact4Data b3Contact4Data_t;\0Astruct b3Contact4Data\0A{\0A\09b3Float4\09m_worldPosB[4];\0A//\09b3Float4\09m_localPosA[4];\0A//\09b3Float4\09m_localPosB[4];\0A\09b3Float4\09m_worldNormalOnB;\09//\09w: m_nPoints\0A\09unsigned short  m_restituitionCoeffCmp;\0A\09unsigned short  m_frictionCoeffCmp;\0A\09int m_batchIdx;\0A\09int m_bodyAPtrAndSignBit;//x:m_bodyAPtr, y:m_bodyBPtr\0A\09int m_bodyBPtrAndSignBit;\0A\09int\09m_childIndexA;\0A\09int\09m_childIndexB;\0A\09int m_unused1;\0A\09int m_unused2;\0A};\0Ainline int b3Contact4Data_getNumPoints(const struct b3Contact4Data* contact)\0A{\0A\09return (int)contact->m_worldNormalOnB.w;\0A};\0Ainline void b3Contact4Data_setNumPoints(struct b3Contact4Data* contact, int numPoints)\0A{\0A\09contact->m_worldNormalOnB.w = (float)numPoints;\0A};\0A#endif //B3_CONTACT4DATA_H\0A#ifndef B3_CONTACT_CONSTRAINT5_H\0A#define B3_CONTACT_CONSTRAINT5_H\0A#ifndef B3_FLOAT4_H\0A#ifdef __cplusplus\0A#else\0A#endif \0A#endif //B3_FLOAT4_H\0Atypedef struct b3ContactConstraint4 b3ContactConstraint4_t;\0Astruct b3ContactConstraint4\0A{\0A\09b3Float4 m_linear;//normal?\0A\09b3Float4 m_worldPos[4];\0A\09b3Float4 m_center;\09//\09friction\0A\09float m_jacCoeffInv[4];\0A\09float m_b[4];\0A\09float m_appliedRambdaDt[4];\0A\09float m_fJacCoeffInv[2];\09//\09friction\0A\09float m_fAppliedRambdaDt[2];\09//\09friction\0A\09unsigned int m_bodyA;\0A\09unsigned int m_bodyB;\0A\09int\09\09\09m_batchIdx;\0A\09unsigned int m_paddings;\0A};\0A//inline\09void setFrictionCoeff(float value) { m_linear[3] = value; }\0Ainline\09float b3GetFrictionCoeff(b3ContactConstraint4_t* constraint) \0A{\0A\09return constraint->m_linear.w; \0A}\0A#endif //B3_CONTACT_CONSTRAINT5_H\0A#ifndef B3_RIGIDBODY_DATA_H\0A#define B3_RIGIDBODY_DATA_H\0A#ifndef B3_FLOAT4_H\0A#ifdef __cplusplus\0A#else\0A#endif \0A#endif //B3_FLOAT4_H\0A#ifndef B3_QUAT_H\0A#define B3_QUAT_H\0A#ifndef B3_PLATFORM_DEFINITIONS_H\0A#ifdef __cplusplus\0A#else\0A#endif\0A#endif\0A#ifndef B3_FLOAT4_H\0A#ifdef __cplusplus\0A#else\0A#endif \0A#endif //B3_FLOAT4_H\0A#ifdef __cplusplus\0A#else\0A\09typedef float4\09b3Quat;\0A\09#define b3QuatConstArg const b3Quat\0A\09\0A\09\0Ainline float4 b3FastNormalize4(float4 v)\0A{\0A\09v = (float4)(v.xyz,0.f);\0A\09return fast_normalize(v);\0A}\0A\09\0Ainline b3Quat b3QuatMul(b3Quat a, b3Quat b);\0Ainline b3Quat b3QuatNormalized(b3QuatConstArg in);\0Ainline b3Quat b3QuatRotate(b3QuatConstArg q, b3QuatConstArg vec);\0Ainline b3Quat b3QuatInvert(b3QuatConstArg q);\0Ainline b3Quat b3QuatInverse(b3QuatConstArg q);\0Ainline b3Quat b3QuatMul(b3QuatConstArg a, b3QuatConstArg b)\0A{\0A\09b3Quat ans;\0A\09ans = b3Cross3( a, b );\0A\09ans += a.w*b+b.w*a;\0A//\09ans.w = a.w*b.w - (a.x*b.x+a.y*b.y+a.z*b.z);\0A\09ans.w = a.w*b.w - b3Dot3F4(a, b);\0A\09return ans;\0A}\0Ainline b3Quat b3QuatNormalized(b3QuatConstArg in)\0A{\0A\09b3Quat q;\0A\09q=in;\0A\09//return b3FastNormalize4(in);\0A\09float len = native_sqrt(dot(q, q));\0A\09if(len > 0.f)\0A\09{\0A\09\09q *= 1.f / len;\0A\09}\0A\09else\0A\09{\0A\09\09q.x = q.y = q.z = 0.f;\0A\09\09q.w = 1.f;\0A\09}\0A\09return q;\0A}\0Ainline float4 b3QuatRotate(b3QuatConstArg q, b3QuatConstArg vec)\0A{\0A\09b3Quat qInv = b3QuatInvert( q );\0A\09float4 vcpy = vec;\0A\09vcpy.w = 0.f;\0A\09float4 out = b3QuatMul(b3QuatMul(q,vcpy),qInv);\0A\09return out;\0A}\0Ainline b3Quat b3QuatInverse(b3QuatConstArg q)\0A{\0A\09return (b3Quat)(-q.xyz, q.w);\0A}\0Ainline b3Quat b3QuatInvert(b3QuatConstArg q)\0A{\0A\09return (b3Quat)(-q.xyz, q.w);\0A}\0Ainline float4 b3QuatInvRotate(b3QuatConstArg q, b3QuatConstArg vec)\0A{\0A\09return b3QuatRotate( b3QuatInvert( q ), vec );\0A}\0Ainline b3Float4 b3TransformPoint(b3Float4ConstArg point, b3Float4ConstArg translation, b3QuatConstArg  orientation)\0A{\0A\09return b3QuatRotate( orientation, point ) + (translation);\0A}\0A\09\0A#endif \0A#endif //B3_QUAT_H\0A#ifndef B3_MAT3x3_H\0A#define B3_MAT3x3_H\0A#ifndef B3_QUAT_H\0A#ifdef __cplusplus\0A#else\0A#endif \0A#endif //B3_QUAT_H\0A#ifdef __cplusplus\0A#else\0Atypedef struct\0A{\0A\09b3Float4 m_row[3];\0A}b3Mat3x3;\0A#define b3Mat3x3ConstArg const b3Mat3x3\0A#define b3GetRow(m,row) (m.m_row[row])\0Ainline b3Mat3x3 b3QuatGetRotationMatrix(b3Quat quat)\0A{\0A\09b3Float4 quat2 = (b3Float4)(quat.x*quat.x, quat.y*quat.y, quat.z*quat.z, 0.f);\0A\09b3Mat3x3 out;\0A\09out.m_row[0].x=1-2*quat2.y-2*quat2.z;\0A\09out.m_row[0].y=2*quat.x*quat.y-2*quat.w*quat.z;\0A\09out.m_row[0].z=2*quat.x*quat.z+2*quat.w*quat.y;\0A\09out.m_row[0].w = 0.f;\0A\09out.m_row[1].x=2*quat.x*quat.y+2*quat.w*quat.z;\0A\09out.m_row[1].y=1-2*quat2.x-2*quat2.z;\0A\09out.m_row[1].z=2*quat.y*quat.z-2*quat.w*quat.x;\0A\09out.m_row[1].w = 0.f;\0A\09out.m_row[2].x=2*quat.x*quat.z-2*quat.w*quat.y;\0A\09out.m_row[2].y=2*quat.y*quat.z+2*quat.w*quat.x;\0A\09out.m_row[2].z=1-2*quat2.x-2*quat2.y;\0A\09out.m_row[2].w = 0.f;\0A\09return out;\0A}\0Ainline b3Mat3x3 b3AbsoluteMat3x3(b3Mat3x3ConstArg matIn)\0A{\0A\09b3Mat3x3 out;\0A\09out.m_row[0] = fabs(matIn.m_row[0]);\0A\09out.m_row[1] = fabs(matIn.m_row[1]);\0A\09out.m_row[2] = fabs(matIn.m_row[2]);\0A\09return out;\0A}\0A__inline\0Ab3Mat3x3 mtZero();\0A__inline\0Ab3Mat3x3 mtIdentity();\0A__inline\0Ab3Mat3x3 mtTranspose(b3Mat3x3 m);\0A__inline\0Ab3Mat3x3 mtMul(b3Mat3x3 a, b3Mat3x3 b);\0A__inline\0Ab3Float4 mtMul1(b3Mat3x3 a, b3Float4 b);\0A__inline\0Ab3Float4 mtMul3(b3Float4 a, b3Mat3x3 b);\0A__inline\0Ab3Mat3x3 mtZero()\0A{\0A\09b3Mat3x3 m;\0A\09m.m_row[0] = (b3Float4)(0.f);\0A\09m.m_row[1] = (b3Float4)(0.f);\0A\09m.m_row[2] = (b3Float4)(0.f);\0A\09return m;\0A}\0A__inline\0Ab3Mat3x3 mtIdentity()\0A{\0A\09b3Mat3x3 m;\0A\09m.m_row[0] = (b3Float4)(1,0,0,0);\0A\09m.m_row[1] = (b3Float4)(0,1,0,0);\0A\09m.m_row[2] = (b3Float4)(0,0,1,0);\0A\09return m;\0A}\0A__inline\0Ab3Mat3x3 mtTranspose(b3Mat3x3 m)\0A{\0A\09b3Mat3x3 out;\0A\09out.m_row[0] = (b3Float4)(m.m_row[0].x, m.m_row[1].x, m.m_row[2].x, 0.f);\0A\09out.m_row[1] = (b3Float4)(m.m_row[0].y, m.m_row[1].y, m.m_row[2].y, 0.f);\0A\09out.m_row[2] = (b3Float4)(m.m_row[0].z, m.m_row[1].z, m.m_row[2].z, 0.f);\0A\09return out;\0A}\0A__inline\0Ab3Mat3x3 mtMul(b3Mat3x3 a, b3Mat3x3 b)\0A{\0A\09b3Mat3x3 transB;\0A\09transB = mtTranspose( b );\0A\09b3Mat3x3 ans;\0A\09//\09why this doesn't run when 0ing in the for{}\0A\09a.m_row[0].w = 0.f;\0A\09a.m_row[1].w = 0.f;\0A\09a.m_row[2].w = 0.f;\0A\09for(int i=0; i<3; i++)\0A\09{\0A//\09a.m_row[i].w = 0.f;\0A\09\09ans.m_row[i].x = b3Dot3F4(a.m_row[i],transB.m_row[0]);\0A\09\09ans.m_row[i].y = b3Dot3F4(a.m_row[i],transB.m_row[1]);\0A\09\09ans.m_row[i].z = b3Dot3F4(a.m_row[i],transB.m_row[2]);\0A\09\09ans.m_row[i].w = 0.f;\0A\09}\0A\09return ans;\0A}\0A__inline\0Ab3Float4 mtMul1(b3Mat3x3 a, b3Float4 b)\0A{\0A\09b3Float4 ans;\0A\09ans.x = b3Dot3F4( a.m_row[0], b );\0A\09ans.y = b3Dot3F4( a.m_row[1], b );\0A\09ans.z = b3Dot3F4( a.m_row[2], b );\0A\09ans.w = 0.f;\0A\09return ans;\0A}\0A__inline\0Ab3Float4 mtMul3(b3Float4 a, b3Mat3x3 b)\0A{\0A\09b3Float4 colx = b3MakeFloat4(b.m_row[0].x, b.m_row[1].x, b.m_row[2].x, 0);\0A\09b3Float4 coly = b3MakeFloat4(b.m_row[0].y, b.m_row[1].y, b.m_row[2].y, 0);\0A\09b3Float4 colz = b3MakeFloat4(b.m_row[0].z, b.m_row[1].z, b.m_row[2].z, 0);\0A\09b3Float4 ans;\0A\09ans.x = b3Dot3F4( a, colx );\0A\09ans.y = b3Dot3F4( a, coly );\0A\09ans.z = b3Dot3F4( a, colz );\0A\09return ans;\0A}\0A#endif\0A#endif //B3_MAT3x3_H\0Atypedef struct b3RigidBodyData b3RigidBodyData_t;\0Astruct b3RigidBodyData\0A{\0A\09b3Float4\09\09\09\09m_pos;\0A\09b3Quat\09\09\09\09\09m_quat;\0A\09b3Float4\09\09\09\09m_linVel;\0A\09b3Float4\09\09\09\09m_angVel;\0A\09int \09\09\09\09\09m_collidableIdx;\0A\09float \09\09\09\09m_invMass;\0A\09float \09\09\09\09m_restituitionCoeff;\0A\09float \09\09\09\09m_frictionCoeff;\0A};\0Atypedef struct b3InertiaData b3InertiaData_t;\0Astruct b3InertiaData\0A{\0A\09b3Mat3x3 m_invInertiaWorld;\0A\09b3Mat3x3 m_initInvInertia;\0A};\0A#endif //B3_RIGIDBODY_DATA_H\0A\09\0Avoid b3PlaneSpace1 (b3Float4ConstArg n, b3Float4* p, b3Float4* q);\0A void b3PlaneSpace1 (b3Float4ConstArg n, b3Float4* p, b3Float4* q)\0A{\0A  if (b3Fabs(n.z) > 0.70710678f) {\0A    // choose p in y-z plane\0A    float a = n.y*n.y + n.z*n.z;\0A    float k = 1.f/sqrt(a);\0A    p[0].x = 0;\0A\09p[0].y = -n.z*k;\0A\09p[0].z = n.y*k;\0A    // set q = n x p\0A    q[0].x = a*k;\0A\09q[0].y = -n.x*p[0].z;\0A\09q[0].z = n.x*p[0].y;\0A  }\0A  else {\0A    // choose p in x-y plane\0A    float a = n.x*n.x + n.y*n.y;\0A    float k = 1.f/sqrt(a);\0A    p[0].x = -n.y*k;\0A\09p[0].y = n.x*k;\0A\09p[0].z = 0;\0A    // set q = n x p\0A    q[0].x = -n.z*p[0].y;\0A\09q[0].y = n.z*p[0].x;\0A\09q[0].z = a*k;\0A  }\0A}\0A \0Avoid setLinearAndAngular( b3Float4ConstArg n, b3Float4ConstArg r0, b3Float4ConstArg r1, b3Float4* linear, b3Float4* angular0, b3Float4* angular1)\0A{\0A\09*linear = b3MakeFloat4(n.x,n.y,n.z,0.f);\0A\09*angular0 = b3Cross3(r0, n);\0A\09*angular1 = -b3Cross3(r1, n);\0A}\0Afloat calcRelVel( b3Float4ConstArg l0, b3Float4ConstArg l1, b3Float4ConstArg a0, b3Float4ConstArg a1, b3Float4ConstArg linVel0,\0A\09b3Float4ConstArg angVel0, b3Float4ConstArg linVel1, b3Float4ConstArg angVel1 )\0A{\0A\09return b3Dot3F4(l0, linVel0) + b3Dot3F4(a0, angVel0) + b3Dot3F4(l1, linVel1) + b3Dot3F4(a1, angVel1);\0A}\0Afloat calcJacCoeff(b3Float4ConstArg linear0, b3Float4ConstArg linear1, b3Float4ConstArg angular0, b3Float4ConstArg angular1,\0A\09\09\09\09\09float invMass0, const b3Mat3x3* invInertia0, float invMass1, const b3Mat3x3* invInertia1)\0A{\0A\09//\09linear0,1 are normlized\0A\09float jmj0 = invMass0;//b3Dot3F4(linear0, linear0)*invMass0;\0A\09float jmj1 = b3Dot3F4(mtMul3(angular0,*invInertia0), angular0);\0A\09float jmj2 = invMass1;//b3Dot3F4(linear1, linear1)*invMass1;\0A\09float jmj3 = b3Dot3F4(mtMul3(angular1,*invInertia1), angular1);\0A\09return -1.f/(jmj0+jmj1+jmj2+jmj3);\0A}\0Avoid setConstraint4( b3Float4ConstArg posA, b3Float4ConstArg linVelA, b3Float4ConstArg angVelA, float invMassA, b3Mat3x3ConstArg invInertiaA,\0A\09b3Float4ConstArg posB, b3Float4ConstArg linVelB, b3Float4ConstArg angVelB, float invMassB, b3Mat3x3ConstArg invInertiaB, \0A\09__global struct b3Contact4Data* src, float dt, float positionDrift, float positionConstraintCoeff,\0A\09b3ContactConstraint4_t* dstC )\0A{\0A\09dstC->m_bodyA = abs(src->m_bodyAPtrAndSignBit);\0A\09dstC->m_bodyB = abs(src->m_bodyBPtrAndSignBit);\0A\09float dtInv = 1.f/dt;\0A\09for(int ic=0; ic<4; ic++)\0A\09{\0A\09\09dstC->m_appliedRambdaDt[ic] = 0.f;\0A\09}\0A\09dstC->m_fJacCoeffInv[0] = dstC->m_fJacCoeffInv[1] = 0.f;\0A\09dstC->m_linear = src->m_worldNormalOnB;\0A\09dstC->m_linear.w = 0.7f ;//src->getFrictionCoeff() );\0A\09for(int ic=0; ic<4; ic++)\0A\09{\0A\09\09b3Float4 r0 = src->m_worldPosB[ic] - posA;\0A\09\09b3Float4 r1 = src->m_worldPosB[ic] - posB;\0A\09\09if( ic >= src->m_worldNormalOnB.w )//npoints\0A\09\09{\0A\09\09\09dstC->m_jacCoeffInv[ic] = 0.f;\0A\09\09\09continue;\0A\09\09}\0A\09\09float relVelN;\0A\09\09{\0A\09\09\09b3Float4 linear, angular0, angular1;\0A\09\09\09setLinearAndAngular(src->m_worldNormalOnB, r0, r1, &linear, &angular0, &angular1);\0A\09\09\09dstC->m_jacCoeffInv[ic] = calcJacCoeff(linear, -linear, angular0, angular1,\0A\09\09\09\09invMassA, &invInertiaA, invMassB, &invInertiaB );\0A\09\09\09relVelN = calcRelVel(linear, -linear, angular0, angular1,\0A\09\09\09\09linVelA, angVelA, linVelB, angVelB);\0A\09\09\09float e = 0.f;//src->getRestituitionCoeff();\0A\09\09\09if( relVelN*relVelN < 0.004f ) e = 0.f;\0A\09\09\09dstC->m_b[ic] = e*relVelN;\0A\09\09\09//float penetration = src->m_worldPosB[ic].w;\0A\09\09\09dstC->m_b[ic] += (src->m_worldPosB[ic].w + positionDrift)*positionConstraintCoeff*dtInv;\0A\09\09\09dstC->m_appliedRambdaDt[ic] = 0.f;\0A\09\09}\0A\09}\0A\09if( src->m_worldNormalOnB.w > 0 )//npoints\0A\09{\09//\09prepare friction\0A\09\09b3Float4 center = b3MakeFloat4(0.f,0.f,0.f,0.f);\0A\09\09for(int i=0; i<src->m_worldNormalOnB.w; i++) \0A\09\09\09center += src->m_worldPosB[i];\0A\09\09center /= (float)src->m_worldNormalOnB.w;\0A\09\09b3Float4 tangent[2];\0A\09\09b3PlaneSpace1(src->m_worldNormalOnB,&tangent[0],&tangent[1]);\0A\09\09\0A\09\09b3Float4 r[2];\0A\09\09r[0] = center - posA;\0A\09\09r[1] = center - posB;\0A\09\09for(int i=0; i<2; i++)\0A\09\09{\0A\09\09\09b3Float4 linear, angular0, angular1;\0A\09\09\09setLinearAndAngular(tangent[i], r[0], r[1], &linear, &angular0, &angular1);\0A\09\09\09dstC->m_fJacCoeffInv[i] = calcJacCoeff(linear, -linear, angular0, angular1,\0A\09\09\09\09invMassA, &invInertiaA, invMassB, &invInertiaB );\0A\09\09\09dstC->m_fAppliedRambdaDt[i] = 0.f;\0A\09\09}\0A\09\09dstC->m_center = center;\0A\09}\0A\09for(int i=0; i<4; i++)\0A\09{\0A\09\09if( i<src->m_worldNormalOnB.w )\0A\09\09{\0A\09\09\09dstC->m_worldPos[i] = src->m_worldPosB[i];\0A\09\09}\0A\09\09else\0A\09\09{\0A\09\09\09dstC->m_worldPos[i] = b3MakeFloat4(0.f,0.f,0.f,0.f);\0A\09\09}\0A\09}\0A}\0A#pragma OPENCL EXTENSION cl_amd_printf : enable\0A#pragma OPENCL EXTENSION cl_khr_local_int32_base_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_local_int32_extended_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable\0A#ifdef cl_ext_atomic_counters_32\0A#pragma OPENCL EXTENSION cl_ext_atomic_counters_32 : enable\0A#else\0A#define counter32_t volatile global int*\0A#endif\0Atypedef unsigned int u32;\0Atypedef unsigned short u16;\0Atypedef unsigned char u8;\0A#define GET_GROUP_IDX get_group_id(0)\0A#define GET_LOCAL_IDX get_local_id(0)\0A#define GET_GLOBAL_IDX get_global_id(0)\0A#define GET_GROUP_SIZE get_local_size(0)\0A#define GET_NUM_GROUPS get_num_groups(0)\0A#define GROUP_LDS_BARRIER barrier(CLK_LOCAL_MEM_FENCE)\0A#define GROUP_MEM_FENCE mem_fence(CLK_LOCAL_MEM_FENCE)\0A#define AtomInc(x) atom_inc(&(x))\0A#define AtomInc1(x, out) out = atom_inc(&(x))\0A#define AppendInc(x, out) out = atomic_inc(x)\0A#define AtomAdd(x, value) atom_add(&(x), value)\0A#define AtomCmpxhg(x, cmp, value) atom_cmpxchg( &(x), cmp, value )\0A#define AtomXhg(x, value) atom_xchg ( &(x), value )\0A#define SELECT_UINT4( b, a, condition ) select( b,a,condition )\0A#define make_float4 (float4)\0A#define make_float2 (float2)\0A#define make_uint4 (uint4)\0A#define make_int4 (int4)\0A#define make_uint2 (uint2)\0A#define make_int2 (int2)\0A#define max2 max\0A#define min2 min\0A///////////////////////////////////////\0A//\09Vector\0A///////////////////////////////////////\0A__inline\0Afloat fastDiv(float numerator, float denominator)\0A{\0A\09return native_divide(numerator, denominator);\09\0A//\09return numerator/denominator;\09\0A}\0A__inline\0Afloat4 fastDiv4(float4 numerator, float4 denominator)\0A{\0A\09return native_divide(numerator, denominator);\09\0A}\0A__inline\0Afloat fastSqrtf(float f2)\0A{\0A\09return native_sqrt(f2);\0A//\09return sqrt(f2);\0A}\0A__inline\0Afloat fastRSqrt(float f2)\0A{\0A\09return native_rsqrt(f2);\0A}\0A__inline\0Afloat fastLength4(float4 v)\0A{\0A\09return fast_length(v);\0A}\0A__inline\0Afloat4 fastNormalize4(float4 v)\0A{\0A\09return fast_normalize(v);\0A}\0A__inline\0Afloat sqrtf(float a)\0A{\0A//\09return sqrt(a);\0A\09return native_sqrt(a);\0A}\0A__inline\0Afloat4 cross3(float4 a, float4 b)\0A{\0A\09return cross(a,b);\0A}\0A__inline\0Afloat dot3F4(float4 a, float4 b)\0A{\0A\09float4 a1 = make_float4(a.xyz,0.f);\0A\09float4 b1 = make_float4(b.xyz,0.f);\0A\09return dot(a1, b1);\0A}\0A__inline\0Afloat length3(const float4 a)\0A{\0A\09return sqrtf(dot3F4(a,a));\0A}\0A__inline\0Afloat dot4(const float4 a, const float4 b)\0A{\0A\09return dot( a, b );\0A}\0A//\09for height\0A__inline\0Afloat dot3w1(const float4 point, const float4 eqn)\0A{\0A\09return dot3F4(point,eqn) + eqn.w;\0A}\0A__inline\0Afloat4 normalize3(const float4 a)\0A{\0A\09float4 n = make_float4(a.x, a.y, a.z, 0.f);\0A\09return fastNormalize4( n );\0A//\09float length = sqrtf(dot3F4(a, a));\0A//\09return 1.f/length * a;\0A}\0A__inline\0Afloat4 normalize4(const float4 a)\0A{\0A\09float length = sqrtf(dot4(a, a));\0A\09return 1.f/length * a;\0A}\0A__inline\0Afloat4 createEquation(const float4 a, const float4 b, const float4 c)\0A{\0A\09float4 eqn;\0A\09float4 ab = b-a;\0A\09float4 ac = c-a;\0A\09eqn = normalize3( cross3(ab, ac) );\0A\09eqn.w = -dot3F4(eqn,a);\0A\09return eqn;\0A}\0A#define WG_SIZE 64\0Atypedef struct\0A{\0A\09int m_nConstraints;\0A\09int m_start;\0A\09int m_batchIdx;\0A\09int m_nSplit;\0A//\09int m_paddings[1];\0A} ConstBuffer;\0Atypedef struct\0A{\0A\09int m_solveFriction;\0A\09int m_maxBatch;\09//\09long batch really kills the performance\0A\09int m_batchIdx;\0A\09int m_nSplit;\0A//\09int m_paddings[1];\0A} ConstBufferBatchSolve;\0A \0Atypedef struct \0A{\0A\09int m_valInt0;\0A\09int m_valInt1;\0A\09int m_valInt2;\0A\09int m_valInt3;\0A\09float m_val0;\0A\09float m_val1;\0A\09float m_val2;\0A\09float m_val3;\0A} SolverDebugInfo;\0Atypedef struct\0A{\0A\09int m_nContacts;\0A\09float m_dt;\0A\09float m_positionDrift;\0A\09float m_positionConstraintCoeff;\0A} ConstBufferCTC;\0A__kernel\0A__attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid ContactToConstraintKernel(__global struct b3Contact4Data* gContact, __global b3RigidBodyData_t* gBodies, __global b3InertiaData_t* gShapes, __global b3ContactConstraint4_t* gConstraintOut, \0Aint nContacts,\0Afloat dt,\0Afloat positionDrift,\0Afloat positionConstraintCoeff\0A)\0A{\0A\09int gIdx = GET_GLOBAL_IDX;\0A\09\0A\09if( gIdx < nContacts )\0A\09{\0A\09\09int aIdx = abs(gContact[gIdx].m_bodyAPtrAndSignBit);\0A\09\09int bIdx = abs(gContact[gIdx].m_bodyBPtrAndSignBit);\0A\09\09float4 posA = gBodies[aIdx].m_pos;\0A\09\09float4 linVelA = gBodies[aIdx].m_linVel;\0A\09\09float4 angVelA = gBodies[aIdx].m_angVel;\0A\09\09float invMassA = gBodies[aIdx].m_invMass;\0A\09\09b3Mat3x3 invInertiaA = gShapes[aIdx].m_initInvInertia;\0A\09\09float4 posB = gBodies[bIdx].m_pos;\0A\09\09float4 linVelB = gBodies[bIdx].m_linVel;\0A\09\09float4 angVelB = gBodies[bIdx].m_angVel;\0A\09\09float invMassB = gBodies[bIdx].m_invMass;\0A\09\09b3Mat3x3 invInertiaB = gShapes[bIdx].m_initInvInertia;\0A\09\09b3ContactConstraint4_t cs;\0A    \09setConstraint4( posA, linVelA, angVelA, invMassA, invInertiaA, posB, linVelB, angVelB, invMassB, invInertiaB,\0A\09\09\09&gContact[gIdx], dt, positionDrift, positionConstraintCoeff,\0A\09\09\09&cs );\0A\09\09\0A\09\09cs.m_batchIdx = gContact[gIdx].m_batchIdx;\0A\09\09gConstraintOut[gIdx] = cs;\0A\09}\0A}\0A\00", align 1
@.str.66 = private unnamed_addr constant [14878 x i8] c"/*\0ACopyright (c) 2012 Advanced Micro Devices, Inc.  \0AThis software is provided 'as-is', without any express or implied warranty.\0AIn no event will the authors be held liable for any damages arising from the use of this software.\0APermission is granted to anyone to use this software for any purpose, \0Aincluding commercial applications, and to alter it and redistribute it freely, \0Asubject to the following restrictions:\0A1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.\0A2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.\0A3. This notice may not be removed or altered from any source distribution.\0A*/\0A//Originally written by Takahiro Harada\0A#ifndef B3_CONTACT4DATA_H\0A#define B3_CONTACT4DATA_H\0A#ifndef B3_FLOAT4_H\0A#define B3_FLOAT4_H\0A#ifndef B3_PLATFORM_DEFINITIONS_H\0A#define B3_PLATFORM_DEFINITIONS_H\0Astruct MyTest\0A{\0A\09int bla;\0A};\0A#ifdef __cplusplus\0A#else\0A//keep B3_LARGE_FLOAT*B3_LARGE_FLOAT < FLT_MAX\0A#define B3_LARGE_FLOAT 1e18f\0A#define B3_INFINITY 1e18f\0A#define b3Assert(a)\0A#define b3ConstArray(a) __global const a*\0A#define b3AtomicInc atomic_inc\0A#define b3AtomicAdd atomic_add\0A#define b3Fabs fabs\0A#define b3Sqrt native_sqrt\0A#define b3Sin native_sin\0A#define b3Cos native_cos\0A#define B3_STATIC\0A#endif\0A#endif\0A#ifdef __cplusplus\0A#else\0A\09typedef float4\09b3Float4;\0A\09#define b3Float4ConstArg const b3Float4\0A\09#define b3MakeFloat4 (float4)\0A\09float b3Dot3F4(b3Float4ConstArg v0,b3Float4ConstArg v1)\0A\09{\0A\09\09float4 a1 = b3MakeFloat4(v0.xyz,0.f);\0A\09\09float4 b1 = b3MakeFloat4(v1.xyz,0.f);\0A\09\09return dot(a1, b1);\0A\09}\0A\09b3Float4 b3Cross3(b3Float4ConstArg v0,b3Float4ConstArg v1)\0A\09{\0A\09\09float4 a1 = b3MakeFloat4(v0.xyz,0.f);\0A\09\09float4 b1 = b3MakeFloat4(v1.xyz,0.f);\0A\09\09return cross(a1, b1);\0A\09}\0A\09#define b3MinFloat4 min\0A\09#define b3MaxFloat4 max\0A\09#define b3Normalized(a) normalize(a)\0A#endif \0A\09\09\0Ainline bool b3IsAlmostZero(b3Float4ConstArg v)\0A{\0A\09if(b3Fabs(v.x)>1e-6 || b3Fabs(v.y)>1e-6 || b3Fabs(v.z)>1e-6)\09\0A\09\09return false;\0A\09return true;\0A}\0Ainline int    b3MaxDot( b3Float4ConstArg vec, __global const b3Float4* vecArray, int vecLen, float* dotOut )\0A{\0A    float maxDot = -B3_INFINITY;\0A    int i = 0;\0A    int ptIndex = -1;\0A    for( i = 0; i < vecLen; i++ )\0A    {\0A        float dot = b3Dot3F4(vecArray[i],vec);\0A            \0A        if( dot > maxDot )\0A        {\0A            maxDot = dot;\0A            ptIndex = i;\0A        }\0A    }\0A\09b3Assert(ptIndex>=0);\0A    if (ptIndex<0)\0A\09{\0A\09\09ptIndex = 0;\0A\09}\0A    *dotOut = maxDot;\0A    return ptIndex;\0A}\0A#endif //B3_FLOAT4_H\0Atypedef  struct b3Contact4Data b3Contact4Data_t;\0Astruct b3Contact4Data\0A{\0A\09b3Float4\09m_worldPosB[4];\0A//\09b3Float4\09m_localPosA[4];\0A//\09b3Float4\09m_localPosB[4];\0A\09b3Float4\09m_worldNormalOnB;\09//\09w: m_nPoints\0A\09unsigned short  m_restituitionCoeffCmp;\0A\09unsigned short  m_frictionCoeffCmp;\0A\09int m_batchIdx;\0A\09int m_bodyAPtrAndSignBit;//x:m_bodyAPtr, y:m_bodyBPtr\0A\09int m_bodyBPtrAndSignBit;\0A\09int\09m_childIndexA;\0A\09int\09m_childIndexB;\0A\09int m_unused1;\0A\09int m_unused2;\0A};\0Ainline int b3Contact4Data_getNumPoints(const struct b3Contact4Data* contact)\0A{\0A\09return (int)contact->m_worldNormalOnB.w;\0A};\0Ainline void b3Contact4Data_setNumPoints(struct b3Contact4Data* contact, int numPoints)\0A{\0A\09contact->m_worldNormalOnB.w = (float)numPoints;\0A};\0A#endif //B3_CONTACT4DATA_H\0A#pragma OPENCL EXTENSION cl_amd_printf : enable\0A#pragma OPENCL EXTENSION cl_khr_local_int32_base_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_local_int32_extended_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable\0A#ifdef cl_ext_atomic_counters_32\0A#pragma OPENCL EXTENSION cl_ext_atomic_counters_32 : enable\0A#else\0A#define counter32_t volatile global int*\0A#endif\0Atypedef unsigned int u32;\0Atypedef unsigned short u16;\0Atypedef unsigned char u8;\0A#define GET_GROUP_IDX get_group_id(0)\0A#define GET_LOCAL_IDX get_local_id(0)\0A#define GET_GLOBAL_IDX get_global_id(0)\0A#define GET_GROUP_SIZE get_local_size(0)\0A#define GET_NUM_GROUPS get_num_groups(0)\0A#define GROUP_LDS_BARRIER barrier(CLK_LOCAL_MEM_FENCE)\0A#define GROUP_MEM_FENCE mem_fence(CLK_LOCAL_MEM_FENCE)\0A#define AtomInc(x) atom_inc(&(x))\0A#define AtomInc1(x, out) out = atom_inc(&(x))\0A#define AppendInc(x, out) out = atomic_inc(x)\0A#define AtomAdd(x, value) atom_add(&(x), value)\0A#define AtomCmpxhg(x, cmp, value) atom_cmpxchg( &(x), cmp, value )\0A#define AtomXhg(x, value) atom_xchg ( &(x), value )\0A#define SELECT_UINT4( b, a, condition ) select( b,a,condition )\0A#define make_float4 (float4)\0A#define make_float2 (float2)\0A#define make_uint4 (uint4)\0A#define make_int4 (int4)\0A#define make_uint2 (uint2)\0A#define make_int2 (int2)\0A#define max2 max\0A#define min2 min\0A///////////////////////////////////////\0A//\09Vector\0A///////////////////////////////////////\0A__inline\0Afloat fastDiv(float numerator, float denominator)\0A{\0A\09return native_divide(numerator, denominator);\09\0A//\09return numerator/denominator;\09\0A}\0A__inline\0Afloat4 fastDiv4(float4 numerator, float4 denominator)\0A{\0A\09return native_divide(numerator, denominator);\09\0A}\0A__inline\0Afloat fastSqrtf(float f2)\0A{\0A\09return native_sqrt(f2);\0A//\09return sqrt(f2);\0A}\0A__inline\0Afloat fastRSqrt(float f2)\0A{\0A\09return native_rsqrt(f2);\0A}\0A__inline\0Afloat fastLength4(float4 v)\0A{\0A\09return fast_length(v);\0A}\0A__inline\0Afloat4 fastNormalize4(float4 v)\0A{\0A\09return fast_normalize(v);\0A}\0A__inline\0Afloat sqrtf(float a)\0A{\0A//\09return sqrt(a);\0A\09return native_sqrt(a);\0A}\0A__inline\0Afloat4 cross3(float4 a, float4 b)\0A{\0A\09return cross(a,b);\0A}\0A__inline\0Afloat dot3F4(float4 a, float4 b)\0A{\0A\09float4 a1 = make_float4(a.xyz,0.f);\0A\09float4 b1 = make_float4(b.xyz,0.f);\0A\09return dot(a1, b1);\0A}\0A__inline\0Afloat length3(const float4 a)\0A{\0A\09return sqrtf(dot3F4(a,a));\0A}\0A__inline\0Afloat dot4(const float4 a, const float4 b)\0A{\0A\09return dot( a, b );\0A}\0A//\09for height\0A__inline\0Afloat dot3w1(const float4 point, const float4 eqn)\0A{\0A\09return dot3F4(point,eqn) + eqn.w;\0A}\0A__inline\0Afloat4 normalize3(const float4 a)\0A{\0A\09float4 n = make_float4(a.x, a.y, a.z, 0.f);\0A\09return fastNormalize4( n );\0A//\09float length = sqrtf(dot3F4(a, a));\0A//\09return 1.f/length * a;\0A}\0A__inline\0Afloat4 normalize4(const float4 a)\0A{\0A\09float length = sqrtf(dot4(a, a));\0A\09return 1.f/length * a;\0A}\0A__inline\0Afloat4 createEquation(const float4 a, const float4 b, const float4 c)\0A{\0A\09float4 eqn;\0A\09float4 ab = b-a;\0A\09float4 ac = c-a;\0A\09eqn = normalize3( cross3(ab, ac) );\0A\09eqn.w = -dot3F4(eqn,a);\0A\09return eqn;\0A}\0A///////////////////////////////////////\0A//\09Matrix3x3\0A///////////////////////////////////////\0Atypedef struct\0A{\0A\09float4 m_row[3];\0A}Matrix3x3;\0A__inline\0AMatrix3x3 mtZero();\0A__inline\0AMatrix3x3 mtIdentity();\0A__inline\0AMatrix3x3 mtTranspose(Matrix3x3 m);\0A__inline\0AMatrix3x3 mtMul(Matrix3x3 a, Matrix3x3 b);\0A__inline\0Afloat4 mtMul1(Matrix3x3 a, float4 b);\0A__inline\0Afloat4 mtMul3(float4 a, Matrix3x3 b);\0A__inline\0AMatrix3x3 mtZero()\0A{\0A\09Matrix3x3 m;\0A\09m.m_row[0] = (float4)(0.f);\0A\09m.m_row[1] = (float4)(0.f);\0A\09m.m_row[2] = (float4)(0.f);\0A\09return m;\0A}\0A__inline\0AMatrix3x3 mtIdentity()\0A{\0A\09Matrix3x3 m;\0A\09m.m_row[0] = (float4)(1,0,0,0);\0A\09m.m_row[1] = (float4)(0,1,0,0);\0A\09m.m_row[2] = (float4)(0,0,1,0);\0A\09return m;\0A}\0A__inline\0AMatrix3x3 mtTranspose(Matrix3x3 m)\0A{\0A\09Matrix3x3 out;\0A\09out.m_row[0] = (float4)(m.m_row[0].x, m.m_row[1].x, m.m_row[2].x, 0.f);\0A\09out.m_row[1] = (float4)(m.m_row[0].y, m.m_row[1].y, m.m_row[2].y, 0.f);\0A\09out.m_row[2] = (float4)(m.m_row[0].z, m.m_row[1].z, m.m_row[2].z, 0.f);\0A\09return out;\0A}\0A__inline\0AMatrix3x3 mtMul(Matrix3x3 a, Matrix3x3 b)\0A{\0A\09Matrix3x3 transB;\0A\09transB = mtTranspose( b );\0A\09Matrix3x3 ans;\0A\09//\09why this doesn't run when 0ing in the for{}\0A\09a.m_row[0].w = 0.f;\0A\09a.m_row[1].w = 0.f;\0A\09a.m_row[2].w = 0.f;\0A\09for(int i=0; i<3; i++)\0A\09{\0A//\09a.m_row[i].w = 0.f;\0A\09\09ans.m_row[i].x = dot3F4(a.m_row[i],transB.m_row[0]);\0A\09\09ans.m_row[i].y = dot3F4(a.m_row[i],transB.m_row[1]);\0A\09\09ans.m_row[i].z = dot3F4(a.m_row[i],transB.m_row[2]);\0A\09\09ans.m_row[i].w = 0.f;\0A\09}\0A\09return ans;\0A}\0A__inline\0Afloat4 mtMul1(Matrix3x3 a, float4 b)\0A{\0A\09float4 ans;\0A\09ans.x = dot3F4( a.m_row[0], b );\0A\09ans.y = dot3F4( a.m_row[1], b );\0A\09ans.z = dot3F4( a.m_row[2], b );\0A\09ans.w = 0.f;\0A\09return ans;\0A}\0A__inline\0Afloat4 mtMul3(float4 a, Matrix3x3 b)\0A{\0A\09float4 colx = make_float4(b.m_row[0].x, b.m_row[1].x, b.m_row[2].x, 0);\0A\09float4 coly = make_float4(b.m_row[0].y, b.m_row[1].y, b.m_row[2].y, 0);\0A\09float4 colz = make_float4(b.m_row[0].z, b.m_row[1].z, b.m_row[2].z, 0);\0A\09float4 ans;\0A\09ans.x = dot3F4( a, colx );\0A\09ans.y = dot3F4( a, coly );\0A\09ans.z = dot3F4( a, colz );\0A\09return ans;\0A}\0A///////////////////////////////////////\0A//\09Quaternion\0A///////////////////////////////////////\0Atypedef float4 Quaternion;\0A__inline\0AQuaternion qtMul(Quaternion a, Quaternion b);\0A__inline\0AQuaternion qtNormalize(Quaternion in);\0A__inline\0Afloat4 qtRotate(Quaternion q, float4 vec);\0A__inline\0AQuaternion qtInvert(Quaternion q);\0A__inline\0AQuaternion qtMul(Quaternion a, Quaternion b)\0A{\0A\09Quaternion ans;\0A\09ans = cross3( a, b );\0A\09ans += a.w*b+b.w*a;\0A//\09ans.w = a.w*b.w - (a.x*b.x+a.y*b.y+a.z*b.z);\0A\09ans.w = a.w*b.w - dot3F4(a, b);\0A\09return ans;\0A}\0A__inline\0AQuaternion qtNormalize(Quaternion in)\0A{\0A\09return fastNormalize4(in);\0A//\09in /= length( in );\0A//\09return in;\0A}\0A__inline\0Afloat4 qtRotate(Quaternion q, float4 vec)\0A{\0A\09Quaternion qInv = qtInvert( q );\0A\09float4 vcpy = vec;\0A\09vcpy.w = 0.f;\0A\09float4 out = qtMul(qtMul(q,vcpy),qInv);\0A\09return out;\0A}\0A__inline\0AQuaternion qtInvert(Quaternion q)\0A{\0A\09return (Quaternion)(-q.xyz, q.w);\0A}\0A__inline\0Afloat4 qtInvRotate(const Quaternion q, float4 vec)\0A{\0A\09return qtRotate( qtInvert( q ), vec );\0A}\0A#define WG_SIZE 64\0Atypedef struct\0A{\0A\09float4 m_pos;\0A\09Quaternion m_quat;\0A\09float4 m_linVel;\0A\09float4 m_angVel;\0A\09u32 m_shapeIdx;\0A\09float m_invMass;\0A\09float m_restituitionCoeff;\0A\09float m_frictionCoeff;\0A} Body;\0Atypedef struct\0A{\0A\09Matrix3x3 m_invInertia;\0A\09Matrix3x3 m_initInvInertia;\0A} Shape;\0Atypedef struct\0A{\0A\09float4 m_linear;\0A\09float4 m_worldPos[4];\0A\09float4 m_center;\09\0A\09float m_jacCoeffInv[4];\0A\09float m_b[4];\0A\09float m_appliedRambdaDt[4];\0A\09float m_fJacCoeffInv[2];\09\0A\09float m_fAppliedRambdaDt[2];\09\0A\09u32 m_bodyA;\0A\09u32 m_bodyB;\0A\09int m_batchIdx;\0A\09u32 m_paddings[1];\0A} Constraint4;\0Atypedef struct\0A{\0A\09int m_nConstraints;\0A\09int m_start;\0A\09int m_batchIdx;\0A\09int m_nSplit;\0A//\09int m_paddings[1];\0A} ConstBuffer;\0Atypedef struct\0A{\0A\09int m_solveFriction;\0A\09int m_maxBatch;\09//\09long batch really kills the performance\0A\09int m_batchIdx;\0A\09int m_nSplit;\0A//\09int m_paddings[1];\0A} ConstBufferBatchSolve;\0A \0Atypedef struct \0A{\0A\09int m_valInt0;\0A\09int m_valInt1;\0A\09int m_valInt2;\0A\09int m_valInt3;\0A\09float m_val0;\0A\09float m_val1;\0A\09float m_val2;\0A\09float m_val3;\0A} SolverDebugInfo;\0A//\09others\0A__kernel\0A__attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid ReorderContactKernel(__global struct b3Contact4Data* in, __global struct b3Contact4Data* out, __global int2* sortData, int4 cb )\0A{\0A\09int nContacts = cb.x;\0A\09int gIdx = GET_GLOBAL_IDX;\0A\09if( gIdx < nContacts )\0A\09{\0A\09\09int srcIdx = sortData[gIdx].y;\0A\09\09out[gIdx] = in[srcIdx];\0A\09}\0A}\0A__kernel __attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid SetDeterminismSortDataChildShapeB(__global struct b3Contact4Data* contactsIn, __global int2* sortDataOut, int nContacts)\0A{\0A\09int gIdx = GET_GLOBAL_IDX;\0A\09if( gIdx < nContacts )\0A\09{\0A\09\09int2 sd;\0A\09\09sd.x = contactsIn[gIdx].m_childIndexB;\0A\09\09sd.y = gIdx;\0A\09\09sortDataOut[gIdx] = sd;\0A\09}\0A}\0A__kernel __attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid SetDeterminismSortDataChildShapeA(__global struct b3Contact4Data* contactsIn, __global int2* sortDataInOut, int nContacts)\0A{\0A\09int gIdx = GET_GLOBAL_IDX;\0A\09if( gIdx < nContacts )\0A\09{\0A\09\09int2 sdIn;\0A\09\09sdIn = sortDataInOut[gIdx];\0A\09\09int2 sdOut;\0A\09\09sdOut.x = contactsIn[sdIn.y].m_childIndexA;\0A\09\09sdOut.y = sdIn.y;\0A\09\09sortDataInOut[gIdx] = sdOut;\0A\09}\0A}\0A__kernel __attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid SetDeterminismSortDataBodyA(__global struct b3Contact4Data* contactsIn, __global int2* sortDataInOut, int nContacts)\0A{\0A\09int gIdx = GET_GLOBAL_IDX;\0A\09if( gIdx < nContacts )\0A\09{\0A\09\09int2 sdIn;\0A\09\09sdIn = sortDataInOut[gIdx];\0A\09\09int2 sdOut;\0A\09\09sdOut.x = contactsIn[sdIn.y].m_bodyAPtrAndSignBit;\0A\09\09sdOut.y = sdIn.y;\0A\09\09sortDataInOut[gIdx] = sdOut;\0A\09}\0A}\0A__kernel\0A__attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid SetDeterminismSortDataBodyB(__global struct b3Contact4Data* contactsIn, __global int2* sortDataInOut, int nContacts)\0A{\0A\09int gIdx = GET_GLOBAL_IDX;\0A\09if( gIdx < nContacts )\0A\09{\0A\09\09int2 sdIn;\0A\09\09sdIn = sortDataInOut[gIdx];\0A\09\09int2 sdOut;\0A\09\09sdOut.x = contactsIn[sdIn.y].m_bodyBPtrAndSignBit;\0A\09\09sdOut.y = sdIn.y;\0A\09\09sortDataInOut[gIdx] = sdOut;\0A\09}\0A}\0Atypedef struct\0A{\0A\09int m_nContacts;\0A\09int m_staticIdx;\0A\09float m_scale;\0A\09int m_nSplit;\0A} ConstBufferSSD;\0A__constant const int gridTable4x4[] = \0A{\0A    0,1,17,16,\0A\091,2,18,19,\0A\0917,18,32,3,\0A\0916,19,3,34\0A};\0A__constant const int gridTable8x8[] = \0A{\0A\09  0,  2,  3, 16, 17, 18, 19,  1,\0A\09 66, 64, 80, 67, 82, 81, 65, 83,\0A\09131,144,128,130,147,129,145,146,\0A\09208,195,194,192,193,211,210,209,\0A\09 21, 22, 23,  5,  4,  6,  7, 20,\0A\09 86, 85, 69, 87, 70, 68, 84, 71,\0A\09151,133,149,150,135,148,132,134,\0A\09197,27,214,213,212,199,198,196\0A\09\0A};\0A#define USE_SPATIAL_BATCHING 1\0A#define USE_4x4_GRID 1\0A__kernel\0A__attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid SetSortDataKernel(__global struct b3Contact4Data* gContact, __global Body* gBodies, __global int2* gSortDataOut, \0Aint nContacts,float scale,int4 nSplit,int staticIdx)\0A{\0A\09int gIdx = GET_GLOBAL_IDX;\0A\09\0A\09if( gIdx < nContacts )\0A\09{\0A\09\09int aPtrAndSignBit  = gContact[gIdx].m_bodyAPtrAndSignBit;\0A\09\09int bPtrAndSignBit  = gContact[gIdx].m_bodyBPtrAndSignBit;\0A\09\09int aIdx = abs(aPtrAndSignBit );\0A\09\09int bIdx = abs(bPtrAndSignBit);\0A\09\09bool aStatic = (aPtrAndSignBit<0) ||(aPtrAndSignBit==staticIdx);\0A\09\09bool bStatic = (bPtrAndSignBit<0) ||(bPtrAndSignBit==staticIdx);\0A#if USE_SPATIAL_BATCHING\09\09\0A\09\09int idx = (aStatic)? bIdx: aIdx;\0A\09\09float4 p = gBodies[idx].m_pos;\0A\09\09int xIdx = (int)((p.x-((p.x<0.f)?1.f:0.f))*scale) & (nSplit.x-1);\0A\09\09int yIdx = (int)((p.y-((p.y<0.f)?1.f:0.f))*scale) & (nSplit.y-1);\0A\09\09int zIdx = (int)((p.z-((p.z<0.f)?1.f:0.f))*scale) & (nSplit.z-1);\0A\09\09int newIndex = (xIdx+yIdx*nSplit.x+zIdx*nSplit.x*nSplit.y);\0A\09\09\0A#else//USE_SPATIAL_BATCHING\0A\09#if USE_4x4_GRID\0A\09\09int aa = aIdx&3;\0A\09\09int bb = bIdx&3;\0A\09\09if (aStatic)\0A\09\09\09aa = bb;\0A\09\09if (bStatic)\0A\09\09\09bb = aa;\0A\09\09int gridIndex = aa + bb*4;\0A\09\09int newIndex = gridTable4x4[gridIndex];\0A\09#else//USE_4x4_GRID\0A\09\09int aa = aIdx&7;\0A\09\09int bb = bIdx&7;\0A\09\09if (aStatic)\0A\09\09\09aa = bb;\0A\09\09if (bStatic)\0A\09\09\09bb = aa;\0A\09\09int gridIndex = aa + bb*8;\0A\09\09int newIndex = gridTable8x8[gridIndex];\0A\09#endif//USE_4x4_GRID\0A#endif//USE_SPATIAL_BATCHING\0A\09\09gSortDataOut[gIdx].x = newIndex;\0A\09\09gSortDataOut[gIdx].y = gIdx;\0A\09}\0A\09else\0A\09{\0A\09\09gSortDataOut[gIdx].x = 0xffffffff;\0A\09}\0A}\0A__kernel\0A__attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid CopyConstraintKernel(__global struct b3Contact4Data* gIn, __global struct b3Contact4Data* gOut, int4 cb )\0A{\0A\09int gIdx = GET_GLOBAL_IDX;\0A\09if( gIdx < cb.x )\0A\09{\0A\09\09gOut[gIdx] = gIn[gIdx];\0A\09}\0A}\0A\00", align 1
@.str.67 = private unnamed_addr constant [12086 x i8] c"/*\0ACopyright (c) 2012 Advanced Micro Devices, Inc.  \0AThis software is provided 'as-is', without any express or implied warranty.\0AIn no event will the authors be held liable for any damages arising from the use of this software.\0APermission is granted to anyone to use this software for any purpose, \0Aincluding commercial applications, and to alter it and redistribute it freely, \0Asubject to the following restrictions:\0A1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.\0A2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.\0A3. This notice may not be removed or altered from any source distribution.\0A*/\0A//Originally written by Takahiro Harada\0A//#pragma OPENCL EXTENSION cl_amd_printf : enable\0A#pragma OPENCL EXTENSION cl_khr_local_int32_base_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_local_int32_extended_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable\0A#ifdef cl_ext_atomic_counters_32\0A#pragma OPENCL EXTENSION cl_ext_atomic_counters_32 : enable\0A#else\0A#define counter32_t volatile global int*\0A#endif\0Atypedef unsigned int u32;\0Atypedef unsigned short u16;\0Atypedef unsigned char u8;\0A#define GET_GROUP_IDX get_group_id(0)\0A#define GET_LOCAL_IDX get_local_id(0)\0A#define GET_GLOBAL_IDX get_global_id(0)\0A#define GET_GROUP_SIZE get_local_size(0)\0A#define GET_NUM_GROUPS get_num_groups(0)\0A#define GROUP_LDS_BARRIER barrier(CLK_LOCAL_MEM_FENCE)\0A#define GROUP_MEM_FENCE mem_fence(CLK_LOCAL_MEM_FENCE)\0A#define AtomInc(x) atom_inc(&(x))\0A#define AtomInc1(x, out) out = atom_inc(&(x))\0A#define AppendInc(x, out) out = atomic_inc(x)\0A#define AtomAdd(x, value) atom_add(&(x), value)\0A#define AtomCmpxhg(x, cmp, value) atom_cmpxchg( &(x), cmp, value )\0A#define AtomXhg(x, value) atom_xchg ( &(x), value )\0A#define SELECT_UINT4( b, a, condition ) select( b,a,condition )\0A#define mymake_float4 (float4)\0A//#define make_float2 (float2)\0A//#define make_uint4 (uint4)\0A//#define make_int4 (int4)\0A//#define make_uint2 (uint2)\0A//#define make_int2 (int2)\0A#define max2 max\0A#define min2 min\0A///////////////////////////////////////\0A//\09Vector\0A///////////////////////////////////////\0A__inline\0Afloat4 fastNormalize4(float4 v)\0A{\0A\09return fast_normalize(v);\0A}\0A__inline\0Afloat4 cross3(float4 a, float4 b)\0A{\0A\09return cross(a,b);\0A}\0A__inline\0Afloat dot3F4(float4 a, float4 b)\0A{\0A\09float4 a1 = mymake_float4(a.xyz,0.f);\0A\09float4 b1 = mymake_float4(b.xyz,0.f);\0A\09return dot(a1, b1);\0A}\0A__inline\0Afloat4 normalize3(const float4 a)\0A{\0A\09float4 n = mymake_float4(a.x, a.y, a.z, 0.f);\0A\09return fastNormalize4( n );\0A//\09float length = sqrtf(dot3F4(a, a));\0A//\09return 1.f/length * a;\0A}\0A///////////////////////////////////////\0A//\09Matrix3x3\0A///////////////////////////////////////\0Atypedef struct\0A{\0A\09float4 m_row[3];\0A}Matrix3x3;\0A__inline\0Afloat4 mtMul1(Matrix3x3 a, float4 b);\0A__inline\0Afloat4 mtMul3(float4 a, Matrix3x3 b);\0A__inline\0Afloat4 mtMul1(Matrix3x3 a, float4 b)\0A{\0A\09float4 ans;\0A\09ans.x = dot3F4( a.m_row[0], b );\0A\09ans.y = dot3F4( a.m_row[1], b );\0A\09ans.z = dot3F4( a.m_row[2], b );\0A\09ans.w = 0.f;\0A\09return ans;\0A}\0A__inline\0Afloat4 mtMul3(float4 a, Matrix3x3 b)\0A{\0A\09float4 colx = mymake_float4(b.m_row[0].x, b.m_row[1].x, b.m_row[2].x, 0);\0A\09float4 coly = mymake_float4(b.m_row[0].y, b.m_row[1].y, b.m_row[2].y, 0);\0A\09float4 colz = mymake_float4(b.m_row[0].z, b.m_row[1].z, b.m_row[2].z, 0);\0A\09float4 ans;\0A\09ans.x = dot3F4( a, colx );\0A\09ans.y = dot3F4( a, coly );\0A\09ans.z = dot3F4( a, colz );\0A\09return ans;\0A}\0A///////////////////////////////////////\0A//\09Quaternion\0A///////////////////////////////////////\0Atypedef float4 Quaternion;\0A#define WG_SIZE 64\0Atypedef struct\0A{\0A\09float4 m_pos;\0A\09Quaternion m_quat;\0A\09float4 m_linVel;\0A\09float4 m_angVel;\0A\09u32 m_shapeIdx;\0A\09float m_invMass;\0A\09float m_restituitionCoeff;\0A\09float m_frictionCoeff;\0A} Body;\0Atypedef struct\0A{\0A\09Matrix3x3 m_invInertia;\0A\09Matrix3x3 m_initInvInertia;\0A} Shape;\0Atypedef struct\0A{\0A\09float4 m_linear;\0A\09float4 m_worldPos[4];\0A\09float4 m_center;\09\0A\09float m_jacCoeffInv[4];\0A\09float m_b[4];\0A\09float m_appliedRambdaDt[4];\0A\09float m_fJacCoeffInv[2];\09\0A\09float m_fAppliedRambdaDt[2];\09\0A\09u32 m_bodyA;\0A\09u32 m_bodyB;\0A\09int m_batchIdx;\0A\09u32 m_paddings[1];\0A} Constraint4;\0Atypedef struct\0A{\0A\09int m_nConstraints;\0A\09int m_start;\0A\09int m_batchIdx;\0A\09int m_nSplit;\0A//\09int m_paddings[1];\0A} ConstBuffer;\0Atypedef struct\0A{\0A\09int m_solveFriction;\0A\09int m_maxBatch;\09//\09long batch really kills the performance\0A\09int m_batchIdx;\0A\09int m_nSplit;\0A//\09int m_paddings[1];\0A} ConstBufferBatchSolve;\0Avoid setLinearAndAngular( float4 n, float4 r0, float4 r1, float4* linear, float4* angular0, float4* angular1);\0Avoid setLinearAndAngular( float4 n, float4 r0, float4 r1, float4* linear, float4* angular0, float4* angular1)\0A{\0A\09*linear = mymake_float4(-n.xyz,0.f);\0A\09*angular0 = -cross3(r0, n);\0A\09*angular1 = cross3(r1, n);\0A}\0Afloat calcRelVel( float4 l0, float4 l1, float4 a0, float4 a1, float4 linVel0, float4 angVel0, float4 linVel1, float4 angVel1 );\0Afloat calcRelVel( float4 l0, float4 l1, float4 a0, float4 a1, float4 linVel0, float4 angVel0, float4 linVel1, float4 angVel1 )\0A{\0A\09return dot3F4(l0, linVel0) + dot3F4(a0, angVel0) + dot3F4(l1, linVel1) + dot3F4(a1, angVel1);\0A}\0Afloat calcJacCoeff(const float4 linear0, const float4 linear1, const float4 angular0, const float4 angular1,\0A\09\09\09\09   float invMass0, const Matrix3x3* invInertia0, float invMass1, const Matrix3x3* invInertia1);\0Afloat calcJacCoeff(const float4 linear0, const float4 linear1, const float4 angular0, const float4 angular1,\0A\09\09\09\09\09float invMass0, const Matrix3x3* invInertia0, float invMass1, const Matrix3x3* invInertia1)\0A{\0A\09//\09linear0,1 are normlized\0A\09float jmj0 = invMass0;//dot3F4(linear0, linear0)*invMass0;\0A\09float jmj1 = dot3F4(mtMul3(angular0,*invInertia0), angular0);\0A\09float jmj2 = invMass1;//dot3F4(linear1, linear1)*invMass1;\0A\09float jmj3 = dot3F4(mtMul3(angular1,*invInertia1), angular1);\0A\09return -1.f/(jmj0+jmj1+jmj2+jmj3);\0A}\0Avoid solveContact(__global Constraint4* cs,\0A\09\09\09\09  float4 posA, float4* linVelA, float4* angVelA, float invMassA, Matrix3x3 invInertiaA,\0A\09\09\09\09  float4 posB, float4* linVelB, float4* angVelB, float invMassB, Matrix3x3 invInertiaB);\0Avoid solveContact(__global Constraint4* cs,\0A\09\09\09float4 posA, float4* linVelA, float4* angVelA, float invMassA, Matrix3x3 invInertiaA,\0A\09\09\09float4 posB, float4* linVelB, float4* angVelB, float invMassB, Matrix3x3 invInertiaB)\0A{\0A\09float minRambdaDt = 0;\0A\09float maxRambdaDt = FLT_MAX;\0A\09for(int ic=0; ic<4; ic++)\0A\09{\0A\09\09if( cs->m_jacCoeffInv[ic] == 0.f ) continue;\0A\09\09float4 angular0, angular1, linear;\0A\09\09float4 r0 = cs->m_worldPos[ic] - posA;\0A\09\09float4 r1 = cs->m_worldPos[ic] - posB;\0A\09\09setLinearAndAngular( -cs->m_linear, r0, r1, &linear, &angular0, &angular1 );\0A\09\09float rambdaDt = calcRelVel( cs->m_linear, -cs->m_linear, angular0, angular1, \0A\09\09\09*linVelA, *angVelA, *linVelB, *angVelB ) + cs->m_b[ic];\0A\09\09rambdaDt *= cs->m_jacCoeffInv[ic];\0A\09\09{\0A\09\09\09float prevSum = cs->m_appliedRambdaDt[ic];\0A\09\09\09float updated = prevSum;\0A\09\09\09updated += rambdaDt;\0A\09\09\09updated = max2( updated, minRambdaDt );\0A\09\09\09updated = min2( updated, maxRambdaDt );\0A\09\09\09rambdaDt = updated - prevSum;\0A\09\09\09cs->m_appliedRambdaDt[ic] = updated;\0A\09\09}\0A\09\09float4 linImp0 = invMassA*linear*rambdaDt;\0A\09\09float4 linImp1 = invMassB*(-linear)*rambdaDt;\0A\09\09float4 angImp0 = mtMul1(invInertiaA, angular0)*rambdaDt;\0A\09\09float4 angImp1 = mtMul1(invInertiaB, angular1)*rambdaDt;\0A\09\09*linVelA += linImp0;\0A\09\09*angVelA += angImp0;\0A\09\09*linVelB += linImp1;\0A\09\09*angVelB += angImp1;\0A\09}\0A}\0Avoid btPlaneSpace1 (const float4* n, float4* p, float4* q);\0A void btPlaneSpace1 (const float4* n, float4* p, float4* q)\0A{\0A  if (fabs(n[0].z) > 0.70710678f) {\0A    // choose p in y-z plane\0A    float a = n[0].y*n[0].y + n[0].z*n[0].z;\0A    float k = 1.f/sqrt(a);\0A    p[0].x = 0;\0A\09p[0].y = -n[0].z*k;\0A\09p[0].z = n[0].y*k;\0A    // set q = n x p\0A    q[0].x = a*k;\0A\09q[0].y = -n[0].x*p[0].z;\0A\09q[0].z = n[0].x*p[0].y;\0A  }\0A  else {\0A    // choose p in x-y plane\0A    float a = n[0].x*n[0].x + n[0].y*n[0].y;\0A    float k = 1.f/sqrt(a);\0A    p[0].x = -n[0].y*k;\0A\09p[0].y = n[0].x*k;\0A\09p[0].z = 0;\0A    // set q = n x p\0A    q[0].x = -n[0].z*p[0].y;\0A\09q[0].y = n[0].z*p[0].x;\0A\09q[0].z = a*k;\0A  }\0A}\0Avoid solveContactConstraint(__global Body* gBodies, __global Shape* gShapes, __global Constraint4* ldsCs);\0Avoid solveContactConstraint(__global Body* gBodies, __global Shape* gShapes, __global Constraint4* ldsCs)\0A{\0A\09//float frictionCoeff = ldsCs[0].m_linear.w;\0A\09int aIdx = ldsCs[0].m_bodyA;\0A\09int bIdx = ldsCs[0].m_bodyB;\0A\09float4 posA = gBodies[aIdx].m_pos;\0A\09float4 linVelA = gBodies[aIdx].m_linVel;\0A\09float4 angVelA = gBodies[aIdx].m_angVel;\0A\09float invMassA = gBodies[aIdx].m_invMass;\0A\09Matrix3x3 invInertiaA = gShapes[aIdx].m_invInertia;\0A\09float4 posB = gBodies[bIdx].m_pos;\0A\09float4 linVelB = gBodies[bIdx].m_linVel;\0A\09float4 angVelB = gBodies[bIdx].m_angVel;\0A\09float invMassB = gBodies[bIdx].m_invMass;\0A\09Matrix3x3 invInertiaB = gShapes[bIdx].m_invInertia;\0A\09solveContact( ldsCs, posA, &linVelA, &angVelA, invMassA, invInertiaA,\0A\09\09\09posB, &linVelB, &angVelB, invMassB, invInertiaB );\0A  if (gBodies[aIdx].m_invMass)\0A  {\0A\09\09gBodies[aIdx].m_linVel = linVelA;\0A\09\09gBodies[aIdx].m_angVel = angVelA;\0A\09} else\0A\09{\0A\09\09gBodies[aIdx].m_linVel = mymake_float4(0,0,0,0);\0A\09\09gBodies[aIdx].m_angVel = mymake_float4(0,0,0,0);\0A\09\0A\09}\0A\09if (gBodies[bIdx].m_invMass)\0A  {\0A\09\09gBodies[bIdx].m_linVel = linVelB;\0A\09\09gBodies[bIdx].m_angVel = angVelB;\0A\09} else\0A\09{\0A\09\09gBodies[bIdx].m_linVel = mymake_float4(0,0,0,0);\0A\09\09gBodies[bIdx].m_angVel = mymake_float4(0,0,0,0);\0A\09\0A\09}\0A}\0Atypedef struct \0A{\0A\09int m_valInt0;\0A\09int m_valInt1;\0A\09int m_valInt2;\0A\09int m_valInt3;\0A\09float m_val0;\0A\09float m_val1;\0A\09float m_val2;\0A\09float m_val3;\0A} SolverDebugInfo;\0A__kernel\0A__attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid BatchSolveKernelContact(__global Body* gBodies,\0A                      __global Shape* gShapes,\0A                      __global Constraint4* gConstraints,\0A                      __global int* gN,\0A                      __global int* gOffsets,\0A                      __global\09int* batchSizes,\0A                       int maxBatch1,\0A                       int cellBatch,\0A                       int4 nSplit\0A                      )\0A{\0A\09//__local int ldsBatchIdx[WG_SIZE+1];\0A\09__local int ldsCurBatch;\0A\09__local int ldsNextBatch;\0A\09__local int ldsStart;\0A\09int lIdx = GET_LOCAL_IDX;\0A\09int wgIdx = GET_GROUP_IDX;\0A//\09int gIdx = GET_GLOBAL_IDX;\0A//\09debugInfo[gIdx].m_valInt0 = gIdx;\0A\09//debugInfo[gIdx].m_valInt1 = GET_GROUP_SIZE;\0A\09\0A\09\0A\09int zIdx = (wgIdx/((nSplit.x*nSplit.y)/4))*2+((cellBatch&4)>>2);\0A\09int remain= (wgIdx%((nSplit.x*nSplit.y)/4));\0A\09int yIdx = (remain/(nSplit.x/2))*2 + ((cellBatch&2)>>1);\0A\09int xIdx = (remain%(nSplit.x/2))*2 + (cellBatch&1);\0A\09int cellIdx = xIdx+yIdx*nSplit.x+zIdx*(nSplit.x*nSplit.y);\0A\09//int xIdx = (wgIdx/(nSplit/2))*2 + (bIdx&1);\0A\09//int yIdx = (wgIdx%(nSplit/2))*2 + (bIdx>>1);\0A\09//int cellIdx = xIdx+yIdx*nSplit;\0A\09\0A\09if( gN[cellIdx] == 0 ) \0A\09\09return;\0A\09int maxBatch = batchSizes[cellIdx];\0A\09\0A\09\0A\09const int start = gOffsets[cellIdx];\0A\09const int end = start + gN[cellIdx];\0A\09\0A\09\0A\09\0A\09if( lIdx == 0 )\0A\09{\0A\09\09ldsCurBatch = 0;\0A\09\09ldsNextBatch = 0;\0A\09\09ldsStart = start;\0A\09}\0A\09GROUP_LDS_BARRIER;\0A\09int idx=ldsStart+lIdx;\0A\09while (ldsCurBatch < maxBatch)\0A\09{\0A\09\09for(; idx<end; )\0A\09\09{\0A\09\09\09if (gConstraints[idx].m_batchIdx == ldsCurBatch)\0A\09\09\09{\0A\09\09\09\09\09solveContactConstraint( gBodies, gShapes, &gConstraints[idx] );\0A\09\09\09\09 idx+=64;\0A\09\09\09} else\0A\09\09\09{\0A\09\09\09\09break;\0A\09\09\09}\0A\09\09}\0A\09\09GROUP_LDS_BARRIER;\0A\09\0A\09\09if( lIdx == 0 )\0A\09\09{\0A\09\09\09ldsCurBatch++;\0A\09\09}\0A\09\09GROUP_LDS_BARRIER;\0A\09}\0A\09\0A    \0A}\0A__kernel void solveSingleContactKernel(__global Body* gBodies,\0A                      __global Shape* gShapes,\0A                      __global Constraint4* gConstraints,\0A                       int cellIdx,\0A                       int batchOffset,\0A                       int numConstraintsInBatch\0A                      )\0A{\0A\09int index = get_global_id(0);\0A\09if (index < numConstraintsInBatch)\0A\09{\0A\09\09int idx=batchOffset+index;\0A\09\09solveContactConstraint( gBodies, gShapes, &gConstraints[idx] );\0A\09}    \0A}\0A\00", align 1
@.str.68 = private unnamed_addr constant [12432 x i8] c"/*\0ACopyright (c) 2012 Advanced Micro Devices, Inc.  \0AThis software is provided 'as-is', without any express or implied warranty.\0AIn no event will the authors be held liable for any damages arising from the use of this software.\0APermission is granted to anyone to use this software for any purpose, \0Aincluding commercial applications, and to alter it and redistribute it freely, \0Asubject to the following restrictions:\0A1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.\0A2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.\0A3. This notice may not be removed or altered from any source distribution.\0A*/\0A//Originally written by Takahiro Harada\0A//#pragma OPENCL EXTENSION cl_amd_printf : enable\0A#pragma OPENCL EXTENSION cl_khr_local_int32_base_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_local_int32_extended_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_global_int32_extended_atomics : enable\0A#ifdef cl_ext_atomic_counters_32\0A#pragma OPENCL EXTENSION cl_ext_atomic_counters_32 : enable\0A#else\0A#define counter32_t volatile global int*\0A#endif\0Atypedef unsigned int u32;\0Atypedef unsigned short u16;\0Atypedef unsigned char u8;\0A#define GET_GROUP_IDX get_group_id(0)\0A#define GET_LOCAL_IDX get_local_id(0)\0A#define GET_GLOBAL_IDX get_global_id(0)\0A#define GET_GROUP_SIZE get_local_size(0)\0A#define GET_NUM_GROUPS get_num_groups(0)\0A#define GROUP_LDS_BARRIER barrier(CLK_LOCAL_MEM_FENCE)\0A#define GROUP_MEM_FENCE mem_fence(CLK_LOCAL_MEM_FENCE)\0A#define AtomInc(x) atom_inc(&(x))\0A#define AtomInc1(x, out) out = atom_inc(&(x))\0A#define AppendInc(x, out) out = atomic_inc(x)\0A#define AtomAdd(x, value) atom_add(&(x), value)\0A#define AtomCmpxhg(x, cmp, value) atom_cmpxchg( &(x), cmp, value )\0A#define AtomXhg(x, value) atom_xchg ( &(x), value )\0A#define SELECT_UINT4( b, a, condition ) select( b,a,condition )\0A#define mymake_float4 (float4)\0A//#define make_float2 (float2)\0A//#define make_uint4 (uint4)\0A//#define make_int4 (int4)\0A//#define make_uint2 (uint2)\0A//#define make_int2 (int2)\0A#define max2 max\0A#define min2 min\0A///////////////////////////////////////\0A//\09Vector\0A///////////////////////////////////////\0A__inline\0Afloat4 fastNormalize4(float4 v)\0A{\0A\09return fast_normalize(v);\0A}\0A__inline\0Afloat4 cross3(float4 a, float4 b)\0A{\0A\09return cross(a,b);\0A}\0A__inline\0Afloat dot3F4(float4 a, float4 b)\0A{\0A\09float4 a1 = mymake_float4(a.xyz,0.f);\0A\09float4 b1 = mymake_float4(b.xyz,0.f);\0A\09return dot(a1, b1);\0A}\0A__inline\0Afloat4 normalize3(const float4 a)\0A{\0A\09float4 n = mymake_float4(a.x, a.y, a.z, 0.f);\0A\09return fastNormalize4( n );\0A//\09float length = sqrtf(dot3F4(a, a));\0A//\09return 1.f/length * a;\0A}\0A///////////////////////////////////////\0A//\09Matrix3x3\0A///////////////////////////////////////\0Atypedef struct\0A{\0A\09float4 m_row[3];\0A}Matrix3x3;\0A__inline\0Afloat4 mtMul1(Matrix3x3 a, float4 b);\0A__inline\0Afloat4 mtMul3(float4 a, Matrix3x3 b);\0A__inline\0Afloat4 mtMul1(Matrix3x3 a, float4 b)\0A{\0A\09float4 ans;\0A\09ans.x = dot3F4( a.m_row[0], b );\0A\09ans.y = dot3F4( a.m_row[1], b );\0A\09ans.z = dot3F4( a.m_row[2], b );\0A\09ans.w = 0.f;\0A\09return ans;\0A}\0A__inline\0Afloat4 mtMul3(float4 a, Matrix3x3 b)\0A{\0A\09float4 colx = mymake_float4(b.m_row[0].x, b.m_row[1].x, b.m_row[2].x, 0);\0A\09float4 coly = mymake_float4(b.m_row[0].y, b.m_row[1].y, b.m_row[2].y, 0);\0A\09float4 colz = mymake_float4(b.m_row[0].z, b.m_row[1].z, b.m_row[2].z, 0);\0A\09float4 ans;\0A\09ans.x = dot3F4( a, colx );\0A\09ans.y = dot3F4( a, coly );\0A\09ans.z = dot3F4( a, colz );\0A\09return ans;\0A}\0A///////////////////////////////////////\0A//\09Quaternion\0A///////////////////////////////////////\0Atypedef float4 Quaternion;\0A#define WG_SIZE 64\0Atypedef struct\0A{\0A\09float4 m_pos;\0A\09Quaternion m_quat;\0A\09float4 m_linVel;\0A\09float4 m_angVel;\0A\09u32 m_shapeIdx;\0A\09float m_invMass;\0A\09float m_restituitionCoeff;\0A\09float m_frictionCoeff;\0A} Body;\0Atypedef struct\0A{\0A\09Matrix3x3 m_invInertia;\0A\09Matrix3x3 m_initInvInertia;\0A} Shape;\0Atypedef struct\0A{\0A\09float4 m_linear;\0A\09float4 m_worldPos[4];\0A\09float4 m_center;\09\0A\09float m_jacCoeffInv[4];\0A\09float m_b[4];\0A\09float m_appliedRambdaDt[4];\0A\09float m_fJacCoeffInv[2];\09\0A\09float m_fAppliedRambdaDt[2];\09\0A\09u32 m_bodyA;\0A\09u32 m_bodyB;\0A\09int m_batchIdx;\0A\09u32 m_paddings[1];\0A} Constraint4;\0Atypedef struct\0A{\0A\09int m_nConstraints;\0A\09int m_start;\0A\09int m_batchIdx;\0A\09int m_nSplit;\0A//\09int m_paddings[1];\0A} ConstBuffer;\0Atypedef struct\0A{\0A\09int m_solveFriction;\0A\09int m_maxBatch;\09//\09long batch really kills the performance\0A\09int m_batchIdx;\0A\09int m_nSplit;\0A//\09int m_paddings[1];\0A} ConstBufferBatchSolve;\0Avoid setLinearAndAngular( float4 n, float4 r0, float4 r1, float4* linear, float4* angular0, float4* angular1);\0Avoid setLinearAndAngular( float4 n, float4 r0, float4 r1, float4* linear, float4* angular0, float4* angular1)\0A{\0A\09*linear = mymake_float4(-n.xyz,0.f);\0A\09*angular0 = -cross3(r0, n);\0A\09*angular1 = cross3(r1, n);\0A}\0Afloat calcRelVel( float4 l0, float4 l1, float4 a0, float4 a1, float4 linVel0, float4 angVel0, float4 linVel1, float4 angVel1 );\0Afloat calcRelVel( float4 l0, float4 l1, float4 a0, float4 a1, float4 linVel0, float4 angVel0, float4 linVel1, float4 angVel1 )\0A{\0A\09return dot3F4(l0, linVel0) + dot3F4(a0, angVel0) + dot3F4(l1, linVel1) + dot3F4(a1, angVel1);\0A}\0Afloat calcJacCoeff(const float4 linear0, const float4 linear1, const float4 angular0, const float4 angular1,\0A\09\09\09\09   float invMass0, const Matrix3x3* invInertia0, float invMass1, const Matrix3x3* invInertia1);\0Afloat calcJacCoeff(const float4 linear0, const float4 linear1, const float4 angular0, const float4 angular1,\0A\09\09\09\09\09float invMass0, const Matrix3x3* invInertia0, float invMass1, const Matrix3x3* invInertia1)\0A{\0A\09//\09linear0,1 are normlized\0A\09float jmj0 = invMass0;//dot3F4(linear0, linear0)*invMass0;\0A\09float jmj1 = dot3F4(mtMul3(angular0,*invInertia0), angular0);\0A\09float jmj2 = invMass1;//dot3F4(linear1, linear1)*invMass1;\0A\09float jmj3 = dot3F4(mtMul3(angular1,*invInertia1), angular1);\0A\09return -1.f/(jmj0+jmj1+jmj2+jmj3);\0A}\0Avoid btPlaneSpace1 (const float4* n, float4* p, float4* q);\0A void btPlaneSpace1 (const float4* n, float4* p, float4* q)\0A{\0A  if (fabs(n[0].z) > 0.70710678f) {\0A    // choose p in y-z plane\0A    float a = n[0].y*n[0].y + n[0].z*n[0].z;\0A    float k = 1.f/sqrt(a);\0A    p[0].x = 0;\0A\09p[0].y = -n[0].z*k;\0A\09p[0].z = n[0].y*k;\0A    // set q = n x p\0A    q[0].x = a*k;\0A\09q[0].y = -n[0].x*p[0].z;\0A\09q[0].z = n[0].x*p[0].y;\0A  }\0A  else {\0A    // choose p in x-y plane\0A    float a = n[0].x*n[0].x + n[0].y*n[0].y;\0A    float k = 1.f/sqrt(a);\0A    p[0].x = -n[0].y*k;\0A\09p[0].y = n[0].x*k;\0A\09p[0].z = 0;\0A    // set q = n x p\0A    q[0].x = -n[0].z*p[0].y;\0A\09q[0].y = n[0].z*p[0].x;\0A\09q[0].z = a*k;\0A  }\0A}\0Avoid solveFrictionConstraint(__global Body* gBodies, __global Shape* gShapes, __global Constraint4* ldsCs);\0Avoid solveFrictionConstraint(__global Body* gBodies, __global Shape* gShapes, __global Constraint4* ldsCs)\0A{\0A\09float frictionCoeff = ldsCs[0].m_linear.w;\0A\09int aIdx = ldsCs[0].m_bodyA;\0A\09int bIdx = ldsCs[0].m_bodyB;\0A\09float4 posA = gBodies[aIdx].m_pos;\0A\09float4 linVelA = gBodies[aIdx].m_linVel;\0A\09float4 angVelA = gBodies[aIdx].m_angVel;\0A\09float invMassA = gBodies[aIdx].m_invMass;\0A\09Matrix3x3 invInertiaA = gShapes[aIdx].m_invInertia;\0A\09float4 posB = gBodies[bIdx].m_pos;\0A\09float4 linVelB = gBodies[bIdx].m_linVel;\0A\09float4 angVelB = gBodies[bIdx].m_angVel;\0A\09float invMassB = gBodies[bIdx].m_invMass;\0A\09Matrix3x3 invInertiaB = gShapes[bIdx].m_invInertia;\0A\09\0A\09{\0A\09\09float maxRambdaDt[4] = {FLT_MAX,FLT_MAX,FLT_MAX,FLT_MAX};\0A\09\09float minRambdaDt[4] = {0.f,0.f,0.f,0.f};\0A\09\09float sum = 0;\0A\09\09for(int j=0; j<4; j++)\0A\09\09{\0A\09\09\09sum +=ldsCs[0].m_appliedRambdaDt[j];\0A\09\09}\0A\09\09frictionCoeff = 0.7f;\0A\09\09for(int j=0; j<4; j++)\0A\09\09{\0A\09\09\09maxRambdaDt[j] = frictionCoeff*sum;\0A\09\09\09minRambdaDt[j] = -maxRambdaDt[j];\0A\09\09}\0A\09\09\0A//\09\09solveFriction( ldsCs, posA, &linVelA, &angVelA, invMassA, invInertiaA,\0A//\09\09\09posB, &linVelB, &angVelB, invMassB, invInertiaB, maxRambdaDt, minRambdaDt );\0A\09\09\0A\09\09\0A\09\09{\0A\09\09\09\0A\09\09\09__global Constraint4* cs = ldsCs;\0A\09\09\09\0A\09\09\09if( cs->m_fJacCoeffInv[0] == 0 && cs->m_fJacCoeffInv[0] == 0 ) return;\0A\09\09\09const float4 center = cs->m_center;\0A\09\09\09\0A\09\09\09float4 n = -cs->m_linear;\0A\09\09\09\0A\09\09\09float4 tangent[2];\0A\09\09\09btPlaneSpace1(&n,&tangent[0],&tangent[1]);\0A\09\09\09float4 angular0, angular1, linear;\0A\09\09\09float4 r0 = center - posA;\0A\09\09\09float4 r1 = center - posB;\0A\09\09\09for(int i=0; i<2; i++)\0A\09\09\09{\0A\09\09\09\09setLinearAndAngular( tangent[i], r0, r1, &linear, &angular0, &angular1 );\0A\09\09\09\09float rambdaDt = calcRelVel(linear, -linear, angular0, angular1,\0A\09\09\09\09\09\09\09\09\09\09\09linVelA, angVelA, linVelB, angVelB );\0A\09\09\09\09rambdaDt *= cs->m_fJacCoeffInv[i];\0A\09\09\09\09\0A\09\09\09\09{\0A\09\09\09\09\09float prevSum = cs->m_fAppliedRambdaDt[i];\0A\09\09\09\09\09float updated = prevSum;\0A\09\09\09\09\09updated += rambdaDt;\0A\09\09\09\09\09updated = max2( updated, minRambdaDt[i] );\0A\09\09\09\09\09updated = min2( updated, maxRambdaDt[i] );\0A\09\09\09\09\09rambdaDt = updated - prevSum;\0A\09\09\09\09\09cs->m_fAppliedRambdaDt[i] = updated;\0A\09\09\09\09}\0A\09\09\09\09\0A\09\09\09\09float4 linImp0 = invMassA*linear*rambdaDt;\0A\09\09\09\09float4 linImp1 = invMassB*(-linear)*rambdaDt;\0A\09\09\09\09float4 angImp0 = mtMul1(invInertiaA, angular0)*rambdaDt;\0A\09\09\09\09float4 angImp1 = mtMul1(invInertiaB, angular1)*rambdaDt;\0A\09\09\09\09\0A\09\09\09\09linVelA += linImp0;\0A\09\09\09\09angVelA += angImp0;\0A\09\09\09\09linVelB += linImp1;\0A\09\09\09\09angVelB += angImp1;\0A\09\09\09}\0A\09\09\09{\09//\09angular damping for point constraint\0A\09\09\09\09float4 ab = normalize3( posB - posA );\0A\09\09\09\09float4 ac = normalize3( center - posA );\0A\09\09\09\09if( dot3F4( ab, ac ) > 0.95f  || (invMassA == 0.f || invMassB == 0.f))\0A\09\09\09\09{\0A\09\09\09\09\09float angNA = dot3F4( n, angVelA );\0A\09\09\09\09\09float angNB = dot3F4( n, angVelB );\0A\09\09\09\09\09\0A\09\09\09\09\09angVelA -= (angNA*0.1f)*n;\0A\09\09\09\09\09angVelB -= (angNB*0.1f)*n;\0A\09\09\09\09}\0A\09\09\09}\0A\09\09}\0A\09\09\0A\09\09\0A\09}\0A\09if (gBodies[aIdx].m_invMass)\0A\09{\0A\09\09gBodies[aIdx].m_linVel = linVelA;\0A\09\09gBodies[aIdx].m_angVel = angVelA;\0A\09} else\0A\09{\0A\09\09gBodies[aIdx].m_linVel = mymake_float4(0,0,0,0);\0A\09\09gBodies[aIdx].m_angVel = mymake_float4(0,0,0,0);\0A\09}\0A\09if (gBodies[bIdx].m_invMass)\0A\09{\0A\09\09gBodies[bIdx].m_linVel = linVelB;\0A\09\09gBodies[bIdx].m_angVel = angVelB;\0A\09} else\0A\09{\0A\09\09gBodies[bIdx].m_linVel = mymake_float4(0,0,0,0);\0A\09\09gBodies[bIdx].m_angVel = mymake_float4(0,0,0,0);\0A\09}\0A \0A}\0Atypedef struct \0A{\0A\09int m_valInt0;\0A\09int m_valInt1;\0A\09int m_valInt2;\0A\09int m_valInt3;\0A\09float m_val0;\0A\09float m_val1;\0A\09float m_val2;\0A\09float m_val3;\0A} SolverDebugInfo;\0A__kernel\0A__attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid BatchSolveKernelFriction(__global Body* gBodies,\0A                      __global Shape* gShapes,\0A                      __global Constraint4* gConstraints,\0A                      __global int* gN,\0A                      __global int* gOffsets,\0A                      __global int* batchSizes,\0A                       int maxBatch1,\0A                       int cellBatch,\0A                       int4 nSplit\0A                      )\0A{\0A\09//__local int ldsBatchIdx[WG_SIZE+1];\0A\09__local int ldsCurBatch;\0A\09__local int ldsNextBatch;\0A\09__local int ldsStart;\0A\09int lIdx = GET_LOCAL_IDX;\0A\09int wgIdx = GET_GROUP_IDX;\0A//\09int gIdx = GET_GLOBAL_IDX;\0A//\09debugInfo[gIdx].m_valInt0 = gIdx;\0A\09//debugInfo[gIdx].m_valInt1 = GET_GROUP_SIZE;\0A\09int zIdx = (wgIdx/((nSplit.x*nSplit.y)/4))*2+((cellBatch&4)>>2);\0A\09int remain= (wgIdx%((nSplit.x*nSplit.y)/4));\0A\09int yIdx = (remain/(nSplit.x/2))*2 + ((cellBatch&2)>>1);\0A\09int xIdx = (remain%(nSplit.x/2))*2 + (cellBatch&1);\0A\09int cellIdx = xIdx+yIdx*nSplit.x+zIdx*(nSplit.x*nSplit.y);\0A\09\0A\09if( gN[cellIdx] == 0 ) \0A\09\09return;\0A\09int maxBatch = batchSizes[cellIdx];\0A\09const int start = gOffsets[cellIdx];\0A\09const int end = start + gN[cellIdx];\0A\09\0A\09if( lIdx == 0 )\0A\09{\0A\09\09ldsCurBatch = 0;\0A\09\09ldsNextBatch = 0;\0A\09\09ldsStart = start;\0A\09}\0A\09GROUP_LDS_BARRIER;\0A\09int idx=ldsStart+lIdx;\0A\09while (ldsCurBatch < maxBatch)\0A\09{\0A\09\09for(; idx<end; )\0A\09\09{\0A\09\09\09if (gConstraints[idx].m_batchIdx == ldsCurBatch)\0A\09\09\09{\0A\09\09\09\09\09solveFrictionConstraint( gBodies, gShapes, &gConstraints[idx] );\0A\09\09\09\09 idx+=64;\0A\09\09\09} else\0A\09\09\09{\0A\09\09\09\09break;\0A\09\09\09}\0A\09\09}\0A\09\09GROUP_LDS_BARRIER;\0A\09\09if( lIdx == 0 )\0A\09\09{\0A\09\09\09ldsCurBatch++;\0A\09\09}\0A\09\09GROUP_LDS_BARRIER;\0A\09}\0A\09\0A    \0A}\0A__kernel void solveSingleFrictionKernel(__global Body* gBodies,\0A                      __global Shape* gShapes,\0A                      __global Constraint4* gConstraints,\0A                       int cellIdx,\0A                       int batchOffset,\0A                       int numConstraintsInBatch\0A                      )\0A{\0A\09int index = get_global_id(0);\0A\09if (index < numConstraintsInBatch)\0A\09{\0A\09\09\0A\09\09int idx=batchOffset+index;\0A\09\0A\09\09solveFrictionConstraint( gBodies, gShapes, &gConstraints[idx] );\0A\09}    \0A}\0A\00", align 1
@__const._ZN12b3LauncherCL8launch2DEiiii.lRange = private unnamed_addr constant [3 x i64] [i64 1, i64 1, i64 1], align 16
@__clewEnqueueNDRangeKernel = external local_unnamed_addr global ptr, align 8
@.str.69 = private unnamed_addr constant [27 x i8] c"Error: OpenCL status = %d\0A\00", align 1
@.str.70 = private unnamed_addr constant [23 x i8] c"sortConstraintByBatch3\00", align 1
@_ZZN21b3GpuPgsContactSolver22sortConstraintByBatch3EP10b3Contact4iiiiPiE8maxSwaps = linkonce_odr dso_local local_unnamed_addr global i32 0, comdat, align 4
@_ZZN21b3GpuPgsContactSolver22sortConstraintByBatch3EP10b3Contact4iiiiPiE17maxNumConstraints = linkonce_odr dso_local local_unnamed_addr global i32 0, comdat, align 4
@.str.71 = private unnamed_addr constant [20 x i8] c"cpu batch innerloop\00", align 1
@.str.72 = private unnamed_addr constant [17 x i8] c"b3Error[%s,%d]:\0A\00", align 1
@.str.73 = private unnamed_addr constant [86 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3OpenCL/RigidBody/b3GpuPgsContactSolver.cpp\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"batchIdx>=B3_MAX_NUM_BATCHES\00", align 1
@.str.75 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3Common/b3AlignedObjectArray.h\00", align 1
@.str.76 = private unnamed_addr constant [44 x i8] c"b3AlignedObjectArray reserve out-of-memory\0A\00", align 1
@_ZTV13b3OpenCLArrayIiE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayIiE, ptr @_ZN13b3OpenCLArrayIiED2Ev, ptr @_ZN13b3OpenCLArrayIiED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayIiE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayIiE }, comdat, align 8
@_ZTS13b3OpenCLArrayIiE = linkonce_odr dso_local constant [19 x i8] c"13b3OpenCLArrayIiE\00", comdat, align 1
@__clewCreateBuffer = external local_unnamed_addr global ptr, align 8
@.str.77 = private unnamed_addr constant [85 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3OpenCL/ParallelPrimitives/b3OpenCLArray.h\00", align 1
@.str.78 = private unnamed_addr constant [22 x i8] c"OpenCL out-of-memory\0A\00", align 1
@__clewEnqueueCopyBuffer = external local_unnamed_addr global ptr, align 8
@__clewReleaseMemObject = external local_unnamed_addr global ptr, align 8
@_ZTV13b3OpenCLArrayI15b3RigidBodyDataE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI15b3RigidBodyDataE, ptr @_ZN13b3OpenCLArrayI15b3RigidBodyDataED2Ev, ptr @_ZN13b3OpenCLArrayI15b3RigidBodyDataED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI15b3RigidBodyDataE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI15b3RigidBodyDataE }, comdat, align 8
@_ZTS13b3OpenCLArrayI15b3RigidBodyDataE = linkonce_odr dso_local constant [35 x i8] c"13b3OpenCLArrayI15b3RigidBodyDataE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI13b3InertiaDataE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI13b3InertiaDataE, ptr @_ZN13b3OpenCLArrayI13b3InertiaDataED2Ev, ptr @_ZN13b3OpenCLArrayI13b3InertiaDataED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI13b3InertiaDataE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI13b3InertiaDataE }, comdat, align 8
@_ZTS13b3OpenCLArrayI13b3InertiaDataE = linkonce_odr dso_local constant [33 x i8] c"13b3OpenCLArrayI13b3InertiaDataE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI10b3Contact4E = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI10b3Contact4E, ptr @_ZN13b3OpenCLArrayI10b3Contact4ED2Ev, ptr @_ZN13b3OpenCLArrayI10b3Contact4ED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI10b3Contact4E = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI10b3Contact4E }, comdat, align 8
@_ZTS13b3OpenCLArrayI10b3Contact4E = linkonce_odr dso_local constant [30 x i8] c"13b3OpenCLArrayI10b3Contact4E\00", comdat, align 1
@_ZTV13b3OpenCLArrayI10b3SortDataE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI10b3SortDataE, ptr @_ZN13b3OpenCLArrayI10b3SortDataED2Ev, ptr @_ZN13b3OpenCLArrayI10b3SortDataED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI10b3SortDataE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI10b3SortDataE }, comdat, align 8
@_ZTS13b3OpenCLArrayI10b3SortDataE = linkonce_odr dso_local constant [30 x i8] c"13b3OpenCLArrayI10b3SortDataE\00", comdat, align 1
@_ZTV13b3OpenCLArrayIjE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayIjE, ptr @_ZN13b3OpenCLArrayIjED2Ev, ptr @_ZN13b3OpenCLArrayIjED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayIjE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayIjE }, comdat, align 8
@_ZTS13b3OpenCLArrayIjE = linkonce_odr dso_local constant [19 x i8] c"13b3OpenCLArrayIjE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI16b3GpuConstraint4E = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI16b3GpuConstraint4E, ptr @_ZN13b3OpenCLArrayI16b3GpuConstraint4ED2Ev, ptr @_ZN13b3OpenCLArrayI16b3GpuConstraint4ED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI16b3GpuConstraint4E = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI16b3GpuConstraint4E }, comdat, align 8
@_ZTS13b3OpenCLArrayI16b3GpuConstraint4E = linkonce_odr dso_local constant [36 x i8] c"13b3OpenCLArrayI16b3GpuConstraint4E\00", comdat, align 1
@__clewSetKernelArg = external local_unnamed_addr global ptr, align 8
@__clewEnqueueReadBuffer = external local_unnamed_addr global ptr, align 8
@.str.79 = private unnamed_addr constant [33 x i8] c"copyToHostPointer invalid range\0A\00", align 1
@__clewEnqueueWriteBuffer = external local_unnamed_addr global ptr, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_b3GpuPgsContactSolver.cpp, ptr null }]

@_ZN21b3GpuPgsContactSolverC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32), ptr @_ZN21b3GpuPgsContactSolverC2EP11_cl_contextP13_cl_device_idP17_cl_command_queuei
@_ZN21b3GpuPgsContactSolverD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN21b3GpuPgsContactSolverD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21b3GpuPgsContactSolverC2EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(24) initializes((0, 12), (16, 24)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 22 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV21b3GpuPgsContactSolver, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 0, ptr %i.b, align 8, !tbaa !11
  %i.c = tail call noalias noundef nonnull dereferenceable(392) ptr @_Znwm(i64 noundef 392) #21 ; 22 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 280
  store i8 1, ptr %i.d, align 8, !tbaa !15
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 272
  store ptr null, ptr %i.e, align 8, !tbaa !20
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 260
  store i32 0, ptr %i.f, align 4, !tbaa !21
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 264
  store i32 0, ptr %i.g, align 8, !tbaa !22
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 312
  store i8 1, ptr %i.h, align 8, !tbaa !23
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 304
  store ptr null, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 292
  store i32 0, ptr %i.j, align 4, !tbaa !28
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 296
  store i32 0, ptr %i.k, align 8, !tbaa !29
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 344
  store i8 1, ptr %i.l, align 8, !tbaa !30
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 336
  store ptr null, ptr %i.m, align 8, !tbaa !34
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 324
  store i32 0, ptr %i.n, align 4, !tbaa !35
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 328
  store i32 0, ptr %i.o, align 8, !tbaa !36
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 376
  store i8 1, ptr %i.p, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 368
  store ptr null, ptr %i.q, align 8, !tbaa !40
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 356
  store i32 0, ptr %i.r, align 4, !tbaa !41
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 360
  store i32 0, ptr %i.s, align 8, !tbaa !42
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 36 uses
  store ptr %i.c, ptr %i.t, align 8, !tbaa !43
  store ptr %1, ptr %i.c, align 8, !tbaa !44
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %2, ptr %i.u, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %3, ptr %i.v, align 8, !tbaa !62
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i32 %4, ptr %i.w, align 8, !tbaa !63
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  store i32 4, ptr %i.x, align 4, !tbaa !64
  %i.y = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIiE, i64 16), ptr %i.y, align 8, !tbaa !9
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.aa, align 8, !tbaa !65
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  store ptr %3, ptr %i.ab, align 8, !tbaa !69
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  store i8 1, ptr %i.ac, align 8, !tbaa !70
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 49
  store i8 1, ptr %i.ad, align 1, !tbaa !71
  %5 = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 384
  store ptr %i.y, ptr %i.ae, align 8, !tbaa !72
  %i.af = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI15b3RigidBodyDataE, i64 16), ptr %i.af, align 8, !tbaa !9
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ag, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.ah, align 8, !tbaa !73
  %i.ai = getelementptr inbounds nuw i8, ptr %i.af, i64 40
  store ptr %3, ptr %i.ai, align 8, !tbaa !75
  %i.aj = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  store i8 1, ptr %i.aj, align 8, !tbaa !76
  %i.ak = getelementptr inbounds nuw i8, ptr %i.af, i64 49
  store i8 1, ptr %i.ak, align 1, !tbaa !77
  %6 = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.al = getelementptr inbounds nuw i8, ptr %6, i64 216
  store ptr %i.af, ptr %i.al, align 8, !tbaa !78
  %i.am = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI13b3InertiaDataE, i64 16), ptr %i.am, align 8, !tbaa !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.ao, align 8, !tbaa !79
  %i.ap = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  store ptr %3, ptr %i.ap, align 8, !tbaa !81
  %i.aq = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store i8 1, ptr %i.aq, align 8, !tbaa !82
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 49
  store i8 1, ptr %i.ar, align 1, !tbaa !83
  %7 = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.as = getelementptr inbounds nuw i8, ptr %7, i64 224
  store ptr %i.am, ptr %i.as, align 8, !tbaa !84
  %i.at = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI10b3Contact4E, i64 16), ptr %i.at, align 8, !tbaa !9
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.av, align 8, !tbaa !85
  %i.aw = getelementptr inbounds nuw i8, ptr %i.at, i64 40
  store ptr %3, ptr %i.aw, align 8, !tbaa !87
  %i.ax = getelementptr inbounds nuw i8, ptr %i.at, i64 48
  store i8 1, ptr %i.ax, align 8, !tbaa !88
  %i.ay = getelementptr inbounds nuw i8, ptr %i.at, i64 49
  store i8 1, ptr %i.ay, align 1, !tbaa !89
  %8 = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.az = getelementptr inbounds nuw i8, ptr %8, i64 232
  store ptr %i.at, ptr %i.az, align 8, !tbaa !90
  %i.ba = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI10b3Contact4E, i64 16), ptr %i.ba, align 8, !tbaa !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ba, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bb, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.bc, align 8, !tbaa !85
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 40
  store ptr %3, ptr %i.bd, align 8, !tbaa !87
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 48
  store i8 1, ptr %i.be, align 8, !tbaa !88
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 49
  store i8 1, ptr %i.bf, align 1, !tbaa !89
  %9 = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 240
  store ptr %i.ba, ptr %i.bg, align 8, !tbaa !91
  %i.bh = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI10b3SortDataE, i64 16), ptr %i.bh, align 8, !tbaa !9
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bi, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.bj, align 8, !tbaa !92
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store ptr %3, ptr %i.bk, align 8, !tbaa !94
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 48
  store i8 1, ptr %i.bl, align 8, !tbaa !95
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 49
  store i8 1, ptr %i.bm, align 1, !tbaa !96
  %10 = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.bn = getelementptr inbounds nuw i8, ptr %10, i64 248
  store ptr %i.bh, ptr %i.bn, align 8, !tbaa !97
  %i.bo = tail call noalias noundef nonnull dereferenceable(216) ptr @_Znwm(i64 noundef 216) #21 ; 3 uses
  invoke void @_ZN8b3SolverC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(216) %i.bo, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 524288)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.bp = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 56
  store ptr %i.bo, ptr %i.bq, align 8, !tbaa !98
  %i.br = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #21 ; 3 uses
  %11 = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.bs = getelementptr inbounds nuw i8, ptr %11, i64 16
  %i.bt = load ptr, ptr %i.bs, align 8, !tbaa !62
  invoke void @_ZN15b3RadixSort32CLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(128) %i.br, ptr noundef %1, ptr noundef %2, ptr noundef %i.bt, i32 noundef 0)
          to label %bb.c unwind label %bb.k

bb.c:                                             ; preds = %bb.b
  %i.bu = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 176
  store ptr %i.br, ptr %i.bv, align 8, !tbaa !99
  %i.bw = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #21 ; 3 uses
  %12 = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.bx = getelementptr inbounds nuw i8, ptr %12, i64 16
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !62
  invoke void @_ZN14b3PrefixScanCLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(48) %i.bw, ptr noundef %1, ptr noundef %2, ptr noundef %i.by, i32 noundef 256)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.bz = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 192
  store ptr %i.bw, ptr %i.ca, align 8, !tbaa !100
  %i.cb = tail call noalias noundef nonnull dereferenceable(88) ptr @_Znwm(i64 noundef 88) #21 ; 3 uses
  %13 = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.cc = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !62
  invoke void @_ZN15b3BoundSearchCLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(88) %i.cb, ptr noundef %1, ptr noundef %2, ptr noundef %i.cd, i32 noundef 256)
          to label %bb.e unwind label %bb.m

bb.e:                                             ; preds = %bb.d
  %i.ce = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 184
  store ptr %i.cb, ptr %i.cf, align 8, !tbaa !101
  %i.cg = sdiv i32 %4, 512
  %i.ch = and i32 %4, 511
  %i.ci = icmp ne i32 %i.ch, 0
  %i.cj = zext i1 %i.ci to i32
  %i.ck = add nsw i32 %i.cg, %i.cj
  %i.cl = shl nsw i32 %i.ck, 9
  %i.cm = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 3 uses
  %14 = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.cn = getelementptr inbounds nuw i8, ptr %14, i64 16
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !62
  %i.cp = sext i32 %i.cl to i64
  invoke void @_ZN13b3OpenCLArrayI10b3SortDataEC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.cm, ptr noundef %1, ptr noundef %i.co, i64 noundef %i.cp, i1 noundef zeroext true)
          to label %bb.f unwind label %bb.n

bb.f:                                             ; preds = %bb.e
  %i.cq = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cq, i64 200
  store ptr %i.cm, ptr %i.cr, align 8, !tbaa !102
  %i.cs = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 7 uses
  %15 = load ptr, ptr %i.t, align 8, !tbaa !43    ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %15, i64 16
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !62
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI10b3Contact4E, i64 16), ptr %i.cs, align 8, !tbaa !9
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cs, i64 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.cw, align 8, !tbaa !85
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  store ptr %i.cu, ptr %i.cx, align 8, !tbaa !87
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  store i8 1, ptr %i.cy, align 8, !tbaa !88
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cs, i64 49
  store i8 1, ptr %i.cz, align 1, !tbaa !89
  %i.da = getelementptr inbounds nuw i8, ptr %15, i64 208
  store ptr %i.cs, ptr %i.da, align 8, !tbaa !103
  %i.db = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 4 uses
  %16 = load ptr, ptr %i.t, align 8, !tbaa !43
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 16
  %18 = load ptr, ptr %17, align 8, !tbaa !62
  invoke void @_ZN13b3OpenCLArrayIjEC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.db, ptr noundef %1, ptr noundef %18, i64 noundef 256, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.o

bb.g:                                             ; preds = %bb.f
  %i.dc = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store ptr %i.db, ptr %i.dd, align 8, !tbaa !104
  %i.de = tail call noundef zeroext i1 @_ZN13b3OpenCLArrayIjE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.db, i64 noundef 256, i1 noundef zeroext true) ; 0 uses
  %i.df = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 3 uses
  %i.dg = sext i32 %4 to i64
  invoke void @_ZN13b3OpenCLArrayI16b3GpuConstraint4EC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.df, ptr noundef %1, ptr noundef %3, i64 noundef %i.dg, i1 noundef zeroext true)
          to label %bb.h unwind label %bb.p

bb.h:                                             ; preds = %bb.g
  %i.dh = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 32
  store ptr %i.df, ptr %i.di, align 8, !tbaa !105
  %i.dj = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21 ; 4 uses
  %19 = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.dk = getelementptr inbounds nuw i8, ptr %19, i64 16
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !62
  invoke void @_ZN13b3OpenCLArrayIjEC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.dj, ptr noundef %1, ptr noundef %i.dl, i64 noundef 256, i1 noundef zeroext true)
          to label %bb.i unwind label %bb.q

bb.i:                                             ; preds = %bb.h
  %i.dm = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dm, i64 48
  store ptr %i.dj, ptr %i.dn, align 8, !tbaa !106
  %i.do = tail call noundef zeroext i1 @_ZN13b3OpenCLArrayIjE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.dj, i64 noundef 256, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.dp = call noundef ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.67, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i1 noundef zeroext false) ; 2 uses
  %i.dq = call noundef ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.68, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.2, i1 noundef zeroext false) ; 2 uses
  %i.dr = call noundef ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.66, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, i1 noundef zeroext false) ; 7 uses
  %i.ds = call noundef ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.65, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i1 noundef zeroext false)
  %i.dt = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef %i.dq, ptr noundef nonnull @.str)
  %i.du = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 104
  store ptr %i.dt, ptr %i.dv, align 8, !tbaa !107
  %i.dw = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, ptr noundef %i.dp, ptr noundef nonnull @.str)
  %i.dx = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 80
  store ptr %i.dw, ptr %i.dy, align 8, !tbaa !108
  %i.dz = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, ptr noundef %i.dp, ptr noundef nonnull @.str)
  %i.ea = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.eb = getelementptr inbounds nuw i8, ptr %i.ea, i64 88
  store ptr %i.dz, ptr %i.eb, align 8, !tbaa !109
  %i.ec = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.68, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, ptr noundef %i.dq, ptr noundef nonnull @.str)
  %i.ed = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 96
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !110
  %i.ef = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.9, ptr noundef nonnull %i.a, ptr noundef %i.ds, ptr noundef nonnull @.str)
  %i.eg = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 112
  store ptr %i.ef, ptr %i.eh, align 8, !tbaa !111
  %i.ei = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.10, ptr noundef nonnull %i.a, ptr noundef %i.dr, ptr noundef nonnull @.str)
  %i.ej = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 120
  store ptr %i.ei, ptr %i.ek, align 8, !tbaa !112
  %i.el = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.11, ptr noundef nonnull %i.a, ptr noundef %i.dr, ptr noundef nonnull @.str)
  %i.em = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.en = getelementptr inbounds nuw i8, ptr %i.em, i64 144
  store ptr %i.el, ptr %i.en, align 8, !tbaa !113
  %i.eo = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.12, ptr noundef nonnull %i.a, ptr noundef %i.dr, ptr noundef nonnull @.str)
  %i.ep = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ep, i64 152
  store ptr %i.eo, ptr %i.eq, align 8, !tbaa !114
  %i.er = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.13, ptr noundef nonnull %i.a, ptr noundef %i.dr, ptr noundef nonnull @.str)
  %i.es = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 160
  store ptr %i.er, ptr %i.et, align 8, !tbaa !115
  %i.eu = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a, ptr noundef %i.dr, ptr noundef nonnull @.str)
  %i.ev = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 168
  store ptr %i.eu, ptr %i.ew, align 8, !tbaa !116
  %i.ex = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.15, ptr noundef nonnull %i.a, ptr noundef %i.dr, ptr noundef nonnull @.str)
  %i.ey = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 128
  store ptr %i.ex, ptr %i.ez, align 8, !tbaa !117
  %i.fa = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.66, ptr noundef nonnull @.str.16, ptr noundef nonnull %i.a, ptr noundef %i.dr, ptr noundef nonnull @.str)
  %i.fb = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.fc = getelementptr inbounds nuw i8, ptr %i.fb, i64 136
  store ptr %i.fa, ptr %i.fc, align 8, !tbaa !118
  %i.fd = call noundef ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.63, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, i1 noundef zeroext false)
  %i.fe = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.a, ptr noundef %i.fd, ptr noundef nonnull @.str)
  %i.ff = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.fg = getelementptr inbounds nuw i8, ptr %i.ff, i64 64
  store ptr %i.fe, ptr %i.fg, align 8, !tbaa !119
  %i.fh = call noundef ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.64, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, i1 noundef zeroext false)
  %i.fi = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.20, ptr noundef nonnull %i.a, ptr noundef %i.fh, ptr noundef nonnull @.str)
  %i.fj = load ptr, ptr %i.t, align 8, !tbaa !43
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fj, i64 72
  store ptr %i.fi, ptr %i.fk, align 8, !tbaa !120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  ret void

bb.j:                                             ; preds = %bb.a
  %i.fl = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bo, i64 noundef 216) #23
  br label %bb.r

bb.k:                                             ; preds = %bb.b
  %i.fm = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.br, i64 noundef 128) #23
  br label %bb.r

bb.l:                                             ; preds = %bb.c
  %i.fn = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.bw, i64 noundef 48) #23
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.fo = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cb, i64 noundef 88) #23
  br label %bb.r

bb.n:                                             ; preds = %bb.e
  %i.fp = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.cm, i64 noundef 56) #23
  br label %bb.r

bb.o:                                             ; preds = %bb.f
  %i.fq = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.db, i64 noundef 56) #23
  br label %bb.r

bb.p:                                             ; preds = %bb.g
  %i.fr = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.df, i64 noundef 56) #23
  br label %bb.r

bb.q:                                             ; preds = %bb.h
  %i.fs = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.dj, i64 noundef 56) #23
  br label %bb.r

bb.r:                                             ; preds = %bb.n, %bb.o, %bb.p, %bb.q, %bb.m, %bb.l, %bb.k, %bb.j
  %.pn.pn = phi { ptr, i32 } [ %i.fp, %bb.n ], [ %i.fo, %bb.m ], [ %i.fn, %bb.l ], [ %i.fm, %bb.k ], [ %i.fl, %bb.j ], [ %i.fq, %bb.o ], [ %i.fr, %bb.p ], [ %i.fs, %bb.q ]
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN13b3OpenCLArrayI10b3Contact4EC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI10b3Contact4E, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.e, align 8, !tbaa !85
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %2, ptr %i.f, align 8, !tbaa !87
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store i8 1, ptr %i.g, align 8, !tbaa !88
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 49 ; 2 uses
  store i8 1, ptr %i.h, align 1, !tbaa !89
  %.not = icmp eq i64 %3, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.i = mul i64 %3, 112
  %i.j = load ptr, ptr @__clewCreateBuffer, align 8, !tbaa !121
  %i.k = call ptr %i.j(ptr noundef %1, i64 noundef 1, i64 noundef %i.i, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !122 ; 2 uses
  %i.l = load i32, ptr %i.a, align 4, !tbaa !123
  %.not.i = icmp eq i32 %i.l, 0
  br i1 %.not.i, label %bb.c, label %.thread.i

.thread.i:                                        ; preds = %bb.b
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.77, i32 noundef 166)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.78)
  br label %_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit.i

bb.c:                                             ; preds = %bb.b
  %i.m = load i64, ptr %i.b, align 8, !tbaa !124  ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = load ptr, ptr @__clewEnqueueCopyBuffer, align 8, !tbaa !121
  %i.p = load ptr, ptr %i.f, align 8, !tbaa !87
  %i.q = load ptr, ptr %i.d, align 8, !tbaa !125
  %i.r = mul i64 %i.m, 112
  %i.s = call i32 %i.o(ptr noundef %i.p, ptr noundef %i.q, ptr noundef %i.k, i64 noundef 0, i64 noundef 0, i64 noundef %i.r, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !126 ; 0 uses
  br label %_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit.i

_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit.i: ; preds = %bb.d, %bb.c, %.thread.i
  %.01017.i = phi i64 [ 0, %.thread.i ], [ %3, %bb.d ], [ %3, %bb.c ]
  %i.t = load ptr, ptr %i.d, align 8, !tbaa !125  ; 2 uses
  %.not.i.i = icmp ne ptr %i.t, null
  %i.u = load i8, ptr %i.g, align 8, !range !127
  %i.v = trunc nuw i8 %i.u to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.v, i1 false
  br i1 %or.cond.i.i, label %bb.e, label %_ZN13b3OpenCLArrayI10b3Contact4E7reserveEmb.exit

bb.e:                                             ; preds = %_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit.i
  %i.w = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !121
  %i.x = call i32 %i.w(ptr noundef nonnull %i.t), !inline_history !128 ; 0 uses
  br label %_ZN13b3OpenCLArrayI10b3Contact4E7reserveEmb.exit

_ZN13b3OpenCLArrayI10b3Contact4E7reserveEmb.exit: ; preds = %_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit.i, %bb.e
  store ptr %i.k, ptr %i.d, align 8, !tbaa !125
  store i64 %.01017.i, ptr %i.c, align 8, !tbaa !129
end_hunk_0
begin_hunk_1_@_ZN21b3GpuPgsContactSolver22solveContactConstraintEPK13b3OpenCLArrayI15b3RigidBodyDataEPKS0_I13b3InertiaDataEPS0_I16b3GpuConstraint4EPviiiPK20b3AlignedObjectArrayIiE:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  %i.nx = add nuw nsw i32 %.0224, 1               ; 2 uses
  %exitcond228.not = icmp eq i32 %i.nx, 8
  br i1 %exitcond228.not, label %bb.ak, label %bb.al, !llvm.loop !205

bb.bj:                                            ; preds = %bb.al
  %i.ny = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

bb.bk:                                            ; preds = %bb.az, %.noexc150, %.split7.i.i148, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i135, %bb.at, %.noexc129, %.split7.i.i127, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i114, %bb.ba, %bb.au, %bb.an, %bb.am
  %i.nz = landingpad { ptr, i32 }
          cleanup
  br label %bb.bm

bb.bl:                                            ; preds = %bb.bf, %.noexc171, %.split7.i.i169, %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i156, %_ZN12b3LauncherCL8setConstI6b3Int4EEvRKT_.exit60, %bb.bg
  %i.oa = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #22
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  %.pn = phi { ptr, i32 } [ %i.oa, %bb.bl ], [ %i.nz, %bb.bk ]
  call void @_ZN12b3LauncherCLD1Ev(ptr noundef nonnull align 8 dead_on_return(112) dereferenceable(112) %14) #22
  br label %bb.bn

bb.bn:                                            ; preds = %bb.bm, %bb.bj
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.bm ], [ %i.ny, %bb.bj ]
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #22
  br label %bb.br

bb.bo:                                            ; preds = %._crit_edge226
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit64 unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ob = landingpad { ptr, i32 }
          catch ptr null
  %i.oc = extractvalue { ptr, i32 } %i.ob, 0
  call void @__clang_call_terminate(ptr %i.oc) #24
  unreachable

_ZN13b3ProfileZoneD2Ev.exit64:                    ; preds = %bb.bo
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  ret void

bb.bq:                                            ; preds = %._crit_edge226
  %i.od = landingpad { ptr, i32 }
          cleanup
  br label %bb.br

bb.br:                                            ; preds = %bb.bq, %bb.bn
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.bn ], [ %i.od, %bb.bq ]
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit51 unwind label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.oe = landingpad { ptr, i32 }
          catch ptr null
  %i.of = extractvalue { ptr, i32 } %i.oe, 0
  call void @__clang_call_terminate(ptr %i.of) #24
  unreachable

_ZN13b3ProfileZoneD2Ev.exit51:                    ; preds = %bb.br, %bb.ai
  %.pn39.pn.pn.pn = phi { ptr, i32 } [ %.pn39.pn.pn, %bb.ai ], [ %.pn.pn.pn, %bb.br ]
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #22
  resume { ptr, i32 } %.pn39.pn.pn.pn
}

declare void @_ZN12b3LauncherCL10setBuffersEP14b3BufferInfoCLi(ptr noundef nonnull align 8 dereferenceable(112), ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @_Z14SetSortDataCPUP10b3Contact4P15b3RigidBodyDataP10b3SortDataifRK6b3Int4i(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef writeonly captures(none) %2, i32 noundef %3, float noundef %4, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %5, i32 noundef %6) local_unnamed_addr #11 {
bb.a:
  %i.a = icmp sgt i32 %3, 0
  br i1 %i.a, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 4 ; 2 uses
  %wide.trip.count = zext nneg i32 %3 to i64
  %i.c = insertelement <2 x float> poison, float %4, i64 0
  %i.d = shufflevector <2 x float> %i.c, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 4 uses
  %i.e = getelementptr inbounds nuw [112 x i8], ptr %0, i64 %indvars.iv ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 88
  %i.g = load i32, ptr %i.f, align 8, !tbaa !206  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 92
  %i.i = load i32, ptr %i.h, align 4, !tbaa !210
  %i.j = icmp slt i32 %i.g, 0
  %i.k = icmp eq i32 %i.g, %6
  %i.l = or i1 %i.j, %i.k
  %i.m = select i1 %i.l, i32 %i.i, i32 %i.g
  %i.n = tail call i32 @llvm.abs.i32(i32 %i.m, i1 true)
  %i.o = zext nneg i32 %i.n to i64
  %i.p = getelementptr inbounds nuw [80 x i8], ptr %1, i64 %i.o ; 2 uses
  %.sroa.0.0.copyload = load float, ptr %i.p, align 16 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 4
  %i.q = fcmp olt float %.sroa.0.0.copyload, 0.000000e+00
  %i.r = select i1 %i.q, float 1.000000e+00, float 0.000000e+00
  %i.s = fsub float %.sroa.0.0.copyload, %i.r
  %i.t = fmul float %4, %i.s
  %i.u = fptosi float %i.t to i32
  %i.v = load i32, ptr %5, align 16, !tbaa !176   ; 2 uses
  %i.w = add nsw i32 %i.v, -1
  %i.x = and i32 %i.w, %i.u
  %i.y = load <2 x float>, ptr %.sroa.5.0..sroa_idx, align 4 ; 2 uses
  %i.z = fcmp olt <2 x float> %i.y, zeroinitializer
  %i.aa = select <2 x i1> %i.z, <2 x float> splat (float 1.000000e+00), <2 x float> zeroinitializer
  %i.ab = fsub <2 x float> %i.y, %i.aa
  %i.ac = fmul <2 x float> %i.d, %i.ab
  %i.ad = fptosi <2 x float> %i.ac to <2 x i32>
  %i.ae = load <2 x i32>, ptr %i.b, align 4, !tbaa !176
  %i.af = load i32, ptr %i.b, align 4, !tbaa !176
  %i.ag = add nsw <2 x i32> %i.ae, splat (i32 -1)
  %i.ah = and <2 x i32> %i.ag, %i.ad              ; 2 uses
  %i.ai = extractelement <2 x i32> %i.ah, i64 1
  %i.aj = mul i32 %i.ai, %i.af
  %i.ak = extractelement <2 x i32> %i.ah, i64 0
  %reass.add = add i32 %i.aj, %i.ak
  %reass.mul = mul i32 %reass.add, %i.v
  %i.al = add i32 %reass.mul, %i.x
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  store i32 %i.al, ptr %i.am, align 4, !tbaa !176
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 4
  %i.ao = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.ao, ptr %i.an, align 4, !tbaa !176
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !211
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #4

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN21b3GpuPgsContactSolver13solveContactsEiP7_cl_memS1_iS1_RK8b3Configi(ptr noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4, ptr noundef %5, ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(48) %6, i32 noundef %7) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca [3 x i64], align 16               ; 6 uses
  %i.b = alloca [3 x i64], align 16               ; 6 uses
  %.sroa.6907 = alloca [20 x i8], align 4         ; 4 uses
  %i.c = alloca [3 x i64], align 16               ; 6 uses
  %i.d = alloca [3 x i64], align 16               ; 6 uses
  %.sroa.6903 = alloca [20 x i8], align 4         ; 4 uses
  %i.e = alloca [3 x i64], align 16               ; 6 uses
  %i.f = alloca [3 x i64], align 16               ; 6 uses
  %.sroa.6893 = alloca [20 x i8], align 4         ; 4 uses
  %i.g = alloca [3 x i64], align 16               ; 6 uses
  %i.h = alloca [3 x i64], align 16               ; 6 uses
  %.sroa.6877 = alloca [20 x i8], align 4         ; 4 uses
  %i.i = alloca [3 x i64], align 16               ; 6 uses
  %i.j = alloca [3 x i64], align 16               ; 6 uses
  %i.k = alloca [3 x i64], align 16               ; 6 uses
  %i.l = alloca [3 x i64], align 16               ; 6 uses
  %i.m = alloca [3 x i64], align 16               ; 6 uses
  %i.n = alloca [3 x i64], align 16               ; 6 uses
  %i.o = alloca [3 x i64], align 16               ; 6 uses
  %i.p = alloca [3 x i64], align 16               ; 6 uses
  %i.q = alloca i32, align 4                      ; 19 uses
  %8 = alloca %class.b3LauncherCL, align 8        ; 20 uses
  %9 = alloca %class.b3LauncherCL, align 8        ; 20 uses
  %10 = alloca %class.b3LauncherCL, align 8       ; 20 uses
  %11 = alloca %class.b3LauncherCL, align 8       ; 20 uses
  %12 = alloca %struct.b3Int4, align 16           ; 6 uses
  %13 = alloca %class.b3LauncherCL, align 8       ; 21 uses
  %14 = alloca %class.b3AlignedObjectArray.2, align 8 ; 11 uses
  %15 = alloca %struct.b3ConstraintCfg, align 8   ; 9 uses
  %16 = alloca %struct.CB, align 16               ; 11 uses
  %17 = alloca [3 x %struct.b3BufferInfoCL], align 16 ; 10 uses
  %18 = alloca %class.b3LauncherCL, align 8       ; 40 uses
  %19 = alloca %class.b3AlignedObjectArray.0, align 8 ; 10 uses
  %20 = alloca %class.b3AlignedObjectArray.2, align 8 ; 9 uses
  %21 = alloca %class.b3AlignedObjectArray.29, align 8 ; 9 uses
  %22 = alloca %class.b3AlignedObjectArray.0, align 8 ; 11 uses
  %23 = alloca %class.b3AlignedObjectArray, align 8 ; 12 uses
  %24 = alloca %class.b3AlignedObjectArray.0, align 8 ; 10 uses
  %25 = alloca %class.b3AlignedObjectArray, align 8 ; 10 uses
  %26 = alloca %class.b3AlignedObjectArray.0, align 8 ; 9 uses
  %27 = alloca %class.b3AlignedObjectArray.2, align 8 ; 9 uses
  %28 = alloca %class.b3AlignedObjectArray.2, align 8 ; 9 uses
  %.sroa.0827 = alloca %struct.b3Contact4Data, align 16 ; 9 uses
  %29 = alloca %struct.b3Int4, align 16           ; 6 uses
  %30 = alloca [3 x %struct.b3BufferInfoCL], align 16 ; 10 uses
  %31 = alloca %class.b3LauncherCL, align 8       ; 19 uses
  %32 = alloca %struct.b3Int4, align 16           ; 6 uses
  %33 = alloca [2 x %struct.b3BufferInfoCL], align 16 ; 8 uses
  %34 = alloca %class.b3LauncherCL, align 8       ; 19 uses
  %35 = alloca %class.b3AlignedObjectArray, align 8 ; 9 uses
  %36 = alloca %class.b3AlignedObjectArray, align 8 ; 9 uses
  store i32 %4, ptr %i.q, align 4, !tbaa !123
  tail call void @b3EnterProfileZone(ptr noundef nonnull @.str.28)
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 69 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !43   ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 216
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !78   ; 5 uses
  %i.v = sext i32 %1 to i64                       ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.u, i64 24 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8, !tbaa !159  ; 2 uses
  %.not.i.i = icmp ne ptr %i.x, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 2 uses
  %i.z = load i8, ptr %i.y, align 8, !range !127
  %i.aa = trunc nuw i8 %i.z to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.aa, i1 false
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.ab = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !121
  %i.ac = invoke i32 %i.ab(ptr noundef nonnull %i.x)
          to label %._crit_edge997 unwind label %bb.bw, !inline_history !212 ; 0 uses

._crit_edge997:                                   ; preds = %bb.b
  %.pre = load ptr, ptr %i.r, align 8, !tbaa !43
  br label %bb.c

bb.c:                                             ; preds = %._crit_edge997, %bb.a
  %i.ad = phi ptr [ %.pre, %._crit_edge997 ], [ %i.s, %bb.a ] ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i8 0, ptr %i.y, align 8, !tbaa !76
  %i.af = getelementptr inbounds nuw i8, ptr %i.u, i64 49
  store i8 0, ptr %i.af, align 1, !tbaa !77
  store ptr %2, ptr %i.w, align 8, !tbaa !159
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %i.v, ptr %i.ag, align 8, !tbaa !213
  store i64 %i.v, ptr %i.ae, align 8, !tbaa !214
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 224
  %i.ai = load ptr, ptr %i.ah, align 8, !tbaa !84 ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !160 ; 2 uses
  %.not.i.i278 = icmp ne ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %i.ai, i64 48 ; 2 uses
  %i.am = load i8, ptr %i.al, align 8, !range !127
  %i.an = trunc nuw i8 %i.am to i1
  %or.cond.i.i279 = select i1 %.not.i.i278, i1 %i.an, i1 false
  br i1 %or.cond.i.i279, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ao = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !121
  %i.ap = invoke i32 %i.ao(ptr noundef nonnull %i.ak)
          to label %._crit_edge998 unwind label %bb.bw, !inline_history !215 ; 0 uses

._crit_edge998:                                   ; preds = %bb.d
  %.pre999 = load ptr, ptr %i.r, align 8, !tbaa !43
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge998, %bb.c
  %i.aq = phi ptr [ %.pre999, %._crit_edge998 ], [ %i.ad, %bb.c ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  store i8 0, ptr %i.al, align 8, !tbaa !82
  %i.as = getelementptr inbounds nuw i8, ptr %i.ai, i64 49
  store i8 0, ptr %i.as, align 1, !tbaa !83
  store ptr %3, ptr %i.aj, align 8, !tbaa !160
  %i.at = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  store i64 %i.v, ptr %i.at, align 8, !tbaa !216
  store i64 %i.v, ptr %i.ar, align 8, !tbaa !217
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 232
  %i.av = load ptr, ptr %i.au, align 8, !tbaa !90 ; 5 uses
  %i.aw = load i32, ptr %i.q, align 4, !tbaa !123
  %i.ax = sext i32 %i.aw to i64                   ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.av, i64 24 ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !125 ; 2 uses
  %.not.i.i281 = icmp ne ptr %i.az, null
  %i.ba = getelementptr inbounds nuw i8, ptr %i.av, i64 48 ; 2 uses
  %i.bb = load i8, ptr %i.ba, align 8, !range !127
  %i.bc = trunc nuw i8 %i.bb to i1
  %or.cond.i.i282 = select i1 %.not.i.i281, i1 %i.bc, i1 false
  br i1 %or.cond.i.i282, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.bd = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !121
  %i.be = invoke i32 %i.bd(ptr noundef nonnull %i.az)
          to label %bb.g unwind label %bb.bw, !inline_history !218 ; 0 uses

bb.g:                                             ; preds = %bb.e, %bb.f
  %i.bf = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  store i8 0, ptr %i.ba, align 8, !tbaa !88
  %i.bg = getelementptr inbounds nuw i8, ptr %i.av, i64 49
  store i8 0, ptr %i.bg, align 1, !tbaa !89
  store ptr %5, ptr %i.ay, align 8, !tbaa !125
  %i.bh = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  store i64 %i.ax, ptr %i.bh, align 8, !tbaa !124
  store i64 %i.ax, ptr %i.bf, align 8, !tbaa !129
  %i.bi = load i8, ptr @optionalSortContactsDeterminism, align 1, !tbaa !219, !range !127, !noundef !147
  %i.bj = trunc nuw i8 %i.bi to i1
  br i1 %i.bj, label %bb.h, label %_ZN13b3ProfileZoneD2Ev.exit323

bb.h:                                             ; preds = %bb.g
  %i.bk = load i8, ptr @gCpuSortContactsDeterminism, align 1, !tbaa !219, !range !127, !noundef !147
  %i.bl = trunc nuw i8 %i.bk to i1
  br i1 %i.bl, label %bb.cr, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @b3EnterProfileZone(ptr noundef nonnull @.str.29)
          to label %_ZN13b3ProfileZoneC2EPKc.exit unwind label %bb.bx

_ZN13b3ProfileZoneC2EPKc.exit:                    ; preds = %bb.i
  %i.bm = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 240
  %i.bo = load ptr, ptr %i.bn, align 8, !tbaa !91
  %i.bp = load i32, ptr %i.q, align 4, !tbaa !123
  %i.bq = sext i32 %i.bp to i64
  %i.br = invoke noundef zeroext i1 @_ZN13b3OpenCLArrayI10b3Contact4E6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.bo, i64 noundef %i.bq, i1 noundef zeroext true)
          to label %bb.j unwind label %bb.by      ; 0 uses

bb.j:                                             ; preds = %_ZN13b3ProfileZoneC2EPKc.exit
  %i.bs = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 248
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !97
  %i.bv = load i32, ptr %i.q, align 4, !tbaa !123
  %i.bw = sext i32 %i.bv to i64
  %i.bx = invoke noundef zeroext i1 @_ZN13b3OpenCLArrayI10b3SortDataE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.bu, i64 noundef %i.bw, i1 noundef zeroext true)
          to label %bb.k unwind label %bb.by      ; 0 uses

bb.k:                                             ; preds = %bb.j
  %i.by = load i32, ptr %i.q, align 4, !tbaa !123 ; 2 uses
  %i.bz = icmp eq i32 %i.by, 0
  br i1 %i.bz, label %_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ca = sext i32 %i.by to i64
  %i.cb = load ptr, ptr %i.r, align 8, !tbaa !43  ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 240
  %i.cd = load ptr, ptr %i.cc, align 8, !tbaa !91
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 24
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !125
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cb, i64 232
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !90 ; 2 uses
  %i.ci = load ptr, ptr @__clewEnqueueCopyBuffer, align 8, !tbaa !121
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 40
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !87
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ch, i64 24
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !125
  %i.cn = mul nsw i64 %i.ca, 112
  %i.co = invoke i32 %i.ci(ptr noundef %i.ck, ptr noundef %i.cm, ptr noundef %i.cf, i64 noundef 0, i64 noundef 0, i64 noundef %i.cn, i32 noundef 0, ptr noundef null, ptr noundef null)
          to label %_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit unwind label %bb.by, !inline_history !220 ; 0 uses

_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit: ; preds = %bb.k, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #22
  %i.cp = load ptr, ptr %i.r, align 8, !tbaa !43  ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !62
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 168
  %i.ct = load ptr, ptr %i.cs, align 8, !tbaa !116
  invoke void @_ZN12b3LauncherCLC1EP17_cl_command_queueP10_cl_kernelPKc(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef %i.cr, ptr noundef %i.ct, ptr noundef nonnull @.str.30)
          to label %bb.m unwind label %bb.bz

bb.m:                                             ; preds = %_ZNK13b3OpenCLArrayI10b3Contact4E8copyToCLEP7_cl_memmmm.exit
  %i.cu = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 240
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !91
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cw, i64 24
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !125
  invoke void @_ZN12b3LauncherCL9setBufferEP7_cl_mem(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef %i.cy)
          to label %bb.n unwind label %bb.ca

bb.n:                                             ; preds = %bb.m
  %i.cz = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 248
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !97
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 24
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !132
  invoke void @_ZN12b3LauncherCL9setBufferEP7_cl_mem(ptr noundef nonnull align 8 dereferenceable(112) %8, ptr noundef %i.dd)
          to label %bb.o unwind label %bb.ca

bb.o:                                             ; preds = %bb.n
  %i.de = getelementptr inbounds nuw i8, ptr %8, i64 68
  %i.df = load i8, ptr %i.de, align 4, !tbaa !161, !range !127, !noundef !147
  %i.dg = trunc nuw i8 %i.df to i1
  br i1 %i.dg, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.dh = getelementptr inbounds nuw i8, ptr %8, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !171
  %i.dj = load i32, ptr %i.q, align 4, !tbaa !123
  %i.dk = getelementptr inbounds nuw i8, ptr %8, i64 36 ; 6 uses
  %i.dl = load i32, ptr %i.dk, align 4, !tbaa !172 ; 6 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.dn = load i32, ptr %i.dm, align 8, !tbaa !173
  %i.do = icmp eq i32 %i.dl, %i.dn
  br i1 %i.do, label %bb.q, label %.noexc286

bb.q:                                             ; preds = %bb.p
  %.not.i.i575 = icmp eq i32 %i.dl, 0
  %i.dp = shl nsw i32 %i.dl, 1
  %i.dq = select i1 %.not.i.i575, i32 1, i32 %i.dp ; 6 uses
  %i.dr = icmp slt i32 %i.dl, %i.dq
  br i1 %i.dr, label %bb.r, label %.noexc286

bb.r:                                             ; preds = %bb.q
  %.not.i.i.i576 = icmp eq i32 %i.dq, 0
  br i1 %.not.i.i.i576, label %.split7.i.i587, label %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i

_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i: ; preds = %bb.r
end_hunk_1
begin_hunk_2_@_ZN21b3GpuPgsContactSolver13solveContactsEiP7_cl_memS1_iS1_RK8b3Configi:bb.a
  %i.va = load i32, ptr %i.uv, align 4, !tbaa !35 ; 3 uses
  %i.vb = icmp sgt i32 %i.va, 1
  br i1 %i.vb, label %bb.cu, label %_ZN20b3AlignedObjectArrayI10b3Contact4E9quickSortIFbRKS0_S4_EEEvRKT_.exit

bb.cu:                                            ; preds = %bb.ct
  %i.vc = add nsw i32 %i.va, -1
  invoke void @_ZN20b3AlignedObjectArrayI10b3Contact4E17quickSortInternalIFbRKS0_S4_EEEvRKT_ii(ptr noundef nonnull align 8 dereferenceable(25) %14, ptr noundef nonnull @_ZL12b3ContactCmpRK10b3Contact4S1_, i32 noundef 0, i32 noundef %i.vc)
          to label %._ZN20b3AlignedObjectArrayI10b3Contact4E9quickSortIFbRKS0_S4_EEEvRKT_.exit_crit_edge unwind label %bb.cx

._ZN20b3AlignedObjectArrayI10b3Contact4E9quickSortIFbRKS0_S4_EEEvRKT_.exit_crit_edge: ; preds = %bb.cu
  %.pre1000 = load i32, ptr %i.uv, align 4, !tbaa !35
  br label %_ZN20b3AlignedObjectArrayI10b3Contact4E9quickSortIFbRKS0_S4_EEEvRKT_.exit

_ZN20b3AlignedObjectArrayI10b3Contact4E9quickSortIFbRKS0_S4_EEEvRKT_.exit: ; preds = %._ZN20b3AlignedObjectArrayI10b3Contact4E9quickSortIFbRKS0_S4_EEEvRKT_.exit_crit_edge, %bb.ct
  %i.vd = phi i32 [ %.pre1000, %._ZN20b3AlignedObjectArrayI10b3Contact4E9quickSortIFbRKS0_S4_EEEvRKT_.exit_crit_edge ], [ %i.va, %bb.ct ] ; 3 uses
  %i.ve = icmp sgt i32 %i.vd, 0
  br i1 %i.ve, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN20b3AlignedObjectArrayI10b3Contact4E9quickSortIFbRKS0_S4_EEEvRKT_.exit
  %i.vf = load ptr, ptr %i.uu, align 8, !tbaa !34 ; 9 uses
  %wide.trip.count = zext nneg i32 %i.vd to i64   ; 2 uses
  %xtraiter1218 = and i64 %wide.trip.count, 7     ; 3 uses
  %i.vg = icmp ult i32 %i.vd, 8
  br i1 %i.vg, label %.epil.preheader1217, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter1221 = and i64 %wide.trip.count, 2147483640
  br label %bb.cy

bb.cv:                                            ; preds = %bb.cr
  %i.vh = landingpad { ptr, i32 }
          cleanup
  br label %_ZN13b3ProfileZoneD2Ev.exit325

bb.cw:                                            ; preds = %bb.cs
  %i.vi = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cx:                                            ; preds = %bb.cu, %._crit_edge
  %i.vj = landingpad { ptr, i32 }
          cleanup
  br label %bb.de

bb.cy:                                            ; preds = %bb.cy, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.7, %bb.cy ] ; 10 uses
  %niter1222 = phi i64 [ 0, %.lr.ph.new ], [ %niter1222.next.7, %bb.cy ]
  %i.vk = getelementptr inbounds nuw [112 x i8], ptr %i.vf, i64 %indvars.iv
  %i.vl = getelementptr inbounds nuw i8, ptr %i.vk, i64 84
  %i.vm = trunc nuw nsw i64 %indvars.iv to i32
  store i32 %i.vm, ptr %i.vl, align 4, !tbaa !223
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.vn = getelementptr inbounds nuw [112 x i8], ptr %i.vf, i64 %indvars.iv.next
  %i.vo = getelementptr inbounds nuw i8, ptr %i.vn, i64 84
  %i.vp = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.vp, ptr %i.vo, align 4, !tbaa !223
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.vq = getelementptr inbounds nuw [112 x i8], ptr %i.vf, i64 %indvars.iv.next.1
  %i.vr = getelementptr inbounds nuw i8, ptr %i.vq, i64 84
  %i.vs = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.vs, ptr %i.vr, align 4, !tbaa !223
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.vt = getelementptr inbounds nuw [112 x i8], ptr %i.vf, i64 %indvars.iv.next.2
  %i.vu = getelementptr inbounds nuw i8, ptr %i.vt, i64 84
  %i.vv = trunc nuw nsw i64 %indvars.iv.next.2 to i32
  store i32 %i.vv, ptr %i.vu, align 4, !tbaa !223
  %indvars.iv.next.3 = or disjoint i64 %indvars.iv, 4 ; 2 uses
  %i.vw = getelementptr inbounds nuw [112 x i8], ptr %i.vf, i64 %indvars.iv.next.3
  %i.vx = getelementptr inbounds nuw i8, ptr %i.vw, i64 84
  %i.vy = trunc nuw nsw i64 %indvars.iv.next.3 to i32
  store i32 %i.vy, ptr %i.vx, align 4, !tbaa !223
  %indvars.iv.next.4 = or disjoint i64 %indvars.iv, 5 ; 2 uses
  %i.vz = getelementptr inbounds nuw [112 x i8], ptr %i.vf, i64 %indvars.iv.next.4
  %i.wa = getelementptr inbounds nuw i8, ptr %i.vz, i64 84
  %i.wb = trunc nuw nsw i64 %indvars.iv.next.4 to i32
  store i32 %i.wb, ptr %i.wa, align 4, !tbaa !223
  %indvars.iv.next.5 = or disjoint i64 %indvars.iv, 6 ; 2 uses
  %i.wc = getelementptr inbounds nuw [112 x i8], ptr %i.vf, i64 %indvars.iv.next.5
  %i.wd = getelementptr inbounds nuw i8, ptr %i.wc, i64 84
  %i.we = trunc nuw nsw i64 %indvars.iv.next.5 to i32
  store i32 %i.we, ptr %i.wd, align 4, !tbaa !223
  %indvars.iv.next.6 = or disjoint i64 %indvars.iv, 7 ; 2 uses
  %i.wf = getelementptr inbounds nuw [112 x i8], ptr %i.vf, i64 %indvars.iv.next.6
  %i.wg = getelementptr inbounds nuw i8, ptr %i.wf, i64 84
  %i.wh = trunc nuw nsw i64 %indvars.iv.next.6 to i32
  store i32 %i.wh, ptr %i.wg, align 4, !tbaa !223
  %indvars.iv.next.7 = add nuw nsw i64 %indvars.iv, 8 ; 2 uses
  %niter1222.next.7 = add i64 %niter1222, 8       ; 2 uses
  %niter1222.ncmp.7 = icmp eq i64 %niter1222.next.7, %unroll_iter1221
  br i1 %niter1222.ncmp.7, label %._crit_edge.loopexit.unr-lcssa, label %bb.cy, !llvm.loop !224

._crit_edge.loopexit.unr-lcssa:                   ; preds = %bb.cy
  %lcmp.mod1219.not = icmp eq i64 %xtraiter1218, 0
  br i1 %lcmp.mod1219.not, label %._crit_edge, label %.epil.preheader1217

.epil.preheader1217:                              ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.7, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod1220 = icmp ne i64 %xtraiter1218, 0
  call void @llvm.assume(i1 %lcmp.mod1220)
  br label %bb.cz

bb.cz:                                            ; preds = %bb.cz, %.epil.preheader1217
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader1217 ], [ %indvars.iv.next.epil, %bb.cz ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader1217 ], [ %epil.iter.next, %bb.cz ]
  %i.wi = getelementptr inbounds nuw [112 x i8], ptr %i.vf, i64 %indvars.iv.epil
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wi, i64 84
  %i.wk = trunc nuw nsw i64 %indvars.iv.epil to i32
  store i32 %i.wk, ptr %i.wj, align 4, !tbaa !223
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter1218
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %bb.cz, !llvm.loop !225

._crit_edge:                                      ; preds = %._crit_edge.loopexit.unr-lcssa, %bb.cz, %_ZN20b3AlignedObjectArrayI10b3Contact4E9quickSortIFbRKS0_S4_EEEvRKT_.exit
  %i.wl = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.wm = getelementptr inbounds nuw i8, ptr %i.wl, i64 232
  %i.wn = load ptr, ptr %i.wm, align 8, !tbaa !90
  invoke void @_ZN13b3OpenCLArrayI10b3Contact4E12copyFromHostERK20b3AlignedObjectArrayIS0_Eb(ptr noundef nonnull align 8 dereferenceable(50) %i.wn, ptr noundef nonnull align 8 dereferenceable(25) %14, i1 noundef zeroext true)
          to label %bb.da unwind label %bb.cx

bb.da:                                            ; preds = %._crit_edge
  %i.wo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.wp = load i32, ptr %i.wo, align 8, !tbaa !11 ; 2 uses
  %i.wq = icmp eq i32 %i.wp, 100
  %i.wr = load i32, ptr %i.uv, align 4
  %i.ws = icmp sgt i32 %i.wr, 0
  %or.cond980 = select i1 %i.wq, i1 %i.ws, i1 false
  br i1 %or.cond980, label %.lr.ph969, label %.loopexit965

.lr.ph969:                                        ; preds = %bb.da, %.lr.ph969
  %indvars.iv982 = phi i64 [ %indvars.iv.next983, %.lr.ph969 ], [ 0, %bb.da ] ; 3 uses
  %i.wt = load ptr, ptr %i.uu, align 8, !tbaa !34
  %i.wu = getelementptr inbounds nuw [112 x i8], ptr %i.wt, i64 %indvars.iv982 ; 3 uses
  %i.wv = getelementptr inbounds nuw i8, ptr %i.wu, i64 88
  %i.ww = load i32, ptr %i.wv, align 8, !tbaa !206
  %i.wx = getelementptr inbounds nuw i8, ptr %i.wu, i64 92
  %i.wy = load i32, ptr %i.wx, align 4, !tbaa !210
  %i.wz = getelementptr inbounds nuw i8, ptr %i.wu, i64 84
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !223
  %i.xb = trunc nuw nsw i64 %indvars.iv982 to i32
  %i.xc = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %i.xb, i32 noundef %i.ww, i32 noundef %i.wy, i32 noundef %i.xa) ; 0 uses
  %indvars.iv.next983 = add nuw nsw i64 %indvars.iv982, 1 ; 2 uses
  %i.xd = load i32, ptr %i.uv, align 4, !tbaa !35
  %i.xe = sext i32 %i.xd to i64
  %i.xf = icmp slt i64 %indvars.iv.next983, %i.xe
  br i1 %i.xf, label %.lr.ph969, label %.loopexit965.loopexit, !llvm.loop !227

.loopexit965.loopexit:                            ; preds = %.lr.ph969
  %.pre1001 = load i32, ptr %i.wo, align 8, !tbaa !11
  br label %.loopexit965

.loopexit965:                                     ; preds = %.loopexit965.loopexit, %bb.da
  %i.xg = phi i32 [ %.pre1001, %.loopexit965.loopexit ], [ %i.wp, %bb.da ]
  %i.xh = add nsw i32 %i.xg, 1
  store i32 %i.xh, ptr %i.wo, align 8, !tbaa !11
  %i.xi = load ptr, ptr %i.uu, align 8, !tbaa !34 ; 2 uses
  %.not.i.i.i = icmp ne ptr %i.xi, null
  %i.xj = load i8, ptr %i.ut, align 8, !range !127
  %i.xk = trunc nuw i8 %i.xj to i1
  %or.cond.i.i329 = select i1 %.not.i.i.i, i1 %i.xk, i1 false
  br i1 %or.cond.i.i329, label %bb.db, label %_ZN20b3AlignedObjectArrayI10b3Contact4ED2Ev.exit

bb.db:                                            ; preds = %.loopexit965
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.xi)
          to label %_ZN20b3AlignedObjectArrayI10b3Contact4ED2Ev.exit unwind label %bb.dc

bb.dc:                                            ; preds = %bb.db
  %i.xl = landingpad { ptr, i32 }
          catch ptr null
  %i.xm = extractvalue { ptr, i32 } %i.xl, 0
  call void @__clang_call_terminate(ptr %i.xm) #24
  unreachable

_ZN20b3AlignedObjectArrayI10b3Contact4ED2Ev.exit: ; preds = %.loopexit965, %bb.db
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit323 unwind label %bb.dd

bb.dd:                                            ; preds = %_ZN20b3AlignedObjectArrayI10b3Contact4ED2Ev.exit
  %i.xn = landingpad { ptr, i32 }
          catch ptr null
  %i.xo = extractvalue { ptr, i32 } %i.xn, 0
  call void @__clang_call_terminate(ptr %i.xo) #24
  unreachable

bb.de:                                            ; preds = %bb.cx, %bb.cw
  %.pn192 = phi { ptr, i32 } [ %i.vj, %bb.cx ], [ %i.vi, %bb.cw ]
  call void @_ZN20b3AlignedObjectArrayI10b3Contact4ED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %14) #22
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #22
  invoke void @b3LeaveProfileZone()
          to label %_ZN13b3ProfileZoneD2Ev.exit325 unwind label %bb.df

bb.df:                                            ; preds = %bb.de
  %i.xp = landingpad { ptr, i32 }
          catch ptr null
  %i.xq = extractvalue { ptr, i32 } %i.xp, 0
  call void @__clang_call_terminate(ptr %i.xq) #24
  unreachable

_ZN13b3ProfileZoneD2Ev.exit323:                   ; preds = %_ZN20b3AlignedObjectArrayI10b3Contact4ED2Ev.exit, %_ZN13b3ProfileZoneD2Ev.exit, %bb.g
  %i.xr = load ptr, ptr %i.r, align 8, !tbaa !43  ; 5 uses
  %i.xs = getelementptr inbounds nuw i8, ptr %i.xr, i64 232
  %i.xt = load ptr, ptr %i.xs, align 8, !tbaa !90
  %i.xu = getelementptr inbounds nuw i8, ptr %i.xt, i64 8
  %i.xv = load i64, ptr %i.xu, align 8, !tbaa !124 ; 14 uses
  %i.xw = trunc i64 %i.xv to i32                  ; 16 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #22
  store <2 x float> <float 5.000000e-03, float 2.000000e-01>, ptr %15, align 8, !tbaa !228
  %i.xx = getelementptr inbounds nuw i8, ptr %15, i64 8
  store float f0x3C888889, ptr %i.xx, align 8, !tbaa !230
  %i.xy = getelementptr inbounds nuw i8, ptr %15, i64 20 ; 5 uses
  %i.xz = getelementptr inbounds nuw i8, ptr %15, i64 12
  store i8 1, ptr %i.xz, align 4, !tbaa !232
  %i.ya = getelementptr inbounds nuw i8, ptr %15, i64 16
  store float 6.000000e+00, ptr %i.ya, align 8, !tbaa !233
  store i32 %7, ptr %i.xy, align 4, !tbaa !234
  %i.yb = getelementptr inbounds nuw i8, ptr %i.xr, i64 216
  %i.yc = load ptr, ptr %i.yb, align 8, !tbaa !78 ; 3 uses
  %i.yd = getelementptr inbounds nuw i8, ptr %i.xr, i64 224
  %i.ye = load ptr, ptr %i.yd, align 8, !tbaa !84
  %i.yf = getelementptr inbounds nuw i8, ptr %i.xr, i64 32
  %i.yg = load ptr, ptr %i.yf, align 8, !tbaa !105
  %i.yh = load i8, ptr @gUseLargeBatches, align 1, !tbaa !219, !range !127, !noundef !147
  %i.yi = trunc nuw i8 %i.yh to i1
  br i1 %i.yi, label %_ZN13b3ProfileZoneD2Ev.exit525, label %bb.dg

bb.dg:                                            ; preds = %_ZN13b3ProfileZoneD2Ev.exit323
  %i.yj = getelementptr inbounds nuw i8, ptr %i.xr, i64 56
  %i.yk = load ptr, ptr %i.yj, align 8, !tbaa !98
  %i.yl = getelementptr inbounds nuw i8, ptr %i.yk, i64 208
  %i.ym = load ptr, ptr %i.yl, align 8, !tbaa !235 ; 2 uses
  %.not = icmp eq ptr %i.ym, null
  br i1 %.not, label %.thread, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  %sext = shl i64 %i.xv, 32
  %i.yn = ashr exact i64 %sext, 32
  %i.yo = invoke noundef zeroext i1 @_ZN13b3OpenCLArrayI10b3Contact4E6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.ym, i64 noundef %i.yn, i1 noundef zeroext true)
          to label %bb.dj unwind label %bb.di     ; 0 uses

bb.di:                                            ; preds = %bb.dl, %.thread, %bb.dh
  %i.yp = landingpad { ptr, i32 }
          cleanup
  br label %_ZN13b3ProfileZoneD2Ev.exit526

bb.dj:                                            ; preds = %bb.dh
  %.pre1003 = load ptr, ptr %i.r, align 8, !tbaa !43
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre1003, i64 56
  %.pre1004 = load ptr, ptr %.phi.trans.insert, align 8, !tbaa !98
  %.phi.trans.insert1005 = getelementptr inbounds nuw i8, ptr %.pre1004, i64 208
  %.pre1006 = load ptr, ptr %.phi.trans.insert1005, align 8, !tbaa !235
  %i.yq = icmp eq ptr %.pre1006, null
  br i1 %i.yq, label %.thread, label %bb.dn

.thread:                                          ; preds = %bb.dg, %bb.dj
  %i.yr = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #21
          to label %bb.dk unwind label %bb.di     ; 4 uses

bb.dk:                                            ; preds = %.thread
  %37 = load ptr, ptr %i.r, align 8, !tbaa !43    ; 2 uses
  %i.ys = load ptr, ptr %37, align 8, !tbaa !44
  %i.yt = getelementptr inbounds nuw i8, ptr %37, i64 16
  %i.yu = load ptr, ptr %i.yt, align 8, !tbaa !62
  %sext196 = shl i64 %i.xv, 32
  %i.yv = ashr exact i64 %sext196, 32             ; 2 uses
  invoke void @_ZN13b3OpenCLArrayI10b3Contact4EC2EP11_cl_contextP17_cl_command_queuemb(ptr noundef nonnull align 8 dereferenceable(50) %i.yr, ptr noundef %i.ys, ptr noundef %i.yu, i64 noundef %i.yv, i1 noundef zeroext true)
          to label %bb.dl unwind label %bb.dm

bb.dl:                                            ; preds = %bb.dk
  %i.yw = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.yx = getelementptr inbounds nuw i8, ptr %i.yw, i64 56
  %i.yy = load ptr, ptr %i.yx, align 8, !tbaa !98
  %i.yz = getelementptr inbounds nuw i8, ptr %i.yy, i64 208
  store ptr %i.yr, ptr %i.yz, align 8, !tbaa !235
  %i.za = invoke noundef zeroext i1 @_ZN13b3OpenCLArrayI10b3Contact4E6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.yr, i64 noundef %i.yv, i1 noundef zeroext true)
          to label %bb.dn unwind label %bb.di     ; 0 uses

bb.dm:                                            ; preds = %bb.dk
  %i.zb = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPvm(ptr noundef nonnull %i.yr, i64 noundef 56) #23
  br label %_ZN13b3ProfileZoneD2Ev.exit526

bb.dn:                                            ; preds = %bb.dl, %bb.dj
  invoke void @b3EnterProfileZone(ptr noundef nonnull @.str.38)
          to label %_ZN13b3ProfileZoneC2EPKc.exit333 unwind label %bb.et

_ZN13b3ProfileZoneC2EPKc.exit333:                 ; preds = %bb.dn
  %i.zc = sdiv i32 %i.xw, 512
  %i.zd = and i32 %i.xw, 511
  %i.ze = icmp ne i32 %i.zd, 0
  %i.zf = zext i1 %i.ze to i32
  %i.zg = add nsw i32 %i.zc, %i.zf
  %i.zh = shl nsw i32 %i.zg, 9
  %i.zi = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.zj = getelementptr inbounds nuw i8, ptr %i.zi, i64 56
  %i.zk = load ptr, ptr %i.zj, align 8, !tbaa !98 ; 3 uses
  %i.zl = getelementptr inbounds nuw i8, ptr %i.zk, i64 32
  %i.zm = load ptr, ptr %i.zl, align 8, !tbaa !196 ; 4 uses
  %i.zn = getelementptr inbounds nuw i8, ptr %i.zk, i64 40
  %i.zo = load ptr, ptr %i.zn, align 8, !tbaa !198 ; 3 uses
  %i.zp = load i8, ptr @gCpuSetSortData, align 1, !tbaa !219, !range !127, !noundef !147
  %i.zq = trunc nuw i8 %i.zp to i1
  br i1 %i.zq, label %bb.fb, label %bb.do

bb.do:                                            ; preds = %_ZN13b3ProfileZoneC2EPKc.exit333
  invoke void @b3EnterProfileZone(ptr noundef nonnull @.str.39)
          to label %_ZN13b3ProfileZoneC2EPKc.exit335 unwind label %bb.eu

_ZN13b3ProfileZoneC2EPKc.exit335:                 ; preds = %bb.do
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #22
  store i32 %i.xw, ptr %16, align 16, !tbaa !236
  %i.zr = getelementptr inbounds nuw i8, ptr %16, i64 4 ; 3 uses
  store i32 %7, ptr %i.zr, align 4, !tbaa !239
  %i.zs = getelementptr inbounds nuw i8, ptr %16, i64 8 ; 3 uses
  store float f0x3E2AAAAB, ptr %i.zs, align 8, !tbaa !240
  %i.zt = getelementptr inbounds nuw i8, ptr %16, i64 16 ; 3 uses
  store i32 8, ptr %i.zt, align 16, !tbaa !176
  %i.zu = getelementptr inbounds nuw i8, ptr %16, i64 20
  store i32 4, ptr %i.zu, align 4, !tbaa !176
  %i.zv = getelementptr inbounds nuw i8, ptr %16, i64 24
  store i32 8, ptr %i.zv, align 8, !tbaa !176
  %i.zw = load ptr, ptr %i.r, align 8, !tbaa !43
  %i.zx = getelementptr inbounds nuw i8, ptr %i.zw, i64 56
  %i.zy = load ptr, ptr %i.zx, align 8, !tbaa !98
  %i.zz = getelementptr inbounds nuw i8, ptr %i.zy, i64 200
  %i.aaa = load ptr, ptr %i.zz, align 8, !tbaa !241
  %sext197 = shl i64 %i.xv, 32
  %i.aab = ashr exact i64 %sext197, 32
  %i.aac = invoke noundef zeroext i1 @_ZN13b3OpenCLArrayI10b3SortDataE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.aaa, i64 noundef %i.aab, i1 noundef zeroext true)
          to label %bb.dp unwind label %bb.ev     ; 0 uses

bb.dp:                                            ; preds = %_ZN13b3ProfileZoneC2EPKc.exit335
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #22
  %i.aad = load ptr, ptr %i.r, align 8, !tbaa !43 ; 3 uses
  %i.aae = getelementptr inbounds nuw i8, ptr %i.aad, i64 232
  %i.aaf = load ptr, ptr %i.aae, align 8, !tbaa !90
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aaf, i64 24
  %i.aah = load ptr, ptr %i.aag, align 8, !tbaa !125
  store ptr %i.aah, ptr %17, align 16, !tbaa !193
  %i.aai = getelementptr inbounds nuw i8, ptr %17, i64 8
  store i8 0, ptr %i.aai, align 8, !tbaa !195
  %i.aaj = getelementptr inbounds nuw i8, ptr %17, i64 16
  %i.aak = getelementptr inbounds nuw i8, ptr %i.yc, i64 24
  %i.aal = load ptr, ptr %i.aak, align 8, !tbaa !159
  store ptr %i.aal, ptr %i.aaj, align 16, !tbaa !193
  %i.aam = getelementptr inbounds nuw i8, ptr %17, i64 24
  store i8 0, ptr %i.aam, align 8, !tbaa !195
  %i.aan = getelementptr inbounds nuw i8, ptr %17, i64 32
  %i.aao = getelementptr inbounds nuw i8, ptr %i.aad, i64 56 ; 2 uses
  %i.aap = load ptr, ptr %i.aao, align 8, !tbaa !98
  %i.aaq = getelementptr inbounds nuw i8, ptr %i.aap, i64 200
  %i.aar = load ptr, ptr %i.aaq, align 8, !tbaa !241
  %i.aas = getelementptr inbounds nuw i8, ptr %i.aar, i64 24
  %i.aat = load ptr, ptr %i.aas, align 8, !tbaa !132
  store ptr %i.aat, ptr %i.aan, align 16, !tbaa !193
  %i.aau = getelementptr inbounds nuw i8, ptr %17, i64 40
  store i8 0, ptr %i.aau, align 8, !tbaa !195
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #22
  %i.aav = getelementptr inbounds nuw i8, ptr %i.aad, i64 16
  %i.aaw = load ptr, ptr %i.aav, align 8, !tbaa !62
  %i.aax = load ptr, ptr %i.aao, align 8, !tbaa !98
  %i.aay = getelementptr inbounds nuw i8, ptr %i.aax, i64 152
  %i.aaz = load ptr, ptr %i.aay, align 8, !tbaa !242
  invoke void @_ZN12b3LauncherCLC1EP17_cl_command_queueP10_cl_kernelPKc(ptr noundef nonnull align 8 dereferenceable(112) %18, ptr noundef %i.aaw, ptr noundef %i.aaz, ptr noundef nonnull @.str.40)
          to label %bb.dq unwind label %bb.ew

bb.dq:                                            ; preds = %bb.dp
  invoke void @_ZN12b3LauncherCL10setBuffersEP14b3BufferInfoCLi(ptr noundef nonnull align 8 dereferenceable(112) %18, ptr noundef nonnull %17, i32 noundef 3)
          to label %bb.dr unwind label %bb.ex

bb.dr:                                            ; preds = %bb.dq
  %i.aba = getelementptr inbounds nuw i8, ptr %18, i64 68 ; 4 uses
  %i.abb = load i8, ptr %i.aba, align 4, !tbaa !161, !range !127, !noundef !147
  %i.abc = trunc nuw i8 %i.abb to i1
  br i1 %i.abc, label %bb.ds, label %bb.dx

bb.ds:                                            ; preds = %bb.dr
  %i.abd = getelementptr inbounds nuw i8, ptr %18, i64 24
  %i.abe = load i32, ptr %i.abd, align 8, !tbaa !171
  %i.abf = load i32, ptr %16, align 16, !tbaa !123
  %i.abg = getelementptr inbounds nuw i8, ptr %18, i64 36 ; 6 uses
  %i.abh = load i32, ptr %i.abg, align 4, !tbaa !172 ; 6 uses
  %i.abi = getelementptr inbounds nuw i8, ptr %18, i64 40 ; 2 uses
  %i.abj = load i32, ptr %i.abi, align 8, !tbaa !173
  %i.abk = icmp eq i32 %i.abh, %i.abj
  br i1 %i.abk, label %bb.dt, label %.noexc336

bb.dt:                                            ; preds = %bb.ds
  %.not.i.i676 = icmp eq i32 %i.abh, 0
  %i.abl = shl nsw i32 %i.abh, 1
  %i.abm = select i1 %.not.i.i676, i32 1, i32 %i.abl ; 6 uses
  %i.abn = icmp slt i32 %i.abh, %i.abm
  br i1 %i.abn, label %bb.du, label %.noexc336

bb.du:                                            ; preds = %bb.dt
  %.not.i.i.i677 = icmp eq i32 %i.abm, 0
  br i1 %.not.i.i.i677, label %.split7.i.i691, label %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i678

_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i678: ; preds = %bb.du
  %i.abo = sext i32 %i.abm to i64
  %i.abp = shl nsw i64 %i.abo, 5
  %i.abq = invoke noundef ptr @_Z22b3AlignedAllocInternalmi(i64 noundef %i.abp, i32 noundef 16)
          to label %.noexc692 unwind label %bb.ex ; 7 uses

.noexc692:                                        ; preds = %_ZN20b3AlignedObjectArrayI15b3KernelArgDataE8allocateEi.exit.i.i678
  %i.abr = icmp eq ptr %i.abq, null
  br i1 %i.abr, label %.split7.i.i691, label %.split.i.i679

.split.i.i679:                                    ; preds = %.noexc692
  %i.abs = load i32, ptr %i.abg, align 4, !tbaa !172 ; 4 uses
  %i.abt = icmp sgt i32 %i.abs, 0
  br i1 %i.abt, label %.lr.ph.i.i.i686, label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i680

.lr.ph.i.i.i686:                                  ; preds = %.split.i.i679
  %i.abu = getelementptr inbounds nuw i8, ptr %18, i64 48 ; 3 uses
  %wide.trip.count.i.i.i687 = zext nneg i32 %i.abs to i64 ; 2 uses
  %xtraiter1224 = and i64 %wide.trip.count.i.i.i687, 1
  %i.abv = icmp eq i32 %i.abs, 1
  br i1 %i.abv, label %.epil.preheader1223, label %.lr.ph.i.i.i686.new

.lr.ph.i.i.i686.new:                              ; preds = %.lr.ph.i.i.i686
  %unroll_iter1228 = and i64 %wide.trip.count.i.i.i687, 2147483646
  br label %bb.dv

bb.dv:                                            ; preds = %bb.dv, %.lr.ph.i.i.i686.new
  %indvars.iv.i.i.i688 = phi i64 [ 0, %.lr.ph.i.i.i686.new ], [ %indvars.iv.next.i.i.i689.1, %bb.dv ] ; 4 uses
  %niter1229 = phi i64 [ 0, %.lr.ph.i.i.i686.new ], [ %niter1229.next.1, %bb.dv ]
  %i.abw = getelementptr inbounds nuw [32 x i8], ptr %i.abq, i64 %indvars.iv.i.i.i688
  %i.abx = load ptr, ptr %i.abu, align 8, !tbaa !174
  %i.aby = getelementptr inbounds nuw [32 x i8], ptr %i.abx, i64 %indvars.iv.i.i.i688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.abw, ptr noundef nonnull align 16 dereferenceable(32) %i.aby, i64 32, i1 false), !tbaa.struct !175
  %indvars.iv.next.i.i.i689 = or disjoint i64 %indvars.iv.i.i.i688, 1 ; 2 uses
  %i.abz = getelementptr inbounds nuw [32 x i8], ptr %i.abq, i64 %indvars.iv.next.i.i.i689
  %i.aca = load ptr, ptr %i.abu, align 8, !tbaa !174
  %i.acb = getelementptr inbounds nuw [32 x i8], ptr %i.aca, i64 %indvars.iv.next.i.i.i689
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %i.abz, ptr noundef nonnull align 16 dereferenceable(32) %i.acb, i64 32, i1 false), !tbaa.struct !175
  %indvars.iv.next.i.i.i689.1 = add nuw nsw i64 %indvars.iv.i.i.i688, 2 ; 2 uses
  %niter1229.next.1 = add i64 %niter1229, 2       ; 2 uses
  %niter1229.ncmp.1 = icmp eq i64 %niter1229.next.1, %unroll_iter1228
  br i1 %niter1229.ncmp.1, label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i680.loopexit.unr-lcssa, label %bb.dv, !llvm.loop !177

.split7.i.i691:                                   ; preds = %.noexc692, %bb.du
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.75, i32 noundef 301)
          to label %.noexc693 unwind label %bb.ex

.noexc693:                                        ; preds = %.split7.i.i691
  invoke void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.76)
          to label %.noexc694 unwind label %bb.ex

.noexc694:                                        ; preds = %.noexc693
  store i32 0, ptr %i.abg, align 4, !tbaa !172
  br label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i680

_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i680.loopexit.unr-lcssa: ; preds = %bb.dv
  %lcmp.mod1226.not = icmp eq i64 %xtraiter1224, 0
  br i1 %lcmp.mod1226.not, label %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i680, label %.epil.preheader1223

.epil.preheader1223:                              ; preds = %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i680.loopexit.unr-lcssa, %.lr.ph.i.i.i686
  %indvars.iv.i.i.i688.epil.init = phi i64 [ 0, %.lr.ph.i.i.i686 ], [ %indvars.iv.next.i.i.i689.1, %_ZNK20b3AlignedObjectArrayI15b3KernelArgDataE4copyEiiPS0_.exit.i.i680.loopexit.unr-lcssa ] ; 2 uses
end_hunk_2
