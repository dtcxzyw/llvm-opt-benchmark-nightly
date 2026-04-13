inline.NumInlined: 29
inline.NumDeleted: 20
begin_hunk_0_@_ZNK13btSphereShape21calculateLocalInertiaEfR9btVector3:bb.a
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef float %i.i(ptr noundef nonnull align 8 dereferenceable(64) %0)
  %i.k = fmul float %i.f, %i.j
  %3 = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.k, i64 0
  %i.l = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  store <4 x float> %i.l, ptr %2, align 4, !tbaa !8
  ret void
}
end_hunk_0
