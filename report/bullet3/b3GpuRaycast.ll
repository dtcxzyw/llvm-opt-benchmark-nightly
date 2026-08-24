Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuRaycast?download=true
inline.NumInlined: 267
inline.NumDeleted: 115
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.b3BufferInfoCL = type <{ ptr, i8, [7 x i8] }>
%class.b3LauncherCL = type { ptr, ptr, ptr, i32, [4 x i8], %class.b3AlignedObjectArray.41, i32, i8, ptr, %class.b3AlignedObjectArray.43 }
%class.b3AlignedObjectArray.41 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>
%class.b3AlignedObjectArray.43 = type <{ [4 x i8], i32, i32, [4 x i8], ptr, i8, [7 x i8] }>

$__clang_call_terminate = comdat any

$_ZN13b3OpenCLArrayI9b3RayInfoE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb = comdat any

$_ZN13b3OpenCLArrayI8b3RayHitE12copyFromHostERK20b3AlignedObjectArrayIS0_Eb = comdat any

$_ZN13b3OpenCLArrayIiE6resizeEmb = comdat any

$_ZN13b3OpenCLArrayI6b3Int2E6resizeEmb = comdat any

$_ZNK13b3OpenCLArrayI8b3RayHitE10copyToHostER20b3AlignedObjectArrayIS0_Eb = comdat any

$_ZN13b3OpenCLArrayI9b3RayInfoED2Ev = comdat any

$_ZN13b3OpenCLArrayI9b3RayInfoED0Ev = comdat any

$_ZN13b3OpenCLArrayI8b3RayHitED2Ev = comdat any

$_ZN13b3OpenCLArrayI8b3RayHitED0Ev = comdat any

$_ZN13b3OpenCLArrayIiED2Ev = comdat any

$_ZN13b3OpenCLArrayIiED0Ev = comdat any

$_ZN13b3OpenCLArrayI6b3Int2ED2Ev = comdat any

$_ZN13b3OpenCLArrayI6b3Int2ED0Ev = comdat any

$_ZTV13b3OpenCLArrayI9b3RayInfoE = comdat any

$_ZTI13b3OpenCLArrayI9b3RayInfoE = comdat any

$_ZTS13b3OpenCLArrayI9b3RayInfoE = comdat any

$_ZTV13b3OpenCLArrayI8b3RayHitE = comdat any

$_ZTI13b3OpenCLArrayI8b3RayHitE = comdat any

$_ZTS13b3OpenCLArrayI8b3RayHitE = comdat any

$_ZTV13b3OpenCLArrayIiE = comdat any

$_ZTI13b3OpenCLArrayIiE = comdat any

$_ZTS13b3OpenCLArrayIiE = comdat any

$_ZTV13b3OpenCLArrayI6b3Int2E = comdat any

$_ZTI13b3OpenCLArrayI6b3Int2E = comdat any

$_ZTS13b3OpenCLArrayI6b3Int2E = comdat any

@_ZTV12b3GpuRaycast = dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI12b3GpuRaycast, ptr @_ZN12b3GpuRaycastD2Ev, ptr @_ZN12b3GpuRaycastD0Ev] }, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"src/Bullet3OpenCL/Raycast/kernels/rayCastKernels.cl\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"rayCastKernel\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"rayCastPairsKernel\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"findRayRigidPairIndexRanges\00", align 1
@__clewReleaseProgram = external local_unnamed_addr global ptr, align 8
@__clewReleaseKernel = external local_unnamed_addr global ptr, align 8
@.str.5 = private unnamed_addr constant [13 x i8] c"castRaysHost\00", align 1
@_ZZN12b3GpuRaycast12castRaysHostERK20b3AlignedObjectArrayI9b3RayInfoERS0_I8b3RayHitEiPK15b3RigidBodyDataiPK12b3CollidablePK28b3GpuNarrowPhaseInternalDataE4once = internal unnamed_addr global i1 false, align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"b3Warning[%s,%d]:\0A\00", align 1
@.str.7 = private unnamed_addr constant [75 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3OpenCL/Raycast/b3GpuRaycast.cpp\00", align 1
@.str.8 = private unnamed_addr constant [33 x i8] c"Raytest: unsupported shape type\0A\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"castRaysGPU\00", align 1
@.str.10 = private unnamed_addr constant [21 x i8] c"raycast copyFromHost\00", align 1
@.str.11 = private unnamed_addr constant [21 x i8] c"sort ray-rigid pairs\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"detect ray-rigid pair index ranges\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"reset ray-rigid pair index ranges\00", align 1
@__clewFinish = external local_unnamed_addr global ptr, align 8
@.str.14 = private unnamed_addr constant [30 x i8] c"m_findRayRigidPairIndexRanges\00", align 1
@.str.15 = private unnamed_addr constant [23 x i8] c"ray-rigid intersection\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"m_raytracePairsKernel\00", align 1
@.str.17 = private unnamed_addr constant [19 x i8] c"raycast copyToHost\00", align 1
@_ZTI12b3GpuRaycast = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS12b3GpuRaycast }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS12b3GpuRaycast = dso_local constant [15 x i8] c"12b3GpuRaycast\00", align 1
@.str.18 = private unnamed_addr constant [9476 x i8] c"#define SHAPE_CONVEX_HULL 3\0A#define SHAPE_PLANE 4\0A#define SHAPE_CONCAVE_TRIMESH 5\0A#define SHAPE_COMPOUND_OF_CONVEX_HULLS 6\0A#define SHAPE_SPHERE 7\0Atypedef struct\0A{\0A\09float4 m_from;\0A\09float4 m_to;\0A} b3RayInfo;\0Atypedef struct\0A{\0A\09float m_hitFraction;\0A\09int\09m_hitResult0;\0A\09int\09m_hitResult1;\0A\09int\09m_hitResult2;\0A\09float4\09m_hitPoint;\0A\09float4\09m_hitNormal;\0A} b3RayHit;\0Atypedef struct\0A{\0A\09float4 m_pos;\0A\09float4 m_quat;\0A\09float4 m_linVel;\0A\09float4 m_angVel;\0A\09unsigned int m_collidableIdx;\0A\09float m_invMass;\0A\09float m_restituitionCoeff;\0A\09float m_frictionCoeff;\0A} Body;\0Atypedef struct Collidable\0A{\0A\09union {\0A\09\09int m_numChildShapes;\0A\09\09int m_bvhIndex;\0A\09};\0A\09float m_radius;\0A\09int m_shapeType;\0A\09int m_shapeIndex;\0A} Collidable;\0Atypedef struct  \0A{\0A\09float4\09\09m_localCenter;\0A\09float4\09\09m_extents;\0A\09float4\09\09mC;\0A\09float4\09\09mE;\0A\09float\09\09\09m_radius;\0A\09int\09m_faceOffset;\0A\09int m_numFaces;\0A\09int\09m_numVertices;\0A\09int m_vertexOffset;\0A\09int\09m_uniqueEdgesOffset;\0A\09int\09m_numUniqueEdges;\0A\09int m_unused;\0A} ConvexPolyhedronCL;\0Atypedef struct\0A{\0A\09float4 m_plane;\0A\09int m_indexOffset;\0A\09int m_numIndices;\0A} b3GpuFace;\0A///////////////////////////////////////\0A//\09Quaternion\0A///////////////////////////////////////\0Atypedef float4 Quaternion;\0A__inline\0A\09Quaternion qtMul(Quaternion a, Quaternion b);\0A__inline\0A\09Quaternion qtNormalize(Quaternion in);\0A__inline\0A\09Quaternion qtInvert(Quaternion q);\0A__inline\0A\09float dot3F4(float4 a, float4 b)\0A{\0A\09float4 a1 = (float4)(a.xyz,0.f);\0A\09float4 b1 = (float4)(b.xyz,0.f);\0A\09return dot(a1, b1);\0A}\0A__inline\0A\09Quaternion qtMul(Quaternion a, Quaternion b)\0A{\0A\09Quaternion ans;\0A\09ans = cross( a, b );\0A\09ans += a.w*b+b.w*a;\0A\09//\09ans.w = a.w*b.w - (a.x*b.x+a.y*b.y+a.z*b.z);\0A\09ans.w = a.w*b.w - dot3F4(a, b);\0A\09return ans;\0A}\0A__inline\0A\09Quaternion qtNormalize(Quaternion in)\0A{\0A\09return fast_normalize(in);\0A\09//\09in /= length( in );\0A\09//\09return in;\0A}\0A__inline\0A\09float4 qtRotate(Quaternion q, float4 vec)\0A{\0A\09Quaternion qInv = qtInvert( q );\0A\09float4 vcpy = vec;\0A\09vcpy.w = 0.f;\0A\09float4 out = qtMul(q,vcpy);\0A\09out = qtMul(out,qInv);\0A\09return out;\0A}\0A__inline\0A\09Quaternion qtInvert(Quaternion q)\0A{\0A\09return (Quaternion)(-q.xyz, q.w);\0A}\0A__inline\0A\09float4 qtInvRotate(const Quaternion q, float4 vec)\0A{\0A\09return qtRotate( qtInvert( q ), vec );\0A}\0Avoid\09trInverse(float4 translationIn, Quaternion orientationIn,\0A\09float4* translationOut, Quaternion* orientationOut)\0A{\0A\09*orientationOut = qtInvert(orientationIn);\0A\09*translationOut = qtRotate(*orientationOut, -translationIn);\0A}\0Abool rayConvex(float4 rayFromLocal, float4 rayToLocal, int numFaces, int faceOffset,\0A\09__global const b3GpuFace* faces, float* hitFraction, float4* hitNormal)\0A{\0A\09rayFromLocal.w = 0.f;\0A\09rayToLocal.w = 0.f;\0A\09bool result = true;\0A\09float exitFraction = hitFraction[0];\0A\09float enterFraction = -0.3f;\0A\09float4 curHitNormal = (float4)(0,0,0,0);\0A\09for (int i=0;i<numFaces && result;i++)\0A\09{\0A\09\09b3GpuFace face = faces[faceOffset+i];\0A\09\09float fromPlaneDist = dot(rayFromLocal,face.m_plane)+face.m_plane.w;\0A\09\09float toPlaneDist = dot(rayToLocal,face.m_plane)+face.m_plane.w;\0A\09\09if (fromPlaneDist<0.f)\0A\09\09{\0A\09\09\09if (toPlaneDist >= 0.f)\0A\09\09\09{\0A\09\09\09\09float fraction = fromPlaneDist / (fromPlaneDist-toPlaneDist);\0A\09\09\09\09if (exitFraction>fraction)\0A\09\09\09\09{\0A\09\09\09\09\09exitFraction = fraction;\0A\09\09\09\09}\0A\09\09\09} \09\09\09\0A\09\09} else\0A\09\09{\0A\09\09\09if (toPlaneDist<0.f)\0A\09\09\09{\0A\09\09\09\09float fraction = fromPlaneDist / (fromPlaneDist-toPlaneDist);\0A\09\09\09\09if (enterFraction <= fraction)\0A\09\09\09\09{\0A\09\09\09\09\09enterFraction = fraction;\0A\09\09\09\09\09curHitNormal = face.m_plane;\0A\09\09\09\09\09curHitNormal.w = 0.f;\0A\09\09\09\09}\0A\09\09\09} else\0A\09\09\09{\0A\09\09\09\09result = false;\0A\09\09\09}\0A\09\09}\0A\09\09if (exitFraction <= enterFraction)\0A\09\09\09result = false;\0A\09}\0A\09if (enterFraction < 0.f)\0A\09{\0A\09\09result = false;\0A\09}\0A\09if (result)\0A\09{\09\0A\09\09hitFraction[0] = enterFraction;\0A\09\09hitNormal[0] = curHitNormal;\0A\09}\0A\09return result;\0A}\0Abool sphere_intersect(float4 spherePos,  float radius, float4 rayFrom, float4 rayTo, float* hitFraction)\0A{\0A\09float4 rs = rayFrom - spherePos;\0A\09rs.w = 0.f;\0A\09float4 rayDir = rayTo-rayFrom;\0A\09rayDir.w = 0.f;\0A\09float A = dot(rayDir,rayDir);\0A\09float B = dot(rs, rayDir);\0A\09float C = dot(rs, rs) - (radius * radius);\0A\09float D = B * B - A*C;\0A\09if (D > 0.0f)\0A\09{\0A\09\09float t = (-B - sqrt(D))/A;\0A\09\09if ( (t >= 0.0f) && (t < (*hitFraction)) )\0A\09\09{\0A\09\09\09*hitFraction = t;\0A\09\09\09return true;\0A\09\09}\0A\09}\0A\09return false;\0A}\0Afloat4 setInterpolate3(float4 from, float4 to, float t)\0A{\0A\09float s = 1.0f - t;\0A\09float4 result;\0A\09result = s * from + t * to;\0A\09result.w = 0.f;\09\0A\09return result;\09\0A}\0A__kernel void rayCastKernel(  \0A\09int numRays, \0A\09const __global b3RayInfo* rays, \0A\09__global b3RayHit* hitResults, \0A\09const int numBodies, \0A\09__global Body* bodies,\0A\09__global Collidable* collidables,\0A\09__global const b3GpuFace* faces,\0A\09__global const ConvexPolyhedronCL* convexShapes\09)\0A{\0A\09int i = get_global_id(0);\0A\09if (i>=numRays)\0A\09\09return;\0A\09hitResults[i].m_hitFraction = 1.f;\0A\09float4 rayFrom = rays[i].m_from;\0A\09float4 rayTo = rays[i].m_to;\0A\09float hitFraction = 1.f;\0A\09float4 hitPoint;\0A\09float4 hitNormal;\0A\09int hitBodyIndex= -1;\0A\09int cachedCollidableIndex = -1;\0A\09Collidable cachedCollidable;\0A\09for (int b=0;b<numBodies;b++)\0A\09{\0A\09\09if (hitResults[i].m_hitResult2==b)\0A\09\09\09continue;\0A\09\09Body body = bodies[b];\0A\09\09float4 pos = body.m_pos;\0A\09\09float4 orn = body.m_quat;\0A\09\09if (cachedCollidableIndex != body.m_collidableIdx)\0A\09\09{\0A\09\09\09cachedCollidableIndex = body.m_collidableIdx;\0A\09\09\09cachedCollidable = collidables[cachedCollidableIndex];\0A\09\09}\0A\09\09if (cachedCollidable.m_shapeType == SHAPE_CONVEX_HULL)\0A\09\09{\0A\09\09\09float4 invPos = (float4)(0,0,0,0);\0A\09\09\09float4 invOrn = (float4)(0,0,0,0);\0A\09\09\09float4 rayFromLocal = (float4)(0,0,0,0);\0A\09\09\09float4 rayToLocal = (float4)(0,0,0,0);\0A\09\09\09invOrn = qtInvert(orn);\0A\09\09\09invPos = qtRotate(invOrn, -pos);\0A\09\09\09rayFromLocal = qtRotate( invOrn, rayFrom ) + invPos;\0A\09\09\09rayToLocal = qtRotate( invOrn, rayTo) + invPos;\0A\09\09\09rayFromLocal.w = 0.f;\0A\09\09\09rayToLocal.w = 0.f;\0A\09\09\09int numFaces = convexShapes[cachedCollidable.m_shapeIndex].m_numFaces;\0A\09\09\09int faceOffset = convexShapes[cachedCollidable.m_shapeIndex].m_faceOffset;\0A\09\09\09if (numFaces)\0A\09\09\09{\0A\09\09\09\09if (rayConvex(rayFromLocal, rayToLocal, numFaces, faceOffset,faces, &hitFraction, &hitNormal))\0A\09\09\09\09{\0A\09\09\09\09\09hitBodyIndex = b;\0A\09\09\09\09\09\0A\09\09\09\09}\0A\09\09\09}\0A\09\09}\0A\09\09if (cachedCollidable.m_shapeType == SHAPE_SPHERE)\0A\09\09{\0A\09\09\09float radius = cachedCollidable.m_radius;\0A\09\09\0A\09\09\09if (sphere_intersect(pos,  radius, rayFrom, rayTo, &hitFraction))\0A\09\09\09{\0A\09\09\09\09hitBodyIndex = b;\0A\09\09\09\09hitNormal = (float4) (hitPoint-bodies[b].m_pos);\0A\09\09\09}\0A\09\09}\0A\09}\0A\09if (hitBodyIndex>=0)\0A\09{\0A\09\09hitPoint = setInterpolate3(rayFrom, rayTo,hitFraction);\0A\09\09hitResults[i].m_hitFraction = hitFraction;\0A\09\09hitResults[i].m_hitPoint = hitPoint;\0A\09\09hitResults[i].m_hitNormal = normalize(hitNormal);\0A\09\09hitResults[i].m_hitResult0 = hitBodyIndex;\0A\09}\0A}\0A__kernel void findRayRigidPairIndexRanges(__global int2* rayRigidPairs, \0A\09\09\09\09\09\09\09\09\09\09\09__global int* out_firstRayRigidPairIndexPerRay,\0A\09\09\09\09\09\09\09\09\09\09\09__global int* out_numRayRigidPairsPerRay,\0A\09\09\09\09\09\09\09\09\09\09\09int numRayRigidPairs)\0A{\0A\09int rayRigidPairIndex = get_global_id(0);\0A\09if (rayRigidPairIndex >= numRayRigidPairs) return;\0A\09\0A\09int rayIndex = rayRigidPairs[rayRigidPairIndex].x;\0A\09\0A\09atomic_min(&out_firstRayRigidPairIndexPerRay[rayIndex], rayRigidPairIndex);\0A\09atomic_inc(&out_numRayRigidPairsPerRay[rayIndex]);\0A}\0A__kernel void rayCastPairsKernel(const __global b3RayInfo* rays, \0A\09\09\09\09\09\09\09\09__global b3RayHit* hitResults, \0A\09\09\09\09\09\09\09\09__global int* firstRayRigidPairIndexPerRay,\0A\09\09\09\09\09\09\09\09__global int* numRayRigidPairsPerRay,\0A\09\09\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09__global Body* bodies,\0A\09\09\09\09\09\09\09\09__global Collidable* collidables,\0A\09\09\09\09\09\09\09\09__global const b3GpuFace* faces,\0A\09\09\09\09\09\09\09\09__global const ConvexPolyhedronCL* convexShapes,\0A\09\09\09\09\09\09\09\09\0A\09\09\09\09\09\09\09\09__global int2* rayRigidPairs,\0A\09\09\09\09\09\09\09\09int numRays)\0A{\0A\09int i = get_global_id(0);\0A\09if (i >= numRays) return;\0A\09\0A\09float4 rayFrom = rays[i].m_from;\0A\09float4 rayTo = rays[i].m_to;\0A\09\09\0A\09hitResults[i].m_hitFraction = 1.f;\0A\09\09\0A\09float hitFraction = 1.f;\0A\09float4 hitPoint;\0A\09float4 hitNormal;\0A\09int hitBodyIndex = -1;\0A\09\09\0A\09//\0A\09for(int pair = 0; pair < numRayRigidPairsPerRay[i]; ++pair)\0A\09{\0A\09\09int rayRigidPairIndex = pair + firstRayRigidPairIndexPerRay[i];\0A\09\09int b = rayRigidPairs[rayRigidPairIndex].y;\0A\09\09\0A\09\09if (hitResults[i].m_hitResult2 == b) continue;\0A\09\09\0A\09\09Body body = bodies[b];\0A\09\09Collidable rigidCollidable = collidables[body.m_collidableIdx];\0A\09\09\0A\09\09float4 pos = body.m_pos;\0A\09\09float4 orn = body.m_quat;\0A\09\09\0A\09\09if (rigidCollidable.m_shapeType == SHAPE_CONVEX_HULL)\0A\09\09{\0A\09\09\09float4 invPos = (float4)(0,0,0,0);\0A\09\09\09float4 invOrn = (float4)(0,0,0,0);\0A\09\09\09float4 rayFromLocal = (float4)(0,0,0,0);\0A\09\09\09float4 rayToLocal = (float4)(0,0,0,0);\0A\09\09\09invOrn = qtInvert(orn);\0A\09\09\09invPos = qtRotate(invOrn, -pos);\0A\09\09\09rayFromLocal = qtRotate( invOrn, rayFrom ) + invPos;\0A\09\09\09rayToLocal = qtRotate( invOrn, rayTo) + invPos;\0A\09\09\09rayFromLocal.w = 0.f;\0A\09\09\09rayToLocal.w = 0.f;\0A\09\09\09int numFaces = convexShapes[rigidCollidable.m_shapeIndex].m_numFaces;\0A\09\09\09int faceOffset = convexShapes[rigidCollidable.m_shapeIndex].m_faceOffset;\0A\09\09\09\0A\09\09\09if (numFaces && rayConvex(rayFromLocal, rayToLocal, numFaces, faceOffset,faces, &hitFraction, &hitNormal))\0A\09\09\09{\0A\09\09\09\09hitBodyIndex = b;\0A\09\09\09\09hitPoint = setInterpolate3(rayFrom, rayTo, hitFraction);\0A\09\09\09}\0A\09\09}\0A\09\09\0A\09\09if (rigidCollidable.m_shapeType == SHAPE_SPHERE)\0A\09\09{\0A\09\09\09float radius = rigidCollidable.m_radius;\0A\09\09\0A\09\09\09if (sphere_intersect(pos, radius, rayFrom, rayTo, &hitFraction))\0A\09\09\09{\0A\09\09\09\09hitBodyIndex = b;\0A\09\09\09\09hitPoint = setInterpolate3(rayFrom, rayTo, hitFraction);\0A\09\09\09\09hitNormal = (float4) (hitPoint - bodies[b].m_pos);\0A\09\09\09}\0A\09\09}\0A\09}\0A\09\0A\09if (hitBodyIndex >= 0)\0A\09{\0A\09\09hitResults[i].m_hitFraction = hitFraction;\0A\09\09hitResults[i].m_hitPoint = hitPoint;\0A\09\09hitResults[i].m_hitNormal = normalize(hitNormal);\0A\09\09hitResults[i].m_hitResult0 = hitBodyIndex;\0A\09}\0A\09\0A}\0A\00", align 1
@__const._ZN12b3LauncherCL8launch2DEiiii.lRange = private unnamed_addr constant [3 x i64] [i64 1, i64 1, i64 1], align 16
@__clewEnqueueNDRangeKernel = external local_unnamed_addr global ptr, align 8
@.str.19 = private unnamed_addr constant [27 x i8] c"Error: OpenCL status = %d\0A\00", align 1
@_ZTV13b3OpenCLArrayI9b3RayInfoE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI9b3RayInfoE, ptr @_ZN13b3OpenCLArrayI9b3RayInfoED2Ev, ptr @_ZN13b3OpenCLArrayI9b3RayInfoED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI9b3RayInfoE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI9b3RayInfoE }, comdat, align 8
@_ZTS13b3OpenCLArrayI9b3RayInfoE = linkonce_odr dso_local constant [28 x i8] c"13b3OpenCLArrayI9b3RayInfoE\00", comdat, align 1
@__clewCreateBuffer = external local_unnamed_addr global ptr, align 8
@.str.20 = private unnamed_addr constant [17 x i8] c"b3Error[%s,%d]:\0A\00", align 1
@.str.21 = private unnamed_addr constant [85 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3OpenCL/ParallelPrimitives/b3OpenCLArray.h\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"OpenCL out-of-memory\0A\00", align 1
@__clewEnqueueCopyBuffer = external local_unnamed_addr global ptr, align 8
@__clewReleaseMemObject = external local_unnamed_addr global ptr, align 8
@_ZTV13b3OpenCLArrayI8b3RayHitE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI8b3RayHitE, ptr @_ZN13b3OpenCLArrayI8b3RayHitED2Ev, ptr @_ZN13b3OpenCLArrayI8b3RayHitED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI8b3RayHitE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI8b3RayHitE }, comdat, align 8
@_ZTS13b3OpenCLArrayI8b3RayHitE = linkonce_odr dso_local constant [27 x i8] c"13b3OpenCLArrayI8b3RayHitE\00", comdat, align 1
@_ZTV13b3OpenCLArrayIiE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayIiE, ptr @_ZN13b3OpenCLArrayIiED2Ev, ptr @_ZN13b3OpenCLArrayIiED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayIiE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayIiE }, comdat, align 8
@_ZTS13b3OpenCLArrayIiE = linkonce_odr dso_local constant [19 x i8] c"13b3OpenCLArrayIiE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI6b3Int2E = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI6b3Int2E, ptr @_ZN13b3OpenCLArrayI6b3Int2ED2Ev, ptr @_ZN13b3OpenCLArrayI6b3Int2ED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI6b3Int2E = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI6b3Int2E }, comdat, align 8
@_ZTS13b3OpenCLArrayI6b3Int2E = linkonce_odr dso_local constant [25 x i8] c"13b3OpenCLArrayI6b3Int2E\00", comdat, align 1
@__clewEnqueueWriteBuffer = external local_unnamed_addr global ptr, align 8
@__clewSetKernelArg = external local_unnamed_addr global ptr, align 8
@.str.24 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3Common/b3AlignedObjectArray.h\00", align 1
@.str.25 = private unnamed_addr constant [44 x i8] c"b3AlignedObjectArray reserve out-of-memory\0A\00", align 1
@__clewEnqueueReadBuffer = external local_unnamed_addr global ptr, align 8
@.str.26 = private unnamed_addr constant [33 x i8] c"copyToHostPointer invalid range\0A\00", align 1

@_ZN12b3GpuRaycastC1EP11_cl_contextP13_cl_device_idP17_cl_command_queue = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr), ptr @_ZN12b3GpuRaycastC2EP11_cl_contextP13_cl_device_idP17_cl_command_queue
@_ZN12b3GpuRaycastD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN12b3GpuRaycastD2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN12b3GpuRaycastC2EP11_cl_contextP13_cl_device_idP17_cl_command_queue(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12b3GpuRaycast, i64 16), ptr %0, align 8, !tbaa !9
  %i.b = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #18 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 14 uses
  store ptr %i.b, ptr %i.c, align 8, !tbaa !11
  store ptr %1, ptr %i.b, align 8, !tbaa !15
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %2, ptr %i.d, align 8, !tbaa !28
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %3, ptr %i.e, align 8, !tbaa !29
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, i8 0, i64 24, i1 false)
  %i.g = tail call noalias noundef nonnull dereferenceable(1096) ptr @_Znwm(i64 noundef 1096) #18 ; 3 uses
  invoke void @_ZN22b3GpuParallelLinearBvhC1EP11_cl_contextP13_cl_device_idP17_cl_command_queue(ptr noundef nonnull align 8 dereferenceable(1096) %i.g, ptr noundef %1, ptr noundef %2, ptr noundef %3)
          to label %bb.b unwind label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  store ptr %i.g, ptr %i.i, align 8, !tbaa !30
  %i.j = tail call noalias noundef nonnull dereferenceable(128) ptr @_Znwm(i64 noundef 128) #18 ; 3 uses
  invoke void @_ZN15b3RadixSort32CLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(128) %i.j, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.j, ptr %i.l, align 8, !tbaa !31
  %i.m = tail call noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #18 ; 3 uses
  invoke void @_ZN8b3FillCLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queue(ptr noundef nonnull align 8 dereferenceable(48) %i.m, ptr noundef %1, ptr noundef %2, ptr noundef %3)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.n = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  store ptr %i.m, ptr %i.o, align 8, !tbaa !32
  %i.p = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI9b3RayInfoE, i64 16), ptr %i.p, align 8, !tbaa !9
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.r, align 8, !tbaa !33
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  store ptr %3, ptr %i.s, align 8, !tbaa !38
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store i8 1, ptr %i.t, align 8, !tbaa !39
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 49
  store i8 1, ptr %i.u, align 1, !tbaa !40
  %4 = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %i.p, ptr %i.v, align 8, !tbaa !41
  %i.w = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI8b3RayHitE, i64 16), ptr %i.w, align 8, !tbaa !9
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.y, align 8, !tbaa !42
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store ptr %3, ptr %i.z, align 8, !tbaa !44
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  store i8 1, ptr %i.aa, align 8, !tbaa !45
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 49
  store i8 1, ptr %i.ab, align 1, !tbaa !46
  %5 = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 80
  store ptr %i.w, ptr %i.ac, align 8, !tbaa !47
  %i.ad = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIiE, i64 16), ptr %i.ad, align 8, !tbaa !9
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ae, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.af, align 8, !tbaa !48
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %3, ptr %i.ag, align 8, !tbaa !50
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i8 1, ptr %i.ah, align 8, !tbaa !51
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 49
  store i8 1, ptr %i.ai, align 1, !tbaa !52
  %6 = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.aj = getelementptr inbounds nuw i8, ptr %6, i64 88
  store ptr %i.ad, ptr %i.aj, align 8, !tbaa !53
  %i.ak = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIiE, i64 16), ptr %i.ak, align 8, !tbaa !9
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.al, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.am, align 8, !tbaa !48
  %i.an = getelementptr inbounds nuw i8, ptr %i.ak, i64 40
  store ptr %3, ptr %i.an, align 8, !tbaa !50
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ak, i64 48
  store i8 1, ptr %i.ao, align 8, !tbaa !51
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 49
  store i8 1, ptr %i.ap, align 1, !tbaa !52
  %7 = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.aq = getelementptr inbounds nuw i8, ptr %7, i64 96
  store ptr %i.ak, ptr %i.aq, align 8, !tbaa !54
  %i.ar = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIiE, i64 16), ptr %i.ar, align 8, !tbaa !9
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.as, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.at, align 8, !tbaa !48
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 40
  store ptr %3, ptr %i.au, align 8, !tbaa !50
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 48
  store i8 1, ptr %i.av, align 8, !tbaa !51
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 49
  store i8 1, ptr %i.aw, align 1, !tbaa !52
  %8 = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.ax = getelementptr inbounds nuw i8, ptr %8, i64 104
  store ptr %i.ar, ptr %i.ax, align 8, !tbaa !55
  %i.ay = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #18 ; 7 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI6b3Int2E, i64 16), ptr %i.ay, align 8, !tbaa !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ay, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.az, i8 0, i64 24, i1 false)
  store ptr %1, ptr %i.ba, align 8, !tbaa !56
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ay, i64 40
  store ptr %3, ptr %i.bb, align 8, !tbaa !58
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 48
  store i8 1, ptr %i.bc, align 8, !tbaa !59
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 49
  store i8 1, ptr %i.bd, align 1, !tbaa !60
  %9 = load ptr, ptr %i.c, align 8, !tbaa !11     ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 112
  store ptr %i.ay, ptr %i.be, align 8, !tbaa !61
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i32 0, ptr %i.a, align 4, !tbaa !62
  %i.bf = load ptr, ptr %9, align 8, !tbaa !15
  %i.bg = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.bh = load ptr, ptr %i.bg, align 8, !tbaa !28
  %i.bi = call noundef ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef %i.bf, ptr noundef %i.bh, ptr noundef nonnull @.str.18, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i1 noundef zeroext false) ; 4 uses
  %i.bj = load ptr, ptr %i.c, align 8, !tbaa !11  ; 2 uses
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !15
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bm = load ptr, ptr %i.bl, align 8, !tbaa !28
  %i.bn = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %i.bk, ptr noundef %i.bm, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, ptr noundef %i.bi, ptr noundef nonnull @.str)
  %i.bo = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store ptr %i.bn, ptr %i.bp, align 8, !tbaa !63
  %i.bq = load ptr, ptr %i.bo, align 8, !tbaa !15
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !tbaa !28
  %i.bt = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %i.bq, ptr noundef %i.bs, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef %i.bi, ptr noundef nonnull @.str)
  %i.bu = load ptr, ptr %i.c, align 8, !tbaa !11  ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 32
  store ptr %i.bt, ptr %i.bv, align 8, !tbaa !64
  %i.bw = load ptr, ptr %i.bu, align 8, !tbaa !15
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !28
  %i.bz = call noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %i.bw, ptr noundef %i.by, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef %i.bi, ptr noundef nonnull @.str)
  %i.ca = load ptr, ptr %i.c, align 8, !tbaa !11
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 40
  store ptr %i.bz, ptr %i.cb, align 8, !tbaa !65
  %i.cc = load ptr, ptr @__clewReleaseProgram, align 8, !tbaa !66
  %i.cd = call i32 %i.cc(ptr noundef %i.bi)       ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void

bb.e:                                             ; preds = %bb.a
  %i.ce = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.g, i64 noundef 1096) #20
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.cf = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.j, i64 noundef 128) #20
  br label %bb.h

bb.g:                                             ; preds = %bb.c
  %i.cg = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.m, i64 noundef 48) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.cg, %bb.g ], [ %i.cf, %bb.f ], [ %i.ce, %bb.e ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #1

declare void @_ZN22b3GpuParallelLinearBvhC1EP11_cl_contextP13_cl_device_idP17_cl_command_queue(ptr noundef nonnull align 8 dereferenceable(1096), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #3

declare void @_ZN15b3RadixSort32CLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(128), ptr noundef, ptr noundef, ptr noundef, i32 noundef) unnamed_addr #2

declare void @_ZN8b3FillCLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queue(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #4

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN12b3GpuRaycastD2Ev(ptr nofree noundef nonnull align 8 captures(none) dead_on_return(16) dereferenceable(16) initializes((0, 8)) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV12b3GpuRaycast, i64 16), ptr %0, align 8, !tbaa !9
  %i.a = load ptr, ptr @__clewReleaseKernel, align 8, !tbaa !66
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 13 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.f = invoke i32 %i.a(ptr noundef %i.e)
          to label %bb.b unwind label %bb.w       ; 0 uses

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr @__clewReleaseKernel, align 8, !tbaa !66
  %i.h = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.k = invoke i32 %i.g(ptr noundef %i.j)
          to label %bb.c unwind label %bb.w       ; 0 uses

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr @__clewReleaseKernel, align 8, !tbaa !66
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !11
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !65
  %i.p = invoke i32 %i.l(ptr noundef %i.o)
          to label %bb.d unwind label %bb.w       ; 0 uses

bb.d:                                             ; preds = %bb.c
  %i.q = load ptr, ptr %i.b, align 8, !tbaa !11   ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !30   ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = load ptr, ptr %i.s, align 8, !tbaa !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dereferenceable(1096) %i.s) #19
  %.pre = load ptr, ptr %i.b, align 8, !tbaa !11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = phi ptr [ %.pre, %bb.e ], [ %i.q, %bb.d ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !31   ; 3 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ab = load ptr, ptr %i.z, align 8, !tbaa !9
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call void %i.ad(ptr noundef nonnull align 8 dereferenceable(128) %i.z) #19
  %.pre10 = load ptr, ptr %i.b, align 8, !tbaa !11
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.ae = phi ptr [ %.pre10, %bb.g ], [ %i.x, %bb.f ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 64
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !32 ; 3 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ai = load ptr, ptr %i.ag, align 8, !tbaa !9
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8
  tail call void %i.ak(ptr noundef nonnull align 8 dereferenceable(48) %i.ag) #19
  %.pre11 = load ptr, ptr %i.b, align 8, !tbaa !11
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = phi ptr [ %.pre11, %bb.i ], [ %i.ae, %bb.h ] ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 72
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !41 ; 3 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = load ptr, ptr %i.an, align 8, !tbaa !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8
  tail call void %i.ar(ptr noundef nonnull align 8 dereferenceable(50) %i.an) #19
  %.pre12 = load ptr, ptr %i.b, align 8, !tbaa !11
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.as = phi ptr [ %.pre12, %bb.k ], [ %i.al, %bb.j ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 80
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !47 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.aw = load ptr, ptr %i.au, align 8, !tbaa !9
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8
  tail call void %i.ay(ptr noundef nonnull align 8 dereferenceable(50) %i.au) #19
  %.pre13 = load ptr, ptr %i.b, align 8, !tbaa !11
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.az = phi ptr [ %.pre13, %bb.m ], [ %i.as, %bb.l ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.az, i64 88
  %i.bb = load ptr, ptr %i.ba, align 8, !tbaa !53 ; 3 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bd = load ptr, ptr %i.bb, align 8, !tbaa !9
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  tail call void %i.bf(ptr noundef nonnull align 8 dereferenceable(50) %i.bb) #19
  %.pre14 = load ptr, ptr %i.b, align 8, !tbaa !11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.bg = phi ptr [ %.pre14, %bb.o ], [ %i.az, %bb.n ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 96
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !54 ; 3 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bk = load ptr, ptr %i.bi, align 8, !tbaa !9
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 8
end_hunk_0
