inline.NumInlined: 2019
inline.NumDeleted: 419
begin_hunk_0_@_ZNK4llvh23ItaniumPartialDemangler21getFunctionParametersEPcPm:bb.a
  br i1 %.not.i.i, label %_ZN12OutputStreampLEc.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = shl nuw nsw i64 %i.m, 1
  %spec.store.select.i.i = tail call i64 @llvm.umax.i64(i64 %i.p, i64 1) ; 2 uses
  store i64 %spec.store.select.i.i, ptr %i.o, align 8
  %i.q = tail call ptr @realloc(ptr noundef nonnull %1, i64 noundef %spec.store.select.i.i) #23 ; 3 uses
  store ptr %i.q, ptr %3, align 8, !tbaa !45
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.f, label %_ZN12OutputStreampLEc.exit
end_hunk_0
