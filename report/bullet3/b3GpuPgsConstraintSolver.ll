Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/bullet3/original/b3GpuPgsConstraintSolver?download=true
inline.NumInlined: 714
inline.NumDeleted: 258
loop-unroll.NumRuntimeUnrolled: 37
loop-unroll.NumUnrolled: 37
begin_hunk_0
@.str.9 = private unnamed_addr constant [33 x i8] c"GPU solveGroupCacheFriendlySetup\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"m_initSolverBodiesKernel\00", align 1
@__clewFinish = external local_unnamed_addr global ptr, align 8
@.str.11 = private unnamed_addr constant [31 x i8] c"info1 and init batchConstraint\00", align 1
@.str.12 = private unnamed_addr constant [17 x i8] c"m_getInfo1Kernel\00", align 1
@.str.13 = private unnamed_addr constant [23 x i8] c"init batch constraints\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"m_initBatchConstraintsKernel\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"m_getInfo2Kernel\00", align 1
@.str.16 = private unnamed_addr constant [37 x i8] c"GpuSolveGroupCacheFriendlyIterations\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"batch joints\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"copy to host\00", align 1
@.str.19 = private unnamed_addr constant [32 x i8] c"solveJointConstraintRowsKernels\00", align 1
@.str.20 = private unnamed_addr constant [34 x i8] c"m_solveJointConstraintRowsKernels\00", align 1
@.str.21 = private unnamed_addr constant [15 x i8] c"copy from host\00", align 1
@_ZL8bodyUsed = internal global %class.b3AlignedObjectArray.12 zeroinitializer, align 8
@_ZL7curUsed = internal global %class.b3AlignedObjectArray.12 zeroinitializer, align 8
@.str.24 = private unnamed_addr constant [12 x i8] c"solveJoints\00", align 1
@.str.25 = private unnamed_addr constant [30 x i8] c"solveGroupCacheFriendlyFinish\00", align 1
@.str.26 = private unnamed_addr constant [33 x i8] c"m_breakViolatedConstraintsKernel\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"GPU write back velocities and transforms\00", align 1
@.str.28 = private unnamed_addr constant [28 x i8] c"m_writeBackVelocitiesKernel\00", align 1
@.str.29 = private unnamed_addr constant [41 x i8] c"CPU write back velocities and transforms\00", align 1
@_ZTI24b3GpuPgsConstraintSolver = dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS24b3GpuPgsConstraintSolver }, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTS24b3GpuPgsConstraintSolver = dso_local constant [27 x i8] c"24b3GpuPgsConstraintSolver\00", align 1
@.str.30 = private unnamed_addr constant [24359 x i8] c"/*\0ACopyright (c) 2013 Advanced Micro Devices, Inc.  \0AThis software is provided 'as-is', without any express or implied warranty.\0AIn no event will the authors be held liable for any damages arising from the use of this software.\0APermission is granted to anyone to use this software for any purpose, \0Aincluding commercial applications, and to alter it and redistribute it freely, \0Asubject to the following restrictions:\0A1. The origin of this software must not be misrepresented; you must not claim that you wrote the original software. If you use this software in a product, an acknowledgment in the product documentation would be appreciated but is not required.\0A2. Altered source versions must be plainly marked as such, and must not be misrepresented as being the original software.\0A3. This notice may not be removed or altered from any source distribution.\0A*/\0A//Originally written by Erwin Coumans\0A#define B3_CONSTRAINT_FLAG_ENABLED 1\0A#define B3_GPU_POINT2POINT_CONSTRAINT_TYPE 3\0A#define B3_GPU_FIXED_CONSTRAINT_TYPE 4\0A#define MOTIONCLAMP 100000 //unused, for debugging/safety in case constraint solver fails\0A#define B3_INFINITY 1e30f\0A#define mymake_float4 (float4)\0A__inline float dot3F4(float4 a, float4 b)\0A{\0A\09float4 a1 = mymake_float4(a.xyz,0.f);\0A\09float4 b1 = mymake_float4(b.xyz,0.f);\0A\09return dot(a1, b1);\0A}\0Atypedef float4 Quaternion;\0Atypedef struct\0A{\0A\09float4 m_row[3];\0A}Matrix3x3;\0A__inline\0Afloat4 mtMul1(Matrix3x3 a, float4 b);\0A__inline\0Afloat4 mtMul3(float4 a, Matrix3x3 b);\0A__inline\0Afloat4 mtMul1(Matrix3x3 a, float4 b)\0A{\0A\09float4 ans;\0A\09ans.x = dot3F4( a.m_row[0], b );\0A\09ans.y = dot3F4( a.m_row[1], b );\0A\09ans.z = dot3F4( a.m_row[2], b );\0A\09ans.w = 0.f;\0A\09return ans;\0A}\0A__inline\0Afloat4 mtMul3(float4 a, Matrix3x3 b)\0A{\0A\09float4 colx = mymake_float4(b.m_row[0].x, b.m_row[1].x, b.m_row[2].x, 0);\0A\09float4 coly = mymake_float4(b.m_row[0].y, b.m_row[1].y, b.m_row[2].y, 0);\0A\09float4 colz = mymake_float4(b.m_row[0].z, b.m_row[1].z, b.m_row[2].z, 0);\0A\09float4 ans;\0A\09ans.x = dot3F4( a, colx );\0A\09ans.y = dot3F4( a, coly );\0A\09ans.z = dot3F4( a, colz );\0A\09return ans;\0A}\0Atypedef struct\0A{\0A\09Matrix3x3 m_invInertiaWorld;\0A\09Matrix3x3 m_initInvInertia;\0A} BodyInertia;\0Atypedef struct\0A{\0A\09Matrix3x3 m_basis;//orientation\0A\09float4\09m_origin;//transform\0A}b3Transform;\0Atypedef struct\0A{\0A//\09b3Transform\09\09m_worldTransformUnused;\0A\09float4\09\09m_deltaLinearVelocity;\0A\09float4\09\09m_deltaAngularVelocity;\0A\09float4\09\09m_angularFactor;\0A\09float4\09\09m_linearFactor;\0A\09float4\09\09m_invMass;\0A\09float4\09\09m_pushVelocity;\0A\09float4\09\09m_turnVelocity;\0A\09float4\09\09m_linearVelocity;\0A\09float4\09\09m_angularVelocity;\0A\09union \0A\09{\0A\09\09void*\09m_originalBody;\0A\09\09int\09\09m_originalBodyIndex;\0A\09};\0A\09int padding[3];\0A} b3GpuSolverBody;\0Atypedef struct\0A{\0A\09float4 m_pos;\0A\09Quaternion m_quat;\0A\09float4 m_linVel;\0A\09float4 m_angVel;\0A\09unsigned int m_shapeIdx;\0A\09float m_invMass;\0A\09float m_restituitionCoeff;\0A\09float m_frictionCoeff;\0A} b3RigidBodyCL;\0Atypedef struct\0A{\0A\09float4\09\09m_relpos1CrossNormal;\0A\09float4\09\09m_contactNormal;\0A\09float4\09\09m_relpos2CrossNormal;\0A\09//float4\09\09m_contactNormal2;//usually m_contactNormal2 == -m_contactNormal\0A\09float4\09\09m_angularComponentA;\0A\09float4\09\09m_angularComponentB;\0A\09\0A\09float\09m_appliedPushImpulse;\0A\09float\09m_appliedImpulse;\0A\09int\09m_padding1;\0A\09int\09m_padding2;\0A\09float\09m_friction;\0A\09float\09m_jacDiagABInv;\0A\09float\09\09m_rhs;\0A\09float\09\09m_cfm;\0A\09\0A    float\09\09m_lowerLimit;\0A\09float\09\09m_upperLimit;\0A\09float\09\09m_rhsPenetration;\0A\09int\09\09\09m_originalConstraint;\0A\09int\09m_overrideNumSolverIterations;\0A    int\09\09\09m_frictionIndex;\0A\09int m_solverBodyIdA;\0A\09int m_solverBodyIdB;\0A} b3SolverConstraint;\0Atypedef struct \0A{\0A\09int m_bodyAPtrAndSignBit;\0A\09int m_bodyBPtrAndSignBit;\0A\09int m_originalConstraintIndex;\0A\09int m_batchId;\0A} b3BatchConstraint;\0Atypedef struct \0A{\0A\09int\09\09\09\09m_constraintType;\0A\09int\09\09\09\09m_rbA;\0A\09int\09\09\09\09m_rbB;\0A\09float\09\09\09m_breakingImpulseThreshold;\0A\09float4 m_pivotInA;\0A\09float4 m_pivotInB;\0A\09Quaternion m_relTargetAB;\0A\09int\09m_flags;\0A\09int m_padding[3];\0A} b3GpuGenericConstraint;\0A/*b3Transform\09getWorldTransform(b3RigidBodyCL* rb)\0A{\0A\09b3Transform newTrans;\0A\09newTrans.setOrigin(rb->m_pos);\0A\09newTrans.setRotation(rb->m_quat);\0A\09return newTrans;\0A}*/\0A__inline\0Afloat4 cross3(float4 a, float4 b)\0A{\0A\09return cross(a,b);\0A}\0A__inline\0Afloat4 fastNormalize4(float4 v)\0A{\0A\09v = mymake_float4(v.xyz,0.f);\0A\09return fast_normalize(v);\0A}\0A__inline\0AQuaternion qtMul(Quaternion a, Quaternion b);\0A__inline\0AQuaternion qtNormalize(Quaternion in);\0A__inline\0Afloat4 qtRotate(Quaternion q, float4 vec);\0A__inline\0AQuaternion qtInvert(Quaternion q);\0A__inline\0AQuaternion qtMul(Quaternion a, Quaternion b)\0A{\0A\09Quaternion ans;\0A\09ans = cross3( a, b );\0A\09ans += a.w*b+b.w*a;\0A//\09ans.w = a.w*b.w - (a.x*b.x+a.y*b.y+a.z*b.z);\0A\09ans.w = a.w*b.w - dot3F4(a, b);\0A\09return ans;\0A}\0A__inline\0AQuaternion qtNormalize(Quaternion in)\0A{\0A\09return fastNormalize4(in);\0A//\09in /= length( in );\0A//\09return in;\0A}\0A__inline\0Afloat4 qtRotate(Quaternion q, float4 vec)\0A{\0A\09Quaternion qInv = qtInvert( q );\0A\09float4 vcpy = vec;\0A\09vcpy.w = 0.f;\0A\09float4 out = qtMul(qtMul(q,vcpy),qInv);\0A\09return out;\0A}\0A__inline\0AQuaternion qtInvert(Quaternion q)\0A{\0A\09return (Quaternion)(-q.xyz, q.w);\0A}\0A__inline void internalApplyImpulse(__global b3GpuSolverBody* body,  float4 linearComponent, float4 angularComponent,float impulseMagnitude)\0A{\0A\09body->m_deltaLinearVelocity += linearComponent*impulseMagnitude*body->m_linearFactor;\0A\09body->m_deltaAngularVelocity += angularComponent*(impulseMagnitude*body->m_angularFactor);\0A}\0Avoid resolveSingleConstraintRowGeneric(__global b3GpuSolverBody* body1, __global b3GpuSolverBody* body2, __global b3SolverConstraint* c)\0A{\0A\09float deltaImpulse = c->m_rhs-c->m_appliedImpulse*c->m_cfm;\0A\09float deltaVel1Dotn\09=\09dot3F4(c->m_contactNormal,body1->m_deltaLinearVelocity) \09+ dot3F4(c->m_relpos1CrossNormal,body1->m_deltaAngularVelocity);\0A\09float deltaVel2Dotn\09=\09-dot3F4(c->m_contactNormal,body2->m_deltaLinearVelocity) + dot3F4(c->m_relpos2CrossNormal,body2->m_deltaAngularVelocity);\0A\09deltaImpulse\09-=\09deltaVel1Dotn*c->m_jacDiagABInv;\0A\09deltaImpulse\09-=\09deltaVel2Dotn*c->m_jacDiagABInv;\0A\09float sum = c->m_appliedImpulse + deltaImpulse;\0A\09if (sum < c->m_lowerLimit)\0A\09{\0A\09\09deltaImpulse = c->m_lowerLimit-c->m_appliedImpulse;\0A\09\09c->m_appliedImpulse = c->m_lowerLimit;\0A\09}\0A\09else if (sum > c->m_upperLimit) \0A\09{\0A\09\09deltaImpulse = c->m_upperLimit-c->m_appliedImpulse;\0A\09\09c->m_appliedImpulse = c->m_upperLimit;\0A\09}\0A\09else\0A\09{\0A\09\09c->m_appliedImpulse = sum;\0A\09}\0A\09internalApplyImpulse(body1,c->m_contactNormal*body1->m_invMass,c->m_angularComponentA,deltaImpulse);\0A\09internalApplyImpulse(body2,-c->m_contactNormal*body2->m_invMass,c->m_angularComponentB,deltaImpulse);\0A}\0A__kernel void solveJointConstraintRows(__global b3GpuSolverBody* solverBodies,\0A\09\09\09\09\09  __global b3BatchConstraint* batchConstraints,\0A\09\09\09\09\09  \09__global b3SolverConstraint* rows,\0A\09\09\09\09\09\09__global unsigned int* numConstraintRowsInfo1, \0A\09\09\09\09\09\09__global unsigned int* rowOffsets,\0A\09\09\09\09\09\09__global b3GpuGenericConstraint* constraints,\0A\09\09\09\09\09\09int batchOffset,\0A\09\09\09\09\09\09int numConstraintsInBatch\0A                      )\0A{\0A\09int b = get_global_id(0);\0A\09if (b>=numConstraintsInBatch)\0A\09\09return;\0A\09__global b3BatchConstraint* c = &batchConstraints[b+batchOffset];\0A\09int originalConstraintIndex = c->m_originalConstraintIndex;\0A\09if (constraints[originalConstraintIndex].m_flags&B3_CONSTRAINT_FLAG_ENABLED)\0A\09{\0A\09\09int numConstraintRows = numConstraintRowsInfo1[originalConstraintIndex];\0A\09\09int rowOffset = rowOffsets[originalConstraintIndex];\0A\09\09for (int jj=0;jj<numConstraintRows;jj++)\0A\09\09{\0A\09\09\09__global b3SolverConstraint* constraint = &rows[rowOffset+jj];\0A\09\09\09resolveSingleConstraintRowGeneric(&solverBodies[constraint->m_solverBodyIdA],&solverBodies[constraint->m_solverBodyIdB],constraint);\0A\09\09}\0A\09}\0A};\0A__kernel void initSolverBodies(__global b3GpuSolverBody* solverBodies,__global b3RigidBodyCL* bodiesCL, int numBodies)\0A{\0A\09int i = get_global_id(0);\0A\09if (i>=numBodies)\0A\09\09return;\0A\09__global b3GpuSolverBody* solverBody = &solverBodies[i];\0A\09__global b3RigidBodyCL* bodyCL = &bodiesCL[i];\0A\09solverBody->m_deltaLinearVelocity = (float4)(0.f,0.f,0.f,0.f);\0A\09solverBody->m_deltaAngularVelocity  = (float4)(0.f,0.f,0.f,0.f);\0A\09solverBody->m_pushVelocity = (float4)(0.f,0.f,0.f,0.f);\0A\09solverBody->m_pushVelocity = (float4)(0.f,0.f,0.f,0.f);\0A\09solverBody->m_invMass = (float4)(bodyCL->m_invMass,bodyCL->m_invMass,bodyCL->m_invMass,0.f);\0A\09solverBody->m_originalBodyIndex = i;\0A\09solverBody->m_angularFactor = (float4)(1,1,1,0);\0A\09solverBody->m_linearFactor = (float4) (1,1,1,0);\0A\09solverBody->m_linearVelocity = bodyCL->m_linVel;\0A\09solverBody->m_angularVelocity = bodyCL->m_angVel;\0A}\0A__kernel void breakViolatedConstraintsKernel(__global b3GpuGenericConstraint* constraints, __global unsigned int* numConstraintRows, __global unsigned int* rowOffsets, __global b3SolverConstraint* rows, int numConstraints)\0A{\0A\09int cid = get_global_id(0);\0A\09if (cid>=numConstraints)\0A\09\09return;\0A\09int numRows = numConstraintRows[cid];\0A\09if (numRows)\0A\09{\0A\09\09for (int i=0;i<numRows;i++)\0A\09\09{\0A\09\09\09int rowIndex = rowOffsets[cid]+i;\0A\09\09\09float breakingThreshold = constraints[cid].m_breakingImpulseThreshold;\0A\09\09\09if (fabs(rows[rowIndex].m_appliedImpulse) >= breakingThreshold)\0A\09\09\09{\0A\09\09\09\09constraints[cid].m_flags =0;//&= ~B3_CONSTRAINT_FLAG_ENABLED;\0A\09\09\09}\0A\09\09}\0A\09}\0A}\0A__kernel void getInfo1Kernel(__global unsigned int* infos, __global b3GpuGenericConstraint* constraints, int numConstraints)\0A{\0A\09int i = get_global_id(0);\0A\09if (i>=numConstraints)\0A\09\09return;\0A\09__global b3GpuGenericConstraint* constraint = &constraints[i];\0A\09switch (constraint->m_constraintType)\0A\09{\0A\09\09case B3_GPU_POINT2POINT_CONSTRAINT_TYPE:\0A\09\09{\0A\09\09\09infos[i] = 3;\0A\09\09\09break;\0A\09\09}\0A\09\09case B3_GPU_FIXED_CONSTRAINT_TYPE:\0A\09\09{\0A\09\09\09infos[i] = 6;\0A\09\09\09break;\0A\09\09}\0A\09\09default:\0A\09\09{\0A\09\09}\0A\09}\0A}\0A__kernel void initBatchConstraintsKernel(__global unsigned int* numConstraintRows, __global unsigned int* rowOffsets, \0A\09\09\09\09\09\09\09\09\09\09__global b3BatchConstraint* batchConstraints, \0A\09\09\09\09\09\09\09\09\09\09__global b3GpuGenericConstraint* constraints,\0A\09\09\09\09\09\09\09\09\09\09__global b3RigidBodyCL* bodies,\0A\09\09\09\09\09\09\09\09\09\09int numConstraints)\0A{\0A\09int i = get_global_id(0);\0A\09if (i>=numConstraints)\0A\09\09return;\0A\09int rbA = constraints[i].m_rbA;\0A\09int rbB = constraints[i].m_rbB;\0A\09batchConstraints[i].m_bodyAPtrAndSignBit = bodies[rbA].m_invMass != 0.f ? rbA : -rbA;\0A\09batchConstraints[i].m_bodyBPtrAndSignBit = bodies[rbB].m_invMass != 0.f ? rbB : -rbB;\0A\09batchConstraints[i].m_batchId = -1;\0A\09batchConstraints[i].m_originalConstraintIndex = i;\0A}\0Atypedef struct\0A{\0A\09// integrator parameters: frames per second (1/stepsize), default error\0A\09// reduction parameter (0..1).\0A\09float fps,erp;\0A\09// for the first and second body, pointers to two (linear and angular)\0A\09// n*3 jacobian sub matrices, stored by rows. these matrices will have\0A\09// been initialized to 0 on entry. if the second body is zero then the\0A\09// J2xx pointers may be 0.\0A\09union \0A\09{\0A\09\09__global float4* m_J1linearAxisFloat4;\0A\09\09__global float* m_J1linearAxis;\0A\09};\0A\09union\0A\09{\0A\09\09__global float4* m_J1angularAxisFloat4;\0A\09\09__global float* m_J1angularAxis;\0A\09};\0A\09union\0A\09{\0A\09__global float4* m_J2linearAxisFloat4;\0A\09__global float* m_J2linearAxis;\0A\09};\0A\09union\0A\09{\0A\09\09__global float4* m_J2angularAxisFloat4;\0A\09\09__global float* m_J2angularAxis;\0A\09};\0A\09// elements to jump from one row to the next in J's\0A\09int rowskip;\0A\09// right hand sides of the equation J*v = c + cfm * lambda. cfm is the\0A\09// \22constraint force mixing\22 vector. c is set to zero on entry, cfm is\0A\09// set to a constant value (typically very small or zero) value on entry.\0A\09__global float* m_constraintError;\0A\09__global float* cfm;\0A\09// lo and hi limits for variables (set to -/+ infinity on entry).\0A\09__global float* m_lowerLimit;\0A\09__global float* m_upperLimit;\0A\09// findex vector for variables. see the LCP solver interface for a\0A\09// description of what this does. this is set to -1 on entry.\0A\09// note that the returned indexes are relative to the first index of\0A\09// the constraint.\0A\09__global int *findex;\0A\09// number of solver iterations\0A\09int m_numIterations;\0A\09//damping of the velocity\0A\09float\09m_damping;\0A} b3GpuConstraintInfo2;\0Avoid\09getSkewSymmetricMatrix(float4 vecIn, __global float4* v0,__global float4* v1,__global float4* v2)\0A{\0A\09*v0 = (float4)(0.\09\09,-vecIn.z\09\09,vecIn.y,0.f);\0A\09*v1 = (float4)(vecIn.z\09,0.\09\09\09,-vecIn.x,0.f);\0A\09*v2 = (float4)(-vecIn.y\09,vecIn.x\09,0.f,0.f);\0A}\0Avoid getInfo2Point2Point(__global b3GpuGenericConstraint* constraint,b3GpuConstraintInfo2* info,__global b3RigidBodyCL* bodies)\0A{\0A\09float4 posA = bodies[constraint->m_rbA].m_pos;\0A\09Quaternion rotA = bodies[constraint->m_rbA].m_quat;\0A\09float4 posB = bodies[constraint->m_rbB].m_pos;\0A\09Quaternion rotB = bodies[constraint->m_rbB].m_quat;\0A\09\09// anchor points in global coordinates with respect to body PORs.\0A   \0A    // set jacobian\0A    info->m_J1linearAxis[0] = 1;\0A\09info->m_J1linearAxis[info->rowskip+1] = 1;\0A\09info->m_J1linearAxis[2*info->rowskip+2] = 1;\0A\09float4 a1 = qtRotate(rotA,constraint->m_pivotInA);\0A\09{\0A\09\09__global float4* angular0 = (__global float4*)(info->m_J1angularAxis);\0A\09\09__global float4* angular1 = (__global float4*)(info->m_J1angularAxis+info->rowskip);\0A\09\09__global float4* angular2 = (__global float4*)(info->m_J1angularAxis+2*info->rowskip);\0A\09\09float4 a1neg = -a1;\0A\09\09getSkewSymmetricMatrix(a1neg,angular0,angular1,angular2);\0A\09}\0A\09if (info->m_J2linearAxis)\0A\09{\0A\09\09info->m_J2linearAxis[0] = -1;\0A\09\09info->m_J2linearAxis[info->rowskip+1] = -1;\0A\09\09info->m_J2linearAxis[2*info->rowskip+2] = -1;\0A\09}\0A\09\0A\09float4 a2 = qtRotate(rotB,constraint->m_pivotInB);\0A   \0A\09{\0A\09//\09float4 a2n = -a2;\0A\09\09__global float4* angular0 = (__global float4*)(info->m_J2angularAxis);\0A\09\09__global float4* angular1 = (__global float4*)(info->m_J2angularAxis+info->rowskip);\0A\09\09__global float4* angular2 = (__global float4*)(info->m_J2angularAxis+2*info->rowskip);\0A\09\09getSkewSymmetricMatrix(a2,angular0,angular1,angular2);\0A\09}\0A    \0A    // set right hand side\0A//\09float currERP = (m_flags & B3_P2P_FLAGS_ERP) ? m_erp : info->erp;\0A\09float currERP = info->erp;\0A\09float k = info->fps * currERP;\0A    int j;\0A\09float4 result = a2 + posB - a1 - posA;\0A\09float* resultPtr = &result;\0A\09for (j=0; j<3; j++)\0A    {\0A        info->m_constraintError[j*info->rowskip] = k * (resultPtr[j]);\0A    }\0A}\0AQuaternion nearest( Quaternion first, Quaternion qd)\0A{\0A\09Quaternion diff,sum;\0A\09diff = first- qd;\0A\09sum = first + qd;\0A\09\0A\09if( dot(diff,diff) < dot(sum,sum) )\0A\09\09return qd;\0A\09return (-qd);\0A}\0Afloat b3Acos(float x) \0A{ \0A\09if (x<-1)\09\0A\09\09x=-1; \0A\09if (x>1)\09\0A\09\09x=1;\0A\09return acos(x); \0A}\0Afloat getAngle(Quaternion orn)\0A{\0A\09if (orn.w>=1.f)\0A\09\09orn.w=1.f;\0A\09float s = 2.f * b3Acos(orn.w);\0A\09return s;\0A}\0Avoid calculateDiffAxisAngleQuaternion( Quaternion orn0,Quaternion orn1a,float4* axis,float* angle)\0A{\0A\09Quaternion orn1 = nearest(orn0,orn1a);\0A\09\0A\09Quaternion dorn = qtMul(orn1,qtInvert(orn0));\0A\09*angle = getAngle(dorn);\0A\09*axis = (float4)(dorn.x,dorn.y,dorn.z,0.f);\0A\09\0A\09//check for axis length\0A\09float len = dot3F4(*axis,*axis);\0A\09if (len < FLT_EPSILON*FLT_EPSILON)\0A\09\09*axis = (float4)(1,0,0,0);\0A\09else\0A\09\09*axis /= sqrt(len);\0A}\0Avoid getInfo2FixedOrientation(__global b3GpuGenericConstraint* constraint,b3GpuConstraintInfo2* info,__global b3RigidBodyCL* bodies, int start_row)\0A{\0A\09Quaternion worldOrnA = bodies[constraint->m_rbA].m_quat;\0A\09Quaternion worldOrnB = bodies[constraint->m_rbB].m_quat;\0A\09int s = info->rowskip;\0A\09int start_index = start_row * s;\0A\09// 3 rows to make body rotations equal\0A\09info->m_J1angularAxis[start_index] = 1;\0A\09info->m_J1angularAxis[start_index + s + 1] = 1;\0A\09info->m_J1angularAxis[start_index + s*2+2] = 1;\0A\09if ( info->m_J2angularAxis)\0A\09{\0A\09\09info->m_J2angularAxis[start_index] = -1;\0A\09\09info->m_J2angularAxis[start_index + s+1] = -1;\0A\09\09info->m_J2angularAxis[start_index + s*2+2] = -1;\0A\09}\0A\09\0A\09float currERP = info->erp;\0A\09float k = info->fps * currERP;\0A\09float4 diff;\0A\09float angle;\0A\09float4 qrelCur = qtMul(worldOrnA,qtInvert(worldOrnB));\0A\09\0A\09calculateDiffAxisAngleQuaternion(constraint->m_relTargetAB,qrelCur,&diff,&angle);\0A\09diff*=-angle;\0A\09\09\0A\09float* resultPtr = &diff;\0A\09\0A\09for (int j=0; j<3; j++)\0A    {\0A        info->m_constraintError[(3+j)*info->rowskip] = k * resultPtr[j];\0A    }\0A\09\0A}\0A__kernel void writeBackVelocitiesKernel(__global b3RigidBodyCL* bodies,__global b3GpuSolverBody* solverBodies,int numBodies)\0A{\0A\09int i = get_global_id(0);\0A\09if (i>=numBodies)\0A\09\09return;\0A\09if (bodies[i].m_invMass)\0A\09{\0A//\09\09if (length(solverBodies[i].m_deltaLinearVelocity)<MOTIONCLAMP)\0A\09\09{\0A\09\09\09bodies[i].m_linVel += solverBodies[i].m_deltaLinearVelocity;\0A\09\09}\0A//\09\09if (length(solverBodies[i].m_deltaAngularVelocity)<MOTIONCLAMP)\0A\09\09{\0A\09\09\09bodies[i].m_angVel += solverBodies[i].m_deltaAngularVelocity;\0A\09\09} \0A\09}\0A}\0A__kernel void getInfo2Kernel(__global b3SolverConstraint* solverConstraintRows, \0A\09\09\09\09\09\09\09__global unsigned int* infos, \0A\09\09\09\09\09\09\09__global unsigned int* constraintRowOffsets, \0A\09\09\09\09\09\09\09__global b3GpuGenericConstraint* constraints, \0A\09\09\09\09\09\09\09__global b3BatchConstraint* batchConstraints, \0A\09\09\09\09\09\09\09__global b3RigidBodyCL* bodies,\0A\09\09\09\09\09\09\09__global BodyInertia* inertias,\0A\09\09\09\09\09\09\09__global b3GpuSolverBody* solverBodies,\0A\09\09\09\09\09\09\09float timeStep,\0A\09\09\09\09\09\09\09float globalErp,\0A\09\09\09\09\09\09\09float globalCfm,\0A\09\09\09\09\09\09\09float globalDamping,\0A\09\09\09\09\09\09\09int globalNumIterations,\0A\09\09\09\09\09\09\09int numConstraints)\0A{\0A\09int i = get_global_id(0);\0A\09if (i>=numConstraints)\0A\09\09return;\0A\09\09\0A\09//for now, always initialize the batch info\0A\09int info1 = infos[i];\0A\09\09\09\0A\09__global b3SolverConstraint* currentConstraintRow = &solverConstraintRows[constraintRowOffsets[i]];\0A\09__global b3GpuGenericConstraint* constraint = &constraints[i];\0A\09__global b3RigidBodyCL* rbA = &bodies[ constraint->m_rbA];\0A\09__global b3RigidBodyCL* rbB = &bodies[ constraint->m_rbB];\0A\09int solverBodyIdA = constraint->m_rbA;\0A\09int solverBodyIdB = constraint->m_rbB;\0A\09__global b3GpuSolverBody* bodyAPtr = &solverBodies[solverBodyIdA];\0A\09__global b3GpuSolverBody* bodyBPtr = &solverBodies[solverBodyIdB];\0A\09if (rbA->m_invMass)\0A\09{\0A\09\09batchConstraints[i].m_bodyAPtrAndSignBit = solverBodyIdA;\0A\09} else\0A\09{\0A//\09\09\09if (!solverBodyIdA)\0A//\09\09\09\09m_staticIdx = 0;\0A\09\09batchConstraints[i].m_bodyAPtrAndSignBit = -solverBodyIdA;\0A\09}\0A\09if (rbB->m_invMass)\0A\09{\0A\09\09batchConstraints[i].m_bodyBPtrAndSignBit = solverBodyIdB;\0A\09} else\0A\09{\0A//\09\09\09if (!solverBodyIdB)\0A//\09\09\09\09m_staticIdx = 0;\0A\09\09batchConstraints[i].m_bodyBPtrAndSignBit = -solverBodyIdB;\0A\09}\0A\09if (info1)\0A\09{\0A\09\09int overrideNumSolverIterations = 0;//constraint->getOverrideNumSolverIterations() > 0 ? constraint->getOverrideNumSolverIterations() : infoGlobal.m_numIterations;\0A//\09\09if (overrideNumSolverIterations>m_maxOverrideNumSolverIterations)\0A\09//\09\09m_maxOverrideNumSolverIterations = overrideNumSolverIterations;\0A\09\09int j;\0A\09\09for ( j=0;j<info1;j++)\0A\09\09{\0A//\09\09\09memset(&currentConstraintRow[j],0,sizeof(b3SolverConstraint));\0A\09\09\09currentConstraintRow[j].m_angularComponentA = (float4)(0,0,0,0);\0A\09\09\09currentConstraintRow[j].m_angularComponentB = (float4)(0,0,0,0);\0A\09\09\09currentConstraintRow[j].m_appliedImpulse = 0.f;\0A\09\09\09currentConstraintRow[j].m_appliedPushImpulse = 0.f;\0A\09\09\09currentConstraintRow[j].m_cfm = 0.f;\0A\09\09\09currentConstraintRow[j].m_contactNormal = (float4)(0,0,0,0);\0A\09\09\09currentConstraintRow[j].m_friction = 0.f;\0A\09\09\09currentConstraintRow[j].m_frictionIndex = 0;\0A\09\09\09currentConstraintRow[j].m_jacDiagABInv = 0.f;\0A\09\09\09currentConstraintRow[j].m_lowerLimit = 0.f;\0A\09\09\09currentConstraintRow[j].m_upperLimit = 0.f;\0A\09\09\09currentConstraintRow[j].m_originalConstraint = i;\0A\09\09\09currentConstraintRow[j].m_overrideNumSolverIterations = 0;\0A\09\09\09currentConstraintRow[j].m_relpos1CrossNormal = (float4)(0,0,0,0);\0A\09\09\09currentConstraintRow[j].m_relpos2CrossNormal = (float4)(0,0,0,0);\0A\09\09\09currentConstraintRow[j].m_rhs = 0.f;\0A\09\09\09currentConstraintRow[j].m_rhsPenetration = 0.f;\0A\09\09\09currentConstraintRow[j].m_solverBodyIdA = 0;\0A\09\09\09currentConstraintRow[j].m_solverBodyIdB = 0;\0A\09\09\09\09\09\09\09\0A\09\09\09currentConstraintRow[j].m_lowerLimit = -B3_INFINITY;\0A\09\09\09currentConstraintRow[j].m_upperLimit = B3_INFINITY;\0A\09\09\09currentConstraintRow[j].m_appliedImpulse = 0.f;\0A\09\09\09currentConstraintRow[j].m_appliedPushImpulse = 0.f;\0A\09\09\09currentConstraintRow[j].m_solverBodyIdA = solverBodyIdA;\0A\09\09\09currentConstraintRow[j].m_solverBodyIdB = solverBodyIdB;\0A\09\09\09currentConstraintRow[j].m_overrideNumSolverIterations = overrideNumSolverIterations;\09\09\0A\09\09}\0A\09\09bodyAPtr->m_deltaLinearVelocity = (float4)(0,0,0,0);\0A\09\09bodyAPtr->m_deltaAngularVelocity = (float4)(0,0,0,0);\0A\09\09bodyAPtr->m_pushVelocity = (float4)(0,0,0,0);\0A\09\09bodyAPtr->m_turnVelocity = (float4)(0,0,0,0);\0A\09\09bodyBPtr->m_deltaLinearVelocity = (float4)(0,0,0,0);\0A\09\09bodyBPtr->m_deltaAngularVelocity = (float4)(0,0,0,0);\0A\09\09bodyBPtr->m_pushVelocity = (float4)(0,0,0,0);\0A\09\09bodyBPtr->m_turnVelocity  = (float4)(0,0,0,0);\0A\09\09int rowskip = sizeof(b3SolverConstraint)/sizeof(float);//check this\0A\09\09\0A\09\09b3GpuConstraintInfo2 info2;\0A\09\09info2.fps = 1.f/timeStep;\0A\09\09info2.erp = globalErp;\0A\09\09info2.m_J1linearAxisFloat4 = &currentConstraintRow->m_contactNormal;\0A\09\09info2.m_J1angularAxisFloat4 = &currentConstraintRow->m_relpos1CrossNormal;\0A\09\09info2.m_J2linearAxisFloat4 = 0;\0A\09\09info2.m_J2angularAxisFloat4 = &currentConstraintRow->m_relpos2CrossNormal;\0A\09\09info2.rowskip = sizeof(b3SolverConstraint)/sizeof(float);//check this\0A\09\09///the size of b3SolverConstraint needs be a multiple of float\0A//\09\09b3Assert(info2.rowskip*sizeof(float)== sizeof(b3SolverConstraint));\0A\09\09info2.m_constraintError = &currentConstraintRow->m_rhs;\0A\09\09currentConstraintRow->m_cfm = globalCfm;\0A\09\09info2.m_damping = globalDamping;\0A\09\09info2.cfm = &currentConstraintRow->m_cfm;\0A\09\09info2.m_lowerLimit = &currentConstraintRow->m_lowerLimit;\0A\09\09info2.m_upperLimit = &currentConstraintRow->m_upperLimit;\0A\09\09info2.m_numIterations = globalNumIterations;\0A\09\09switch (constraint->m_constraintType)\0A\09\09{\0A\09\09\09case B3_GPU_POINT2POINT_CONSTRAINT_TYPE:\0A\09\09\09{\0A\09\09\09\09getInfo2Point2Point(constraint,&info2,bodies);\0A\09\09\09\09break;\0A\09\09\09}\0A\09\09\09case B3_GPU_FIXED_CONSTRAINT_TYPE:\0A\09\09\09{\0A\09\09\09\09getInfo2Point2Point(constraint,&info2,bodies);\0A\09\09\09\09getInfo2FixedOrientation(constraint,&info2,bodies,3);\0A\09\09\09\09break;\0A\09\09\09}\0A\09\09\09default:\0A\09\09\09{\0A\09\09\09}\0A\09\09}\0A\09\09///finalize the constraint setup\0A\09\09for ( j=0;j<info1;j++)\0A\09\09{\0A\09\09\09__global b3SolverConstraint* solverConstraint = &currentConstraintRow[j];\0A\09\09\09if (solverConstraint->m_upperLimit>=constraint->m_breakingImpulseThreshold)\0A\09\09\09{\0A\09\09\09\09solverConstraint->m_upperLimit = constraint->m_breakingImpulseThreshold;\0A\09\09\09}\0A\09\09\09if (solverConstraint->m_lowerLimit<=-constraint->m_breakingImpulseThreshold)\0A\09\09\09{\0A\09\09\09\09solverConstraint->m_lowerLimit = -constraint->m_breakingImpulseThreshold;\0A\09\09\09}\0A//\09\09\09\09\09\09solverConstraint->m_originalContactPoint = constraint;\0A\09\09\09\09\09\09\09\0A\09\09\09Matrix3x3 invInertiaWorldA= inertias[constraint->m_rbA].m_invInertiaWorld;\0A\09\09\09{\0A\09\09\09\09//float4 angularFactorA(1,1,1);\0A\09\09\09\09float4 ftorqueAxis1 = solverConstraint->m_relpos1CrossNormal;\0A\09\09\09\09solverConstraint->m_angularComponentA = mtMul1(invInertiaWorldA,ftorqueAxis1);//*angularFactorA;\0A\09\09\09}\0A\09\09\09\09\09\09\0A\09\09\09Matrix3x3 invInertiaWorldB= inertias[constraint->m_rbB].m_invInertiaWorld;\0A\09\09\09{\0A\09\09\09\09float4 ftorqueAxis2 = solverConstraint->m_relpos2CrossNormal;\0A\09\09\09\09solverConstraint->m_angularComponentB = mtMul1(invInertiaWorldB,ftorqueAxis2);//*constraint->m_rbB.getAngularFactor();\0A\09\09\09}\0A\09\09\09{\0A\09\09\09\09//it is ok to use solverConstraint->m_contactNormal instead of -solverConstraint->m_contactNormal\0A\09\09\09\09//because it gets multiplied iMJlB\0A\09\09\09\09float4 iMJlA = solverConstraint->m_contactNormal*rbA->m_invMass;\0A\09\09\09\09float4 iMJaA = mtMul3(solverConstraint->m_relpos1CrossNormal,invInertiaWorldA);\0A\09\09\09\09float4 iMJlB = solverConstraint->m_contactNormal*rbB->m_invMass;//sign of normal?\0A\09\09\09\09float4 iMJaB = mtMul3(solverConstraint->m_relpos2CrossNormal,invInertiaWorldB);\0A\09\09\09\09float sum = dot3F4(iMJlA,solverConstraint->m_contactNormal);\0A\09\09\09\09sum += dot3F4(iMJaA,solverConstraint->m_relpos1CrossNormal);\0A\09\09\09\09sum += dot3F4(iMJlB,solverConstraint->m_contactNormal);\0A\09\09\09\09sum += dot3F4(iMJaB,solverConstraint->m_relpos2CrossNormal);\0A\09\09\09\09float fsum = fabs(sum);\0A\09\09\09\09if (fsum>FLT_EPSILON)\0A\09\09\09\09{\0A\09\09\09\09\09solverConstraint->m_jacDiagABInv = 1.f/sum;\0A\09\09\09\09} else\0A\09\09\09\09{\0A\09\09\09\09\09solverConstraint->m_jacDiagABInv = 0.f;\0A\09\09\09\09}\0A\09\09\09}\0A\09\09\09///fix rhs\0A\09\09\09///todo: add force/torque accelerators\0A\09\09\09{\0A\09\09\09\09float rel_vel;\0A\09\09\09\09float vel1Dotn = dot3F4(solverConstraint->m_contactNormal,rbA->m_linVel) + dot3F4(solverConstraint->m_relpos1CrossNormal,rbA->m_angVel);\0A\09\09\09\09float vel2Dotn = -dot3F4(solverConstraint->m_contactNormal,rbB->m_linVel) + dot3F4(solverConstraint->m_relpos2CrossNormal,rbB->m_angVel);\0A\09\09\09\09rel_vel = vel1Dotn+vel2Dotn;\0A\09\09\09\09float restitution = 0.f;\0A\09\09\09\09float positionalError = solverConstraint->m_rhs;//already filled in by getConstraintInfo2\0A\09\09\09\09float\09velocityError = restitution - rel_vel * info2.m_damping;\0A\09\09\09\09float\09penetrationImpulse = positionalError*solverConstraint->m_jacDiagABInv;\0A\09\09\09\09float\09velocityImpulse = velocityError *solverConstraint->m_jacDiagABInv;\0A\09\09\09\09solverConstraint->m_rhs = penetrationImpulse+velocityImpulse;\0A\09\09\09\09solverConstraint->m_appliedImpulse = 0.f;\0A\09\09\09}\0A\09\09}\0A\09}\0A}\0A\00", align 1
@__const._ZN12b3LauncherCL8launch2DEiiii.lRange = private unnamed_addr constant [3 x i64] [i64 1, i64 1, i64 1], align 16
@__clewEnqueueNDRangeKernel = external local_unnamed_addr global ptr, align 8
@.str.31 = private unnamed_addr constant [27 x i8] c"Error: OpenCL status = %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [23 x i8] c"sortConstraintByBatch3\00", align 1
@_ZZN24b3GpuPgsConstraintSolver22sortConstraintByBatch3EP17b3BatchConstraintiiiiE8maxSwaps = linkonce_odr dso_local local_unnamed_addr global i32 0, comdat, align 4
@_ZZN24b3GpuPgsConstraintSolver22sortConstraintByBatch3EP17b3BatchConstraintiiiiE17maxNumConstraints = linkonce_odr dso_local local_unnamed_addr global i32 0, comdat, align 4
@.str.33 = private unnamed_addr constant [20 x i8] c"cpu batch innerloop\00", align 1
@.str.34 = private unnamed_addr constant [17 x i8] c"b3Error[%s,%d]:\0A\00", align 1
@.str.35 = private unnamed_addr constant [73 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3Common/b3AlignedObjectArray.h\00", align 1
@.str.36 = private unnamed_addr constant [44 x i8] c"b3AlignedObjectArray reserve out-of-memory\0A\00", align 1
@_ZTV13b3OpenCLArrayIjE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayIjE, ptr @_ZN13b3OpenCLArrayIjED2Ev, ptr @_ZN13b3OpenCLArrayIjED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayIjE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayIjE }, comdat, align 8
@_ZTS13b3OpenCLArrayIjE = linkonce_odr dso_local constant [19 x i8] c"13b3OpenCLArrayIjE\00", comdat, align 1
@__clewCreateBuffer = external local_unnamed_addr global ptr, align 8
@.str.37 = private unnamed_addr constant [85 x i8] c"/opt-bench/work/bullet3/bullet3/src/Bullet3OpenCL/ParallelPrimitives/b3OpenCLArray.h\00", align 1
@.str.38 = private unnamed_addr constant [22 x i8] c"OpenCL out-of-memory\0A\00", align 1
@__clewEnqueueCopyBuffer = external local_unnamed_addr global ptr, align 8
@__clewReleaseMemObject = external local_unnamed_addr global ptr, align 8
@_ZTV13b3OpenCLArrayI15b3GpuSolverBodyE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI15b3GpuSolverBodyE, ptr @_ZN13b3OpenCLArrayI15b3GpuSolverBodyED2Ev, ptr @_ZN13b3OpenCLArrayI15b3GpuSolverBodyED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI15b3GpuSolverBodyE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI15b3GpuSolverBodyE }, comdat, align 8
@_ZTS13b3OpenCLArrayI15b3GpuSolverBodyE = linkonce_odr dso_local constant [35 x i8] c"13b3OpenCLArrayI15b3GpuSolverBodyE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI17b3BatchConstraintE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI17b3BatchConstraintE, ptr @_ZN13b3OpenCLArrayI17b3BatchConstraintED2Ev, ptr @_ZN13b3OpenCLArrayI17b3BatchConstraintED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI17b3BatchConstraintE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI17b3BatchConstraintE }, comdat, align 8
@_ZTS13b3OpenCLArrayI17b3BatchConstraintE = linkonce_odr dso_local constant [37 x i8] c"13b3OpenCLArrayI17b3BatchConstraintE\00", comdat, align 1
@_ZTV13b3OpenCLArrayI21b3GpuSolverConstraintE = linkonce_odr dso_local constant { [4 x ptr] } { [4 x ptr] [ptr null, ptr @_ZTI13b3OpenCLArrayI21b3GpuSolverConstraintE, ptr @_ZN13b3OpenCLArrayI21b3GpuSolverConstraintED2Ev, ptr @_ZN13b3OpenCLArrayI21b3GpuSolverConstraintED0Ev] }, comdat, align 8
@_ZTI13b3OpenCLArrayI21b3GpuSolverConstraintE = linkonce_odr dso_local constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS13b3OpenCLArrayI21b3GpuSolverConstraintE }, comdat, align 8
@_ZTS13b3OpenCLArrayI21b3GpuSolverConstraintE = linkonce_odr dso_local constant [41 x i8] c"13b3OpenCLArrayI21b3GpuSolverConstraintE\00", comdat, align 1
@__clewSetKernelArg = external local_unnamed_addr global ptr, align 8
@__clewEnqueueReadBuffer = external local_unnamed_addr global ptr, align 8
@.str.39 = private unnamed_addr constant [33 x i8] c"copyToHostPointer invalid range\0A\00", align 1
@__clewEnqueueWriteBuffer = external local_unnamed_addr global ptr, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_b3GpuPgsConstraintSolver.cpp, ptr null }]

@_ZN24b3GpuPgsConstraintSolverC1EP11_cl_contextP13_cl_device_idP17_cl_command_queueb = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, i1), ptr @_ZN24b3GpuPgsConstraintSolverC2EP11_cl_contextP13_cl_device_idP17_cl_command_queueb
@_ZN24b3GpuPgsConstraintSolverD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN24b3GpuPgsConstraintSolverD2Ev

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local { <2 x float>, <2 x float> } @_Z23getVelocityInLocalPointP15b3RigidBodyDataRK9b3Vector3(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef nonnull readonly align 16 captures(none) dereferenceable(16) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load float, ptr %i.d, align 8, !tbaa !9  ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.g = load float, ptr %i.f, align 8, !tbaa !9  ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.i = load float, ptr %i.a, align 16, !tbaa !9
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.k = load float, ptr %i.h, align 4, !tbaa !9
  %i.l = load <2 x float>, ptr %1, align 16, !tbaa !9 ; 2 uses
  %i.m = fneg float %i.k
  %i.n = fmul float %i.g, %i.m
  %i.o = load float, ptr %i.c, align 4, !tbaa !9
  %i.p = load <2 x float>, ptr %i.b, align 16, !tbaa !9 ; 2 uses
  %i.q = tail call float @llvm.fmuladd.f32(float %i.o, float %i.e, float %i.n)
  %i.r = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.s = insertelement <2 x float> %i.r, float %i.e, i64 0
  %i.t = fneg <2 x float> %i.s
  %i.u = fmul <2 x float> %i.p, %i.t
  %i.v = shufflevector <2 x float> %i.p, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.w = insertelement <2 x float> %i.v, float %i.g, i64 0
  %i.x = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.w, <2 x float> %i.l, <2 x float> %i.u)
  %i.y = fadd float %i.q, %i.i
  %i.z = load <2 x float>, ptr %i.j, align 4, !tbaa !9
  %i.aa = fadd <2 x float> %i.z, %i.x             ; 2 uses
  %.sroa.0.0.vec.insert.i.i3 = insertelement <2 x float> poison, float %i.y, i64 0
  %i.ab = shufflevector <2 x float> %.sroa.0.0.vec.insert.i.i3, <2 x float> %i.aa, <2 x i32> <i32 0, i32 2>
  %i.ac = shufflevector <2 x float> <float poison, float 0.000000e+00>, <2 x float> %i.aa, <2 x i32> <i32 3, i32 1>
  %.fca.0.insert.i.i6 = insertvalue { <2 x float>, <2 x float> } poison, <2 x float> %i.ab, 0
  %.fca.1.insert.i.i7 = insertvalue { <2 x float>, <2 x float> } %.fca.0.insert.i.i6, <2 x float> %i.ac, 1
  ret { <2 x float>, <2 x float> } %.fca.1.insert.i.i7
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN24b3GpuPgsConstraintSolverC2EP11_cl_contextP13_cl_device_idP17_cl_command_queueb(ptr noundef nonnull align 8 dereferenceable(228) initializes((0, 8), (28, 36), (40, 49), (60, 68), (72, 81), (92, 100), (104, 113), (124, 132), (136, 145), (156, 164), (168, 177), (188, 196), (200, 209), (216, 217)) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i1 noundef zeroext %4) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 12 uses
  %i.b = zext i1 %4 to i8
  store ptr getelementptr inbounds nuw inrange(-16, 32) (i8, ptr @_ZTV24b3GpuPgsConstraintSolver, i64 16), ptr %0, align 8, !tbaa !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i8 1, ptr %i.c, align 8, !tbaa !12
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr null, ptr %i.d, align 8, !tbaa !18
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %i.e, align 4, !tbaa !19
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.f, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 1, ptr %i.g, align 8, !tbaa !21
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr null, ptr %i.h, align 8, !tbaa !25
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 60
  store i32 0, ptr %i.i, align 4, !tbaa !26
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i32 0, ptr %i.j, align 8, !tbaa !27
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 112
  store i8 1, ptr %i.k, align 8, !tbaa !21
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr null, ptr %i.l, align 8, !tbaa !25
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.m, align 4, !tbaa !26
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i32 0, ptr %i.n, align 8, !tbaa !27
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i8 1, ptr %i.o, align 8, !tbaa !21
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 136
  store ptr null, ptr %i.p, align 8, !tbaa !25
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 124
  store i32 0, ptr %i.q, align 4, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i32 0, ptr %i.r, align 8, !tbaa !27
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %i.s, align 8, !tbaa !21
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 168
  store ptr null, ptr %i.t, align 8, !tbaa !25
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 156
  store i32 0, ptr %i.u, align 4, !tbaa !26
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  store i32 0, ptr %i.v, align 8, !tbaa !27
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i8 1, ptr %i.w, align 8, !tbaa !28
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr null, ptr %i.x, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 188
  store i32 0, ptr %i.y, align 4, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.z, align 8, !tbaa !34
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 216
  store i8 %i.b, ptr %i.aa, align 8, !tbaa !35
  %i.ab = invoke noalias noundef nonnull dereferenceable(384) ptr @_Znwm(i64 noundef 384) #22
          to label %bb.b unwind label %bb.k       ; 21 uses

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(368) %i.ac, i8 0, i64 368, i1 false)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 152
  store i8 1, ptr %i.ad, align 8, !tbaa !38
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ab, i64 132
  store i32 0, ptr %i.ae, align 4, !tbaa !42
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 184
  store i8 1, ptr %i.af, align 8, !tbaa !21
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ab, i64 164
  store i32 0, ptr %i.ag, align 4, !tbaa !26
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 216
  store i8 1, ptr %i.ah, align 8, !tbaa !28
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ab, i64 196
  store i32 0, ptr %i.ai, align 4, !tbaa !33
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ab, i64 248
  store i8 1, ptr %i.aj, align 8, !tbaa !28
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ab, i64 228
  store i32 0, ptr %i.ak, align 4, !tbaa !33
  %i.al = getelementptr inbounds nuw i8, ptr %i.ab, i64 280
  store i8 1, ptr %i.al, align 8, !tbaa !43
  %i.am = getelementptr inbounds nuw i8, ptr %i.ab, i64 260
  store i32 0, ptr %i.am, align 4, !tbaa !47
  %i.an = getelementptr inbounds nuw i8, ptr %i.ab, i64 312
  store i8 1, ptr %i.an, align 8, !tbaa !48
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ab, i64 292
  store i32 0, ptr %i.ao, align 4, !tbaa !52
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ab, i64 344
  store i8 1, ptr %i.ap, align 8, !tbaa !53
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ab, i64 324
  store i32 0, ptr %i.aq, align 4, !tbaa !57
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ab, i64 376
  store i8 1, ptr %i.ar, align 8, !tbaa !58
  %i.as = getelementptr inbounds nuw i8, ptr %i.ab, i64 356
  store i32 0, ptr %i.as, align 4, !tbaa !61
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 10 uses
  store ptr %i.ab, ptr %i.at, align 8, !tbaa !62
  store ptr %1, ptr %i.ab, align 16, !tbaa !63
  %i.au = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr %2, ptr %i.au, align 8, !tbaa !74
  %i.av = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %3, ptr %i.av, align 16, !tbaa !75
  %i.aw = invoke noalias noundef nonnull dereferenceable(48) ptr @_Znwm(i64 noundef 48) #22
          to label %bb.c unwind label %bb.k       ; 3 uses

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN14b3PrefixScanCLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(48) %i.aw, ptr noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef 0)
          to label %bb.d unwind label %bb.l

bb.d:                                             ; preds = %bb.c
  %i.ax = load ptr, ptr %i.at, align 8, !tbaa !62 ; 9 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  store ptr %i.aw, ptr %i.ay, align 8, !tbaa !76
  %i.az = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22
          to label %bb.e unwind label %bb.k       ; 7 uses

bb.e:                                             ; preds = %bb.d
  %i.ba = load ptr, ptr %i.ax, align 8, !tbaa !63 ; 6 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !75 ; 5 uses
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIjE, i64 16), ptr %i.az, align 8, !tbaa !10
  %i.bd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i8 0, i64 24, i1 false)
  store ptr %i.ba, ptr %i.be, align 8, !tbaa !77
  %i.bf = getelementptr inbounds nuw i8, ptr %i.az, i64 40
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !81
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 48
  store i8 1, ptr %i.bg, align 8, !tbaa !82
  %i.bh = getelementptr inbounds nuw i8, ptr %i.az, i64 49
  store i8 1, ptr %i.bh, align 1, !tbaa !83
  %i.bi = getelementptr inbounds nuw i8, ptr %i.ax, i64 88
  store ptr %i.az, ptr %i.bi, align 8, !tbaa !84
  %i.bj = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22
          to label %bb.f unwind label %bb.k       ; 7 uses

bb.f:                                             ; preds = %bb.e
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI15b3GpuSolverBodyE, i64 16), ptr %i.bj, align 8, !tbaa !10
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i8 0, i64 24, i1 false)
  store ptr %i.ba, ptr %i.bl, align 8, !tbaa !85
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 40
  store ptr %i.bc, ptr %i.bm, align 8, !tbaa !87
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 48
  store i8 1, ptr %i.bn, align 8, !tbaa !88
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bj, i64 49
  store i8 1, ptr %i.bo, align 1, !tbaa !89
  %i.bp = getelementptr inbounds nuw i8, ptr %i.ax, i64 96
  store ptr %i.bj, ptr %i.bp, align 8, !tbaa !90
  %i.bq = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22
          to label %bb.g unwind label %bb.k       ; 7 uses

bb.g:                                             ; preds = %bb.f
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI17b3BatchConstraintE, i64 16), ptr %i.bq, align 8, !tbaa !10
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.br, i8 0, i64 24, i1 false)
  store ptr %i.ba, ptr %i.bs, align 8, !tbaa !91
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 40
  store ptr %i.bc, ptr %i.bt, align 8, !tbaa !93
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bq, i64 48
  store i8 1, ptr %i.bu, align 8, !tbaa !94
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 49
  store i8 1, ptr %i.bv, align 1, !tbaa !95
  %i.bw = getelementptr inbounds nuw i8, ptr %i.ax, i64 104
  store ptr %i.bq, ptr %i.bw, align 8, !tbaa !96
  %i.bx = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22
          to label %bb.h unwind label %bb.k       ; 7 uses

bb.h:                                             ; preds = %bb.g
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayI21b3GpuSolverConstraintE, i64 16), ptr %i.bx, align 8, !tbaa !10
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.by, i8 0, i64 24, i1 false)
  store ptr %i.ba, ptr %i.bz, align 8, !tbaa !97
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bx, i64 40
  store ptr %i.bc, ptr %i.ca, align 8, !tbaa !99
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  store i8 1, ptr %i.cb, align 8, !tbaa !100
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 49
  store i8 1, ptr %i.cc, align 1, !tbaa !101
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ax, i64 112
  store ptr %i.bx, ptr %i.cd, align 8, !tbaa !102
  %i.ce = invoke noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22
          to label %bb.i unwind label %bb.k       ; 7 uses

bb.i:                                             ; preds = %bb.h
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTV13b3OpenCLArrayIjE, i64 16), ptr %i.ce, align 8, !tbaa !10
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cf, i8 0, i64 24, i1 false)
  store ptr %i.ba, ptr %i.cg, align 8, !tbaa !77
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 40
  store ptr %i.bc, ptr %i.ch, align 8, !tbaa !81
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ce, i64 48
  store i8 1, ptr %i.ci, align 8, !tbaa !82
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ce, i64 49
  store i8 1, ptr %i.cj, align 1, !tbaa !83
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ax, i64 120
  store ptr %i.ce, ptr %i.ck, align 8, !tbaa !103
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  store i32 0, ptr %i.a, align 4, !tbaa !104
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !74
  %i.cn = invoke noundef ptr @b3OpenCLUtils_compileCLProgramFromString(ptr noundef %i.ba, ptr noundef %i.cm, ptr noundef nonnull @.str.30, ptr noundef nonnull %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, i1 noundef zeroext false)
          to label %_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit unwind label %bb.m ; 8 uses

_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit: ; preds = %bb.i
  %i.co = load ptr, ptr %i.at, align 8, !tbaa !62 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !63
  %i.cq = getelementptr inbounds nuw i8, ptr %i.co, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !74
  %i.cs = invoke noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %i.cp, ptr noundef %i.cr, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2, ptr noundef nonnull %i.a, ptr noundef %i.cn, ptr noundef nonnull @.str)
          to label %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit unwind label %bb.m

_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit: ; preds = %_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit
  %i.ct = load ptr, ptr %i.at, align 8, !tbaa !62 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 32
  store ptr %i.cs, ptr %i.cu, align 8, !tbaa !105
  %i.cv = load ptr, ptr %i.ct, align 8, !tbaa !63
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %i.cx = load ptr, ptr %i.cw, align 8, !tbaa !74
  %i.cy = invoke noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %i.cv, ptr noundef %i.cx, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.3, ptr noundef nonnull %i.a, ptr noundef %i.cn, ptr noundef nonnull @.str)
          to label %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit29 unwind label %bb.m

_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit29: ; preds = %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit
  %i.cz = load ptr, ptr %i.at, align 8, !tbaa !62 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 40
  store ptr %i.cy, ptr %i.da, align 8, !tbaa !106
  %i.db = load ptr, ptr %i.cz, align 8, !tbaa !63
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !74
  %i.de = invoke noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %i.db, ptr noundef %i.dd, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.4, ptr noundef nonnull %i.a, ptr noundef %i.cn, ptr noundef nonnull @.str)
          to label %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit30 unwind label %bb.m

_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit30: ; preds = %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit29
  %i.df = load ptr, ptr %i.at, align 8, !tbaa !62 ; 3 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 48
  store ptr %i.de, ptr %i.dg, align 8, !tbaa !107
  %i.dh = load ptr, ptr %i.df, align 8, !tbaa !63
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !tbaa !74
  %i.dk = invoke noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %i.dh, ptr noundef %i.dj, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.5, ptr noundef nonnull %i.a, ptr noundef %i.cn, ptr noundef nonnull @.str)
          to label %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit31 unwind label %bb.m

_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit31: ; preds = %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit30
  %i.dl = load ptr, ptr %i.at, align 8, !tbaa !62 ; 3 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 56
  store ptr %i.dk, ptr %i.dm, align 8, !tbaa !108
  %i.dn = load ptr, ptr %i.dl, align 8, !tbaa !63
  %i.do = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !74
  %i.dq = invoke noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %i.dn, ptr noundef %i.dp, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.6, ptr noundef nonnull %i.a, ptr noundef %i.cn, ptr noundef nonnull @.str)
          to label %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit32 unwind label %bb.m

_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit32: ; preds = %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit31
  %i.dr = load ptr, ptr %i.at, align 8, !tbaa !62 ; 3 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 64
  store ptr %i.dq, ptr %i.ds, align 8, !tbaa !109
  %i.dt = load ptr, ptr %i.dr, align 8, !tbaa !63
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !tbaa !74
  %i.dw = invoke noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %i.dt, ptr noundef %i.dv, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.7, ptr noundef nonnull %i.a, ptr noundef %i.cn, ptr noundef nonnull @.str)
          to label %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit33 unwind label %bb.m

_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit33: ; preds = %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit32
  %i.dx = load ptr, ptr %i.at, align 8, !tbaa !62 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 72
  store ptr %i.dw, ptr %i.dy, align 8, !tbaa !110
  %i.dz = load ptr, ptr %i.dx, align 8, !tbaa !63
  %i.ea = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.eb = load ptr, ptr %i.ea, align 8, !tbaa !74
  %i.ec = invoke noundef ptr @b3OpenCLUtils_compileCLKernelFromString(ptr noundef %i.dz, ptr noundef %i.eb, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.8, ptr noundef nonnull %i.a, ptr noundef %i.cn, ptr noundef nonnull @.str)
          to label %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit34 unwind label %bb.m

_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit34: ; preds = %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit33
  %i.ed = load ptr, ptr %i.at, align 8, !tbaa !62
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ed, i64 80
  store ptr %i.ec, ptr %i.ee, align 8, !tbaa !111
  %i.ef = load ptr, ptr @__clewReleaseProgram, align 8, !tbaa !112
  %i.eg = invoke i32 %i.ef(ptr noundef %i.cn)
          to label %bb.j unwind label %bb.m       ; 0 uses

bb.j:                                             ; preds = %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit34
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  ret void

bb.k:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %i.eh = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.l:                                             ; preds = %bb.c
  %i.ei = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.aw, i64 noundef 48) #24
  br label %bb.n

bb.m:                                             ; preds = %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit33, %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit32, %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit31, %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit30, %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit29, %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit, %_ZN13b3OpenCLUtils26compileCLProgramFromStringEP11_cl_contextP13_cl_device_idPKcPiS5_S5_b.exit, %bb.i, %_ZN13b3OpenCLUtils25compileCLKernelFromStringEP11_cl_contextP13_cl_device_idPKcS5_PiP11_cl_programS5_.exit34
  %i.ej = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k
  %.pn = phi { ptr, i32 } [ %i.ej, %bb.m ], [ %i.ei, %bb.l ], [ %i.eh, %bb.k ]
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.el = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.em = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.eo = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ep = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @_ZN20b3AlignedObjectArrayIjED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.ek) #23
  call void @_ZN20b3AlignedObjectArrayI21b3GpuSolverConstraintED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.el) #23
  call void @_ZN20b3AlignedObjectArrayI21b3GpuSolverConstraintED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.em) #23
  call void @_ZN20b3AlignedObjectArrayI21b3GpuSolverConstraintED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.en) #23
  call void @_ZN20b3AlignedObjectArrayI21b3GpuSolverConstraintED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.eo) #23
  call void @_ZN20b3AlignedObjectArrayI15b3GpuSolverBodyED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %i.ep) #23
  resume { ptr, i32 } %.pn
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #5

declare void @_ZN14b3PrefixScanCLC1EP11_cl_contextP13_cl_device_idP17_cl_command_queuei(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef, ptr noundef, ptr noundef, i32 noundef) unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayIjED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !32   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !113
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
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI21b3GpuSolverConstraintED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !25   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !113
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
  tail call void @__clang_call_terminate(ptr %i.g) #25
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN20b3AlignedObjectArrayI15b3GpuSolverBodyED2Ev(ptr noundef nonnull align 8 dead_on_return(25) dereferenceable(25) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !18   ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i8, ptr %i.c, align 8, !range !113
  %i.e = trunc nuw i8 %i.d to i1
  %or.cond.i = select i1 %.not.i.i, i1 %i.e, i1 false
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_Z21b3AlignedFreeInternalPv(ptr noundef nonnull %i.b)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_0
