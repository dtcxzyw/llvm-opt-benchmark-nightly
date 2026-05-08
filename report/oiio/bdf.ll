inline.NumInlined: 34
inline.NumDeleted: 11
begin_hunk_0_@bdf_list_split_:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !68     ; 5 uses
  store ptr @empty, ptr %i.g, align 8, !tbaa !135
  %4 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @empty, ptr %4, align 8, !tbaa !135
  %5 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr @empty, ptr %5, align 8, !tbaa !135
  %6 = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @empty, ptr %6, align 8, !tbaa !135
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @empty, ptr %i.h, align 8, !tbaa !135
  br label %bb.c
end_hunk_0
