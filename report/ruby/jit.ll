inline.NumInlined: 108
inline.NumDeleted: 58
begin_hunk_0_@rb_objspace_garbage_object_p

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @rb_yarv_ary_entry_internal(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 4 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  %i.f = getelementptr i8, ptr %i.a, i64 16
  br label %rb_array_const_ptr.exit.i

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr i8, ptr %i.a, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !45
  %i.i = getelementptr i8, ptr %i.a, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !45
  br label %rb_array_const_ptr.exit.i

rb_array_const_ptr.exit.i:                        ; preds = %bb.c, %bb.b
  %.0.i18.i = phi i64 [ %i.e, %bb.b ], [ %i.h, %bb.c ] ; 3 uses
  %.0.i16.i = phi ptr [ %i.f, %bb.b ], [ %i.j, %bb.c ]
  %i.k = icmp eq i64 %.0.i18.i, 0
  br i1 %i.k, label %rb_ary_entry_internal.exit, label %bb.d

bb.d:                                             ; preds = %rb_array_const_ptr.exit.i
  %i.l = icmp slt i64 %1, 0
  br i1 %i.l, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.m = add i64 %.0.i18.i, %1                    ; 2 uses
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %rb_ary_entry_internal.exit, label %bb.g

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp sgt i64 %.0.i18.i, %1
  br i1 %.not.i, label %bb.g, label %rb_ary_entry_internal.exit

bb.g:                                             ; preds = %bb.f, %bb.e
  %.011.i = phi i64 [ %i.m, %bb.e ], [ %1, %bb.f ]
  %i.o = getelementptr [8 x i8], ptr %.0.i16.i, i64 %.011.i
  %i.p = load i64, ptr %i.o, align 8, !tbaa !42
  br label %rb_ary_entry_internal.exit

rb_ary_entry_internal.exit:                       ; preds = %rb_array_const_ptr.exit.i, %bb.e, %bb.f, %bb.g
  %.0.i = phi i64 [ 4, %bb.e ], [ 4, %rb_array_const_ptr.exit.i ], [ %i.p, %bb.g ], [ 4, %bb.f ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden i64 @rb_jit_array_len(i64 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !37   ; 2 uses
  %i.c = and i64 %i.b, 8192
  %.not.i = icmp eq i64 %i.c, 0
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = lshr i64 %i.b, 15
  %i.e = and i64 %i.d, 127
  br label %rb_array_len.exit

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %i.a, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !45
  br label %rb_array_len.exit

rb_array_len.exit:                                ; preds = %bb.b, %bb.c
  %.0.i = phi i64 [ %i.e, %bb.b ], [ %i.g, %bb.c ]
  ret i64 %.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @rb_set_cfp_pc(ptr noundef writeonly captures(none) initializes((0, 8)) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !90
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: write) uwtable
define hidden void @rb_set_cfp_sp(ptr noundef writeonly captures(none) initializes((8, 16)) %0, ptr noundef %1) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !91
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden noundef zeroext i1 @rb_jit_shape_too_complex_p(i32 noundef %0) local_unnamed_addr #5 {
bb.a:
  %i.a = and i32 %0, 134217728
  %i.b = icmp ne i32 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden zeroext i1 @rb_jit_multi_ractor_p() local_unnamed_addr #8 {
bb.a:
  %i.a = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !116
  %.not.i = icmp eq ptr %i.a, null
  ret i1 %.not.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_jit_vm_lock_then_barrier(ptr noundef %0, ptr noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !116
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_enter.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_vm_lock_enter_body(ptr noundef %0) #14
  br label %rb_vm_lock_enter.exit

rb_vm_lock_enter.exit:                            ; preds = %bb.a, %bb.b
  tail call void @rb_vm_barrier() #14
  ret void
}

declare void @rb_vm_barrier() local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_jit_vm_unlock(ptr noundef %0, ptr noundef readnone captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr @ruby_single_main_ractor, align 8, !tbaa !116
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %bb.b, label %rb_vm_lock_leave.exit

bb.b:                                             ; preds = %bb.a
  tail call void @rb_vm_lock_leave_body(ptr noundef %0) #14
  br label %rb_vm_lock_leave.exit

rb_vm_lock_leave.exit:                            ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_iseq_reset_jit_func(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = ptrtoint ptr %0 to i64
  %i.b = icmp eq ptr %0, null
  %i.c = and i64 %i.a, 7
  %i.d = icmp ne i64 %i.c, 0
  %i.e = or i1 %i.b, %i.d
  br i1 %i.e, label %imemo_type_p.exit.thread, label %imemo_type_p.exit, !prof !36

imemo_type_p.exit:                                ; preds = %bb.a
  %i.f = load i64, ptr %0, align 8, !tbaa !37
  %i.g = and i64 %i.f, 61471
  %.not = icmp eq i64 %i.g, 28698
  br i1 %.not, label %bb.b, label %imemo_type_p.exit.thread, !prof !39

imemo_type_p.exit.thread:                         ; preds = %bb.a, %imemo_type_p.exit
  tail call void @rb_assert_failure(ptr noundef nonnull @.str, i32 noundef 546, ptr noundef nonnull @__func__.rb_iseq_reset_jit_func, ptr noundef nonnull @.str.1) #18
  unreachable

bb.b:                                             ; preds = %imemo_type_p.exit
  %i.h = getelementptr i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !11
  %i.j = getelementptr i8, ptr %i.i, i64 304
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, i8 0, i64 32, i1 false)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define hidden range(i32 1, 1073741825) i32 @rb_jit_get_page_size() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 30) #14 ; 3 uses
  %i.b = icmp slt i64 %i.a, 1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.7) #18
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = icmp samesign ugt i64 %i.a, 1073741824
  br i1 %i.c, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.8) #18
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = trunc nuw nsw i64 %i.a to i32
  ret i32 %i.d
}

; Function Attrs: nounwind
declare i64 @sysconf(i32 noundef) local_unnamed_addr #10

; Function Attrs: cold noreturn
declare void @rb_bug(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define hidden ptr @rb_jit_reserve_addr_space(i32 noundef %0) #1 {
bb.a:
  %i.a = tail call i64 @sysconf(i32 noundef 30) #14
  %i.b = trunc i64 %i.a to i32                    ; 2 uses
  %i.c = urem i32 ptrtoint (ptr @rb_jit_reserve_addr_space to i32), %i.b ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  %i.e = sub i32 %i.b, %i.c
  %narrow.i = select i1 %i.d, i32 0, i32 %i.e
  %.0.idx.i = zext i32 %narrow.i to i64
  %.0.i = getelementptr i8, ptr @rb_jit_reserve_addr_space, i64 %.0.idx.i
  %i.f = zext i32 %0 to i64                       ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %.0 = phi ptr [ %.0.i, %bb.a ], [ %i.h, %bb.c ] ; 2 uses
  %i.g = tail call ptr @mmap(ptr noundef %.0, i64 noundef %i.f, i32 noundef 0, i32 noundef 1048610, i32 noundef -1, i64 noundef 0) #14 ; 3 uses
  %.not = icmp eq ptr %i.g, inttoptr (i64 -1 to ptr)
  br i1 %.not, label %bb.c, label %1

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %.0, i64 -4194304  ; 2 uses
  %i.i = icmp ult ptr %i.h, getelementptr (i8, ptr @rb_jit_reserve_addr_space, i64 2147483647)
  br i1 %i.i, label %bb.b, label %bb.d, !llvm.loop !118

1:                                                ; preds = %bb.b
  tail call void @ruby_annotate_mmap(ptr noundef %i.g, i64 noundef %i.f, ptr noundef nonnull @.str.9) #14
  br label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = tail call ptr @mmap(ptr noundef null, i64 noundef %i.f, i32 noundef 0, i32 noundef 34, i32 noundef -1, i64 noundef 0) #14 ; 3 uses
  %.not19 = icmp eq ptr %i.j, inttoptr (i64 -1 to ptr)
  br i1 %.not19, label %bb.e, label %2

2:                                                ; preds = %bb.d
  tail call void @ruby_annotate_mmap(ptr noundef %i.j, i64 noundef %i.f, ptr noundef nonnull @.str.10) #14
  br label %bb.h

bb.e:                                             ; preds = %bb.d
  tail call void @perror(ptr noundef nonnull @.str.11) #19
  %i.k = tail call ptr @rb_errno_ptr() #14
  %i.l = load i32, ptr %i.k, align 4, !tbaa !7
  %i.m = icmp eq i32 %i.l, 12
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @exit(i32 noundef 1) #18
  unreachable

bb.g:                                             ; preds = %bb.e
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.12) #18
  unreachable

bb.h:                                             ; preds = %2, %1
  %.014.ph = phi ptr [ %i.g, %1 ], [ %i.j, %2 ]
  ret ptr %.014.ph
}

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #10

declare void @ruby_annotate_mmap(ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nofree nounwind
declare void @perror(ptr noundef readonly captures(none)) local_unnamed_addr #11

declare ptr @rb_errno_ptr() local_unnamed_addr #4

; Function Attrs: nofree noreturn nounwind
declare void @exit(i32 noundef) local_unnamed_addr #12

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_jit_for_each_iseq(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  %2 = alloca %struct.iseq_callback_data, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #14
  store ptr %0, ptr %2, align 8, !tbaa !119
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !121
  call void @rb_objspace_each_objects(ptr noundef nonnull @for_each_iseq_i, ptr noundef nonnull %2) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #14
  ret void
}

declare void @rb_objspace_each_objects(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noundef i32 @for_each_iseq_i(ptr noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef readonly captures(none) %3) #1 {
bb.a:
  %i.a = ptrtoint ptr %1 to i64
  %.not15 = icmp eq ptr %0, %1
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = ptrtoint ptr %0 to i64
  %i.c = getelementptr i8, ptr %3, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %rb_obj_is_iseq.exit.thread
  %.016 = phi i64 [ %i.b, %.lr.ph ], [ %i.m, %rb_obj_is_iseq.exit.thread ] ; 4 uses
  %i.d = icmp eq i64 %.016, 0
  %i.e = and i64 %.016, 7
  %i.f = icmp ne i64 %i.e, 0
  %i.g = or i1 %i.d, %i.f
  br i1 %i.g, label %rb_obj_is_iseq.exit.thread, label %rb_obj_is_iseq.exit, !prof !36

rb_obj_is_iseq.exit:                              ; preds = %bb.b
  %i.h = inttoptr i64 %.016 to ptr                ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !tbaa !37
  %i.j = and i64 %i.i, 61471
  %.not14 = icmp eq i64 %i.j, 28698
  br i1 %.not14, label %bb.c, label %rb_obj_is_iseq.exit.thread

bb.c:                                             ; preds = %rb_obj_is_iseq.exit
  %i.k = load ptr, ptr %3, align 8, !tbaa !119
  %i.l = load ptr, ptr %i.c, align 8, !tbaa !121
  tail call void %i.k(ptr noundef nonnull %i.h, ptr noundef %i.l) #14
  br label %rb_obj_is_iseq.exit.thread

rb_obj_is_iseq.exit.thread:                       ; preds = %bb.b, %bb.c, %rb_obj_is_iseq.exit
  %i.m = add i64 %.016, %2                        ; 2 uses
  %.not = icmp eq i64 %i.m, %i.a
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !122

._crit_edge:                                      ; preds = %rb_obj_is_iseq.exit.thread, %bb.a
  ret i32 0
}

; Function Attrs: nounwind sspstrong uwtable
define hidden zeroext i1 @rb_jit_mark_writable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %1 to i64
  %i.b = tail call i32 @mprotect(ptr noundef %0, i64 noundef %i.a, i32 noundef 3) #14
  %i.c = icmp eq i32 %i.b, 0
  ret i1 %i.c
}

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_jit_mark_executable(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = zext i32 %1 to i64                       ; 2 uses
  %i.c = tail call i32 @mprotect(ptr noundef %0, i64 noundef %i.b, i32 noundef 5) #14
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call ptr @rb_errno_ptr() #14
  %i.e = load i32, ptr %i.d, align 4, !tbaa !7
  %i.f = tail call ptr @strerror(i32 noundef %i.e) #14
  tail call void (ptr, ...) @rb_bug(ptr noundef nonnull @.str.13, ptr noundef %0, i64 noundef %i.b, ptr noundef %i.f) #18
  unreachable

bb.d:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind
declare ptr @strerror(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define hidden zeroext i1 @rb_jit_mark_unused(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 2 uses
  %i.b = tail call i32 @madvise(ptr noundef %0, i64 noundef %i.a, i32 noundef 4) #14 ; 0 uses
  %i.c = tail call i32 @mprotect(ptr noundef %0, i64 noundef %i.a, i32 noundef 0) #14
  %i.d = icmp eq i32 %i.c, 0
  ret i1 %i.d
}

; Function Attrs: nounwind
declare i32 @madvise(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind sspstrong uwtable
define hidden void @rb_jit_icache_invalidate(ptr noundef %0, ptr noundef %1) local_unnamed_addr #1 {
bb.a:
  tail call void @llvm.clear_cache.p0(ptr %0, ptr %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define hidden range(i64 1, 0) i64 @rb_jit_fix_mod_fix(i64 noundef %0, i64 noundef %1) local_unnamed_addr #5 {
bb.a:
  %i.a = ashr i64 %0, 1                           ; 2 uses
  %i.b = ashr i64 %1, 1                           ; 4 uses
  %i.c = icmp eq i64 %i.a, -4611686018427387904
  %i.d = icmp eq i64 %i.b, -1
  %or.cond.i.i = and i1 %i.c, %i.d
  br i1 %or.cond.i.i, label %rb_fix_mod_fix.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = srem i64 %i.a, %i.b                      ; 5 uses
  %i.f = icmp sgt i64 %i.b, 0
  br i1 %i.f, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = icmp slt i64 %i.e, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = icmp sgt i64 %i.e, 0
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = add nsw i64 %i.e, %i.b
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.0.i.i = phi i64 [ %i.i, %bb.e ], [ %i.e, %bb.c ], [ %i.e, %bb.d ]
  %i.j = shl i64 %.0.i.i, 1
  %i.k = or disjoint i64 %i.j, 1
  br label %rb_fix_mod_fix.exit

rb_fix_mod_fix.exit:                              ; preds = %bb.a, %bb.f
  %.sink.i.i = phi i64 [ %i.k, %bb.f ], [ 1, %bb.a ]
  ret i64 %.sink.i.i
}

; Function Attrs: nounwind sspstrong uwtable
define hidden i64 @rb_jit_fix_div_fix(i64 noundef %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = ashr i64 %0, 1                           ; 3 uses
  %i.b = ashr i64 %1, 1                           ; 4 uses
  %i.c = icmp eq i64 %i.a, -4611686018427387904
  %i.d = icmp eq i64 %i.b, -1
  %or.cond.i.i = and i1 %i.c, %i.d
  br i1 %or.cond.i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = tail call i64 @rb_int2big(i64 noundef 4611686018427387904) #14
  br label %rb_fix_div_fix.exit

bb.c:                                             ; preds = %bb.a
  %i.f = sdiv i64 %i.a, %i.b                      ; 3 uses
  %i.g = srem i64 %i.a, %i.b                      ; 2 uses
  %i.h = icmp sgt i64 %i.b, 0
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.i = icmp slt i64 %i.g, 0
  br i1 %i.i, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.j = icmp sgt i64 %i.g, 0
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.k = add nsw i64 %i.f, -1
  br label %bb.g
end_hunk_0
