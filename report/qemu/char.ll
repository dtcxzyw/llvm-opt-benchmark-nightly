Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/char?download=true
inline.NumInlined: 71
inline.NumDeleted: 18
begin_hunk_0_@qmp_chardev_remove:bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qmp_chardev_send_break(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_container(ptr noundef nonnull @.str) #13
  %i.b = tail call ptr @object_resolve_path_component(ptr noundef %i.a, ptr noundef %0) #13 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %qemu_chr_find.exit.thread, label %qemu_chr_find.exit

qemu_chr_find.exit:                               ; preds = %bb.a
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV) #13 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %qemu_chr_find.exit.thread, label %bb.b

qemu_chr_find.exit.thread:                        ; preds = %bb.a, %qemu_chr_find.exit
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %1, ptr noundef nonnull @.str.2, i32 noundef 1308, ptr noundef nonnull @__func__.qmp_chardev_send_break, ptr noundef nonnull @.str.103, ptr noundef %0) #13
  br label %bb.c

bb.b:                                             ; preds = %qemu_chr_find.exit
  %i.e = tail call ptr @object_get_class(ptr noundef nonnull %i.c) #13
  %i.f = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.e, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV_GET_CLASS) #13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 224
  %i.h = load ptr, ptr %i.g, align 8
  tail call void %i.h(ptr noundef nonnull %i.c, i32 noundef 0) #13, !inline_history !16
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %qemu_chr_find.exit.thread
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @qmp_add_client_char(i32 noundef %0, i1 noundef zeroext %1, i1 noundef zeroext %2, i1 noundef zeroext %3, i1 noundef zeroext %4, ptr noundef %5, ptr noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_container(ptr noundef nonnull @.str) #13
  %i.b = tail call ptr @object_resolve_path_component(ptr noundef %i.a, ptr noundef %5) #13 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %qemu_chr_find.exit.thread, label %qemu_chr_find.exit

qemu_chr_find.exit:                               ; preds = %bb.a
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV) #13 ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %qemu_chr_find.exit.thread, label %bb.b

qemu_chr_find.exit.thread:                        ; preds = %bb.a, %qemu_chr_find.exit
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef 1321, ptr noundef nonnull @__func__.qmp_add_client_char, ptr noundef nonnull @.str.106, ptr noundef %5) #13
  br label %bb.c

bb.b:                                             ; preds = %qemu_chr_find.exit
  %i.d = tail call ptr @object_get_class(ptr noundef nonnull %i.c) #13
  %i.e = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.d, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV_GET_CLASS) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 176
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i8 = icmp eq ptr %i.g, null
  br i1 %.not.i8, label %qemu_chr_add_client.exit.thread, label %qemu_chr_add_client.exit

qemu_chr_add_client.exit:                         ; preds = %bb.b
  %i.h = tail call ptr @object_get_class(ptr noundef nonnull %i.c) #13
  %i.i = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.h, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV_GET_CLASS) #13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 176
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 %i.k(ptr noundef nonnull %i.c, i32 noundef %0) #13, !inline_history !17
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %qemu_chr_add_client.exit.thread, label %bb.c

qemu_chr_add_client.exit.thread:                  ; preds = %bb.b, %qemu_chr_add_client.exit
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %6, ptr noundef nonnull @.str.2, i32 noundef 1325, ptr noundef nonnull @__func__.qmp_add_client_char, ptr noundef nonnull @.str.107) #13
  br label %bb.c

bb.c:                                             ; preds = %qemu_chr_add_client.exit, %qemu_chr_add_client.exit.thread, %qemu_chr_find.exit.thread
  %.0 = phi i1 [ false, %qemu_chr_add_client.exit.thread ], [ false, %qemu_chr_find.exit.thread ], [ true, %qemu_chr_add_client.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @qemu_chr_timeout_add_ms(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr noundef %2, ptr noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @g_timeout_source_new(i32 noundef %1) #13 ; 3 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.2, i32 noundef 1342, ptr noundef nonnull @__PRETTY_FUNCTION__.qemu_chr_timeout_add_ms) #14
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @g_source_set_callback(ptr noundef %i.a, ptr noundef nonnull %2, ptr noundef %3, ptr noundef null) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 @g_source_attach(ptr noundef %i.a, ptr noundef %i.c) #13 ; 0 uses
  ret ptr %i.a
}

declare ptr @g_timeout_source_new(i32 noundef) local_unnamed_addr #1

declare void @g_source_set_callback(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @g_source_attach(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @qemu_chr_cleanup() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_container(ptr noundef nonnull @.str) #13
  tail call void @object_unparent(ptr noundef %i.a) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @do_qemu_init_register_types() #0 {
bb.a:
  tail call void @register_module_init(ptr noundef nonnull @register_types, i32 noundef 4) #13
  ret void
}

declare void @register_module_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @register_types() #0 {
bb.a:
  %i.a = tail call ptr @type_register_static(ptr noundef nonnull @char_type_info) #13 ; 0 uses
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #11

declare zeroext i1 @qemu_in_coroutine() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @qemu_co_sleep_ns(i32 noundef %0, i64 noundef %1) #2 {
bb.a:
  %2 = alloca %struct.QemuCoSleep, align 8        ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #13
  store i64 0, ptr %2, align 8
  call void @qemu_co_sleep_ns_wakeable(ptr noundef nonnull %2, i32 noundef %0, i64 noundef %1) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #13
  ret void
}

declare void @g_usleep(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @qemu_chr_write_log(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef range(i64 -2147483648, 2147483648) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 5 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %bb.n, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 108
  %i.e = load i8, ptr %i.d, align 4, !range !9, !noundef !10
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %.not42.i = icmp eq i64 %2, 0
  br i1 %.not42.i, label %do_write_log_timestamps.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 109 ; 3 uses
  %.pre.i = load i8, ptr %i.g, align 1, !range !9
  %i.h = trunc nuw i8 %.pre.i to i1
  br label %bb.d

bb.d:                                             ; preds = %bb.l, %.lr.ph.i
  %i.i = phi i1 [ %i.h, %.lr.ph.i ], [ true, %bb.l ]
  %.02545.i = phi i64 [ %2, %.lr.ph.i ], [ %i.v, %bb.l ] ; 4 uses
  %.02644.i = phi ptr [ %1, %.lr.ph.i ], [ %i.u, %bb.l ] ; 4 uses
  %.043.i = phi ptr [ null, %.lr.ph.i ], [ %.2.i, %bb.l ] ; 3 uses
  br i1 %i.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  %.not28.i = icmp eq ptr %.043.i, null
  br i1 %.not28.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.j = tail call ptr @real_time_iso8601() #13
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.135.i = phi ptr [ %i.j, %bb.f ], [ %.043.i, %bb.e ] ; 3 uses
  %i.k = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.135.i) #16
  %.val32.i = load i32, ptr %i.a, align 8
  %i.l = tail call i64 @qemu_write_full(i32 noundef %.val32.i, ptr noundef nonnull %.135.i, i64 noundef %i.k) #13 ; 0 uses
  %.val31.i = load i32, ptr %i.a, align 8
  %i.m = tail call i64 @qemu_write_full(i32 noundef %.val31.i, ptr noundef nonnull @.str.110, i64 noundef 1) #13 ; 0 uses
  store i8 0, ptr %i.g, align 1
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d
  %.2.i = phi ptr [ %.135.i, %bb.g ], [ %.043.i, %bb.d ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %bb.h
  %.02441.i = phi i64 [ 0, %bb.h ], [ %i.q, %bb.j ] ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02644.i, i64 %.02441.i
  %i.o = load i8, ptr %i.n, align 1
  %i.p = icmp eq i8 %i.o, 10
  br i1 %i.p, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = add nuw i64 %.02441.i, 1                 ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.q, %.02545.i
  br i1 %exitcond.not.i, label %.thread.i, label %bb.i, !llvm.loop !18

bb.k:                                             ; preds = %bb.i
  %.not29.i = icmp eq i64 %.02441.i, %.02545.i
  br i1 %.not29.i, label %.thread.i, label %bb.l

.thread.i:                                        ; preds = %bb.k, %bb.j
  %.val30.i = load i32, ptr %i.a, align 8
  %i.r = tail call i64 @qemu_write_full(i32 noundef %.val30.i, ptr noundef nonnull %.02644.i, i64 noundef %.02545.i) #13 ; 0 uses
  br label %do_write_log_timestamps.exit

bb.l:                                             ; preds = %bb.k
  %3 = getelementptr inbounds nuw i8, ptr %.02644.i, i64 %.02441.i
  %i.s = add i64 %.02441.i, 1                     ; 2 uses
  %.val.i = load i32, ptr %i.a, align 8
  %i.t = tail call i64 @qemu_write_full(i32 noundef %.val.i, ptr noundef nonnull %.02644.i, i64 noundef %i.s) #13 ; 0 uses
  %i.u = getelementptr i8, ptr %3, i64 1
  %i.v = sub i64 %.02545.i, %i.s                  ; 2 uses
  store i8 1, ptr %i.g, align 1
  %.not.i = icmp eq i64 %i.v, 0
  br i1 %.not.i, label %do_write_log_timestamps.exit, label %bb.d

do_write_log_timestamps.exit:                     ; preds = %bb.l, %bb.c, %.thread.i
  %.3.i = phi ptr [ %.2.i, %.thread.i ], [ null, %bb.c ], [ %.2.i, %bb.l ]
  tail call void @g_free(ptr noundef %.3.i) #13
  br label %bb.n

bb.m:                                             ; preds = %bb.b
  %i.w = tail call i64 @qemu_write_full(i32 noundef %i.b, ptr noundef %1, i64 noundef %2) #13 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.a, %bb.m, %do_write_log_timestamps.exit
  ret void
}

declare void @qemu_mutex_unlock_impl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @qemu_co_sleep_ns_wakeable(ptr noundef, i32 noundef, i64 noundef) #1

declare ptr @real_time_iso8601() local_unnamed_addr #1

declare i64 @qemu_write_full(i32 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc(i64 noundef) local_unnamed_addr #9

declare noalias ptr @g_strdup(ptr noundef) local_unnamed_addr #1

declare noalias ptr @g_strdup_printf(ptr noundef, ...) local_unnamed_addr #1

declare ptr @module_object_class_by_name(ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

declare ptr @object_class_dynamic_cast(ptr noundef, ptr noundef) local_unnamed_addr #1

declare zeroext i1 @object_class_is_abstract(ptr noundef) local_unnamed_addr #1

declare ptr @g_string_new(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @help_string_append(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  tail call void (ptr, ptr, ...) @g_string_append_printf(ptr noundef %1, ptr noundef nonnull @.str.122, ptr noundef %0) #13
  ret void
}

declare i32 @qemu_printf(ptr noundef, ...) local_unnamed_addr #1

declare ptr @g_string_free(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @g_string_append_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @replay_register_char_driver(ptr noundef) local_unnamed_addr #1

declare void @monitor_new_hmp(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @object_class_foreach(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @chardev_class_foreach(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_get_name(ptr noundef %0) #13 ; 3 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.split, label %bb.b, !prof !11

.split:                                           ; preds = %bb.a
  %i.b = tail call i32 @g_str_has_prefix(ptr noundef null, ptr noundef nonnull @.str.94) #13
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %.thread, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.a) #16
  %i.e = icmp ugt i64 %i.d, 7
  br i1 %i.e, label %bb.c, label %.thread

bb.c:                                             ; preds = %bb.b
  %i.f = load i64, ptr %i.a, align 1
  %i.g = icmp ne i64 %i.f, 3275917261048735843
  %i.h = zext i1 %i.g to i32
  %.not20 = icmp eq i32 %i.h, 0
  br i1 %.not20, label %bb.d, label %.thread

.thread:                                          ; preds = %.split, %bb.b, %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.126, ptr noundef nonnull @.str.2, i32 noundef 599, ptr noundef nonnull @__PRETTY_FUNCTION__.chardev_class_foreach) #14
  unreachable

bb.d:                                             ; preds = %.split, %bb.c
  %i.i = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV_CLASS) #13
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %i.k = load i8, ptr %i.j, align 8, !range !9, !noundef !10
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = load ptr, ptr %1, align 8
  %i.n = tail call ptr @object_class_get_name(ptr noundef %0) #13
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.m(ptr noundef nonnull %i.o, ptr noundef %i.q) #13
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  ret void
}

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_new(ptr noundef) local_unnamed_addr #1

declare i32 @qemu_create(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @char_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV) #13 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 116
  store i8 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store i32 -1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 109
  store i8 1, ptr %i.d, align 1
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @qemu_mutex_init(ptr noundef nonnull %i.e) #13
  %i.f = tail call ptr @object_get_class(ptr noundef %i.a) #13
  %i.g = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.f, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV_GET_CLASS) #13
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144
  %i.i = load ptr, ptr %i.h, align 8
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 136 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  %i.l = or i64 %i.k, 8
  store i64 %i.l, ptr %i.j, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @char_finalize(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV) #13 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.c, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  %i.e = load ptr, ptr %i.d, align 8
  tail call void @g_free(ptr noundef %i.e) #13
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  %i.g = load i32, ptr %i.f, align 8              ; 2 uses
  %.not8 = icmp eq i32 %i.g, -1
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i32 @close(i32 noundef %i.g) #13 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  tail call void @qemu_mutex_destroy(ptr noundef nonnull %i.i) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @char_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.109, i32 noundef 232, ptr noundef nonnull @__func__.CHARDEV_CLASS) #13 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr @null_chr_write, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr @chr_be_event, ptr %i.c, align 8
  ret void
}

declare void @qemu_mutex_init(ptr noundef) local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #1

declare void @qemu_mutex_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(none) uwtable
define internal noundef i32 @null_chr_write(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, i32 noundef returned %2) #12 {
bb.a:
end_hunk_0
