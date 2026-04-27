inline.NumInlined: 2891
inline.NumDeleted: 1224
begin_hunk_0_@_ZNK5arrow11SimpleTable5SliceEll:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #28
  br label %bb.ai

_ZNSt12__shared_ptrIN5arrow6SchemaELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %bb.k, %bb.j, %.noexc
  %.sink.i.i.i.i.i.i.i.i = phi i64 [ 0, %bb.j ], [ %i.bi, %bb.k ], [ %.012.lcssa, %.noexc ]
  %i.cv = getelementptr inbounds nuw i8, ptr %i.av, i64 40
  store i64 %.sink.i.i.i.i.i.i.i.i, ptr %i.cv, align 8, !tbaa !103, !noalias !694
end_hunk_0
