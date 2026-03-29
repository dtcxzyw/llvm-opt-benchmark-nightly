begin_hunk_0
  store double %i.cu, ptr %i.ci, align 8, !tbaa !11, !alias.scope !55, !noalias !57
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.cv = extractelement <2 x i1> %i.cq, i64 1
  br i1 %i.cv, label %pred.store.if103, label %pred.store.continue104

end_hunk_0
begin_hunk_1
  store double %i.da, ptr %i.cx, align 8, !tbaa !11, !alias.scope !55, !noalias !57
  br label %pred.store.continue104

pred.store.continue104:                           ; preds = %pred.store.if103, %pred.store.continue
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.db = icmp eq i64 %index.next, %n.vec
  br i1 %i.db, label %middle.block, label %vector.body, !llvm.loop !60
end_hunk_1
