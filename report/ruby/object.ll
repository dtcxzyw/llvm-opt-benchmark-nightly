inline.NumInlined: 440
inline.NumDeleted: 99
begin_hunk_0_@rb_str_to_dbl_raise:bb.a
  br label %ruby_nonempty_memcpy.exit

ruby_nonempty_memcpy.exit:                        ; preds = %bb.k, %bb.l
  %i.x = phi ptr [ %i.v, %bb.k ], [ %i.w, %bb.l ] ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 %i.n
  store i8 0, ptr %i.y, align 1, !tbaa !34
  %.pre = load i64, ptr %i.a, align 8, !tbaa !11
end_hunk_0
