begin_hunk_0
bb.c:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !42
  %i.d = inttoptr i64 %i.c to ptr
  %i.e = tail call i32 @rb_vm_insn_addr2opcode(ptr noundef %i.d) #17
  ret i32 %i.e
}

end_hunk_0
begin_hunk_1
; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_RSTRUCT_LEN(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @rb_struct_size(i64 noundef %0) #17 ; 3 uses
  %i.b = trunc i64 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_1
begin_hunk_2
  br label %RSTRUCT_LEN.exit

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i64 @rb_num2long(i64 noundef %i.a) #17
  br label %RSTRUCT_LEN.exit

RSTRUCT_LEN.exit:                                 ; preds = %bb.b, %bb.c
end_hunk_2
begin_hunk_3
  br label %RCLASS_EXT_READABLE.exit

bb.b:                                             ; preds = %RCLASS_PRIME_CLASSEXT_READABLE_P.exit.i
  %i.i = tail call ptr @rb_current_box() #17      ; 3 uses
  %.not.i = icmp eq ptr %i.i, null
  br i1 %.not.i, label %.split.i, label %bb.c

end_hunk_3
begin_hunk_4
  br i1 %i.m, label %.split7.i, label %bb.f

.split7.i:                                        ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #17
  %i.n = load i64, ptr %i.b, align 8, !tbaa !37
  %i.o = and i64 %i.n, 65536
  %.not.i.i.i10.i = icmp eq i64 %i.o, 0
end_hunk_4
begin_hunk_5

bb.d:                                             ; preds = %RCLASS_CLASSEXT_TBL.exit.i.i11.i
  %i.q = load i64, ptr %i.i, align 8, !tbaa !114
  %i.r = call i32 @rb_st_lookup(ptr noundef nonnull %i.p, i64 noundef %i.q, ptr noundef nonnull %i.a) #17
  %.not5.i.i13.i = icmp eq i32 %i.r, 0
  br i1 %.not5.i.i13.i, label %RCLASS_EXT_READABLE_LOOKUP.exit17.i, label %bb.e

end_hunk_5
begin_hunk_6

RCLASS_EXT_READABLE_LOOKUP.exit17.i:              ; preds = %bb.e, %bb.d, %RCLASS_CLASSEXT_TBL.exit.i.i11.i, %.split7.i
  %.0.i.i14.i = phi ptr [ %i.t, %bb.e ], [ null, %bb.d ], [ null, %RCLASS_CLASSEXT_TBL.exit.i.i11.i ], [ null, %.split7.i ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #17
  %.not.i15.i = icmp eq ptr %.0.i.i14.i, null
  %i.u = getelementptr i8, ptr %i.b, i64 24
  %.0.i16.i = select i1 %.not.i15.i, ptr %i.u, ptr %.0.i.i14.i
end_hunk_6
begin_hunk_7
; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_assert_cme_handle(i64 noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @rb_objspace_garbage_object_p(i64 noundef %0) #17
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b, !prof !40

end_hunk_7
begin_hunk_8
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_vm_lock_enter_body(ptr noundef %0) #17
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.a, %bb.b
  tail call void @rb_vm_barrier() #17
  ret void
}

end_hunk_8
begin_hunk_9
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_leave.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_vm_lock_leave_body(ptr noundef %0) #17
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.a, %bb.b
end_hunk_9
begin_hunk_10
; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 1, 1073741825) i32 @rb_jit_get_page_size() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 30) #17 ; 3 uses
  %i.b = icmp slt i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

end_hunk_10
begin_hunk_11
; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_jit_reserve_addr_space(i32 noundef %0) #1 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 30) #17
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = urem i32 ptrtoint (ptr @rb_jit_reserve_addr_space to i32), %i.b ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
end_hunk_11
begin_hunk_12

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %.0.i, %bb.a ], [ %i.h, %bb.c ] ; 2 uses
  %i.g = tail call ptr @mmap(ptr noundef %.0, i64 noundef %i.f, i32 noundef 0, i32 noundef 1048610, i32 noundef -1, i64 noundef 0) #17 ; 3 uses
  %.not = icmp eq ptr %i.g, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.c, label %bb.d

end_hunk_12
begin_hunk_13
  br i1 %i.i, label %bb.b, label %bb.e, !llvm.loop !118

bb.d:                                             ; preds = %bb.b
  tail call void @ruby_annotate_mmap(ptr noundef %i.g, i64 noundef %i.f, ptr noundef nonnull @.str.9) #17
  br label %bb.j

bb.e:                                             ; preds = %bb.c
  %i.j = tail call ptr @mmap(ptr noundef null, i64 noundef %i.f, i32 noundef 0, i32 noundef 34, i32 noundef -1, i64 noundef 0) #17 ; 3 uses
  %.not19 = icmp eq ptr %i.j, inttoptr (i64 -1 to ptr)
  br i1 %.not19, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @ruby_annotate_mmap(ptr noundef %i.j, i64 noundef %i.f, ptr noundef nonnull @.str.10) #17
  br label %bb.j

bb.g:                                             ; preds = %bb.e
  tail call void @perror(ptr noundef nonnull @.str.11) #19
  %i.k = tail call ptr @rb_errno_ptr() #17
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = icmp eq i32 %i.l, 12
  br i1 %i.m, label %bb.h, label %bb.i
end_hunk_13
begin_hunk_14
define hidden void @rb_jit_for_each_iseq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.iseq_callback_data, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #17
  store ptr %0, ptr %2, align 8, !tbaa !119
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !121
  call void @rb_objspace_each_objects(ptr noundef nonnull @for_each_iseq_i, ptr noundef nonnull %2) #17
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #17
  ret void
}

end_hunk_14
begin_hunk_15
bb.c:                                             ; preds = %rb_obj_is_iseq.exit
  %i.k = load ptr, ptr %3, align 8, !tbaa !119
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !121
  tail call void %i.k(ptr noundef nonnull %i.h, ptr noundef %i.l) #17
  br label %rb_obj_is_iseq.exit.thread

rb_obj_is_iseq.exit.thread:                       ; preds = %bb.b, %bb.c, %rb_obj_is_iseq.exit
end_hunk_15
begin_hunk_16
define hidden zeroext i1 @rb_jit_mark_writable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = tail call i32 @mprotect(ptr noundef %0, i64 noundef %i.a, i32 noundef 3) #17
  %i.c = icmp eq i32 %i.b, 0
  ret i1 %i.c
}
end_hunk_16
begin_hunk_17

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = tail call i32 @mprotect(ptr noundef %0, i64 noundef %i.b, i32 noundef 5) #17
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @rb_errno_ptr() #17
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = tail call ptr @strerror(i32 noundef %i.e) #17
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.13, ptr noundef %0, i64 noundef %i.b, ptr noundef %i.f) #18
  unreachable

end_hunk_17
begin_hunk_18
define hidden zeroext i1 @rb_jit_mark_unused(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = tail call i32 @madvise(ptr noundef %0, i64 noundef %i.a, i32 noundef 4) #17 ; 0 uses
  %i.c = tail call i32 @mprotect(ptr noundef %0, i64 noundef %i.a, i32 noundef 0) #17
  %i.d = icmp eq i32 %i.c, 0
  ret i1 %i.d
}
end_hunk_18
begin_hunk_19
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_int2big(i64 noundef 4611686018427387904) #17
  br label %rb_fix_div_fix.exit

bb.c:                                             ; preds = %bb.a
end_hunk_19
begin_hunk_20
  br i1 %.not.i, label %bb.b, label %rb_str_eql_internal.exit

bb.b:                                             ; preds = %bb.a
  %i.g = tail call i32 @rb_str_comparable(i64 noundef %0, i64 noundef %1) #17
  %.not13.i = icmp eq i32 %i.g, 0
  br i1 %.not13.i, label %rb_str_eql_internal.exit, label %bb.c

end_hunk_20
begin_hunk_21

declare i32 @rb_str_comparable(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #14

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.umax.i16(i16, i16) #15

; Function Attrs: nounwind
declare void @llvm.clear_cache.p0(ptr, ptr) #17

attributes #0 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
end_hunk_21
begin_hunk_22
attributes #11 = { cold nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: read) }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #17 = { nounwind }
attributes #18 = { cold noreturn nounwind }
attributes #19 = { cold }

end_hunk_22
