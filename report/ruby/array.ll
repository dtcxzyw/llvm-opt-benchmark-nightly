inline.NumInlined: 1460
inline.NumDeleted: 143
begin_hunk_0_@rb_ary_uniq_bang:bb.a

bb.p:                                             ; preds = %ary_make_hash_by.exit
  %i.bp = add i64 %.022, 24
  %i.bq = inttoptr i64 %i.bp to ptr               ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bq) ]
  %i.br = getelementptr i8, ptr %i.bq, i64 16
  %i.bs = load i64, ptr %i.br, align 8, !tbaa !153
  br label %RHASH_SIZE.exit
end_hunk_0
begin_hunk_1_@rb_ary_splice:bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #17

declare i64 @rb_hash_start(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_st_hash_uint(i64 noundef, i64 noundef) local_unnamed_addr #18

declare i64 @rb_hash(i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i64 @rb_st_hash_end(i64 noundef) local_unnamed_addr #18

declare i32 @rb_eql(i64 noundef, i64 noundef) local_unnamed_addr #6

end_hunk_1
begin_hunk_2_@rb_warning
declare void @rb_warning(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: cold
declare void @rb_warn(ptr noundef, ...) local_unnamed_addr #19

declare i64 @rb_int2big(i64 noundef) local_unnamed_addr #6

end_hunk_2
begin_hunk_3_@rb_hash_stlike_update
declare i32 @rb_hash_stlike_update(i64 noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define internal range(i32 0, 2) i32 @ary_hash_orset(ptr noundef writeonly captures(none) %0, ptr noundef writeonly captures(none) %1, i64 noundef %2, i32 noundef %3) #20 {
bb.a:
  %.not = icmp eq i32 %3, 0
  br i1 %.not, label %bb.b, label %bb.c
end_hunk_3
begin_hunk_4_@rb_alloc_tmp_buffer_with_count
declare noalias nonnull ptr @rb_alloc_tmp_buffer_with_count(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #15

; Function Attrs: cold
declare void @rb_category_warn(i32 noundef, ptr noundef, ...) local_unnamed_addr #19

declare i64 @rb_block_call(i64 noundef, i64 noundef, i32 noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #6

end_hunk_4
begin_hunk_5_@rb_float_new_in_heap
declare i64 @rb_float_new_in_heap(double noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #21

declare i64 @rb_int128t2big(i128 noundef) local_unnamed_addr #6

end_hunk_5
begin_hunk_6_@rb_int_mul
declare i64 @rb_int_mul(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr noundef, i32 noundef, i64 noundef) local_unnamed_addr #22

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @rb_ary_combination_size(i64 noundef %0, i64 noundef %1, i64 %2) #4 {
end_hunk_6
begin_hunk_7_@rb_ary_repeated_combination_size:bb.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.smul.with.overflow.i64(i64, i64) #21

declare void @rb_gc_writebarrier_unprotect(i64 noundef) local_unnamed_addr #6

end_hunk_7
begin_hunk_8_@rb_big2dbl
declare double @rb_big2dbl(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

declare i64 @rb_fix_plus(i64 noundef, i64 noundef) local_unnamed_addr #6

end_hunk_8
begin_hunk_9_@rb_sym2id
declare i64 @rb_sym2id(i64 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #21

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #21

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #23

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #23

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_9
begin_hunk_10_@llvm.assume/@llvm.memmove.p0.p0.i64
attributes #14 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #15 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #18 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { cold "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #22 = { mustprogress nocallback nofree nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { noreturn nounwind }
attributes #25 = { nounwind }
attributes #26 = { nounwind allocsize(0,1) }
end_hunk_10
