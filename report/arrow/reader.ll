begin_hunk_0
  br i1 %i.b, label %_ZN5arrow6StatusaSEOS0_.exit, label %bb.c, !prof !55

_ZN5arrow6StatusaSEOS0_.exit:                     ; preds = %bb.a
  store ptr null, ptr %1, align 8, !tbaa !52
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #38
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2645)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
end_hunk_0
