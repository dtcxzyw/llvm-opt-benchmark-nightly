inline.NumInlined: 364
inline.NumDeleted: 88
begin_hunk_0_@rb_error_frozen_object

declare void @rb_str_modify(i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #1

declare i64 @rb_hash_size_num(i64 noundef) local_unnamed_addr #1
end_hunk_0
begin_hunk_1_@configure_state_i:bb.a
}

; Function Attrs: cold noreturn
declare void @rb_unexpected_type(i64 noundef, i32 noundef) local_unnamed_addr #11

declare i64 @rb_convert_type(i64 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

end_hunk_1
begin_hunk_2_@rb_raise
declare void @rb_raise(i64 noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #12

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #13

declare i64 @rb_str_freeze(i64 noundef) local_unnamed_addr #1

end_hunk_2
begin_hunk_3_@generate_json_fixnum:bb.a
  br label %fbuffer_append_long.exit

fbuffer_append_long.exit:                         ; preds = %bb.e, %bb.h, %bb.i, %bb.l, %bb.m, %bb.ab
  %.0.i.i = phi ptr [ %i.u, %bb.e ], [ %i.al, %bb.h ], [ %i.be, %bb.i ], [ %i.cg, %bb.l ], [ %i.dl, %bb.m ], [ %i.jy, %bb.ab ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.i.i) ]
  %i.jz = load ptr, ptr %i.o, align 8, !tbaa !58
  %i.ka = ptrtoint ptr %.0.i.i to i64
  %i.kb = ptrtoint ptr %i.jz to i64
end_hunk_3
begin_hunk_4_@raw_generate_json_string:bb.a
}

; Function Attrs: noreturn nounwind uwtable
define internal void @raise_generator_error(i64 noundef %0, ptr noundef %1, ...) unnamed_addr #14 {
bb.a:
  %2 = alloca [1 x %struct.__va_list_tag], align 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
end_hunk_4
begin_hunk_5_@generate_json_fragment:bb.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc i64 @rb_class_of(i64 noundef %0) unnamed_addr #15 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = and i64 %0, 7
end_hunk_5
begin_hunk_6_@fbuffer_realloc:bb.a
}

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #16

; Function Attrs: allocsize(1,2)
declare nonnull ptr @ruby_xrealloc2(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare double @rb_float_value(i64 noundef) local_unnamed_addr #18

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: nounwind uwtable
define internal fastcc void @fbuffer_append_str(ptr noundef captures(none) %0, i64 noundef %1) unnamed_addr #0 {
end_hunk_6
begin_hunk_7_@fbuffer_append_str_repeat:bb.a
}

; Function Attrs: noinline nounwind uwtable
define internal fastcc void @json_inspect_hash_with_mixed_keys(ptr noundef captures(none) %0) unnamed_addr #20 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 21 ; 2 uses
  %i.b = load i8, ptr %i.a, align 1, !tbaa !97, !range !48, !noundef !49
end_hunk_7
begin_hunk_8_@convert_string_subclass:bb.a
}

; Function Attrs: inlinehint nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define internal fastcc range(i64 1, 0) i64 @rbimpl_intern_const(ptr noundef nonnull captures(none) %0, ptr noundef nonnull %1) unnamed_addr #21 {
bb.a:
  %.pr = load i64, ptr %0, align 8, !tbaa !10     ; 2 uses
  %.not4 = icmp eq i64 %.pr, 0
end_hunk_8
begin_hunk_9_@rbimpl_intern_const:bb.a
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #22

declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #1

end_hunk_9
begin_hunk_10_@convert_UTF8_to_script_safe_JSON:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start.p0(ptr) #23

declare i64 @rb_vsprintf(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end.p0(ptr) #23

; Function Attrs: noreturn nounwind uwtable
define internal fastcc void @raise_generator_error_str(i64 noundef %0, i64 noundef %1) unnamed_addr #14 {
bb.a:
  %i.a = load i32, ptr @utf8_encindex, align 4, !tbaa !6
  %i.b = tail call i64 @rb_enc_associate_index(i64 noundef %1, i32 noundef %i.a) #25 ; 0 uses
end_hunk_10
begin_hunk_11_@encode_json_string_try:bb.a
}

; Function Attrs: noreturn nounwind uwtable
define internal noundef i64 @encode_json_string_rescue(i64 noundef %0, i64 noundef %1) #14 {
bb.a:
  %i.a = tail call fastcc i64 @rbimpl_intern_const(ptr noundef @encode_json_string_rescue.rbimpl_id, ptr noundef @.str.101) #34
  %i.b = tail call i64 (i64, i64, i32, ...) @rb_funcall(i64 noundef %1, i64 noundef %i.a, i32 noundef 0) #25
end_hunk_11
begin_hunk_12_@generate_json_integer:bb.a
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #19

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_12
begin_hunk_13_@llvm.assume/@llvm.smin.i32
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #13 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #14 = { noreturn nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { noinline nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { inlinehint nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nosync nounwind willreturn }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { nounwind }
attributes #26 = { nounwind willreturn memory(none) }
attributes #27 = { cold nounwind }
end_hunk_13
