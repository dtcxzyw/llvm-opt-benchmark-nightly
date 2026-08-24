Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3RadixSort32CL?download=true
inline.NumInlined: 163
inline.NumDeleted: 54
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b3OpenCLDeviceInfo = type { [1024 x i8], [1024 x i8], [1024 x i8], [1024 x i8], i64, i32, i64, [3 x i64], i64, i64, i64, i64, i64, i64, i32, i64, i64, i64, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32 }
%class.b3AlignedObjectArray = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%struct.b3SortData = type { %union.anon, %union.anon.2 }
%union.anon = type { i32 }
%union.anon.2 = type { i32 }
%"struct.b3RadixSort32CL::b3ConstData" = type { i32, i32, i32, i32 }
%struct.b3BufferInfoCL = type <{ ptr, i8, [7 x i8] }>
%class.b3LauncherCL = type { ptr, ptr, ptr, i32, [4 x i8], %class.b3AlignedObjectArray.7, i32, i8, ptr, %class.b3AlignedObjectArray.9 }
%class.b3AlignedObjectArray.7 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.b3AlignedObjectArray.9 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>

$_ZN13b3OpenCLArrayIjE6resizeEmb = comdat any

$_ZN13b3OpenCLArrayI10b3SortDataE6resizeEmb = comdat any

$__clang_call_terminate = comdat any

$_ZN20b3AlignedObjectArrayI10b3SortDataED2Ev = comdat any

$_ZNK13b3OpenCLArrayI10b3SortDataE10copyToHostER20b3AlignedObjectArrayIS0_Eb = comdat any

$_ZN13b3OpenCLArrayI10b3SortDataE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb = comdat any

$_ZN13b3OpenCLArrayIjED2Ev = comdat any

$_ZN13b3OpenCLArrayIjED0Ev = comdat any

$_ZN13b3OpenCLArrayI10b3SortDataED2Ev = comdat any

$_ZN13b3OpenCLArrayI10b3SortDataED0Ev = comdat any

$_ZTV13b3OpenCLArrayIjE = comdat any

$_ZTI13b3OpenCLArrayIjE = comdat any

$_ZTS13b3OpenCLArrayIjE = comdat any

$_ZTV13b3OpenCLArrayI10b3SortDataE = comdat any

$_ZTI13b3OpenCLArrayI10b3SortDataE = comdat any

$_ZTS13b3OpenCLArrayI10b3SortDataE = comdat any

@_ZTV15b3RadixSort32CL = dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI15b3RadixSort32CL, ptr @_ZN15b3RadixSort32CLD2Ev, ptr @_ZN15b3RadixSort32CLD0Ev] }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"src/Bullet3OpenCL/ParallelPrimitives/kernels/RadixSort32Kernels.cl\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"StreamCountSortDataKernel\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"StreamCountKernel\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"SortAndScatterSortDataKernelSerial\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"SortAndScatterKernelSerial\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"SortAndScatterSortDataKernel\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"SortAndScatterKernel\00", align 1
@.str.8 = private unnamed_addr constant [17 x i8] c"PrefixScanKernel\00", align 1
@__clewReleaseKernel = external local_unnamed_addr global ptr, align 8
@.str.9 = private unnamed_addr constant [28 x i8] c"m_streamCountSortDataKernel\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"m_prefixScanKernel\00", align 1
@.str.11 = private unnamed_addr constant [31 x i8] c"m_sortAndScatterSortDataKernel\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"m_streamCountKernel\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"m_sortAndScatterKernel\00", align 1
@_ZTI15b3RadixSort32CL = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS15b3RadixSort32CL }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS15b3RadixSort32CL = dso_local constant [18 x i8] c"15b3RadixSort32CL\00", align 1
@.str.14 = private unnamed_addr constant [26745 x i8] c"/*\0ABullet Continuous Collision Detection and Physics Library\0ACopyright (c) 2011 Advanced Micro Devices, Inc.  http://bulletphysics.org\0AThis software is provided 'as-is', without any express or implied warranty.\0AIn no event will the authors be held liable for any damages arising from the use of this software.\0APermission is granted to anyone to use this software for any purpose, \0Aincluding commercial applications, and to alter it and redistribute it freely, \0Asubject to the following restrictions:\0A1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.\0A2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.\0A3. This notice may not be removed or altered from any source distribution.\0A*/\0A//Author Takahiro Harada\0A//#pragma OPENCL EXTENSION cl_amd_printf : enable\0A#pragma OPENCL EXTENSION cl_khr_local_int32_base_atomics : enable\0A#pragma OPENCL EXTENSION cl_khr_global_int32_base_atomics : enable\0Atypedef unsigned int u32;\0A#define GET_GROUP_IDX get_group_id(0)\0A#define GET_LOCAL_IDX get_local_id(0)\0A#define GET_GLOBAL_IDX get_global_id(0)\0A#define GET_GROUP_SIZE get_local_size(0)\0A#define GROUP_LDS_BARRIER barrier(CLK_LOCAL_MEM_FENCE)\0A#define GROUP_MEM_FENCE mem_fence(CLK_LOCAL_MEM_FENCE)\0A#define AtomInc(x) atom_inc(&(x))\0A#define AtomInc1(x, out) out = atom_inc(&(x))\0A#define AtomAdd(x, value) atom_add(&(x), value)\0A#define SELECT_UINT4( b, a, condition ) select( b,a,condition )\0A#define make_uint4 (uint4)\0A#define make_uint2 (uint2)\0A#define make_int2 (int2)\0A#define WG_SIZE 64\0A#define ELEMENTS_PER_WORK_ITEM (256/WG_SIZE)\0A#define BITS_PER_PASS 4\0A#define NUM_BUCKET (1<<BITS_PER_PASS)\0Atypedef uchar u8;\0A//\09this isn't optimization for VLIW. But just reducing writes. \0A#define USE_2LEVEL_REDUCE 1\0A//#define CHECK_BOUNDARY 1\0A//#define NV_GPU 1\0A//\09Cypress\0A#define nPerWI 16\0A//\09Cayman\0A//#define nPerWI 20\0A#define m_n x\0A#define m_nWGs y\0A#define m_startBit z\0A#define m_nBlocksPerWG w\0A/*\0Atypedef struct\0A{\0A\09int m_n;\0A\09int m_nWGs;\0A\09int m_startBit;\0A\09int m_nBlocksPerWG;\0A} ConstBuffer;\0A*/\0Atypedef struct\0A{\0A\09unsigned int m_key;\0A\09unsigned int m_value;\0A} SortDataCL;\0Auint prefixScanVectorEx( uint4* data )\0A{\0A\09u32 sum = 0;\0A\09u32 tmp = data[0].x;\0A\09data[0].x = sum;\0A\09sum += tmp;\0A\09tmp = data[0].y;\0A\09data[0].y = sum;\0A\09sum += tmp;\0A\09tmp = data[0].z;\0A\09data[0].z = sum;\0A\09sum += tmp;\0A\09tmp = data[0].w;\0A\09data[0].w = sum;\0A\09sum += tmp;\0A\09return sum;\0A}\0Au32 localPrefixSum( u32 pData, uint lIdx, uint* totalSum, __local u32* sorterSharedMemory, int wgSize /*64 or 128*/ )\0A{\0A\09{\09//\09Set data\0A\09\09sorterSharedMemory[lIdx] = 0;\0A\09\09sorterSharedMemory[lIdx+wgSize] = pData;\0A\09}\0A\09GROUP_LDS_BARRIER;\0A\09{\09//\09Prefix sum\0A\09\09int idx = 2*lIdx + (wgSize+1);\0A#if defined(USE_2LEVEL_REDUCE)\0A\09\09if( lIdx < 64 )\0A\09\09{\0A\09\09\09u32 u0, u1, u2;\0A\09\09\09u0 = sorterSharedMemory[idx-3];\0A\09\09\09u1 = sorterSharedMemory[idx-2];\0A\09\09\09u2 = sorterSharedMemory[idx-1];\0A\09\09\09AtomAdd( sorterSharedMemory[idx], u0+u1+u2 );\09\09\09\0A\09\09\09GROUP_MEM_FENCE;\0A\09\09\09u0 = sorterSharedMemory[idx-12];\0A\09\09\09u1 = sorterSharedMemory[idx-8];\0A\09\09\09u2 = sorterSharedMemory[idx-4];\0A\09\09\09AtomAdd( sorterSharedMemory[idx], u0+u1+u2 );\09\09\09\0A\09\09\09GROUP_MEM_FENCE;\0A\09\09\09u0 = sorterSharedMemory[idx-48];\0A\09\09\09u1 = sorterSharedMemory[idx-32];\0A\09\09\09u2 = sorterSharedMemory[idx-16];\0A\09\09\09AtomAdd( sorterSharedMemory[idx], u0+u1+u2 );\09\09\09\0A\09\09\09GROUP_MEM_FENCE;\0A\09\09\09if( wgSize > 64 )\0A\09\09\09{\0A\09\09\09\09sorterSharedMemory[idx] += sorterSharedMemory[idx-64];\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09}\0A\09\09\09sorterSharedMemory[idx-1] += sorterSharedMemory[idx-2];\0A\09\09\09GROUP_MEM_FENCE;\0A\09\09}\0A#else\0A\09\09if( lIdx < 64 )\0A\09\09{\0A\09\09\09sorterSharedMemory[idx] += sorterSharedMemory[idx-1];\0A\09\09\09GROUP_MEM_FENCE;\0A\09\09\09sorterSharedMemory[idx] += sorterSharedMemory[idx-2];\09\09\09\0A\09\09\09GROUP_MEM_FENCE;\0A\09\09\09sorterSharedMemory[idx] += sorterSharedMemory[idx-4];\0A\09\09\09GROUP_MEM_FENCE;\0A\09\09\09sorterSharedMemory[idx] += sorterSharedMemory[idx-8];\0A\09\09\09GROUP_MEM_FENCE;\0A\09\09\09sorterSharedMemory[idx] += sorterSharedMemory[idx-16];\0A\09\09\09GROUP_MEM_FENCE;\0A\09\09\09sorterSharedMemory[idx] += sorterSharedMemory[idx-32];\0A\09\09\09GROUP_MEM_FENCE;\0A\09\09\09if( wgSize > 64 )\0A\09\09\09{\0A\09\09\09\09sorterSharedMemory[idx] += sorterSharedMemory[idx-64];\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09}\0A\09\09\09sorterSharedMemory[idx-1] += sorterSharedMemory[idx-2];\0A\09\09\09GROUP_MEM_FENCE;\0A\09\09}\0A#endif\0A\09}\0A\09GROUP_LDS_BARRIER;\0A\09*totalSum = sorterSharedMemory[wgSize*2-1];\0A\09u32 addValue = sorterSharedMemory[lIdx+wgSize-1];\0A\09return addValue;\0A}\0A//__attribute__((reqd_work_group_size(128,1,1)))\0Auint4 localPrefixSum128V( uint4 pData, uint lIdx, uint* totalSum, __local u32* sorterSharedMemory )\0A{\0A\09u32 s4 = prefixScanVectorEx( &pData );\0A\09u32 rank = localPrefixSum( s4, lIdx, totalSum, sorterSharedMemory, 128 );\0A\09return pData + make_uint4( rank, rank, rank, rank );\0A}\0A//__attribute__((reqd_work_group_size(64,1,1)))\0Auint4 localPrefixSum64V( uint4 pData, uint lIdx, uint* totalSum, __local u32* sorterSharedMemory )\0A{\0A\09u32 s4 = prefixScanVectorEx( &pData );\0A\09u32 rank = localPrefixSum( s4, lIdx, totalSum, sorterSharedMemory, 64 );\0A\09return pData + make_uint4( rank, rank, rank, rank );\0A}\0Au32 unpack4Key( u32 key, int keyIdx ){ return (key>>(keyIdx*8)) & 0xff;}\0Au32 bit8Scan(u32 v)\0A{\0A\09return (v<<8) + (v<<16) + (v<<24);\0A}\0A//===\0A#define MY_HISTOGRAM(idx) localHistogramMat[(idx)*WG_SIZE+lIdx]\0A__kernel\0A__attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid StreamCountKernel( __global u32* gSrc, __global u32* histogramOut, int4 cb )\0A{\0A\09__local u32 localHistogramMat[NUM_BUCKET*WG_SIZE];\0A\09u32 gIdx = GET_GLOBAL_IDX;\0A\09u32 lIdx = GET_LOCAL_IDX;\0A\09u32 wgIdx = GET_GROUP_IDX;\0A\09u32 wgSize = GET_GROUP_SIZE;\0A\09const int startBit = cb.m_startBit;\0A\09const int n = cb.m_n;\0A\09const int nWGs = cb.m_nWGs;\0A\09const int nBlocksPerWG = cb.m_nBlocksPerWG;\0A\09for(int i=0; i<NUM_BUCKET; i++)\0A\09{\0A\09\09MY_HISTOGRAM(i) = 0;\0A\09}\0A\09GROUP_LDS_BARRIER;\0A\09const int blockSize = ELEMENTS_PER_WORK_ITEM*WG_SIZE;\0A\09u32 localKey;\0A\09int nBlocks = (n)/blockSize - nBlocksPerWG*wgIdx;\0A\09int addr = blockSize*nBlocksPerWG*wgIdx + ELEMENTS_PER_WORK_ITEM*lIdx;\0A\09for(int iblock=0; iblock<min(nBlocksPerWG, nBlocks); iblock++, addr+=blockSize)\0A\09{\0A\09\09//\09MY_HISTOGRAM( localKeys.x ) ++ is much expensive than atomic add as it requires read and write while atomics can just add on AMD\0A\09\09//\09Using registers didn't perform well. It seems like use localKeys to address requires a lot of alu ops\0A\09\09//\09AMD: AtomInc performs better while NV prefers ++\0A\09\09for(int i=0; i<ELEMENTS_PER_WORK_ITEM; i++)\0A\09\09{\0A#if defined(CHECK_BOUNDARY)\0A\09\09\09if( addr+i < n )\0A#endif\0A\09\09\09{\0A\09\09\09\09localKey = (gSrc[addr+i]>>startBit) & 0xf;\0A#if defined(NV_GPU)\0A\09\09\09\09MY_HISTOGRAM( localKey )++;\0A#else\0A\09\09\09\09AtomInc( MY_HISTOGRAM( localKey ) );\0A#endif\0A\09\09\09}\0A\09\09}\0A\09}\0A\09GROUP_LDS_BARRIER;\0A\09\0A\09if( lIdx < NUM_BUCKET )\0A\09{\0A\09\09u32 sum = 0;\0A\09\09for(int i=0; i<GET_GROUP_SIZE; i++)\0A\09\09{\0A\09\09\09sum += localHistogramMat[lIdx*WG_SIZE+(i+lIdx)%GET_GROUP_SIZE];\0A\09\09}\0A\09\09histogramOut[lIdx*nWGs+wgIdx] = sum;\0A\09}\0A}\0A__kernel\0A__attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid StreamCountSortDataKernel( __global SortDataCL* gSrc, __global u32* histogramOut, int4  cb )\0A{\0A\09__local u32 localHistogramMat[NUM_BUCKET*WG_SIZE];\0A\09u32 gIdx = GET_GLOBAL_IDX;\0A\09u32 lIdx = GET_LOCAL_IDX;\0A\09u32 wgIdx = GET_GROUP_IDX;\0A\09u32 wgSize = GET_GROUP_SIZE;\0A\09const int startBit = cb.m_startBit;\0A\09const int n = cb.m_n;\0A\09const int nWGs = cb.m_nWGs;\0A\09const int nBlocksPerWG = cb.m_nBlocksPerWG;\0A\09for(int i=0; i<NUM_BUCKET; i++)\0A\09{\0A\09\09MY_HISTOGRAM(i) = 0;\0A\09}\0A\09GROUP_LDS_BARRIER;\0A\09const int blockSize = ELEMENTS_PER_WORK_ITEM*WG_SIZE;\0A\09u32 localKey;\0A\09int nBlocks = (n)/blockSize - nBlocksPerWG*wgIdx;\0A\09int addr = blockSize*nBlocksPerWG*wgIdx + ELEMENTS_PER_WORK_ITEM*lIdx;\0A\09for(int iblock=0; iblock<min(nBlocksPerWG, nBlocks); iblock++, addr+=blockSize)\0A\09{\0A\09\09//\09MY_HISTOGRAM( localKeys.x ) ++ is much expensive than atomic add as it requires read and write while atomics can just add on AMD\0A\09\09//\09Using registers didn't perform well. It seems like use localKeys to address requires a lot of alu ops\0A\09\09//\09AMD: AtomInc performs better while NV prefers ++\0A\09\09for(int i=0; i<ELEMENTS_PER_WORK_ITEM; i++)\0A\09\09{\0A#if defined(CHECK_BOUNDARY)\0A\09\09\09if( addr+i < n )\0A#endif\0A\09\09\09{\0A\09\09\09\09localKey = (gSrc[addr+i].m_key>>startBit) & 0xf;\0A#if defined(NV_GPU)\0A\09\09\09\09MY_HISTOGRAM( localKey )++;\0A#else\0A\09\09\09\09AtomInc( MY_HISTOGRAM( localKey ) );\0A#endif\0A\09\09\09}\0A\09\09}\0A\09}\0A\09GROUP_LDS_BARRIER;\0A\09\0A\09if( lIdx < NUM_BUCKET )\0A\09{\0A\09\09u32 sum = 0;\0A\09\09for(int i=0; i<GET_GROUP_SIZE; i++)\0A\09\09{\0A\09\09\09sum += localHistogramMat[lIdx*WG_SIZE+(i+lIdx)%GET_GROUP_SIZE];\0A\09\09}\0A\09\09histogramOut[lIdx*nWGs+wgIdx] = sum;\0A\09}\0A}\0A#define nPerLane (nPerWI/4)\0A//\09NUM_BUCKET*nWGs < 128*nPerWI\0A__kernel\0A__attribute__((reqd_work_group_size(128,1,1)))\0Avoid PrefixScanKernel( __global u32* wHistogram1, int4  cb )\0A{\0A\09__local u32 ldsTopScanData[128*2];\0A\09u32 lIdx = GET_LOCAL_IDX;\0A\09u32 wgIdx = GET_GROUP_IDX;\0A\09const int nWGs = cb.m_nWGs;\0A\09u32 data[nPerWI];\0A\09for(int i=0; i<nPerWI; i++)\0A\09{\0A\09\09data[i] = 0;\0A\09\09if( (nPerWI*lIdx+i) < NUM_BUCKET*nWGs )\0A\09\09\09data[i] = wHistogram1[nPerWI*lIdx+i];\0A\09}\0A\09uint4 myData = make_uint4(0,0,0,0);\0A\09for(int i=0; i<nPerLane; i++)\0A\09{\0A\09\09myData.x += data[nPerLane*0+i];\0A\09\09myData.y += data[nPerLane*1+i];\0A\09\09myData.z += data[nPerLane*2+i];\0A\09\09myData.w += data[nPerLane*3+i];\0A\09}\0A\09uint totalSum;\0A\09uint4 scanned = localPrefixSum128V( myData, lIdx, &totalSum, ldsTopScanData );\0A//\09for(int j=0; j<4; j++) //\09somehow it introduces a lot of branches\0A\09{\09int j = 0;\0A\09\09u32 sum = 0;\0A\09\09for(int i=0; i<nPerLane; i++)\0A\09\09{\0A\09\09\09u32 tmp = data[nPerLane*j+i];\0A\09\09\09data[nPerLane*j+i] = sum;\0A\09\09\09sum += tmp;\0A\09\09}\0A\09}\0A\09{\09int j = 1;\0A\09\09u32 sum = 0;\0A\09\09for(int i=0; i<nPerLane; i++)\0A\09\09{\0A\09\09\09u32 tmp = data[nPerLane*j+i];\0A\09\09\09data[nPerLane*j+i] = sum;\0A\09\09\09sum += tmp;\0A\09\09}\0A\09}\0A\09{\09int j = 2;\0A\09\09u32 sum = 0;\0A\09\09for(int i=0; i<nPerLane; i++)\0A\09\09{\0A\09\09\09u32 tmp = data[nPerLane*j+i];\0A\09\09\09data[nPerLane*j+i] = sum;\0A\09\09\09sum += tmp;\0A\09\09}\0A\09}\0A\09{\09int j = 3;\0A\09\09u32 sum = 0;\0A\09\09for(int i=0; i<nPerLane; i++)\0A\09\09{\0A\09\09\09u32 tmp = data[nPerLane*j+i];\0A\09\09\09data[nPerLane*j+i] = sum;\0A\09\09\09sum += tmp;\0A\09\09}\0A\09}\0A\09for(int i=0; i<nPerLane; i++)\0A\09{\0A\09\09data[nPerLane*0+i] += scanned.x;\0A\09\09data[nPerLane*1+i] += scanned.y;\0A\09\09data[nPerLane*2+i] += scanned.z;\0A\09\09data[nPerLane*3+i] += scanned.w;\0A\09}\0A\09for(int i=0; i<nPerWI; i++)\0A\09{\0A\09\09int index = nPerWI*lIdx+i;\0A\09\09if (index < NUM_BUCKET*nWGs)\0A\09\09\09wHistogram1[nPerWI*lIdx+i] = data[i];\0A\09}\0A}\0A//\094 scan, 4 exchange\0Avoid sort4Bits(u32 sortData[4], int startBit, int lIdx, __local u32* ldsSortData)\0A{\0A\09for(int bitIdx=0; bitIdx<BITS_PER_PASS; bitIdx++)\0A\09{\0A\09\09u32 mask = (1<<bitIdx);\0A\09\09uint4 cmpResult = make_uint4( (sortData[0]>>startBit) & mask, (sortData[1]>>startBit) & mask, (sortData[2]>>startBit) & mask, (sortData[3]>>startBit) & mask );\0A\09\09uint4 prefixSum = SELECT_UINT4( make_uint4(1,1,1,1), make_uint4(0,0,0,0), cmpResult != make_uint4(0,0,0,0) );\0A\09\09u32 total;\0A\09\09prefixSum = localPrefixSum64V( prefixSum, lIdx, &total, ldsSortData );\0A\09\09{\0A\09\09\09uint4 localAddr = make_uint4(lIdx*4+0,lIdx*4+1,lIdx*4+2,lIdx*4+3);\0A\09\09\09uint4 dstAddr = localAddr - prefixSum + make_uint4( total, total, total, total );\0A\09\09\09dstAddr = SELECT_UINT4( prefixSum, dstAddr, cmpResult != make_uint4(0, 0, 0, 0) );\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\09\09ldsSortData[dstAddr.x] = sortData[0];\0A\09\09\09ldsSortData[dstAddr.y] = sortData[1];\0A\09\09\09ldsSortData[dstAddr.z] = sortData[2];\0A\09\09\09ldsSortData[dstAddr.w] = sortData[3];\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\09\09sortData[0] = ldsSortData[localAddr.x];\0A\09\09\09sortData[1] = ldsSortData[localAddr.y];\0A\09\09\09sortData[2] = ldsSortData[localAddr.z];\0A\09\09\09sortData[3] = ldsSortData[localAddr.w];\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\09}\0A\09}\0A}\0A//\092 scan, 2 exchange\0Avoid sort4Bits1(u32 sortData[4], int startBit, int lIdx, __local u32* ldsSortData)\0A{\0A\09for(uint ibit=0; ibit<BITS_PER_PASS; ibit+=2)\0A\09{\0A\09\09uint4 b = make_uint4((sortData[0]>>(startBit+ibit)) & 0x3, \0A\09\09\09(sortData[1]>>(startBit+ibit)) & 0x3, \0A\09\09\09(sortData[2]>>(startBit+ibit)) & 0x3, \0A\09\09\09(sortData[3]>>(startBit+ibit)) & 0x3);\0A\09\09u32 key4;\0A\09\09u32 sKeyPacked[4] = { 0, 0, 0, 0 };\0A\09\09{\0A\09\09\09sKeyPacked[0] |= 1<<(8*b.x);\0A\09\09\09sKeyPacked[1] |= 1<<(8*b.y);\0A\09\09\09sKeyPacked[2] |= 1<<(8*b.z);\0A\09\09\09sKeyPacked[3] |= 1<<(8*b.w);\0A\09\09\09key4 = sKeyPacked[0] + sKeyPacked[1] + sKeyPacked[2] + sKeyPacked[3];\0A\09\09}\0A\09\09u32 rankPacked;\0A\09\09u32 sumPacked;\0A\09\09{\0A\09\09\09rankPacked = localPrefixSum( key4, lIdx, &sumPacked, ldsSortData, WG_SIZE );\0A\09\09}\0A\09\09GROUP_LDS_BARRIER;\0A\09\09u32 newOffset[4] = { 0,0,0,0 };\0A\09\09{\0A\09\09\09u32 sumScanned = bit8Scan( sumPacked );\0A\09\09\09u32 scannedKeys[4];\0A\09\09\09scannedKeys[0] = 1<<(8*b.x);\0A\09\09\09scannedKeys[1] = 1<<(8*b.y);\0A\09\09\09scannedKeys[2] = 1<<(8*b.z);\0A\09\09\09scannedKeys[3] = 1<<(8*b.w);\0A\09\09\09{\09//\094 scans at once\0A\09\09\09\09u32 sum4 = 0;\0A\09\09\09\09for(int ie=0; ie<4; ie++)\0A\09\09\09\09{\0A\09\09\09\09\09u32 tmp = scannedKeys[ie];\0A\09\09\09\09\09scannedKeys[ie] = sum4;\0A\09\09\09\09\09sum4 += tmp;\0A\09\09\09\09}\0A\09\09\09}\0A\09\09\09{\0A\09\09\09\09u32 sumPlusRank = sumScanned + rankPacked;\0A\09\09\09\09{\09u32 ie = b.x;\0A\09\09\09\09\09scannedKeys[0] += sumPlusRank;\0A\09\09\09\09\09newOffset[0] = unpack4Key( scannedKeys[0], ie );\0A\09\09\09\09}\0A\09\09\09\09{\09u32 ie = b.y;\0A\09\09\09\09\09scannedKeys[1] += sumPlusRank;\0A\09\09\09\09\09newOffset[1] = unpack4Key( scannedKeys[1], ie );\0A\09\09\09\09}\0A\09\09\09\09{\09u32 ie = b.z;\0A\09\09\09\09\09scannedKeys[2] += sumPlusRank;\0A\09\09\09\09\09newOffset[2] = unpack4Key( scannedKeys[2], ie );\0A\09\09\09\09}\0A\09\09\09\09{\09u32 ie = b.w;\0A\09\09\09\09\09scannedKeys[3] += sumPlusRank;\0A\09\09\09\09\09newOffset[3] = unpack4Key( scannedKeys[3], ie );\0A\09\09\09\09}\0A\09\09\09}\0A\09\09}\0A\09\09GROUP_LDS_BARRIER;\0A\09\09{\0A\09\09\09ldsSortData[newOffset[0]] = sortData[0];\0A\09\09\09ldsSortData[newOffset[1]] = sortData[1];\0A\09\09\09ldsSortData[newOffset[2]] = sortData[2];\0A\09\09\09ldsSortData[newOffset[3]] = sortData[3];\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\09\09u32 dstAddr = 4*lIdx;\0A\09\09\09sortData[0] = ldsSortData[dstAddr+0];\0A\09\09\09sortData[1] = ldsSortData[dstAddr+1];\0A\09\09\09sortData[2] = ldsSortData[dstAddr+2];\0A\09\09\09sortData[3] = ldsSortData[dstAddr+3];\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\09}\0A\09}\0A}\0A#define SET_HISTOGRAM(setIdx, key) ldsSortData[(setIdx)*NUM_BUCKET+key]\0A__kernel\0A__attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid SortAndScatterKernel( __global const u32* restrict gSrc, __global const u32* rHistogram, __global u32* restrict gDst, int4  cb )\0A{\0A\09__local u32 ldsSortData[WG_SIZE*ELEMENTS_PER_WORK_ITEM+16];\0A\09__local u32 localHistogramToCarry[NUM_BUCKET];\0A\09__local u32 localHistogram[NUM_BUCKET*2];\0A\09u32 gIdx = GET_GLOBAL_IDX;\0A\09u32 lIdx = GET_LOCAL_IDX;\0A\09u32 wgIdx = GET_GROUP_IDX;\0A\09u32 wgSize = GET_GROUP_SIZE;\0A\09const int n = cb.m_n;\0A\09const int nWGs = cb.m_nWGs;\0A\09const int startBit = cb.m_startBit;\0A\09const int nBlocksPerWG = cb.m_nBlocksPerWG;\0A\09if( lIdx < (NUM_BUCKET) )\0A\09{\0A\09\09localHistogramToCarry[lIdx] = rHistogram[lIdx*nWGs + wgIdx];\0A\09}\0A\09GROUP_LDS_BARRIER;\0A\09const int blockSize = ELEMENTS_PER_WORK_ITEM*WG_SIZE;\0A\09int nBlocks = n/blockSize - nBlocksPerWG*wgIdx;\0A\09int addr = blockSize*nBlocksPerWG*wgIdx + ELEMENTS_PER_WORK_ITEM*lIdx;\0A\09for(int iblock=0; iblock<min(nBlocksPerWG, nBlocks); iblock++, addr+=blockSize)\0A\09{\0A\09\09u32 myHistogram = 0;\0A\09\09u32 sortData[ELEMENTS_PER_WORK_ITEM];\0A\09\09for(int i=0; i<ELEMENTS_PER_WORK_ITEM; i++)\0A#if defined(CHECK_BOUNDARY)\0A\09\09\09sortData[i] = ( addr+i < n )? gSrc[ addr+i ] : 0xffffffff;\0A#else\0A\09\09\09sortData[i] = gSrc[ addr+i ];\0A#endif\0A\09\09sort4Bits(sortData, startBit, lIdx, ldsSortData);\0A\09\09u32 keys[ELEMENTS_PER_WORK_ITEM];\0A\09\09for(int i=0; i<ELEMENTS_PER_WORK_ITEM; i++)\0A\09\09\09keys[i] = (sortData[i]>>startBit) & 0xf;\0A\09\09{\09//\09create histogram\0A\09\09\09u32 setIdx = lIdx/16;\0A\09\09\09if( lIdx < NUM_BUCKET )\0A\09\09\09{\0A\09\09\09\09localHistogram[lIdx] = 0;\0A\09\09\09}\0A\09\09\09ldsSortData[lIdx] = 0;\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\09\09for(int i=0; i<ELEMENTS_PER_WORK_ITEM; i++)\0A#if defined(CHECK_BOUNDARY)\0A\09\09\09\09if( addr+i < n )\0A#endif\0A#if defined(NV_GPU)\0A\09\09\09\09SET_HISTOGRAM( setIdx, keys[i] )++;\0A#else\0A\09\09\09\09AtomInc( SET_HISTOGRAM( setIdx, keys[i] ) );\0A#endif\0A\09\09\09\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\09\09\0A\09\09\09uint hIdx = NUM_BUCKET+lIdx;\0A\09\09\09if( lIdx < NUM_BUCKET )\0A\09\09\09{\0A\09\09\09\09u32 sum = 0;\0A\09\09\09\09for(int i=0; i<WG_SIZE/16; i++)\0A\09\09\09\09{\0A\09\09\09\09\09sum += SET_HISTOGRAM( i, lIdx );\0A\09\09\09\09}\0A\09\09\09\09myHistogram = sum;\0A\09\09\09\09localHistogram[hIdx] = sum;\0A\09\09\09}\0A\09\09\09GROUP_LDS_BARRIER;\0A#if defined(USE_2LEVEL_REDUCE)\0A\09\09\09if( lIdx < NUM_BUCKET )\0A\09\09\09{\0A\09\09\09\09localHistogram[hIdx] = localHistogram[hIdx-1];\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09\09u32 u0, u1, u2;\0A\09\09\09\09u0 = localHistogram[hIdx-3];\0A\09\09\09\09u1 = localHistogram[hIdx-2];\0A\09\09\09\09u2 = localHistogram[hIdx-1];\0A\09\09\09\09AtomAdd( localHistogram[hIdx], u0 + u1 + u2 );\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09\09u0 = localHistogram[hIdx-12];\0A\09\09\09\09u1 = localHistogram[hIdx-8];\0A\09\09\09\09u2 = localHistogram[hIdx-4];\0A\09\09\09\09AtomAdd( localHistogram[hIdx], u0 + u1 + u2 );\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09}\0A#else\0A\09\09\09if( lIdx < NUM_BUCKET )\0A\09\09\09{\0A\09\09\09\09localHistogram[hIdx] = localHistogram[hIdx-1];\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09\09localHistogram[hIdx] += localHistogram[hIdx-1];\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09\09localHistogram[hIdx] += localHistogram[hIdx-2];\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09\09localHistogram[hIdx] += localHistogram[hIdx-4];\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09\09localHistogram[hIdx] += localHistogram[hIdx-8];\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09}\0A#endif\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\09}\0A\09\09{\0A\09\09\09for(int ie=0; ie<ELEMENTS_PER_WORK_ITEM; ie++)\0A\09\09\09{\0A\09\09\09\09int dataIdx = ELEMENTS_PER_WORK_ITEM*lIdx+ie;\0A\09\09\09\09int binIdx = keys[ie];\0A\09\09\09\09int groupOffset = localHistogramToCarry[binIdx];\0A\09\09\09\09int myIdx = dataIdx - localHistogram[NUM_BUCKET+binIdx];\0A#if defined(CHECK_BOUNDARY)\0A\09\09\09\09if( addr+ie < n )\0A#endif\0A\09\09\09\09gDst[ groupOffset + myIdx ] = sortData[ie];\0A\09\09\09}\0A\09\09}\0A\09\09GROUP_LDS_BARRIER;\0A\09\09if( lIdx < NUM_BUCKET )\0A\09\09{\0A\09\09\09localHistogramToCarry[lIdx] += myHistogram;\0A\09\09}\0A\09\09GROUP_LDS_BARRIER;\0A\09}\0A}\0A//\092 scan, 2 exchange\0Avoid sort4Bits1KeyValue(u32 sortData[4], int sortVal[4], int startBit, int lIdx, __local u32* ldsSortData, __local int *ldsSortVal)\0A{\0A\09for(uint ibit=0; ibit<BITS_PER_PASS; ibit+=2)\0A\09{\0A\09\09uint4 b = make_uint4((sortData[0]>>(startBit+ibit)) & 0x3, \0A\09\09\09(sortData[1]>>(startBit+ibit)) & 0x3, \0A\09\09\09(sortData[2]>>(startBit+ibit)) & 0x3, \0A\09\09\09(sortData[3]>>(startBit+ibit)) & 0x3);\0A\09\09u32 key4;\0A\09\09u32 sKeyPacked[4] = { 0, 0, 0, 0 };\0A\09\09{\0A\09\09\09sKeyPacked[0] |= 1<<(8*b.x);\0A\09\09\09sKeyPacked[1] |= 1<<(8*b.y);\0A\09\09\09sKeyPacked[2] |= 1<<(8*b.z);\0A\09\09\09sKeyPacked[3] |= 1<<(8*b.w);\0A\09\09\09key4 = sKeyPacked[0] + sKeyPacked[1] + sKeyPacked[2] + sKeyPacked[3];\0A\09\09}\0A\09\09u32 rankPacked;\0A\09\09u32 sumPacked;\0A\09\09{\0A\09\09\09rankPacked = localPrefixSum( key4, lIdx, &sumPacked, ldsSortData, WG_SIZE );\0A\09\09}\0A\09\09GROUP_LDS_BARRIER;\0A\09\09u32 newOffset[4] = { 0,0,0,0 };\0A\09\09{\0A\09\09\09u32 sumScanned = bit8Scan( sumPacked );\0A\09\09\09u32 scannedKeys[4];\0A\09\09\09scannedKeys[0] = 1<<(8*b.x);\0A\09\09\09scannedKeys[1] = 1<<(8*b.y);\0A\09\09\09scannedKeys[2] = 1<<(8*b.z);\0A\09\09\09scannedKeys[3] = 1<<(8*b.w);\0A\09\09\09{\09//\094 scans at once\0A\09\09\09\09u32 sum4 = 0;\0A\09\09\09\09for(int ie=0; ie<4; ie++)\0A\09\09\09\09{\0A\09\09\09\09\09u32 tmp = scannedKeys[ie];\0A\09\09\09\09\09scannedKeys[ie] = sum4;\0A\09\09\09\09\09sum4 += tmp;\0A\09\09\09\09}\0A\09\09\09}\0A\09\09\09{\0A\09\09\09\09u32 sumPlusRank = sumScanned + rankPacked;\0A\09\09\09\09{\09u32 ie = b.x;\0A\09\09\09\09\09scannedKeys[0] += sumPlusRank;\0A\09\09\09\09\09newOffset[0] = unpack4Key( scannedKeys[0], ie );\0A\09\09\09\09}\0A\09\09\09\09{\09u32 ie = b.y;\0A\09\09\09\09\09scannedKeys[1] += sumPlusRank;\0A\09\09\09\09\09newOffset[1] = unpack4Key( scannedKeys[1], ie );\0A\09\09\09\09}\0A\09\09\09\09{\09u32 ie = b.z;\0A\09\09\09\09\09scannedKeys[2] += sumPlusRank;\0A\09\09\09\09\09newOffset[2] = unpack4Key( scannedKeys[2], ie );\0A\09\09\09\09}\0A\09\09\09\09{\09u32 ie = b.w;\0A\09\09\09\09\09scannedKeys[3] += sumPlusRank;\0A\09\09\09\09\09newOffset[3] = unpack4Key( scannedKeys[3], ie );\0A\09\09\09\09}\0A\09\09\09}\0A\09\09}\0A\09\09GROUP_LDS_BARRIER;\0A\09\09{\0A\09\09\09ldsSortData[newOffset[0]] = sortData[0];\0A\09\09\09ldsSortData[newOffset[1]] = sortData[1];\0A\09\09\09ldsSortData[newOffset[2]] = sortData[2];\0A\09\09\09ldsSortData[newOffset[3]] = sortData[3];\0A\09\09\09ldsSortVal[newOffset[0]] = sortVal[0];\0A\09\09\09ldsSortVal[newOffset[1]] = sortVal[1];\0A\09\09\09ldsSortVal[newOffset[2]] = sortVal[2];\0A\09\09\09ldsSortVal[newOffset[3]] = sortVal[3];\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\09\09u32 dstAddr = 4*lIdx;\0A\09\09\09sortData[0] = ldsSortData[dstAddr+0];\0A\09\09\09sortData[1] = ldsSortData[dstAddr+1];\0A\09\09\09sortData[2] = ldsSortData[dstAddr+2];\0A\09\09\09sortData[3] = ldsSortData[dstAddr+3];\0A\09\09\09sortVal[0] = ldsSortVal[dstAddr+0];\0A\09\09\09sortVal[1] = ldsSortVal[dstAddr+1];\0A\09\09\09sortVal[2] = ldsSortVal[dstAddr+2];\0A\09\09\09sortVal[3] = ldsSortVal[dstAddr+3];\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\09}\0A\09}\0A}\0A__kernel\0A__attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid SortAndScatterSortDataKernel( __global const SortDataCL* restrict gSrc, __global const u32* rHistogram, __global SortDataCL* restrict gDst, int4 cb)\0A{\0A\09__local int ldsSortData[WG_SIZE*ELEMENTS_PER_WORK_ITEM+16];\0A\09__local int ldsSortVal[WG_SIZE*ELEMENTS_PER_WORK_ITEM+16];\0A\09__local u32 localHistogramToCarry[NUM_BUCKET];\0A\09__local u32 localHistogram[NUM_BUCKET*2];\0A\09u32 gIdx = GET_GLOBAL_IDX;\0A\09u32 lIdx = GET_LOCAL_IDX;\0A\09u32 wgIdx = GET_GROUP_IDX;\0A\09u32 wgSize = GET_GROUP_SIZE;\0A\09const int n = cb.m_n;\0A\09const int nWGs = cb.m_nWGs;\0A\09const int startBit = cb.m_startBit;\0A\09const int nBlocksPerWG = cb.m_nBlocksPerWG;\0A\09if( lIdx < (NUM_BUCKET) )\0A\09{\0A\09\09localHistogramToCarry[lIdx] = rHistogram[lIdx*nWGs + wgIdx];\0A\09}\0A\09GROUP_LDS_BARRIER;\0A    \0A\09const int blockSize = ELEMENTS_PER_WORK_ITEM*WG_SIZE;\0A\09int nBlocks = n/blockSize - nBlocksPerWG*wgIdx;\0A\09int addr = blockSize*nBlocksPerWG*wgIdx + ELEMENTS_PER_WORK_ITEM*lIdx;\0A\09for(int iblock=0; iblock<min(nBlocksPerWG, nBlocks); iblock++, addr+=blockSize)\0A\09{\0A\09\09u32 myHistogram = 0;\0A\09\09int sortData[ELEMENTS_PER_WORK_ITEM];\0A\09\09int sortVal[ELEMENTS_PER_WORK_ITEM];\0A\09\09for(int i=0; i<ELEMENTS_PER_WORK_ITEM; i++)\0A#if defined(CHECK_BOUNDARY)\0A\09\09{\0A\09\09\09sortData[i] = ( addr+i < n )? gSrc[ addr+i ].m_key : 0xffffffff;\0A\09\09\09sortVal[i] = ( addr+i < n )? gSrc[ addr+i ].m_value : 0xffffffff;\0A\09\09}\0A#else\0A\09\09{\0A\09\09\09sortData[i] = gSrc[ addr+i ].m_key;\0A\09\09\09sortVal[i] = gSrc[ addr+i ].m_value;\0A\09\09}\0A#endif\0A\09\09sort4Bits1KeyValue(sortData, sortVal, startBit, lIdx, ldsSortData, ldsSortVal);\0A\09\09u32 keys[ELEMENTS_PER_WORK_ITEM];\0A\09\09for(int i=0; i<ELEMENTS_PER_WORK_ITEM; i++)\0A\09\09\09keys[i] = (sortData[i]>>startBit) & 0xf;\0A\09\09{\09//\09create histogram\0A\09\09\09u32 setIdx = lIdx/16;\0A\09\09\09if( lIdx < NUM_BUCKET )\0A\09\09\09{\0A\09\09\09\09localHistogram[lIdx] = 0;\0A\09\09\09}\0A\09\09\09ldsSortData[lIdx] = 0;\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\09\09for(int i=0; i<ELEMENTS_PER_WORK_ITEM; i++)\0A#if defined(CHECK_BOUNDARY)\0A\09\09\09\09if( addr+i < n )\0A#endif\0A#if defined(NV_GPU)\0A\09\09\09\09SET_HISTOGRAM( setIdx, keys[i] )++;\0A#else\0A\09\09\09\09AtomInc( SET_HISTOGRAM( setIdx, keys[i] ) );\0A#endif\0A\09\09\09\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\09\09\0A\09\09\09uint hIdx = NUM_BUCKET+lIdx;\0A\09\09\09if( lIdx < NUM_BUCKET )\0A\09\09\09{\0A\09\09\09\09u32 sum = 0;\0A\09\09\09\09for(int i=0; i<WG_SIZE/16; i++)\0A\09\09\09\09{\0A\09\09\09\09\09sum += SET_HISTOGRAM( i, lIdx );\0A\09\09\09\09}\0A\09\09\09\09myHistogram = sum;\0A\09\09\09\09localHistogram[hIdx] = sum;\0A\09\09\09}\0A\09\09\09GROUP_LDS_BARRIER;\0A#if defined(USE_2LEVEL_REDUCE)\0A\09\09\09if( lIdx < NUM_BUCKET )\0A\09\09\09{\0A\09\09\09\09localHistogram[hIdx] = localHistogram[hIdx-1];\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09\09u32 u0, u1, u2;\0A\09\09\09\09u0 = localHistogram[hIdx-3];\0A\09\09\09\09u1 = localHistogram[hIdx-2];\0A\09\09\09\09u2 = localHistogram[hIdx-1];\0A\09\09\09\09AtomAdd( localHistogram[hIdx], u0 + u1 + u2 );\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09\09u0 = localHistogram[hIdx-12];\0A\09\09\09\09u1 = localHistogram[hIdx-8];\0A\09\09\09\09u2 = localHistogram[hIdx-4];\0A\09\09\09\09AtomAdd( localHistogram[hIdx], u0 + u1 + u2 );\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09}\0A#else\0A\09\09\09if( lIdx < NUM_BUCKET )\0A\09\09\09{\0A\09\09\09\09localHistogram[hIdx] = localHistogram[hIdx-1];\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09\09localHistogram[hIdx] += localHistogram[hIdx-1];\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09\09localHistogram[hIdx] += localHistogram[hIdx-2];\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09\09localHistogram[hIdx] += localHistogram[hIdx-4];\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09\09localHistogram[hIdx] += localHistogram[hIdx-8];\0A\09\09\09\09GROUP_MEM_FENCE;\0A\09\09\09}\0A#endif\0A\09\09\09GROUP_LDS_BARRIER;\0A\09\09}\0A    \09{\0A\09\09\09for(int ie=0; ie<ELEMENTS_PER_WORK_ITEM; ie++)\0A\09\09\09{\0A\09\09\09\09int dataIdx = ELEMENTS_PER_WORK_ITEM*lIdx+ie;\0A\09\09\09\09int binIdx = keys[ie];\0A\09\09\09\09int groupOffset = localHistogramToCarry[binIdx];\0A\09\09\09\09int myIdx = dataIdx - localHistogram[NUM_BUCKET+binIdx];\0A#if defined(CHECK_BOUNDARY)\0A\09\09\09\09if( addr+ie < n )\0A\09\09\09\09{\0A                    if ((groupOffset + myIdx)<n)\0A                    {\0A                        if (sortData[ie]==sortVal[ie])\0A                        {\0A                            \0A                            SortDataCL tmp;\0A                            tmp.m_key = sortData[ie];\0A                            tmp.m_value = sortVal[ie];\0A                            if (tmp.m_key == tmp.m_value)\0A                                gDst[groupOffset + myIdx ] = tmp;\0A                        }\0A                        \0A                    }\0A\09\09\09\09}\0A#else\0A                if ((groupOffset + myIdx)<n)\0A                {\0A                    gDst[ groupOffset + myIdx ].m_key = sortData[ie];\0A                    gDst[ groupOffset + myIdx ].m_value = sortVal[ie];\0A                }\0A#endif\0A\09\09\09}\0A\09\09}\0A\09\09GROUP_LDS_BARRIER;\0A\09\09if( lIdx < NUM_BUCKET )\0A\09\09{\0A\09\09\09localHistogramToCarry[lIdx] += myHistogram;\0A\09\09}\0A\09\09GROUP_LDS_BARRIER;\0A\09}\0A}\0A__kernel\0A__attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid SortAndScatterSortDataKernelSerial( __global const SortDataCL* restrict gSrc, __global const u32* rHistogram, __global SortDataCL* restrict gDst, int4 cb)\0A{\0A    \0A\09u32 gIdx = GET_GLOBAL_IDX;\0A\09u32 realLocalIdx = GET_LOCAL_IDX;\0A\09u32 wgIdx = GET_GROUP_IDX;\0A\09u32 wgSize = GET_GROUP_SIZE;\0A\09const int startBit = cb.m_startBit;\0A\09const int n = cb.m_n;\0A\09const int nWGs = cb.m_nWGs;\0A\09const int nBlocksPerWG = cb.m_nBlocksPerWG;\0A    int counter[NUM_BUCKET];\0A    \0A    if (realLocalIdx>0)\0A        return;\0A    \0A    for (int c=0;c<NUM_BUCKET;c++)\0A        counter[c]=0;\0A    const int blockSize = ELEMENTS_PER_WORK_ITEM*WG_SIZE;\0A\09\0A\09int nBlocks = (n)/blockSize - nBlocksPerWG*wgIdx;\0A   for(int iblock=0; iblock<min(nBlocksPerWG, nBlocks); iblock++)\0A  {\0A     for (int lIdx=0;lIdx<WG_SIZE;lIdx++)\0A \09{\0A        int addr2 = iblock*blockSize + blockSize*nBlocksPerWG*wgIdx + ELEMENTS_PER_WORK_ITEM*lIdx;\0A        \0A\09\09for(int j=0; j<ELEMENTS_PER_WORK_ITEM; j++)\0A\09\09{\0A            int i = addr2+j;\0A\09\09\09if( i < n )\0A\09\09\09{\0A                int tableIdx;\0A\09\09\09\09tableIdx = (gSrc[i].m_key>>startBit) & 0xf;//0xf = NUM_TABLES-1\0A                gDst[rHistogram[tableIdx*nWGs+wgIdx] + counter[tableIdx]] = gSrc[i];\0A                counter[tableIdx] ++;\0A\09\09\09}\0A\09\09}\0A\09}\0A  }\0A    \0A}\0A__kernel\0A__attribute__((reqd_work_group_size(WG_SIZE,1,1)))\0Avoid SortAndScatterKernelSerial( __global const u32* restrict gSrc, __global const u32* rHistogram, __global u32* restrict gDst, int4  cb )\0A{\0A    \0A\09u32 gIdx = GET_GLOBAL_IDX;\0A\09u32 realLocalIdx = GET_LOCAL_IDX;\0A\09u32 wgIdx = GET_GROUP_IDX;\0A\09u32 wgSize = GET_GROUP_SIZE;\0A\09const int startBit = cb.m_startBit;\0A\09const int n = cb.m_n;\0A\09const int nWGs = cb.m_nWGs;\0A\09const int nBlocksPerWG = cb.m_nBlocksPerWG;\0A    int counter[NUM_BUCKET];\0A    \0A    if (realLocalIdx>0)\0A        return;\0A    \0A    for (int c=0;c<NUM_BUCKET;c++)\0A        counter[c]=0;\0A    const int blockSize = ELEMENTS_PER_WORK_ITEM*WG_SIZE;\0A\09\0A\09int nBlocks = (n)/blockSize - nBlocksPerWG*wgIdx;\0A   for(int iblock=0; iblock<min(nBlocksPerWG, nBlocks); iblock++)\0A  {\0A     for (int lIdx=0;lIdx<WG_SIZE;lIdx++)\0A \09{\0A        int addr2 = iblock*blockSize + blockSize*nBlocksPerWG*wgIdx + ELEMENTS_PER_WORK_ITEM*lIdx;\0A        \0A\09\09for(int j=0; j<ELEMENTS_PER_WORK_ITEM; j++)\0A\09\09{\0A            int i = addr2+j;\0A\09\09\09if( i < n )\0A\09\09\09{\0A                int tableIdx;\0A\09\09\09\09tableIdx = (gSrc[i]>>startBit) & 0xf;//0xf = NUM_TABLES-1\0A                gDst[rHistogram[tableIdx*nWGs+wgIdx] + counter[tableIdx]] = gSrc[i];\0A                counter[tableIdx] ++;\0A\09\09\09}\0A\09\09}\0A\09}\0A  }\0A    \0A}\0A\00", align 1
@__const._ZN12b3LauncherCL8launch2DEiiii.lRange = private unnamed_addr constant [3 x i64] [i64 1, i64 1, i64 1], align 16
@__clewEnqueueNDRangeKernel = external local_unnamed_addr global ptr, align 8
@.str.15 = private unnamed_addr constant [27 x i8] c"Error: OpenCL status = %d\0A\00", align 1
@_ZTV13b3OpenCLArrayIjE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayIjE, ptr @_ZN13b3OpenCLArrayIjED2Ev, ptr @_ZN13b3OpenCLArrayIjED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayIjE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayIjE }, comdat, align 8
@_ZTS13b3OpenCLArrayIjE = linkonce_odr dso_local constant [19 x i8] c"13b3OpenCLArrayIjE\00", comdat, align 1
@__clewCreateBuffer = external local_unnamed_addr global ptr, align 8
@.str.16 = private unnamed_addr constant [17 x i8] c"b3Error[%s,%d]:\0A\00", align 1
@.str.17 = private unnamed_addr constant [85 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3OpenCL/ParallelPrimitives/b3OpenCLArray.h\00", align 1
@.str.18 = private unnamed_addr constant [22 x i8] c"OpenCL out-of-memory\0A\00", align 1
@__clewEnqueueCopyBuffer = external local_unnamed_addr global ptr, align 8
@__clewReleaseMemObject = external local_unnamed_addr global ptr, align 8
@_ZTV13b3OpenCLArrayI10b3SortDataE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI10b3SortDataE, ptr @_ZN13b3OpenCLArrayI10b3SortDataED2Ev, ptr @_ZN13b3OpenCLArrayI10b3SortDataED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI10b3SortDataE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI10b3SortDataE }, comdat, align 8
@_ZTS13b3OpenCLArrayI10b3SortDataE = linkonce_odr dso_local constant [30 x i8] c"13b3OpenCLArrayI10b3SortDataE\00", comdat, align 1
@.str.19 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3Common/b3AlignedObjectArray.h\00", align 1
@.str.20 = private unnamed_addr constant [44 x i8] c"b3AlignedObjectArray reserve out-of-memory\0A\00", align 1
@__clewEnqueueReadBuffer = external local_unnamed_addr global ptr, align 8
@__clewFinish = external local_unnamed_addr global ptr, align 8
@.str.21 = private unnamed_addr constant [33 x i8] c"copyToHostPointer invalid range\0A\00", align 1
@__clewEnqueueWriteBuffer = external local_unnamed_addr global ptr, align 8
@__clewSetKernelArg = external local_unnamed_addr global ptr, align 8

@_ZN15b3RadixSort32CLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i32), ptr @_ZN15b3RadixSort32CLC2EP11_cl_contextP13_cl_device_idP17_cl_command_queuei
@_ZN15b3RadixSort32CLD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN15b3RadixSort32CLD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN15b3RadixSort32CLC2EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(128) initializes((0, 64), (104, 105)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %struct.b3OpenCLDeviceInfo, align 8 ; 5 uses
  %i.a = alloca i32, align 4                      ; 8 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV15b3RadixSort32CL, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %3, ptr %i.b, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  call void @_ZN13b3OpenCLUtils13getDeviceInfoEP13_cl_device_idP18b3OpenCLDeviceInfo(ptr noundef %2, ptr noundef nonnull %5)
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 4096
  %i.d = load i64, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.f = trunc i64 %i.d to i8
  %i.g = lshr i8 %i.f, 1
  %i.h = and i8 %i.g, 1
  store i8 %i.h, ptr %i.e, align 8, !tbaa !24
  %i.i = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIjE, i64 16), ptr %i.i, align 8, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.k, align 8, !tbaa !25
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %3, ptr %i.l, align 8, !tbaa !29
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  store i8 1, ptr %i.m, align 8, !tbaa !30
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 49
  store i8 1, ptr %i.n, align 1, !tbaa !31
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store ptr %i.i, ptr %i.o, align 8, !tbaa !32
  %i.p = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIjE, i64 16), ptr %i.p, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.r, align 8, !tbaa !25
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %3, ptr %i.s, align 8, !tbaa !29
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i8 1, ptr %i.t, align 8, !tbaa !30
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 49
  store i8 1, ptr %i.u, align 1, !tbaa !31
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.p, ptr %i.v, align 8, !tbaa !33
  %i.w = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI10b3SortDataE, i64 16), ptr %i.w, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.y, align 8, !tbaa !34
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr %3, ptr %i.z, align 8, !tbaa !36
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i8 1, ptr %i.aa, align 8, !tbaa !37
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 49
  store i8 1, ptr %i.ab, align 1, !tbaa !38
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store ptr %i.w, ptr %i.ac, align 8, !tbaa !39
  %i.ad = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIjE, i64 16), ptr %i.ad, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.af, align 8, !tbaa !25
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %3, ptr %i.ag, align 8, !tbaa !29
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i8 1, ptr %i.ah, align 8, !tbaa !30
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 49
  store i8 1, ptr %i.ai, align 1, !tbaa !31
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !40
  %i.ak = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI10b3SortDataE, i64 16), ptr %i.ak, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.am, align 8, !tbaa !34
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %3, ptr %i.an, align 8, !tbaa !36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i8 1, ptr %i.ao, align 8, !tbaa !37
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 49
  store i8 1, ptr %i.ap, align 1, !tbaa !38
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr %i.ak, ptr %i.aq, align 8, !tbaa !41
  %i.ar = call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #16 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIjE, i64 16), ptr %i.ar, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.at, align 8, !tbaa !25
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %3, ptr %i.au, align 8, !tbaa !29
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i8 1, ptr %i.av, align 8, !tbaa !30
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 49
  store i8 1, ptr %i.aw, align 1, !tbaa !31
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store ptr %i.ar, ptr %i.ax, align 8, !tbaa !42
  %i.ay = icmp sgt i32 %4, 0
  br i1 %i.ay, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %6 = load ptr, ptr %i.o, align 8, !tbaa !32
  %i.az = zext nneg i32 %4 to i64                 ; 5 uses
  %i.ba = call noundef zeroext i1 @_ZN13b3OpenCLArrayIjE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %6, i64 noundef %i.az, i1 noundef zeroext true) ; 0 uses
  %i.bb = load ptr, ptr %i.ac, align 8, !tbaa !39
  %i.bc = call noundef zeroext i1 @_ZN13b3OpenCLArrayI10b3SortDataE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.bb, i64 noundef %i.az, i1 noundef zeroext true) ; 0 uses
  %i.bd = load ptr, ptr %i.aj, align 8, !tbaa !40
  %i.be = call noundef zeroext i1 @_ZN13b3OpenCLArrayIjE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.bd, i64 noundef %i.az, i1 noundef zeroext true) ; 0 uses
  %i.bf = load ptr, ptr %i.aq, align 8, !tbaa !41
  %i.bg = call noundef zeroext i1 @_ZN13b3OpenCLArrayI10b3SortDataE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.bf, i64 noundef %i.az, i1 noundef zeroext true) ; 0 uses
  %i.bh = load ptr, ptr %i.ax, align 8, !tbaa !42
  %i.bi = call noundef zeroext i1 @_ZN13b3OpenCLArrayIjE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %i.bh, i64 noundef %i.az, i1 noundef zeroext true) ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.bj = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16 ; 3 uses
  invoke void @_ZN14b3PrefixScanCLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(48) %i.bj, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr %i.bj, ptr %i.bk, align 8, !tbaa !43
  %i.bl = call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #16 ; 3 uses
  invoke void @_ZN8b3FillCLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queue(ptr noundef nonnull align 8 dereferenceable(48) %i.bl, ptr noundef %1, ptr noundef %2, ptr noundef %3)
          to label %bb.e unwind label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.bl, ptr %i.bm, align 8, !tbaa !44
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.bn = call noundef ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i1 noundef zeroext false) ; 5 uses
  %i.bo = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, ptr noundef %i.bn, ptr noundef nonnull @.str)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.bo, ptr %i.bp, align 8, !tbaa !45
  %i.bq = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef %i.bn, ptr noundef nonnull @.str)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.bq, ptr %i.br, align 8, !tbaa !46
  %i.bs = load i8, ptr %i.e, align 8, !tbaa !24, !range !47, !noundef !48
  %i.bt = trunc nuw i8 %i.bs to i1                ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.str.4..str.6 = select i1 %i.bt, ptr @.str.4, ptr @.str.6
  %.str.5..str.7 = select i1 %i.bt, ptr @.str.5, ptr @.str.7
  %i.bv = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull %.str.4..str.6, ptr noundef nonnull %i.a, ptr noundef %i.bn, ptr noundef nonnull @.str)
  store ptr %i.bv, ptr %i.bu, align 8, !tbaa !49
  %i.bw = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull %.str.5..str.7, ptr noundef nonnull %i.a, ptr noundef %i.bn, ptr noundef nonnull @.str)
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.bw, ptr %i.bx, align 8, !tbaa !50
  %i.by = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %1, ptr noundef %2, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, ptr noundef %i.bn, ptr noundef nonnull @.str)
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.by, ptr %i.bz, align 8, !tbaa !51
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  ret void

bb.f:                                             ; preds = %bb.c
  %i.ca = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi ptr [ %i.bl, %bb.g ], [ %i.bj, %bb.f ]
  %.pn = phi { ptr, i32 } [ %i.cb, %bb.g ], [ %i.ca, %bb.f ]
  call void @_ZdlPvm(ptr noundef nonnull %.sink, i64 noundef 48) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN13b3OpenCLUtils13getDeviceInfoEP13_cl_device_idP18b3OpenCLDeviceInfo(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN13b3OpenCLArrayIjE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !52
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %_ZN13b3OpenCLArrayIjE7reserveEmb.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !53
  %i.g = icmp ult i64 %i.f, %1
  br i1 %i.g, label %bb.c, label %_ZN13b3OpenCLArrayIjE7reserveEmb.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 49
  %i.i = load i8, ptr %i.h, align 1, !tbaa !31, !range !47, !noundef !48
  %i.j = trunc nuw i8 %i.i to i1
  br i1 %i.j, label %bb.d, label %bb.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #15
  %i.k = shl i64 %1, 2
  %i.l = load ptr, ptr @__clewCreateBuffer, align 8, !tbaa !54
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !25
  %i.o = call ptr %i.l(ptr noundef %i.n, i64 noundef 1, i64 noundef %i.k, ptr noundef null, ptr noundef nonnull %i.a), !inline_history !55 ; 2 uses
  %i.p = load i32, ptr %i.a, align 4, !tbaa !56
  %.not.i = icmp eq i32 %i.p, 0                   ; 2 uses
  br i1 %.not.i, label %bb.e, label %.thread.i

.thread.i:                                        ; preds = %bb.d
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17, i32 noundef 166)
  call void (ptr, ...) @b3OutputErrorMessageVarArgsInternal(ptr noundef nonnull @.str.18)
  br label %_ZNK13b3OpenCLArrayIjE8copyToCLEP7_cl_memmmm.exit.i

bb.e:                                             ; preds = %bb.d
  br i1 %2, label %bb.f, label %_ZNK13b3OpenCLArrayIjE8copyToCLEP7_cl_memmmm.exit.i

bb.f:                                             ; preds = %bb.e
  %i.q = load i64, ptr %i.b, align 8, !tbaa !52   ; 2 uses
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %_ZNK13b3OpenCLArrayIjE8copyToCLEP7_cl_memmmm.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = load ptr, ptr @__clewEnqueueCopyBuffer, align 8, !tbaa !54
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !29
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !57
  %i.x = shl i64 %i.q, 2
  %i.y = call i32 %i.s(ptr noundef %i.u, ptr noundef %i.w, ptr noundef %i.o, i64 noundef 0, i64 noundef 0, i64 noundef %i.x, i32 noundef 0, ptr noundef null, ptr noundef null), !inline_history !58 ; 0 uses
  br label %_ZNK13b3OpenCLArrayIjE8copyToCLEP7_cl_memmmm.exit.i

_ZNK13b3OpenCLArrayIjE8copyToCLEP7_cl_memmmm.exit.i: ; preds = %bb.g, %bb.f, %bb.e, %.thread.i
  %.01017.i = phi i64 [ 0, %.thread.i ], [ %1, %bb.e ], [ %1, %bb.f ], [ %1, %bb.g ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !57  ; 2 uses
  %.not.i.i = icmp ne ptr %i.aa, null
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ac = load i8, ptr %i.ab, align 8, !range !47
  %i.ad = trunc nuw i8 %i.ac to i1
  %or.cond.i.i = select i1 %.not.i.i, i1 %i.ad, i1 false
  br i1 %or.cond.i.i, label %bb.h, label %_ZN13b3OpenCLArrayIjE7reserveEmb.exit

bb.h:                                             ; preds = %_ZNK13b3OpenCLArrayIjE8copyToCLEP7_cl_memmmm.exit.i
  %i.ae = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !54
  %i.af = call i32 %i.ae(ptr noundef nonnull %i.aa), !inline_history !59 ; 0 uses
  br label %_ZN13b3OpenCLArrayIjE7reserveEmb.exit

bb.i:                                             ; preds = %bb.c
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !57 ; 2 uses
  %.not.i12.i = icmp ne ptr %i.ah, null
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.aj = load i8, ptr %i.ai, align 8, !range !47
  %i.ak = trunc nuw i8 %i.aj to i1
  %or.cond.i13.i = select i1 %.not.i12.i, i1 %i.ak, i1 false
  br i1 %or.cond.i13.i, label %bb.j, label %_ZN13b3OpenCLArrayIjE7reserveEmb.exit.thread12

bb.j:                                             ; preds = %bb.i
  %i.al = load ptr, ptr @__clewReleaseMemObject, align 8, !tbaa !54
  %i.am = tail call i32 %i.al(ptr noundef nonnull %i.ah), !inline_history !59 ; 0 uses
  br label %_ZN13b3OpenCLArrayIjE7reserveEmb.exit.thread12

_ZN13b3OpenCLArrayIjE7reserveEmb.exit.thread12:   ; preds = %bb.i, %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  br label %bb.k

_ZN13b3OpenCLArrayIjE7reserveEmb.exit:            ; preds = %_ZNK13b3OpenCLArrayIjE8copyToCLEP7_cl_memmmm.exit.i, %bb.h
  store ptr %i.o, ptr %i.z, align 8, !tbaa !57
  store i64 %.01017.i, ptr %i.e, align 8, !tbaa !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #15
  br i1 %.not.i, label %_ZN13b3OpenCLArrayIjE7reserveEmb.exit.thread, label %bb.k

bb.k:                                             ; preds = %_ZN13b3OpenCLArrayIjE7reserveEmb.exit.thread12, %_ZN13b3OpenCLArrayIjE7reserveEmb.exit
  br label %_ZN13b3OpenCLArrayIjE7reserveEmb.exit.thread

_ZN13b3OpenCLArrayIjE7reserveEmb.exit.thread:     ; preds = %_ZN13b3OpenCLArrayIjE7reserveEmb.exit, %bb.a, %bb.b, %bb.k
  %storemerge = phi i64 [ 0, %bb.k ], [ %1, %bb.b ], [ %1, %bb.a ], [ %1, %_ZN13b3OpenCLArrayIjE7reserveEmb.exit ]
  %.010 = phi i1 [ false, %bb.k ], [ true, %bb.b ], [ true, %bb.a ], [ true, %_ZN13b3OpenCLArrayIjE7reserveEmb.exit ]
  store i64 %storemerge, ptr %i.b, align 8, !tbaa !52
  ret i1 %.010
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN13b3OpenCLArrayI10b3SortDataE6resizeEmb(ptr noundef nonnull align 8 dereferenceable(50) %0, i64 noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 comdat align 2 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !tbaa !60
  %i.d = icmp ugt i64 %1, %i.c
  br i1 %i.d, label %bb.b, label %_ZN13b3OpenCLArrayI10b3SortDataE7reserveEmb.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !61
  %i.g = icmp ult i64 %i.f, %1
end_hunk_0
