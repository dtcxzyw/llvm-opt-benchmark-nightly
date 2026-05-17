inline.NumInlined: 39
inline.NumDeleted: 22
begin_hunk_0

%class.btVector3 = type { [4 x float] }

$_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw = comdat any

$_ZN16btCollisionWorld14getDebugDrawerEv = comdat any

$_ZNK25btContinuousDynamicsWorld12getWorldTypeEv = comdat any

$_ZN23btDiscreteDynamicsWorld11setNumTasksEi = comdat any

$_ZN23btDiscreteDynamicsWorld14updateVehiclesEf = comdat any

@_ZTV25btContinuousDynamicsWorld = dso_local unnamed_addr constant { [43 x ptr] } { [43 x ptr] [ptr null, ptr @_ZTI25btContinuousDynamicsWorld, ptr @_ZN25btContinuousDynamicsWorldD2Ev, ptr @_ZN25btContinuousDynamicsWorldD0Ev, ptr @_ZN16btCollisionWorld11updateAabbsEv, ptr @_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw, ptr @_ZN16btCollisionWorld14getDebugDrawerEv, ptr @_ZN23btDiscreteDynamicsWorld18addCollisionObjectEP17btCollisionObjectss, ptr @_ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject, ptr @_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv, ptr @_ZN23btDiscreteDynamicsWorld14stepSimulationEfif, ptr @_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv, ptr @_ZN23btDiscreteDynamicsWorld13addConstraintEP17btTypedConstraintb, ptr @_ZN23btDiscreteDynamicsWorld16removeConstraintEP17btTypedConstraint, ptr @_ZN23btDiscreteDynamicsWorld9addActionEP17btActionInterface, ptr @_ZN23btDiscreteDynamicsWorld12removeActionEP17btActionInterface, ptr @_ZN23btDiscreteDynamicsWorld10setGravityERK9btVector3, ptr @_ZNK23btDiscreteDynamicsWorld10getGravityEv, ptr @_ZN23btDiscreteDynamicsWorld23synchronizeMotionStatesEv, ptr @_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBody, ptr @_ZN23btDiscreteDynamicsWorld15removeRigidBodyEP11btRigidBody, ptr @_ZN23btDiscreteDynamicsWorld19setConstraintSolverEP18btConstraintSolver, ptr @_ZN23btDiscreteDynamicsWorld19getConstraintSolverEv, ptr @_ZNK23btDiscreteDynamicsWorld17getNumConstraintsEv, ptr @_ZN23btDiscreteDynamicsWorld13getConstraintEi, ptr @_ZNK23btDiscreteDynamicsWorld13getConstraintEi, ptr @_ZNK25btContinuousDynamicsWorld12getWorldTypeEv, ptr @_ZN23btDiscreteDynamicsWorld11clearForcesEv, ptr @_ZN23btDiscreteDynamicsWorld10addVehicleEP17btActionInterface, ptr @_ZN23btDiscreteDynamicsWorld13removeVehicleEP17btActionInterface, ptr @_ZN23btDiscreteDynamicsWorld12addCharacterEP17btActionInterface, ptr @_ZN23btDiscreteDynamicsWorld15removeCharacterEP17btActionInterface, ptr @_ZN23btDiscreteDynamicsWorld25predictUnconstraintMotionEf, ptr @_ZN23btDiscreteDynamicsWorld19integrateTransformsEf, ptr @_ZN23btDiscreteDynamicsWorld26calculateSimulationIslandsEv, ptr @_ZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfo, ptr @_ZN25btContinuousDynamicsWorld28internalSingleStepSimulationEf, ptr @_ZN23btDiscreteDynamicsWorld18saveKinematicStateEf, ptr @_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBodyss, ptr @_ZN23btDiscreteDynamicsWorld12applyGravityEv, ptr @_ZN23btDiscreteDynamicsWorld11setNumTasksEi, ptr @_ZN23btDiscreteDynamicsWorld14updateVehiclesEf, ptr @_ZN25btContinuousDynamicsWorld22calculateTimeOfImpactsEf] }, align 8
@.str = private unnamed_addr constant [10 x i8] c"toi = %f\0A\00", align 1
@_ZTI25btContinuousDynamicsWorld = dso_local constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS25btContinuousDynamicsWorld, ptr @_ZTI23btDiscreteDynamicsWorld }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTS25btContinuousDynamicsWorld = dso_local constant [28 x i8] c"25btContinuousDynamicsWorld\00", align 1
@_ZTI23btDiscreteDynamicsWorld = external constant ptr

@_ZN25btContinuousDynamicsWorldC1EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration = dso_local unnamed_addr alias void (ptr, ptr, ptr, ptr, ptr), ptr @_ZN25btContinuousDynamicsWorldC2EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration
@_ZN25btContinuousDynamicsWorldD1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN25btContinuousDynamicsWorldD2Ev

; Function Attrs: uwtable
define dso_local void @_ZN25btContinuousDynamicsWorldC2EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN23btDiscreteDynamicsWorldC2EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4)
  store ptr getelementptr inbounds nuw inrange(-16, 328) (i8, ptr @_ZTV25btContinuousDynamicsWorld, i64 16), ptr %0, align 8, !tbaa !8
  ret void
}

declare void @_ZN23btDiscreteDynamicsWorldC2EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorldD2Ev(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

; Function Attrs: uwtable
define dso_local void @_ZN25btContinuousDynamicsWorldD2Ev(ptr noundef nonnull align 8 dereferenceable(372) %0) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN23btDiscreteDynamicsWorldD2Ev(ptr noundef nonnull align 8 dereferenceable(372) %0)
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN25btContinuousDynamicsWorldD0Ev(ptr noundef nonnull align 8 dereferenceable(372) %0) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN23btDiscreteDynamicsWorldD2Ev(ptr noundef nonnull align 8 dereferenceable(372) %0)
          to label %_ZN25btContinuousDynamicsWorldD2Ev.exit unwind label %bb.b

_ZN25btContinuousDynamicsWorldD2Ev.exit:          ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %0) #7
  ret void

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %0) #7
  resume { ptr, i32 } %i.a
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

; Function Attrs: uwtable
define dso_local void @_ZN25btContinuousDynamicsWorld28internalSingleStepSimulationEf(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN23btDiscreteDynamicsWorld14startProfilingEf(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !10   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(ptr noundef nonnull %0, float noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  tail call void %i.e(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 240
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store float %1, ptr %i.i, align 8, !tbaa !27
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.j, align 4, !tbaa !28
  %i.k = load ptr, ptr %0, align 8, !tbaa !8
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = tail call noundef ptr %i.m(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.n, ptr %i.o, align 8, !tbaa !29
  %i.p = load ptr, ptr %0, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 56
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(129) %0)
  %i.s = load ptr, ptr %0, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 256
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(372) %0)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 172
  store float %1, ptr %i.w, align 4, !tbaa !30
  %i.x = load ptr, ptr %0, align 8, !tbaa !8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 264
  %i.z = load ptr, ptr %i.y, align 8
  tail call void %i.z(ptr noundef nonnull align 8 dereferenceable(372) %0, ptr noundef nonnull align 4 dereferenceable(68) %i.v)
  %i.aa = load ptr, ptr %0, align 8, !tbaa !8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 320
  %i.ac = load ptr, ptr %i.ab, align 8
  tail call void %i.ac(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %1)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.ae = load float, ptr %i.ad, align 4, !tbaa !31 ; 3 uses
  %i.af = fcmp olt float %i.ae, 0.000000e+00
  br i1 %i.af, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.ag = fpext float %i.ae to double
  %i.ah = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, double noundef %i.ag) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.ai = fmul float %1, %i.ae
  %i.aj = load ptr, ptr %0, align 8, !tbaa !8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 248
  %i.al = load ptr, ptr %i.ak, align 8
  tail call void %i.al(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %i.ai)
  tail call void @_ZN23btDiscreteDynamicsWorld13updateActionsEf(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %1)
  tail call void @_ZN23btDiscreteDynamicsWorld21updateActivationStateEf(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %1)
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !32 ; 2 uses
  %.not20 = icmp eq ptr %i.an, null
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void %i.an(ptr noundef nonnull %0, float noundef %1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

declare void @_ZN23btDiscreteDynamicsWorld14startProfilingEf(ptr noundef nonnull align 8 dereferenceable(372), float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @_ZN23btDiscreteDynamicsWorld13updateActionsEf(ptr noundef nonnull align 8 dereferenceable(372), float noundef) local_unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld21updateActivationStateEf(ptr noundef nonnull align 8 dereferenceable(372), float noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: uwtable
define dso_local void @_ZN25btContinuousDynamicsWorld22calculateTimeOfImpactsEf(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %1) unnamed_addr #0 align 2 {
bb.a:
  tail call void @_ZN25btContinuousDynamicsWorld19updateTemporalAabbsEf(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  store float %1, ptr %i.a, align 8, !tbaa !27
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 60
  store float 1.000000e+00, ptr %i.b, align 4, !tbaa !31
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 0, ptr %i.c, align 4, !tbaa !28
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  store i32 2, ptr %i.d, align 8, !tbaa !33
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !34   ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !35   ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call noundef ptr %i.k(ptr noundef nonnull align 8 dereferenceable(8) %i.h)
  %i.m = load ptr, ptr %i.e, align 8, !tbaa !34
  %i.n = load ptr, ptr %i.f, align 8, !tbaa !8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 64
  %i.p = load ptr, ptr %i.o, align 8
  tail call void %i.p(ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef %i.l, ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef %i.m)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  store i32 1, ptr %i.d, align 8, !tbaa !33
  ret void
}

; Function Attrs: uwtable
define dso_local void @_ZN25btContinuousDynamicsWorld19updateTemporalAabbsEf(ptr noundef nonnull readonly align 8 captures(none) dereferenceable(372) %0, float noundef %1) local_unnamed_addr #5 align 2 {
bb.a:
  %2 = alloca %class.btVector3, align 8           ; 8 uses
  %3 = alloca %class.btVector3, align 16          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !36   ; 2 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %4 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %5 = insertelement <2 x float> poison, float %1, i64 0
  %6 = shufflevector <2 x float> %5, <2 x float> poison, <2 x i32> zeroinitializer
  br label %bb.b

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !35   ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !34
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = load ptr, ptr %i.m, align 8
  call void %i.n(ptr noundef nonnull align 8 dereferenceable(8) %i.i, ptr noundef %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #8
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #8
  ret void

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %i.o = phi i32 [ %i.b, %.lr.ph ], [ %i.aq, %bb.d ]
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %i.p = load ptr, ptr %i.d, align 8, !tbaa !37
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.p, i64 %indvars.iv
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !38   ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 256
  %i.t = load i32, ptr %i.s, align 8, !tbaa !40
  %i.u = icmp ne i32 %i.t, 2
  %.not54 = icmp eq ptr %i.r, null
  %.not = or i1 %.not54, %i.u
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 200
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !47   ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.y = load ptr, ptr %i.w, align 8, !tbaa !8
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load ptr, ptr %i.z, align 8
  call void %i.aa(ptr noundef nonnull align 8 dereferenceable(24) %i.w, ptr noundef nonnull align 4 dereferenceable(64) %i.x, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.r, i64 328
  %i.ac = load float, ptr %4, align 8, !tbaa !48  ; 2 uses
  %7 = load float, ptr %i.e, align 8, !tbaa !48   ; 2 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.r, i64 336
  %9 = load float, ptr %8, align 8, !tbaa !48
  %10 = fmul float %1, %9                         ; 3 uses
  %11 = fcmp ogt float %10, 0.000000e+00          ; 2 uses
  %i.ad = fadd float %i.ac, %10
  %12 = fadd float %7, %10
  %.053 = select i1 %11, float %7, float %12
  %.050 = select i1 %11, float %i.ad, float %i.ac
  store float 0.000000e+00, ptr %.sroa.614.0..sroa_idx, align 4, !tbaa !49
  %13 = load <2 x float>, ptr %2, align 8, !tbaa !48 ; 2 uses
  %i.ae = load <2 x float>, ptr %i.ab, align 8, !tbaa !48
  %14 = fmul <2 x float> %6, %i.ae                ; 3 uses
  %15 = fcmp ogt <2 x float> %14, zeroinitializer ; 2 uses
  %i.af = fadd <2 x float> %13, %14
  %16 = select <2 x i1> %15, <2 x float> %13, <2 x float> %i.af
  store <2 x float> %16, ptr %2, align 8, !tbaa !48
  store float %.053, ptr %i.e, align 8, !tbaa !48
  %17 = load <2 x float>, ptr %3, align 16, !tbaa !48 ; 2 uses
  %18 = fadd <2 x float> %17, %14
  %19 = select <2 x i1> %15, <2 x float> %18, <2 x float> %17
  %i.ag = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %.050, i64 2
  %i.ah = shufflevector <2 x float> %19, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %20 = shufflevector <4 x float> %i.ah, <4 x float> %i.ag, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ai = fadd <4 x float> %20, zeroinitializer
  store <4 x float> %i.ai, ptr %3, align 16, !tbaa !49
  %i.aj = load ptr, ptr %i.f, align 8, !tbaa !35  ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 192
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !50
  %i.am = load ptr, ptr %i.g, align 8, !tbaa !34
  %i.an = load ptr, ptr %i.aj, align 8, !tbaa !8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  call void %i.ap(ptr noundef nonnull align 8 dereferenceable(8) %i.aj, ptr noundef %i.al, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(16) %3, ptr noundef %i.am)
  %.pre = load i32, ptr %i.a, align 4, !tbaa !36
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.aq = phi i32 [ %.pre, %bb.c ], [ %i.o, %bb.b ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %bb.b, label %._crit_edge
}

declare void @_ZN16btCollisionWorld11updateAabbsEv(ptr noundef nonnull align 8 dereferenceable(129)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN16btCollisionWorld14setDebugDrawerEP12btIDebugDraw(ptr noundef nonnull align 8 dereferenceable(129) %0, ptr noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %1, ptr %i.a, align 8, !tbaa !51
  ret void
}

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef ptr @_ZN16btCollisionWorld14getDebugDrawerEv(ptr noundef nonnull align 8 dereferenceable(129) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !51
  ret ptr %i.b
}

declare void @_ZN23btDiscreteDynamicsWorld18addCollisionObjectEP17btCollisionObjectss(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef, i16 noundef signext, i16 noundef signext) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld21removeCollisionObjectEP17btCollisionObject(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN16btCollisionWorld33performDiscreteCollisionDetectionEv(ptr noundef nonnull align 8 dereferenceable(129)) unnamed_addr #1

declare noundef i32 @_ZN23btDiscreteDynamicsWorld14stepSimulationEfif(ptr noundef nonnull align 8 dereferenceable(372), float noundef, i32 noundef, float noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld14debugDrawWorldEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld13addConstraintEP17btTypedConstraintb(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef, i1 noundef zeroext) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld16removeConstraintEP17btTypedConstraint(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld9addActionEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld12removeActionEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld10setGravityERK9btVector3(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef nonnull align 4 dereferenceable(16)) unnamed_addr #1

declare { <2 x float>, <2 x float> } @_ZNK23btDiscreteDynamicsWorld10getGravityEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld23synchronizeMotionStatesEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBody(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld15removeRigidBodyEP11btRigidBody(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld19setConstraintSolverEP18btConstraintSolver(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare noundef ptr @_ZN23btDiscreteDynamicsWorld19getConstraintSolverEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare noundef i32 @_ZNK23btDiscreteDynamicsWorld17getNumConstraintsEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare noundef ptr @_ZN23btDiscreteDynamicsWorld13getConstraintEi(ptr noundef nonnull align 8 dereferenceable(372), i32 noundef) unnamed_addr #1

declare noundef ptr @_ZNK23btDiscreteDynamicsWorld13getConstraintEi(ptr noundef nonnull align 8 dereferenceable(372), i32 noundef) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local noundef i32 @_ZNK25btContinuousDynamicsWorld12getWorldTypeEv(ptr noundef nonnull align 8 dereferenceable(372) %0) unnamed_addr #6 comdat align 2 {
bb.a:
  ret i32 3
}

declare void @_ZN23btDiscreteDynamicsWorld11clearForcesEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld10addVehicleEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld13removeVehicleEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld12addCharacterEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld15removeCharacterEP17btActionInterface(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld25predictUnconstraintMotionEf(ptr noundef nonnull align 8 dereferenceable(372), float noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld19integrateTransformsEf(ptr noundef nonnull align 8 dereferenceable(372), float noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld26calculateSimulationIslandsEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld16solveConstraintsER19btContactSolverInfo(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef nonnull align 4 dereferenceable(68)) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld18saveKinematicStateEf(ptr noundef nonnull align 8 dereferenceable(372), float noundef) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld12addRigidBodyEP11btRigidBodyss(ptr noundef nonnull align 8 dereferenceable(372), ptr noundef, i16 noundef signext, i16 noundef signext) unnamed_addr #1

declare void @_ZN23btDiscreteDynamicsWorld12applyGravityEv(ptr noundef nonnull align 8 dereferenceable(372)) unnamed_addr #1

; Function Attrs: nounwind uwtable
define linkonce_odr dso_local void @_ZN23btDiscreteDynamicsWorld11setNumTasksEi(ptr noundef nonnull align 8 dereferenceable(372) %0, i32 noundef %1) unnamed_addr #6 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: uwtable
define linkonce_odr dso_local void @_ZN23btDiscreteDynamicsWorld14updateVehiclesEf(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %1) unnamed_addr #0 comdat align 2 {
bb.a:
  tail call void @_ZN23btDiscreteDynamicsWorld13updateActionsEf(ptr noundef nonnull align 8 dereferenceable(372) %0, float noundef %1)
  ret void
}

attributes #0 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { uwtable "min-legal-vector-width"="64" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { builtin nounwind }
attributes #8 = { nounwind }

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
!10 = !{!11, !17, i64 144}
!11 = !{!"_ZTS15btDynamicsWorld", !12, i64 0, !17, i64 136, !17, i64 144, !17, i64 152, !25, i64 160}
!12 = !{!"_ZTS16btCollisionWorld", !13, i64 8, !19, i64 40, !20, i64 48, !23, i64 104, !24, i64 112, !22, i64 120, !18, i64 128}
!13 = !{!"_ZTS20btAlignedObjectArrayIP17btCollisionObjectE", !14, i64 0, !5, i64 4, !5, i64 8, !15, i64 16, !18, i64 24}
!14 = !{!"_ZTS18btAlignedAllocatorIP17btCollisionObjectLj16EE"}
!15 = !{!"p2 _ZTS17btCollisionObject", !16, i64 0}
!16 = !{!"any p2 pointer", !17, i64 0}
!17 = !{!"any pointer", !6, i64 0}
!18 = !{!"bool", !6, i64 0}
!19 = !{!"p1 _ZTS12btDispatcher", !17, i64 0}
!20 = !{!"_ZTS16btDispatcherInfo", !21, i64 0, !5, i64 4, !5, i64 8, !21, i64 12, !18, i64 16, !22, i64 24, !18, i64 32, !18, i64 33, !18, i64 34, !21, i64 36, !18, i64 40, !21, i64 44, !23, i64 48}
!21 = !{!"float", !6, i64 0}
!22 = !{!"p1 _ZTS12btIDebugDraw", !17, i64 0}
!23 = !{!"p1 _ZTS12btStackAlloc", !17, i64 0}
!24 = !{!"p1 _ZTS21btBroadphaseInterface", !17, i64 0}
!25 = !{!"_ZTS19btContactSolverInfo", !26, i64 0}
!26 = !{!"_ZTS23btContactSolverInfoData", !21, i64 0, !21, i64 4, !21, i64 8, !21, i64 12, !21, i64 16, !5, i64 20, !21, i64 24, !21, i64 28, !21, i64 32, !21, i64 36, !21, i64 40, !5, i64 44, !21, i64 48, !21, i64 52, !21, i64 56, !5, i64 60, !5, i64 64}
!27 = !{!20, !21, i64 0}
!28 = !{!20, !5, i64 4}
!29 = !{!20, !22, i64 24}
!30 = !{!26, !21, i64 12}
!31 = !{!20, !21, i64 12}
!32 = !{!11, !17, i64 136}
!33 = !{!20, !5, i64 8}
!34 = !{!12, !19, i64 40}
!35 = !{!12, !24, i64 112}
!36 = !{!13, !5, i64 4}
!37 = !{!13, !15, i64 16}
!38 = !{!39, !39, i64 0}
!39 = !{!"p1 _ZTS17btCollisionObject", !17, i64 0}
!40 = !{!41, !5, i64 256}
!41 = !{!"_ZTS17btCollisionObject", !42, i64 8, !42, i64 72, !44, i64 136, !44, i64 152, !44, i64 168, !18, i64 184, !21, i64 188, !45, i64 192, !46, i64 200, !46, i64 208, !5, i64 216, !5, i64 220, !5, i64 224, !5, i64 228, !21, i64 232, !21, i64 236, !21, i64 240, !17, i64 248, !5, i64 256, !21, i64 260, !21, i64 264, !21, i64 268, !18, i64 272, !6, i64 273}
!42 = !{!"_ZTS11btTransform", !43, i64 0, !44, i64 48}
!43 = !{!"_ZTS11btMatrix3x3", !6, i64 0}
!44 = !{!"_ZTS9btVector3", !6, i64 0}
!45 = !{!"p1 _ZTS17btBroadphaseProxy", !17, i64 0}
!46 = !{!"p1 _ZTS16btCollisionShape", !17, i64 0}
!47 = !{!41, !46, i64 200}
!48 = !{!21, !21, i64 0}
!49 = !{!6, !6, i64 0}
!50 = !{!41, !45, i64 192}
!51 = !{!12, !22, i64 120}
end_hunk_0
