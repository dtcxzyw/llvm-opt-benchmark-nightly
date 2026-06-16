inline.NumInlined: 520
inline.NumDeleted: 102
begin_hunk_0_@lchmod_internal:bb.a
  ret i32 %i.b
}

; Function Attrs: nounwind
declare i32 @lchmod(ptr noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind sspstrong uwtable
define internal noundef i32 @lchown_internal(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) #13 {
bb.a:
  %i.a = load i32, ptr %1, align 4, !tbaa !150
  %i.b = getelementptr i8, ptr %1, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !152
  %i.d = tail call i32 @lchown(ptr noundef %0, i32 noundef %i.a, i32 noundef %i.c) #22
  ret i32 %i.d
}

; Function Attrs: nofree nounwind
declare noundef i32 @lchown(ptr noundef readonly captures(none), i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @link(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: noreturn nounwind sspstrong uwtable
define internal fastcc void @syserr_fail2_in(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #14 {
bb.a:
  %i.a = icmp eq i32 %1, 17
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @rb_str_ellipsize(i64 noundef %3, i64 noundef 4096) #22
  tail call void @rb_syserr_fail_path_in(ptr noundef nonnull @__func__.syserr_fail2_in, i32 noundef 17, i64 noundef %i.b) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = tail call fastcc i64 @rbimpl_str_new_cstr() ; 5 uses
  %i.d = tail call i64 @rb_str_ellipsize(i64 noundef %2, i64 noundef 4096) #22
  %i.e = tail call i64 @rb_str_append(i64 noundef %i.c, i64 noundef %i.d) #22 ; 0 uses
  tail call fastcc void @rbimpl_str_cat_cstr(i64 noundef %i.c, ptr noundef @.str.137)
  %i.f = tail call i64 @rb_str_ellipsize(i64 noundef %3, i64 noundef 4096) #22
  %i.g = tail call i64 @rb_str_append(i64 noundef %i.c, i64 noundef %i.f) #22 ; 0 uses
  tail call fastcc void @rbimpl_str_cat_cstr(i64 noundef %i.c, ptr noundef @.str.138)
  tail call void @rb_syserr_fail_path_in(ptr noundef %0, i32 noundef %1, i64 noundef %i.c) #24
  unreachable
}

declare i64 @rb_str_ellipsize(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal fastcc i64 @rbimpl_str_new_cstr() unnamed_addr #11 {
bb.a:
  %i.a = tail call i64 @rb_str_new_static(ptr noundef nonnull @.str.136, i64 noundef 1) #22
  ret i64 %i.a
}

declare i64 @rb_str_append(i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @symlink(ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind sspstrong uwtable
define internal noundef i32 @unlink_internal(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1) #13 {
bb.a:
  %i.a = tail call i32 @unlink(ptr noundef %0) #22
  ret i32 %i.a
}

; Function Attrs: nofree nounwind
declare noundef i32 @unlink(ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nofree nounwind sspstrong uwtable
define internal noundef ptr @no_gvl_rename(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !159
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !161
  %i.d = tail call i32 @rename(ptr noundef %i.a, ptr noundef %i.c) #22
  %i.e = sext i32 %i.d to i64
  %i.f = inttoptr i64 %i.e to ptr
  ret ptr %i.f
}

; Function Attrs: nofree nounwind
declare noundef i32 @rename(ptr noundef readonly captures(none), ptr noundef readonly captures(none)) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @umask(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @nogvl_truncate(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !165
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !162
  %i.d = tail call i32 @truncate(ptr noundef %i.a, i64 noundef %i.c) #22
  %i.e = sext i32 %i.d to i64
  %i.f = inttoptr i64 %i.e to ptr
  ret ptr %i.f
}

; Function Attrs: nounwind
declare i32 @truncate(ptr noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @nogvl_mkfifo(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !169
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !166
  %i.d = tail call i32 @mkfifo(ptr noundef %i.a, i32 noundef %i.c) #22
  %i.e = sext i32 %i.d to i64
  %i.f = inttoptr i64 %i.e to ptr
  ret ptr %i.f
}

; Function Attrs: nounwind
declare i32 @mkfifo(ptr noundef, i32 noundef) local_unnamed_addr #8

declare i64 @rb_str_new_shared(i64 noundef) local_unnamed_addr #2

declare i32 @rb_enc_codepoint_len(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @rb_enc_ascget(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #10

declare ptr @onigenc_get_left_adjust_char_head(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_fix2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2int(i64 noundef) local_unnamed_addr #2

declare i64 @rb_thread_io_blocking_region(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -2147483648, 2147483648) i64 @io_blocking_fchmod(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !174
  %i.b = getelementptr i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !176
  %i.d = tail call i32 @fchmod(i32 noundef %i.a, i32 noundef %i.c) #22
  %i.e = sext i32 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: nounwind
declare i32 @fchmod(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal ptr @nogvl_fchown(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !36
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i32, ptr %i.b, align 8, !tbaa !239
  %i.d = getelementptr i8, ptr %0, i64 12
  %i.e = load i32, ptr %i.d, align 4, !tbaa !241
  %i.f = tail call i32 @fchown(i32 noundef %i.a, i32 noundef %i.c, i32 noundef %i.e) #22
  %i.g = sext i32 %i.f to i64
  %i.h = inttoptr i64 %i.g to ptr
  ret ptr %i.h
}

; Function Attrs: nounwind
declare i32 @fchown(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -2147483648, 2147483648) i64 @nogvl_ftruncate(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !179
  %i.b = getelementptr i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !177
  %i.d = tail call i32 @ftruncate(i32 noundef %i.a, i64 noundef %i.c) #22
  %i.e = sext i32 %i.d to i64
  ret i64 %i.e
}

; Function Attrs: nounwind
declare i32 @ftruncate(i32 noundef, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 -2147483648, 2147483648) i64 @rb_thread_flock(ptr nofree noundef readonly captures(none) %0) #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !7
  %i.b = getelementptr i8, ptr %0, i64 4
  %i.c = load i32, ptr %i.b, align 4, !tbaa !7
  %i.d = tail call i32 @flock(i32 noundef %i.a, i32 noundef %i.c) #22
  %i.e = sext i32 %i.d to i64
  ret i64 %i.e
}

declare void @rb_thread_wait_for(i64, i64) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @flock(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @test_check(i32 noundef range(i32 1, 3) %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  %i.c = add nuw nsw i32 %0, 1                    ; 4 uses
  %3 = icmp sle i32 %1, %0
  %i.d = icmp samesign ugt i32 %1, %i.c
  %or.cond = select i1 %3, i1 true, i1 %i.d
  br i1 %or.cond, label %bb.b, label %rb_check_arity.exit.preheader.preheader

rb_check_arity.exit.preheader.preheader:          ; preds = %bb.a
  %wide.trip.count = zext nneg i32 %i.c to i64
  br label %rb_check_arity.exit.preheader

bb.b:                                             ; preds = %bb.a
  tail call void @rb_error_arity(i32 noundef %1, i32 noundef range(i32 1, 4) %i.c, i32 noundef range(i32 -1, 4) %i.c) #24
  unreachable

rb_check_arity.exit.preheader:                    ; preds = %rb_check_arity.exit.preheader.preheader, %rb_check_arity.exit
  %indvars.iv = phi i64 [ 1, %rb_check_arity.exit.preheader.preheader ], [ %indvars.iv.next, %rb_check_arity.exit ] ; 2 uses
  %i.e = getelementptr [8 x i8], ptr %2, i64 %indvars.iv ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !tbaa !14   ; 6 uses
  %i.g = icmp eq i64 %i.f, 0
  %i.h = and i64 %i.f, 7
  %i.i = icmp ne i64 %i.h, 0
  %i.j = or i1 %i.g, %i.i
  br i1 %i.j, label %.thread, label %rbimpl_RB_TYPE_P_fastpath.exit

.thread:                                          ; preds = %rb_check_arity.exit.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  br label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit:                   ; preds = %rb_check_arity.exit.preheader
  %i.k = inttoptr i64 %i.f to ptr
  %i.l = load i64, ptr %i.k, align 8, !tbaa !11
  %i.m = and i64 %i.l, 31                         ; 2 uses
  %i.n = icmp eq i64 %i.m, 11
  br i1 %i.n, label %rb_check_arity.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.i.i

rbimpl_RB_TYPE_P_fastpath.exit.i.i:               ; preds = %rbimpl_RB_TYPE_P_fastpath.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #22
  %i.o = icmp eq i64 %i.m, 5
  br i1 %i.o, label %rb_get_path.exit, label %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i

rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i:        ; preds = %.thread, %rbimpl_RB_TYPE_P_fastpath.exit.i.i
  %.pr.i.i.i = load i64, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14 ; 2 uses
  %.not4.i.i.i = icmp eq i64 %.pr.i.i.i, 0
  br i1 %.not4.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i, %.lr.ph.i.i.i
  %i.p = call i64 @rb_intern2(ptr noundef nonnull @.str, i64 noundef 7) #22 ; 3 uses
  store i64 %i.p, ptr @rb_get_path_check_to_string.rbimpl_id, align 8, !tbaa !14
  %.not.i.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %rbimpl_intern_const.exit.i.i, !llvm.loop !15

rbimpl_intern_const.exit.i.i:                     ; preds = %.lr.ph.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i
  %.lcssa.i.i.i = phi i64 [ %.pr.i.i.i, %rbimpl_RB_TYPE_P_fastpath.exit.thread.i.i ], [ %i.p, %.lr.ph.i.i.i ]
  %i.q = call i64 @rb_check_funcall_default(i64 noundef %i.f, i64 noundef %.lcssa.i.i.i, i32 noundef 0, ptr noundef null, i64 noundef %i.f) #22
  store i64 %i.q, ptr %i.a, align 8, !tbaa !14
  %i.r = call i64 @rb_string_value(ptr noundef nonnull %i.a) #22 ; 0 uses
  %i.s = load i64, ptr %i.a, align 8, !tbaa !14
  br label %rb_get_path.exit

rb_get_path.exit:                                 ; preds = %rbimpl_RB_TYPE_P_fastpath.exit.i.i, %rbimpl_intern_const.exit.i.i
  %.0.i.i = phi i64 [ %i.s, %rbimpl_intern_const.exit.i.i ], [ %i.f, %rbimpl_RB_TYPE_P_fastpath.exit.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #22
  %i.t = call i64 @rb_get_path_check_convert(i64 noundef %.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #22
  store ptr %i.e, ptr %i.b, align 8, !tbaa !60
  call void asm sideeffect "", "*m,~{dirflag},~{fpsr},~{flags}"(ptr nonnull elementtype(ptr) %i.b) #22, !srcloc !242
  %i.u = load ptr, ptr %i.b, align 8, !tbaa !60
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #22
  store volatile i64 %i.t, ptr %i.u, align 8, !tbaa !14
  br label %rb_check_arity.exit

rb_check_arity.exit:                              ; preds = %rbimpl_RB_TYPE_P_fastpath.exit, %rb_get_path.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %bb.c, label %rb_check_arity.exit.preheader, !llvm.loop !243

bb.c:                                             ; preds = %rb_check_arity.exit
  ret void
}

declare ptr @rb_check_typeddata(i64 noundef, ptr noundef) local_unnamed_addr #2

declare i64 @rb_obj_init_copy(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_obj_is_kind_of(i64 noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_ull2inum(i64 noundef) local_unnamed_addr #2

declare i64 @rb_sprintf(ptr noundef, ...) local_unnamed_addr #2

declare ptr @rb_obj_classname(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_catf(i64 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i64 @rb_inspect(i64 noundef) local_unnamed_addr #2

declare i64 @rb_str_buf_cat(i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare i64 @rb_num2ulong(i64 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.ctpop.i32(i32) #19

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #20

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #21

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { inlinehint nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { noreturn nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { cold noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { allocsize(1,2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #20 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #21 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #22 = { nounwind }
attributes #23 = { nounwind willreturn memory(read) }
attributes #24 = { noreturn nounwind }
attributes #25 = { noreturn }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { nounwind allocsize(1,2) }
attributes #28 = { nounwind allocsize(1) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"RBasic", !13, i64 0, !13, i64 8}
!13 = !{!"long", !9, i64 0}
!14 = !{!13, !13, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!18, !8, i64 20}
!18 = !{!"OnigEncodingTypeST", !19, i64 0, !20, i64 8, !8, i64 16, !8, i64 20, !19, i64 24, !19, i64 32, !19, i64 40, !19, i64 48, !19, i64 56, !19, i64 64, !19, i64 72, !19, i64 80, !19, i64 88, !19, i64 96, !19, i64 104, !19, i64 112, !19, i64 120, !8, i64 128, !8, i64 132}
!19 = !{!"any pointer", !9, i64 0}
!20 = !{!"p1 omnipotent char", !19, i64 0}
!21 = !{!18, !20, i64 8}
!22 = !{!23, !13, i64 24}
!23 = !{!"RTypedData", !12, i64 0, !13, i64 16, !13, i64 24, !19, i64 32}
!24 = !{!23, !19, i64 32}
!25 = !{!26, !13, i64 16}
!26 = !{!"stat", !13, i64 0, !13, i64 8, !13, i64 16, !8, i64 24, !8, i64 28, !8, i64 32, !8, i64 36, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !27, i64 72, !27, i64 88, !27, i64 104, !9, i64 120}
!27 = !{!"timespec", !13, i64 0, !13, i64 8}
!28 = !{!26, !8, i64 24}
!29 = !{!26, !13, i64 8}
!30 = !{!26, !13, i64 48}
!31 = !{!26, !13, i64 64}
!32 = !{!33, !33, i64 0}
!33 = !{!"long long", !9, i64 0}
!34 = !{!35, !35, i64 0}
!35 = !{!"short", !9, i64 0}
!36 = !{!9, !9, i64 0}
!37 = !{!38, !41, i64 256}
!38 = !{!"rb_stat", !39, i64 0, !41, i64 256}
!39 = !{!"statx", !8, i64 0, !8, i64 4, !33, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !35, i64 28, !9, i64 30, !33, i64 32, !33, i64 40, !33, i64 48, !33, i64 56, !40, i64 64, !40, i64 80, !40, i64 96, !40, i64 112, !8, i64 128, !8, i64 132, !8, i64 136, !8, i64 140, !33, i64 144, !8, i64 152, !8, i64 156, !9, i64 160}
!40 = !{!"statx_timestamp", !33, i64 0, !8, i64 8, !8, i64 12}
!41 = !{!"_Bool", !9, i64 0}
!42 = !{i64 0, i64 4, !7, i64 4, i64 4, !7, i64 8, i64 8, !32, i64 16, i64 4, !7, i64 20, i64 4, !7, i64 24, i64 4, !7, i64 28, i64 2, !34, i64 30, i64 2, !36, i64 32, i64 8, !32, i64 40, i64 8, !32, i64 48, i64 8, !32, i64 56, i64 8, !32, i64 64, i64 8, !32, i64 72, i64 4, !7, i64 76, i64 4, !7, i64 80, i64 8, !32, i64 88, i64 4, !7, i64 92, i64 4, !7, i64 96, i64 8, !32, i64 104, i64 4, !7, i64 108, i64 4, !7, i64 112, i64 8, !32, i64 120, i64 4, !7, i64 124, i64 4, !7, i64 128, i64 4, !7, i64 132, i64 4, !7, i64 136, i64 4, !7, i64 140, i64 4, !7, i64 144, i64 8, !32, i64 152, i64 4, !7, i64 156, i64 4, !7, i64 160, i64 96, !36}
!43 = !{!44, !45, i64 16}
!44 = !{!"RFile", !12, i64 0, !45, i64 16}
!45 = !{!"p1 _ZTS5rb_io", !19, i64 0}
!46 = !{!47, !8, i64 16}
!47 = !{!"rb_io", !13, i64 0, !48, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !8, i64 28, !13, i64 32, !19, i64 40, !49, i64 48, !49, i64 68, !13, i64 88, !50, i64 96, !52, i64 128, !49, i64 136, !52, i64 160, !13, i64 168, !8, i64 176, !8, i64 180, !13, i64 184, !13, i64 192, !13, i64 200, !53, i64 208, !56, i64 224, !13, i64 232, !33, i64 240}
!48 = !{!"p1 _ZTS8_IO_FILE", !19, i64 0}
!49 = !{!"rb_io_internal_buffer", !20, i64 0, !8, i64 8, !8, i64 12, !8, i64 16}
!50 = !{!"rb_io_encoding", !51, i64 0, !51, i64 8, !8, i64 16, !13, i64 24}
!51 = !{!"p1 _ZTS18OnigEncodingTypeST", !19, i64 0}
!52 = !{!"p1 _ZTS10rb_econv_t", !19, i64 0}
!53 = !{!"ccan_list_head", !54, i64 0}
!54 = !{!"ccan_list_node", !55, i64 0, !55, i64 8}
!55 = !{!"p1 _ZTS14ccan_list_node", !19, i64 0}
!56 = !{!"p1 _ZTS27rb_execution_context_struct", !19, i64 0}
!57 = !{!58, !59, i64 0}
!58 = !{!"no_gvl_stat_data", !59, i64 0, !9, i64 8}
end_hunk_0
