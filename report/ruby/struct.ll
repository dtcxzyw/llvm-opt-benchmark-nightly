inline.NumInlined: 263
inline.NumDeleted: 69
begin_hunk_0_@rb_data_initialize_m:bb.a

bb.o:                                             ; preds = %bb.m
  %i.az = add i64 %i.an, 24
  %i.ba = inttoptr i64 %i.az to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ba) ]
  %i.bb = getelementptr i8, ptr %i.ba, i64 16
  %i.bc = load i64, ptr %i.bb, align 8, !tbaa !61
  br label %RHASH_SIZE.exit
end_hunk_0
begin_hunk_1_@rb_class_superclass

declare i64 @rb_ivar_set(i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i32 @RB_FIX2INT(i64 noundef %0) unnamed_addr #5 {
bb.a:
end_hunk_1
begin_hunk_2_@rb_sym2id
declare i64 @rb_sym2id(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #13

declare i64 @rb_fstring_cstr(ptr noundef) local_unnamed_addr #3

end_hunk_2
begin_hunk_3_@rb_const_defined_at
declare i32 @rb_const_defined_at(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #14

declare i64 @rb_mod_remove_const(i64 noundef, i64 noundef) local_unnamed_addr #3

end_hunk_3
begin_hunk_4_@rb_intern2
declare i64 @rb_intern2(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @rb_mem_clear(ptr noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: noreturn
declare void @rb_error_arity(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2
end_hunk_4
begin_hunk_5_@rb_gc_obj_slot_size
declare i64 @rb_gc_obj_slot_size(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #16

declare void @rb_gc_writebarrier(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: allocsize(0,1)
declare noalias nonnull ptr @ruby_xmalloc2(i64 noundef, i64 noundef) local_unnamed_addr #17

; Function Attrs: cold noreturn
declare void @rb_out_of_int(i64 noundef) local_unnamed_addr #18

declare void @rb_gc_writebarrier_unprotect(i64 noundef) local_unnamed_addr #3

end_hunk_5
begin_hunk_6_@rb_ary_new_from_values
declare i64 @rb_ary_new_from_values(i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #18

declare i64 @rb_exec_recursive_paired(ptr noundef, i64 noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

end_hunk_6
begin_hunk_7_@rb_hash
declare i64 @rb_hash(i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_st_hash_uint(i64 noundef, i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_st_hash_end(i64 noundef) local_unnamed_addr #19

declare i64 @rb_exec_recursive(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #3

end_hunk_7
begin_hunk_8_@rb_str_append
declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_is_local_id(i64 noundef) local_unnamed_addr #19

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @rb_is_const_id(i64 noundef) local_unnamed_addr #19

declare i64 @rb_id2str(i64 noundef) local_unnamed_addr #3

end_hunk_8
begin_hunk_9_@rb_hash_update_by
declare i64 @rb_hash_update_by(i64 noundef, i64 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #20

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #21

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_9
begin_hunk_10_@llvm.assume/@llvm.smax.i32
attributes #9 = { noinline nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind memory(argmem: readwrite, inaccessiblemem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn nounwind }
end_hunk_10
