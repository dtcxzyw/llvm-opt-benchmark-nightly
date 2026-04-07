begin_hunk_0_@_ZNK22btGImpactMeshShapePart15lockChildShapesEv:bb.a
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull %i.i, ptr noundef nonnull align 4 dereferenceable(4) %i.j, ptr noundef nonnull align 4 dereferenceable(4) %i.k, ptr noundef nonnull align 4 dereferenceable(4) %i.l, ptr noundef nonnull %i.m, ptr noundef nonnull align 4 dereferenceable(4) %i.n, ptr noundef nonnull align 4 dereferenceable(4) %i.o, ptr noundef nonnull align 4 dereferenceable(4) %i.p, i32 noundef %i.r)
  br label %_ZN22btGImpactMeshShapePart23TrimeshPrimitiveManager4lockEv.exit

_ZN22btGImpactMeshShapePart23TrimeshPrimitiveManager4lockEv.exit: ; preds = %bb.b, %bb.c
end_hunk_0
begin_hunk_1_@_ZNK22btGImpactMeshShapePart17unlockChildShapesEv:bb.a
  %i.l = load ptr, ptr %i.i, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.n = load ptr, ptr %i.m, align 8
  tail call void %i.n(ptr noundef nonnull align 8 dereferenceable(24) %i.i, i32 noundef %i.k)
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr null, ptr %i.o, align 8, !tbaa !42
  br label %.sink.split.i
end_hunk_1
begin_hunk_2_@_ZN18btGImpactMeshShapeD2Ev:bb.a
          to label %bb.h unwind label %bb.e

bb.h:                                             ; preds = %._crit_edge, %bb.g
  store i8 1, ptr %i.p, align 8, !tbaa !100
  store ptr null, ptr %i.n, align 8, !tbaa !50
  store i32 0, ptr %i.a, align 4, !tbaa !46
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.s, align 8, !tbaa !101
  store ptr getelementptr inbounds nuw inrange(-16, 256) (i8, ptr @_ZTV23btGImpactShapeInterface, i64 16), ptr %0, align 8, !tbaa !8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !77   ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN18btGImpactMeshShape13calcLocalAABBEv:bb.a
  %i.r = getelementptr inbounds [8 x i8], ptr %i.q, i64 %indvars.iv.next
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !51   ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 60 ; 2 uses
  %i.u = load i8, ptr %i.t, align 4, !tbaa !79, !range !76, !noundef !102
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %bb.c, label %_ZN23btGImpactShapeInterface11updateBoundEv.exit

end_hunk_3
begin_hunk_4_@_ZN18btGImpactMeshShape13calcLocalAABBEv:bb.a
  %i.w = load ptr, ptr %i.s, align 8, !tbaa !8
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 104
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.y(ptr noundef nonnull align 8 dereferenceable(176) %i.s)
  store i8 0, ptr %i.t, align 4, !tbaa !79
  %.pre6 = load ptr, ptr %i.i, align 8, !tbaa !50 ; 2 uses
  %.pre7 = load float, ptr %i.a, align 4, !tbaa !23
end_hunk_4
begin_hunk_5_@_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx
define linkonce_odr dso_local void @_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx(ptr noundef nonnull align 8 dereferenceable(92) %0, i32 noundef %1, ptr noundef nonnull align 8 dereferenceable(112) %2) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !103
  %i.c = icmp eq i32 %i.b, 3
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !104
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.g = load i32, ptr %i.f, align 8, !tbaa !105
  %i.h = mul nsw i32 %i.g, %1
  %i.i = sext i32 %i.h to i64
  %i.j = getelementptr inbounds i8, ptr %i.e, i64 %i.i ; 6 uses
end_hunk_5
begin_hunk_6_@_ZNK22btGImpactMeshShapePart23TrimeshPrimitiveManager19get_bullet_triangleEiR17btTriangleShapeEx:bb.a
  %i.es = getelementptr inbounds nuw i8, ptr %2, i64 104
  store float %.sink.i7, ptr %i.es, align 8, !tbaa !23
  %i.et = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eu = load float, ptr %i.et, align 8, !tbaa !106
  %i.ev = load ptr, ptr %2, align 8, !tbaa !8
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 80
  %i.ex = load ptr, ptr %i.ew, align 8
end_hunk_6
begin_hunk_7_@llvm.fabs.v2f32
!97 = !{!35, !5, i64 44}
!98 = !{!35, !37, i64 16}
!99 = !{!35, !5, i64 40}
!100 = !{!47, !16, i64 24}
!101 = !{!47, !5, i64 8}
!102 = !{}
!103 = !{!35, !40, i64 88}
!104 = !{!35, !39, i64 72}
!105 = !{!35, !5, i64 80}
!106 = !{!35, !24, i64 8}
end_hunk_7
