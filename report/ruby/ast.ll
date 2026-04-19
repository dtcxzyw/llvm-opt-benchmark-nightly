inline.NumInlined: 226
inline.NumDeleted: 46
begin_hunk_0_@node_children:bb.a
  br label %bb.ek

bb.ek:                                            ; preds = %bb.ej, %bb.ei, %bb.ef
  %.0401.a = phi i64 [ 4, %bb.ef ], [ %i.pg, %bb.ei ], [ %i.pg, %bb.ej ]
  %.0400 = phi i64 [ 4, %bb.ef ], [ 4, %bb.ei ], [ %i.pj, %bb.ej ]
  %i.pk = tail call i64 @rb_node_dstr_string_val(ptr noundef nonnull %1) #10
  %i.pl = tail call i64 (i64, ...) @rb_ary_new_from_args(i64 noundef 3, i64 noundef %i.pk, i64 noundef %.0401.a, i64 noundef %.0400) #10
  br label %bb.ic

bb.el:                                            ; preds = %bb.a
end_hunk_0
