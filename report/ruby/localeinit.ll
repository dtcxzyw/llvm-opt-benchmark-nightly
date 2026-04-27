inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
; Function Attrs: nounwind sspstrong uwtable
define dso_local i64 @rb_locale_charmap(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call nonnull ptr @nl_langinfo(i32 noundef 14) #4
  %i.b = tail call i64 @rb_usascii_str_new_cstr(ptr noundef nonnull %i.a) #4, !callees !11, !inline_history !12
  ret i64 %i.b
}

end_hunk_0
begin_hunk_1_@rb_usascii_str_new_cstr
; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @rb_locale_charmap_index() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call nonnull ptr @nl_langinfo(i32 noundef 14) #4
  %i.b = tail call i32 @rb_enc_find_index(ptr noundef nonnull %i.a) #4
  ret i32 %i.b
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i32 @Init_enc_set_filesystem_encoding() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @rb_default_external_encoding() #4
  %i.b = tail call i32 @rb_enc_to_index(ptr noundef %i.a) #5
  ret i32 %i.b
}

end_hunk_1
begin_hunk_2_@rb_default_external_encoding
; Function Attrs: nounwind
declare ptr @nl_langinfo(i32 noundef) local_unnamed_addr #3

declare i32 @rb_enc_find_index(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
end_hunk_2
