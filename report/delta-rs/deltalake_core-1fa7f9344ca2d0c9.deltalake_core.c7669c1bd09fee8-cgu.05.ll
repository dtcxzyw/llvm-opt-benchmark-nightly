inline.NumInlined: 6802
inline.NumDeleted: 1969
begin_hunk_0_@_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable14driftsort_mainNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNCINvMNtCs6Po7BT7Nknu_5alloc5sliceSBZ_7sort_byNCNCNvNtNtB17_10operations8optimize21build_compaction_plan0s0_0E0INtNtB29_3vec3VecBZ_EEB17_:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = lshr i64 %1, 1
  %i.c = sub nsw i64 %1, %i.b
  %.sroa.0.0.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %1, i64 range(i64 0, -9223372036854775808) 29411)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.c)
  %.sroa.0.0.i9 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i8, i64 48)
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCsbvkFyIu7lgC_4core5slice4sort6stable14driftsort_mainxNvYxNtNtB8_3cmp10PartialOrd2ltINtNtCs6Po7BT7Nknu_5alloc3vec3VecxEECs14kWLkQVSKO_14deltalake_core:bb.a
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [4096 x i8], align 8              ; 3 uses
  %i.c = lshr i64 %1, 1
  %i.d = sub nsw i64 %1, %i.c
  %.sroa.0.0.i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 %1, i64 range(i64 0, -9223372036854775808) 1000000)
  %.sroa.0.0.i8 = tail call noundef i64 @llvm.umax.i64(i64 %.sroa.0.0.i, i64 %i.d) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = icmp ugt i64 %.sroa.0.0.i8, 512          ; 3 uses
  br i1 %i.e, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
end_hunk_1
