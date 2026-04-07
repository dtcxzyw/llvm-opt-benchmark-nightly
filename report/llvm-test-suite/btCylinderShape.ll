begin_hunk_0_@_ZNK15btCylinderShape21calculateLocalInertiaEfR9btVector3:bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef float %i.h(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef float %i.l(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25
  %i.n = shufflevector <2 x float> %.sroa.03.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %.sroa.67.8.vec.extract.i = extractelement <2 x float> %.sroa.67.0.copyload.i, i64 0
  %i.o = fadd float %.sroa.67.8.vec.extract.i, %i.m
end_hunk_0
begin_hunk_1_@_ZNK15btCylinderShape9getRadiusEv:bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef float %i.h(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25 ; 0 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef float %i.l(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25 ; 0 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %i.n = fadd float %.sroa.03.0.vec.extract.i, %i.e
  ret float %i.n
end_hunk_1
begin_hunk_2_@_ZNK16btCylinderShapeX9getRadiusEv:bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25 ; 0 uses
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef float %i.h(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef float %i.l(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25 ; 0 uses
  %.sroa.03.4.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 1
  %i.n = fadd float %.sroa.03.4.vec.extract.i, %i.i
  ret float %i.n
end_hunk_2
begin_hunk_3_@_ZNK16btCylinderShapeZ9getRadiusEv:bb.a
  %i.b = load ptr, ptr %0, align 8, !tbaa !8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef float %i.d(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25
  %i.f = load ptr, ptr %0, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 88
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef float %i.h(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25 ; 0 uses
  %i.j = load ptr, ptr %0, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 88
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef float %i.l(ptr noundef nonnull align 8 dereferenceable(68) %0), !inline_history !25 ; 0 uses
  %.sroa.03.0.vec.extract.i = extractelement <2 x float> %.sroa.03.0.copyload.i, i64 0
  %i.n = fadd float %.sroa.03.0.vec.extract.i, %i.e
  ret float %i.n
end_hunk_3
begin_hunk_4_@llvm.fmuladd.v2f32
!22 = !{!23}
!23 = distinct !{!23, !24, !"_ZNK11btMatrix3x38absoluteEv: argument 0"}
!24 = distinct !{!24, !"_ZNK11btMatrix3x38absoluteEv"}
!25 = distinct !{null}
end_hunk_4
