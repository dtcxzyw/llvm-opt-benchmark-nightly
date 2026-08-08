inline.NumInlined: 108
inline.NumDeleted: 47
begin_hunk_0_@available_cpufv_show:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !annotation !12
  %i.h = call i32 @acpi_evaluate_integer(ptr noundef %i.g, ptr noundef nonnull @.str.31, ptr noundef null, ptr noundef nonnull %i.a) #10
  %.not.i.not.i.i = icmp eq i32 %i.h, 0
  %i.i = load i64, ptr %i.a, align 8
  %i.j = trunc i64 %i.i to i32                    ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %.not.i.not.i.i, label %get_acpi.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.31) #11 ; 0 uses
  br label %get_cpufv.exit.thread

get_acpi.exit.i:                                  ; preds = %bb.b
  %i.l = icmp slt i32 %i.j, 0
  br i1 %i.l, label %get_cpufv.exit.thread, label %bb.d

bb.d:                                             ; preds = %get_acpi.exit.i
  %i.m = lshr i32 %i.j, 8
  %i.n = and i32 %i.m, 255                        ; 2 uses
  %i.o = add nsw i32 %i.n, -13
  %or.cond.i = icmp ult i32 %i.o, -12
  br i1 %or.cond.i, label %get_cpufv.exit.thread, label %get_cpufv.exit

get_cpufv.exit:                                   ; preds = %bb.d, %get_cpufv.exit
  %.018 = phi i64 [ %i.s, %get_cpufv.exit ], [ 0, %bb.d ] ; 2 uses
  %.01217 = phi i32 [ %i.t, %get_cpufv.exit ], [ 0, %bb.d ] ; 2 uses
  %i.p = getelementptr i8, ptr %2, i64 %.018
  %i.q = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %i.p, ptr noundef nonnull dereferenceable(1) @.str.70, i32 noundef %.01217) #10
  %i.r = sext i32 %i.q to i64
  %i.s = add i64 %.018, %i.r                      ; 3 uses
  %i.t = add nuw nsw i32 %.01217, 1               ; 2 uses
  %exitcond.not = icmp eq i32 %i.t, %i.n
  br i1 %exitcond.not, label %get_cpufv.exit._crit_edge, label %get_cpufv.exit, !llvm.loop !32

get_cpufv.exit._crit_edge:                        ; preds = %get_cpufv.exit
  %i.u = getelementptr i8, ptr %2, i64 %i.s
  store i16 10, ptr %i.u, align 1
  %i.v = add i64 %i.s, 1
  br label %get_cpufv.exit.thread

get_cpufv.exit.thread:                            ; preds = %bb.d, %bb.a, %bb.c, %get_acpi.exit.i, %get_cpufv.exit._crit_edge
  %.013 = phi i64 [ %i.v, %get_cpufv.exit._crit_edge ], [ -19, %get_acpi.exit.i ], [ -19, %bb.c ], [ -19, %bb.a ], [ -19, %bb.d ]
  ret i64 %.013
}

; Function Attrs: nofree noredzone nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @cpufv_disabled_show(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.a, align 8
  %i.b = getelementptr i8, ptr %.val, i64 12
  %i.c = load i8, ptr %i.b, align 4, !range !10, !noundef !11
  %i.d = zext nneg i8 %i.c to i32
  %i.e = tail call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.59, i32 noundef %i.d) #10
  %i.f = sext i32 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i64 @cpufv_disabled_store(ptr nofree noundef readonly captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 120
  %.val = load ptr, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !annotation !12
  %i.c = call i32 (ptr, ptr, ...) @sscanf(ptr noundef readonly %2, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.a) #14
  %.not.i.not = icmp eq i32 %i.c, 1
  br i1 %.not.i.not, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.a, align 4
  switch i32 %i.d, label %bb.f [
    i32 0, label %bb.c
    i32 1, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %.val, i64 12      ; 2 uses
  %i.f = load i8, ptr %i.e, align 4, !range !10, !noundef !11
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.74) #11 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  store i8 0, ptr %i.e, align 4
  br label %bb.g

bb.f:                                             ; preds = %bb.b
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.b, %bb.f, %bb.e
  %.0 = phi i64 [ -1, %bb.b ], [ -22, %bb.f ], [ %3, %bb.e ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__acpi_video_get_backlight_type(i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @backlight_device_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @read_brightness(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 216
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %.val, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 512
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %get_acpi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %.val, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !annotation !12
  %i.h = call i32 @acpi_evaluate_integer(ptr noundef %i.g, ptr noundef nonnull @.str.30, ptr noundef null, ptr noundef nonnull %i.a) #10
  %.not.i.not.i = icmp eq i32 %i.h, 0
  %i.i = load i64, ptr %i.a, align 8
  %i.j = trunc i64 %i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %.not.i.not.i, label %get_acpi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.30) #11 ; 0 uses
  br label %get_acpi.exit

get_acpi.exit:                                    ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ -19, %bb.a ], [ %i.j, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i32 -19, 1) i32 @update_bl_status(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 216
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr i8, ptr %.val, i64 8
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 512
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %set_brightness.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %0, align 8
  %i.g = load ptr, ptr %.val, align 8
  %i.h = sext i32 %i.f to i64
  %i.i = tail call i32 @acpi_execute_simple_method(ptr noundef %i.g, ptr noundef nonnull @.str.47, i64 noundef %i.h) #10
  %.not10.i.i = icmp eq i32 %i.i, 0
  br i1 %.not10.i.i, label %set_brightness.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.47) #11 ; 0 uses
  br label %set_brightness.exit

set_brightness.exit:                              ; preds = %bb.a, %bb.b, %bb.c
  %.0.i.i = phi i32 [ -19, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0.i.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_lock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @input_allocate_device() local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @sparse_keymap_setup(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @input_register_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @input_free_device(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @devm_hwmon_device_register_with_groups(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @pwm1_show(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 0, ptr %i.a, align 1
  %i.b = call i32 @ec_read(i8 noundef zeroext 99, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.c = load i8, ptr %i.a, align 1
  %i.d = zext i8 %i.c to i16
  %.lhs.trunc.i.i = mul nuw i16 %i.d, 255
  %i.e = udiv i16 %.lhs.trunc.i.i, 100
  %.zext.i.i = zext nneg i16 %i.e to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.f = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.59, i32 noundef %.zext.i.i) #10
  %i.g = sext i32 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i64 @pwm1_store(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !annotation !12
  %i.b = call i32 (ptr, ptr, ...) @sscanf(ptr noundef readonly %2, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.a) #14
  %.not.i.not.i = icmp eq i32 %i.b, 1
  br i1 %.not.i.not.i, label %bb.b, label %store_sys_hwmon.exit

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr %i.a, align 4              ; 2 uses
  %i.d = icmp sgt i32 %i.c, 254
  br i1 %i.d, label %eeepc_set_fan_pwm.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = call i32 @llvm.smax.i32(i32 %i.c, i32 0)
  %i.f = trunc nuw nsw i32 %i.e to i16
  %.lhs.trunc.i.i = mul nuw nsw i16 %i.f, 100
  %i.g = udiv i16 %.lhs.trunc.i.i, 255
  %i.h = trunc nuw nsw i16 %i.g to i8
  br label %eeepc_set_fan_pwm.exit

eeepc_set_fan_pwm.exit:                           ; preds = %bb.b, %bb.c
  %i.i = phi i8 [ %i.h, %bb.c ], [ 100, %bb.b ]
  %i.j = call i32 @ec_write(i8 noundef zeroext 99, i8 noundef zeroext %i.i) #10 ; 0 uses
  br label %store_sys_hwmon.exit

store_sys_hwmon.exit:                             ; preds = %bb.a, %eeepc_set_fan_pwm.exit
  %.0.i = phi i64 [ %3, %eeepc_set_fan_pwm.exit ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  ret i64 %.0.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ec_read(i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @ec_write(i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @fan1_input_show(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  %i.b = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 0, ptr %i.a, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i8 0, ptr %i.b, align 1
  %i.c = call i32 @ec_read(i8 noundef zeroext 102, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.d = call i32 @ec_read(i8 noundef zeroext 103, ptr noundef nonnull %i.b) #10 ; 0 uses
  %i.e = load i8, ptr %i.a, align 1
  %i.f = zext i8 %i.e to i32
  %i.g = shl nuw nsw i32 %i.f, 8
  %i.h = load i8, ptr %i.b, align 1
  %i.i = zext i8 %i.h to i32
  %i.j = or disjoint i32 %i.g, %i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.k = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.59, i32 noundef %i.j) #10
  %i.l = sext i32 %i.k to i64
  ret i64 %i.l
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @pwm1_enable_show(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr noundef %2) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 0, ptr %i.a, align 1
  %i.b = call i32 @ec_read(i8 noundef zeroext -45, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.c = load i8, ptr %i.a, align 1
  %i.d = and i8 %i.c, 2
  %.not.i = icmp eq i8 %i.d, 0
  %..i = select i1 %.not.i, i32 2, i32 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  %i.e = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef nonnull @.str.59, i32 noundef %..i) #10
  %i.f = sext i32 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i64 @pwm1_enable_store(ptr nofree readnone captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i8, align 1                       ; 6 uses
  %i.b = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  store i32 0, ptr %i.b, align 4, !annotation !12
  %i.c = call i32 (ptr, ptr, ...) @sscanf(ptr noundef readonly %2, ptr noundef nonnull @.str.60, ptr noundef nonnull %i.b) #14
  %.not.i.not.i = icmp eq i32 %i.c, 1
  br i1 %.not.i.not.i, label %bb.b, label %store_sys_hwmon.exit

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %i.b, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i8 0, ptr %i.a, align 1
  %i.e = call i32 @ec_read(i8 noundef zeroext -45, ptr noundef nonnull %i.a) #10 ; 0 uses
  %i.f = icmp eq i32 %i.d, 1
  %i.g = load i8, ptr %i.a, align 1
  %i.h = and i8 %i.g, -3
  %masksel.i = select i1 %i.f, i8 2, i8 0
  %storemerge.i = or disjoint i8 %i.h, %masksel.i ; 2 uses
  store i8 %storemerge.i, ptr %i.a, align 1
  %i.i = call i32 @ec_write(i8 noundef zeroext -45, i8 noundef zeroext %storemerge.i) #10 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %store_sys_hwmon.exit

store_sys_hwmon.exit:                             ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %3, %bb.b ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #13
  ret i64 %.0.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local ptr @alloc_workqueue_noprof(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tpd_led_update(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 -800
  %i.b = load i32, ptr %i.a, align 8
  %i.c = and i32 %i.b, 134217728
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %set_acpi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr i8, ptr %0, i64 -808
  %i.f = getelementptr i8, ptr %0, i64 -16
  %i.g = load i32, ptr %i.f, align 8
  %i.h = load ptr, ptr %i.e, align 8
  %i.i = sext i32 %i.g to i64
  %i.j = tail call i32 @acpi_execute_simple_method(ptr noundef %i.h, ptr noundef nonnull @.str.55, i64 noundef %i.i) #10
  %.not10.i = icmp eq i32 %i.j, 0
  br i1 %.not10.i, label %set_acpi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.55) #11 ; 0 uses
  br label %set_acpi.exit

set_acpi.exit:                                    ; preds = %bb.a, %bb.b, %bb.c
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @tpd_led_set(ptr noundef initializes((400, 404)) %0, i32 noundef %1) #2 align 16 prefalign(16) {
bb.a:
  %.not = icmp ne i32 %1, 0
  %i.a = zext i1 %.not to i32
  %i.b = getelementptr i8, ptr %0, i64 400
  store i32 %i.a, ptr %i.b, align 8
  %i.c = getelementptr i8, ptr %0, i64 408
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 416
  %i.f = tail call zeroext i1 @queue_work_on(i32 noundef 64, ptr noundef %i.d, ptr noundef %i.e) #10 ; 0 uses
  ret void
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @tpd_led_get(ptr nofree noundef readonly captures(none) %0) #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = getelementptr i8, ptr %0, i64 -384
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, 134217728
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %get_acpi.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr i8, ptr %0, i64 -392
  %i.g = load ptr, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i64 0, ptr %i.a, align 8, !annotation !12
  %i.h = call i32 @acpi_evaluate_integer(ptr noundef %i.g, ptr noundef nonnull @.str.40, ptr noundef null, ptr noundef nonnull %i.a) #10
  %.not.i.not.i = icmp eq i32 %i.h, 0
  %i.i = load i64, ptr %i.a, align 8
  %i.j = trunc i64 %i.i to i32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br i1 %.not.i.not.i, label %get_acpi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.40) #11 ; 0 uses
  br label %get_acpi.exit

get_acpi.exit:                                    ; preds = %bb.a, %bb.b, %bb.c
  %.0.i = phi i32 [ -19, %bb.a ], [ %i.j, %bb.b ], [ -1, %bb.c ]
  ret i32 %.0.i
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @led_classdev_register_ext(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc i32 @eeepc_new_rfkill(ptr nofree noundef nonnull readonly captures(none) %0, ptr nofree noundef captures(none) %1, ptr noundef %2, i32 noundef range(i32 1, 6) %3, i32 noundef range(i32 0, 23) %4) unnamed_addr #2 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  %i.b = alloca ptr, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #13
  %i.c = zext nneg i32 %4 to i64                  ; 3 uses
  %i.d = getelementptr [8 x i8], ptr @cm_setv, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %i.f = shl nuw nsw i64 1, %i.c                  ; 2 uses
  %i.g = and i64 %i.f, 59173100
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %acpi_setter_handle.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr i8, ptr %0, i64 8          ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = shl nuw nsw i32 1, %4                    ; 2 uses
  %i.k = and i32 %i.i, %i.j
  %i.l = icmp eq i32 %i.k, 0
  br i1 %i.l, label %acpi_setter_handle.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
end_hunk_0
