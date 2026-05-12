inline.NumInlined: 110
inline.NumDeleted: 30
begin_hunk_0_@_ZN28btTriangleConvexcastCallback15processTriangleEP9btVector3ii:bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 56
  store float %i.g, ptr %i.h, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 328 ; 2 uses
  %9 = load i8, ptr %i.i, align 4
  %10 = and i8 %9, -16
  store i8 %10, ptr %i.i, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTV30btGjkEpaPenetrationDepthSolver, i64 16), ptr %6, align 8, !tbaa !8
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
end_hunk_0
