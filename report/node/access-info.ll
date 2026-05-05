inline.NumInlined: 2157
inline.NumDeleted: 1011
begin_hunk_0_@_ZNK2v88internal8compiler17AccessInfoFactory26LookupSpecialFieldAccessorENS1_6MapRefENS1_7NameRefE:bb.a
  %.sroa.011.0.copyload13 = load i64, ptr %i.dy, align 8
  br label %_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEC2ESt16initializer_listIS5_EPNS0_4ZoneE.exit

_ZN2v88internal10ZoneVectorIPKNS0_8compiler21CompilationDependencyEEC2ESt16initializer_listIS5_EPNS0_4ZoneE.exit: ; preds = %bb.n, %bb.q, %bb.p, %bb.l
  %.sroa.010.0 = phi i8 [ 1, %bb.n ], [ 1, %bb.p ], [ 4, %bb.q ], [ 4, %bb.l ]
  %.sroa.011.0 = phi i64 [ %.sroa.011.0.copyload, %bb.n ], [ %.sroa.011.0.copyload12, %bb.p ], [ %.sroa.011.0.copyload13, %bb.q ], [ 53661925375, %bb.l ]
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 16
end_hunk_0
