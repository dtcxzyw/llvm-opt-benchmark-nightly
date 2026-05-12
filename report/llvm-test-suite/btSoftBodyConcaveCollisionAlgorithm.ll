inline.NumInlined: 432
inline.NumDeleted: 156
begin_hunk_0_@_ZN26btSoftBodyTriangleCallback15processTriangleEP9btVector3ii:bb.a
  %i.gb = shl i32 %2, 21
  %i.gc = or i32 %i.gb, %3                        ; 4 uses
  store i32 %i.gc, ptr %11, align 8, !tbaa !140
  %i.gd = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 2 uses
  store ptr null, ptr %i.gd, align 8, !tbaa !121
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #13
  store i32 %i.gc, ptr %12, align 4, !tbaa !141
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 88
end_hunk_0
begin_hunk_1_@_ZZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultEN31LocalTriangleSphereCastCallback15processTriangleEP9btVector3ii:bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %7, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, ptr noundef nonnull align 4 dereferenceable(16) %i.p, i64 16, i1 false), !tbaa.struct !196
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #13
  %i.u = getelementptr inbounds nuw i8, ptr %8, i64 328 ; 2 uses
  %10 = load i8, ptr %i.u, align 4
  %11 = and i8 %10, -16
  store i8 %11, ptr %i.u, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #13
  invoke void @_ZN22btSubsimplexConvexCastC1EPK13btConvexShapeS2_P22btVoronoiSimplexSolver(ptr noundef nonnull align 8 dereferenceable(32) %9, ptr noundef nonnull %6, ptr noundef nonnull %7, ptr noundef nonnull %8)
          to label %bb.c unwind label %bb.h
end_hunk_1
