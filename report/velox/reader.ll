begin_hunk_0
  br i1 %i.b, label %_ZN5arrow6StatusaSEOS0_.exit, label %bb.c, !prof !32

_ZN5arrow6StatusaSEOS0_.exit:                     ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !29
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3247)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
end_hunk_0
