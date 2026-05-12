begin_hunk_0
; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @AllocPPS() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(240) ptr @calloc(i64 noundef 240, i64 noundef 1) #6 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_0
begin_hunk_1_@AllocPPS:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %0 = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr null, ptr %0, align 8, !tbaa !8
  ret ptr %i.a
}

end_hunk_1
