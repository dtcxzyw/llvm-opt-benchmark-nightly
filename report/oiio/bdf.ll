inline.NumInlined: 34
inline.NumDeleted: 11
begin_hunk_0_@bdf_list_split_:bb.a
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %0, align 8, !tbaa !68     ; 2 uses
  store <4 x ptr> <ptr @empty, ptr @empty, ptr @empty, ptr @empty>, ptr %i.g, align 8, !tbaa !135
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @empty, ptr %i.h, align 8, !tbaa !135
  br label %bb.c
end_hunk_0
