begin_hunk_0
  br i1 %i.b, label %_ZN5arrow6StatusaSEOS0_.exit, label %bb.i, !prof !52

_ZN5arrow6StatusaSEOS0_.exit:                     ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !851)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1
  br i1 %i.b, label %_ZN5arrow6StatusaSEOS0_.exit, label %bb.j, !prof !52

_ZN5arrow6StatusaSEOS0_.exit:                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !47, !noalias !855
end_hunk_1
begin_hunk_2
  br i1 %i.b, label %_ZN5arrow6StatusaSEOS0_.exit, label %bb.j, !prof !52

_ZN5arrow6StatusaSEOS0_.exit:                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !47, !noalias !871
end_hunk_2
begin_hunk_3
  br i1 %i.b, label %_ZN5arrow6StatusaSEOS0_.exit, label %bb.j, !prof !52

_ZN5arrow6StatusaSEOS0_.exit:                     ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load <2 x ptr>, ptr %i.c, align 8, !tbaa !47, !noalias !877
end_hunk_3
