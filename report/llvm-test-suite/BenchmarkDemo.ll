inline.NumInlined: 797
inline.NumDeleted: 176
begin_hunk_0_@_ZN13BenchmarkDemo11initPhysicsEv:bb.a
  %5 = alloca %class.btVector3, align 16          ; 4 uses
  %6 = alloca %class.btVector3, align 16          ; 5 uses
  %7 = alloca %"struct.btRigidBody::btRigidBodyConstructionInfo", align 8 ; 17 uses
  %i.a = tail call noalias noundef nonnull dereferenceable(176) ptr @_Znwm(i64 noundef 176) #20 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #21
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(44) %2, i8 0, i64 24, i1 false)
end_hunk_0
begin_hunk_1_@_ZN13BenchmarkDemo11initPhysicsEv:bb.a
          to label %bb.b unwind label %bb.q

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  store ptr %i.a, ptr %i.d, align 8, !tbaa !34
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #21
  %i.e = call noalias noundef nonnull dereferenceable(10632) ptr @_Znwm(i64 noundef 10632) #20 ; 3 uses
  invoke void @_ZN21btCollisionDispatcherC1EP24btCollisionConfiguration(ptr noundef nonnull align 8 dereferenceable(10632) %i.e, ptr noundef nonnull %i.a)
          to label %bb.c unwind label %bb.r

bb.c:                                             ; preds = %bb.b
end_hunk_1
begin_hunk_2_@_ZN13BenchmarkDemo11initPhysicsEv:bb.a
bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store ptr %i.h, ptr %i.i, align 8, !tbaa !38
  %i.j = call noalias noundef nonnull dereferenceable(240) ptr @_Znwm(i64 noundef 240) #20 ; 4 uses
  invoke void @_ZN35btSequentialImpulseConstraintSolverC1Ev(ptr noundef nonnull align 8 dereferenceable(240) %i.j)
          to label %bb.f unwind label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %i.j, ptr %i.k, align 8, !tbaa !39
  %i.l = call noalias noundef nonnull dereferenceable(376) ptr @_Znwm(i64 noundef 376) #20 ; 7 uses
  %i.m = load ptr, ptr %i.f, align 8, !tbaa !35
  %i.n = load ptr, ptr %i.i, align 8, !tbaa !38
  %i.o = load ptr, ptr %i.d, align 8, !tbaa !34
  invoke void @_ZN23btDiscreteDynamicsWorldC1EP12btDispatcherP21btBroadphaseInterfaceP18btConstraintSolverP24btCollisionConfiguration(ptr noundef nonnull align 8 dereferenceable(372) %i.l, ptr noundef %i.m, ptr noundef %i.n, ptr noundef nonnull %i.j, ptr noundef %i.o)
          to label %bb.g unwind label %bb.v

bb.g:                                             ; preds = %bb.f
end_hunk_2
