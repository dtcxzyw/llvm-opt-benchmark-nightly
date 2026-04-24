inline.NumInlined: 449
inline.NumDeleted: 83
begin_hunk_0_@_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_S3_PfRj:bb.a
  br label %_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit

_ZN12gjkepa2_impl3GJK13projectoriginERK9btVector3S3_PfRj.exit: ; preds = %bb.g, %bb.f, %bb.d, %bb.b
  %.not49 = phi i32 [ 2, %bb.g ], [ 0, %bb.f ], [ 2, %bb.d ], [ 0, %bb.b ]
  %.2133 = phi i32 [ 3, %bb.g ], [ 1, %bb.f ], [ 2, %bb.d ], [ 0, %bb.b ] ; 2 uses
  %.sroa.0112.2 = phi float [ %i.bs, %bb.g ], [ 1.000000e+00, %bb.f ], [ 0.000000e+00, %bb.d ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.sroa.7.2 = phi float [ %i.bj, %bb.g ], [ 0.000000e+00, %bb.f ], [ 1.000000e+00, %bb.d ], [ 0.000000e+00, %bb.b ] ; 2 uses
  %.1.i = phi float [ %i.cb, %bb.g ], [ %i.br, %bb.f ], [ %i.bn, %bb.d ], [ -1.000000e+00, %bb.b ]
  %5 = and i32 %.2133, 1
  %6 = or disjoint i32 %5, %.not49
  store i32 %6, ptr %4, align 4, !tbaa !4
  store float %.sroa.0112.2, ptr %3, align 4, !tbaa !24
  %i.cc = getelementptr inbounds nuw i8, ptr %3, i64 4
  store float %.sroa.7.2, ptr %i.cc, align 4, !tbaa !24
end_hunk_0
