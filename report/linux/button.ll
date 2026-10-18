Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/button?download=true
inline.NumInlined: 55
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@devm_acpi_button_add_event_handler:bb.a
  %i.n = getelementptr i8, ptr %i.a, i64 408
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr i8, ptr %i.a, i64 416
  %i.q = load i64, ptr %i.p, align 8
  %i.r = trunc i64 %i.q to i32
  %i.s = tail call i32 @acpi_enable_gpe_cond(ptr noundef %i.o, i32 noundef %i.r, i8 noundef zeroext 1) #10
  %.not17.i = icmp eq i32 %i.s, 0
  %i.t = getelementptr i8, ptr %1, i64 98
  %i.u = zext i1 %.not17.i to i8
  store i8 %i.u, ptr %i.t, align 2
  br label %select.unfold

select.unfold:                                    ; preds = %bb.c, %bb.b, %bb.f, %bb.e
  %i.v = tail call i32 @__devm_add_action(ptr noundef %0, ptr noundef nonnull @acpi_button_remove_event_handler, ptr noundef nonnull %1, ptr noundef nonnull @.str.31) #10 ; 2 uses
  %.not.i6 = icmp eq i32 %i.v, 0
  br i1 %.not.i6, label %acpi_button_add_event_handler.exit, label %bb.g

bb.g:                                             ; preds = %select.unfold
  %i.w = load ptr, ptr %1, align 8                ; 4 uses
  %i.x = getelementptr i8, ptr %i.w, i64 4
  %i.y = load i32, ptr %i.x, align 4
  switch i32 %i.y, label %bb.j [
    i32 4, label %bb.h
    i32 5, label %bb.i
  ]

bb.h:                                             ; preds = %bb.g
  %i.z = tail call i32 @acpi_remove_fixed_event_handler(i32 noundef 2, ptr noundef nonnull @acpi_button_event) #10 ; 0 uses
  br label %acpi_button_remove_event_handler.exit

bb.i:                                             ; preds = %bb.g
  %i.aa = tail call i32 @acpi_remove_fixed_event_handler(i32 noundef 3, ptr noundef nonnull @acpi_button_event) #10 ; 0 uses
  br label %acpi_button_remove_event_handler.exit

bb.j:                                             ; preds = %bb.g
  %i.ab = getelementptr i8, ptr %1, i64 98
  %i.ac = load i8, ptr %i.ab, align 2, !range !11, !noundef !12
  %i.ad = trunc nuw i8 %i.ac to i1
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.ae = getelementptr i8, ptr %i.w, i64 408
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = getelementptr i8, ptr %i.w, i64 416
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = trunc i64 %i.ah to i32
  %i.aj = tail call i32 @acpi_disable_gpe(ptr noundef %i.af, i32 noundef %i.ai) #10 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ak = getelementptr i8, ptr %i.w, i64 8
  %i.al = load ptr, ptr %i.ak, align 8
  %i.am = getelementptr i8, ptr %1, i64 16
  %.val.i7 = load i32, ptr %i.am, align 8
  %i.an = icmp eq i32 %.val.i7, 5
  %acpi_lid_notify.acpi_button_notify.i.i8 = select i1 %i.an, ptr @acpi_lid_notify, ptr @acpi_button_notify
  %i.ao = tail call i32 @acpi_remove_notify_handler(ptr noundef %i.al, i32 noundef 3, ptr noundef nonnull %acpi_lid_notify.acpi_button_notify.i.i8) #10 ; 0 uses
  br label %acpi_button_remove_event_handler.exit

acpi_button_remove_event_handler.exit:            ; preds = %bb.h, %bb.i, %bb.l
  tail call void @acpi_os_wait_events_complete() #10
  br label %acpi_button_add_event_handler.exit

acpi_button_add_event_handler.exit:               ; preds = %acpi_button_remove_event_handler.exit, %select.unfold, %bb.d, %bb.b, %bb.c
  %.0 = phi i32 [ -19, %bb.d ], [ -19, %bb.b ], [ -19, %bb.c ], [ 0, %select.unfold ], [ %i.v, %acpi_button_remove_event_handler.exit ]
  ret i32 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @acpi_lid_save(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  tail call void @mutex_lock(ptr noundef nonnull @acpi_lid_lock) #10
  %i.a = getelementptr i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8
  store ptr %i.b, ptr @saved_lid_handle, align 8
  tail call void @mutex_unlock(ptr noundef nonnull @acpi_lid_lock) #10
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc void @acpi_lid_notify_state(ptr nofree noundef captures(none) %0, i1 noundef zeroext %1) unnamed_addr #0 align 16 prefalign(16) {
._crit_edge:
  %i.a = zext i1 %1 to i8                         ; 3 uses
  %i.b = load i64, ptr @lid_init_state, align 8
  %.not = icmp ne i64 %i.b, 0
  %i.c = getelementptr i8, ptr %0, i64 80
  %i.d = load i8, ptr %i.c, align 8, !range !11   ; 2 uses
  %i.e = icmp ne i8 %i.d, %i.a
  %i.f = or i1 %.not, %i.e                        ; 3 uses
  %i.g = getelementptr i8, ptr %0, i64 88         ; 2 uses
  %i.h = getelementptr i8, ptr %0, i64 80
  %i.i = zext i1 %1 to i32
  %i.j = icmp eq i8 %i.d, %i.a
  br i1 %i.j, label %bb.a, label %bb.d

bb.a:                                             ; preds = %._crit_edge
  %i.k = load i64, ptr @lid_report_interval, align 8
  %i.l = mul i64 %i.k, 1000000
  %i.m = load i64, ptr %i.g, align 8
  %i.n = add i64 %i.m, %i.l
  %i.o = tail call i64 @ktime_get() #10
  %i.p = icmp sgt i64 %i.o, %i.n
  br i1 %i.p, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %.b = load i1, ptr @acpi_lid_notify_state.__already_done, align 1
  br i1 %.b, label %.critedge, label %bb.c, !prof !17

bb.c:                                             ; preds = %bb.b
  store i1 true, ptr @acpi_lid_notify_state.__already_done, align 1
  %i.q = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21) #12 ; 0 uses
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %bb.c
  %i.r = load i64, ptr @lid_init_state, align 8
  %i.s = icmp ne i64 %i.r, 0                      ; 2 uses
  %brmerge = or i1 %1, %i.s
  %not. = xor i1 %i.s, true
  %.mux = or i1 %i.f, %not.
  br i1 %brmerge, label %bb.d, label %.critedge26

.critedge26:                                      ; preds = %.critedge
  %i.t = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.u = load ptr, ptr %i.t, align 8
  tail call void @input_event(ptr noundef %i.u, i32 noundef 5, i32 noundef 0, i32 noundef range(i32 0, 2) %i.i) #10
  %i.v = load ptr, ptr %i.t, align 8
  tail call void @input_event(ptr noundef %i.v, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  br label %bb.e

bb.d:                                             ; preds = %.critedge, %bb.a, %._crit_edge
  %.0 = phi i1 [ %i.f, %._crit_edge ], [ %i.f, %bb.a ], [ %.mux, %.critedge ]
  br i1 %.0, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.critedge26, %bb.d
  %i.w = getelementptr i8, ptr %0, i64 24         ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = xor i1 %1, true
  %i.z = zext i1 %i.y to i32
  tail call void @input_event(ptr noundef %i.x, i32 noundef 5, i32 noundef 0, i32 noundef range(i32 0, 2) %i.z) #10
  %i.aa = load ptr, ptr %i.w, align 8
  tail call void @input_event(ptr noundef %i.aa, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  store i8 %i.a, ptr %i.h, align 8
  %i.ab = tail call i64 @ktime_get() #10
  store i64 %i.ab, ptr %i.g, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_event(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @acpi_pm_wakeup_event(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_lid_remove_fs(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %i.b = getelementptr i8, ptr %i.a, i64 512      ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.26, ptr noundef %i.c) #10
  %i.d = getelementptr i8, ptr %i.a, i64 120
  %i.e = load ptr, ptr @acpi_lid_dir, align 8
  tail call void @remove_proc_entry(ptr noundef %i.d, ptr noundef %i.e) #10
  store ptr null, ptr %i.b, align 8
  %i.f = load ptr, ptr @acpi_button_dir, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.25, ptr noundef %i.f) #10
  store ptr null, ptr @acpi_lid_dir, align 8
  %i.g = load ptr, ptr @acpi_root_dir, align 8
  tail call void @remove_proc_entry(ptr noundef nonnull @.str.24, ptr noundef %i.g) #10
  store ptr null, ptr @acpi_button_dir, align 8
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @proc_mkdir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @proc_create_single_data(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @acpi_button_state_seq_show(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 104
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %i.d, i64 8
  %i.f = load ptr, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !annotation !10
  %i.g = call i32 @acpi_evaluate_integer(ptr noundef %i.f, ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull %i.a) #10
  %.not.i.not = icmp eq i32 %i.g, 0               ; 2 uses
  %i.h = load i64, ptr %i.a, align 8
  %.not5 = icmp eq i64 %i.h, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  %.not = select i1 %.not.i.not, i1 %.not5, i1 false
  %i.i = select i1 %.not, ptr @.str.29, ptr @.str.4
  %i.j = select i1 %.not.i.not, ptr %i.i, ptr @.str.28
  call void (ptr, ptr, ...) @seq_printf(ptr noundef %0, ptr noundef nonnull @.str.27, ptr noundef nonnull %i.j) #10
  ret i32 0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @remove_proc_entry(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__devm_add_action(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_button_wakeup_cleanup(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @device_wakeup_disable(ptr noundef %0) #10
  tail call void @device_set_wakeup_capable(ptr noundef %0, i1 noundef zeroext false) #10
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @device_set_wakeup_capable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @device_wakeup_enable(ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @device_wakeup_disable(ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_button_remove_event_handler(ptr nofree noundef readonly captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 4 uses
  %i.b = getelementptr i8, ptr %i.a, i64 4
  %i.c = load i32, ptr %i.b, align 4
  switch i32 %i.c, label %bb.d [
    i32 4, label %bb.b
    i32 5, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @acpi_remove_fixed_event_handler(i32 noundef 2, ptr noundef nonnull @acpi_button_event) #10 ; 0 uses
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = tail call i32 @acpi_remove_fixed_event_handler(i32 noundef 3, ptr noundef nonnull @acpi_button_event) #10 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 98
  %i.g = load i8, ptr %i.f, align 2, !range !11, !noundef !12
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr i8, ptr %i.a, i64 408
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %i.a, i64 416
  %i.l = load i64, ptr %i.k, align 8
  %i.m = trunc i64 %i.l to i32
  %i.n = tail call i32 @acpi_disable_gpe(ptr noundef %i.j, i32 noundef %i.m) #10 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.o = getelementptr i8, ptr %i.a, i64 8
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr i8, ptr %0, i64 16
  %.val = load i32, ptr %i.q, align 8
  %i.r = icmp eq i32 %.val, 5
  %acpi_lid_notify.acpi_button_notify.i = select i1 %i.r, ptr @acpi_lid_notify, ptr @acpi_button_notify
  %i.s = tail call i32 @acpi_remove_notify_handler(ptr noundef %i.p, i32 noundef 3, ptr noundef nonnull %acpi_lid_notify.acpi_button_notify.i) #10 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c, %bb.b
  tail call void @acpi_os_wait_events_complete() #10
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_install_notify_handler(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_enable_gpe_cond(ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_install_fixed_event_handler(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i32 @acpi_button_event(ptr noundef %0) #0 align 16 prefalign(16) {
bb.a:
  %i.a = tail call i32 @acpi_os_execute(i32 noundef 1, ptr noundef nonnull @acpi_button_notify_run, ptr noundef %0) #10 ; 0 uses
  ret i32 1
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_os_execute(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_button_notify_run(ptr nofree noundef captures(none) %0) #0 align 16 prefalign(16) {
bb.a:
  tail call void @acpi_button_notify(ptr poison, i32 noundef 128, ptr noundef %0) #14, !srcloc !18
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_button_notify(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = load ptr, ptr %2, align 8                ; 2 uses
  switch i32 %1, label %bb.e [
    i32 128, label %bb.b
    i32 2, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.b = getelementptr i8, ptr %2, i64 8
  %i.c = load ptr, ptr %i.b, align 8
  tail call void @acpi_pm_wakeup_event(ptr noundef %i.c) #10
  %i.d = getelementptr i8, ptr %2, i64 96
  %i.e = load i8, ptr %i.d, align 8, !range !11, !noundef !12
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = icmp eq i32 %1, 2
  %or.cond = or i1 %i.g, %i.f
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %2, i64 24
  %i.i = load ptr, ptr %i.h, align 8              ; 5 uses
  %i.j = getelementptr i8, ptr %i.i, i64 64
  %i.k = load volatile i64, ptr %i.j, align 8
  %.in.in = and i64 %i.k, 16384
  %.in.not = icmp eq i64 %.in.in, 0
  %i.l = select i1 %.in.not, i32 116, i32 142     ; 2 uses
  tail call void @input_event(ptr noundef %i.i, i32 noundef 1, i32 noundef range(i32 116, 144) %i.l, i32 noundef 1) #10
  tail call void @input_event(ptr noundef %i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  tail call void @input_event(ptr noundef %i.i, i32 noundef 1, i32 noundef range(i32 116, 144) %i.l, i32 noundef 0) #10
  tail call void @input_event(ptr noundef %i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0) #10
  %i.m = getelementptr i8, ptr %2, i64 32
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr i8, ptr %i.a, i64 688
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.p, null
  br i1 %.not.i, label %bb.d, label %dev_name.exit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr i8, ptr %i.a, i64 608
  %.val.i = load ptr, ptr %i.q, align 8
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %bb.c, %bb.d
  %.0.i = phi ptr [ %.val.i, %bb.d ], [ %i.p, %bb.c ]
  %i.r = trunc nuw i32 %1 to i8
  %i.s = getelementptr i8, ptr %2, i64 72         ; 2 uses
  %i.t = load i64, ptr %i.s, align 8
  %i.u = add i64 %i.t, 1                          ; 2 uses
  store i64 %i.u, ptr %i.s, align 8
  %i.v = trunc i64 %i.u to i32
  %i.w = tail call i32 @acpi_bus_generate_netlink_event(ptr noundef %i.n, ptr noundef %.0.i, i8 noundef zeroext %i.r, i32 noundef %i.v) #10 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.b, %bb.a, %dev_name.exit
  ret void
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @acpi_bus_generate_netlink_event(ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_lid_notify(ptr nofree readnone captures(none) %0, i32 noundef %1, ptr nofree noundef captures(none) %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %.not = icmp eq i32 %1, 128
  br i1 %.not, label %bb.b, label %acpi_lid_update_state.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr i8, ptr %2, i64 97
  %i.c = load i8, ptr %i.b, align 1, !range !11, !noundef !12
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.c, label %acpi_lid_update_state.exit

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr %2, align 8
  %i.f = getelementptr i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store i64 0, ptr %i.a, align 8, !annotation !10
  %i.h = call i32 @acpi_evaluate_integer(ptr noundef %i.g, ptr noundef nonnull @.str, ptr noundef null, ptr noundef nonnull %i.a) #10
  %.not.i.not.i = icmp eq i32 %i.h, 0
  %i.i = load i64, ptr %i.a, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br i1 %.not.i.not.i, label %bb.d, label %acpi_lid_update_state.exit

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ne i64 %i.i, 0                      ; 2 uses
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr i8, ptr %2, i64 8
  %i.l = load ptr, ptr %i.k, align 8
end_hunk_0
