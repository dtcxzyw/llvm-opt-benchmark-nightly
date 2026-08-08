inline.NumInlined: 1946
inline.NumDeleted: 201
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 13
begin_hunk_0_@last_sync_action_show:bb.a
  %i.a = getelementptr i8, ptr %0, i64 392
  %i.b = load i32, ptr %i.a, align 8
  %i.c = zext i32 %i.b to i64
  %i.d = getelementptr [8 x i8], ptr @action_name, i64 %i.c
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(1) @.str.82, ptr noundef %i.e) #29
  %i.g = sext i32 %i.f to i64
  ret i64 %i.g
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @mismatch_cnt_show(ptr nofree noundef captures(address) %0, ptr nofree noundef writeonly captures(none) %1) #21 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 448
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(1) @.str.87, i64 noundef %i.b) #29
  %i.d = sext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @sync_min_show(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #21 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 472
  %.val = load i32, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq i32 %.val, 0                  ; 2 uses
  %i.b = load i32, ptr @sysctl_speed_limit_min, align 4
  %i.c = select i1 %.not.i, i32 %i.b, i32 %.val
  %i.d = select i1 %.not.i, ptr @.str.92, ptr @.str.91
  %i.e = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef %i.c, ptr noundef nonnull %i.d) #29
  %i.f = sext i32 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sync_min_store(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(7) @.str.92, i64 noundef 6) #29
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !annotation !21
  %i.d = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %i.a) #29 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %i.d to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.i = phi i32 [ %i.g, %bb.d ], [ 0, %bb.a ]
  %i.j = getelementptr i8, ptr %0, i64 472
  store i32 %i.i, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i64 [ %2, %bb.e ], [ %i.f, %bb.c ], [ -22, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind null_pointer_is_valid willreturn memory(argmem: read)
declare dso_local i32 @strncmp(ptr noundef captures(none), ptr noundef captures(none), i64 noundef) local_unnamed_addr #11

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @sync_max_show(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #21 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 476
  %.val = load i32, ptr %i.a, align 4             ; 2 uses
  %.not.i = icmp eq i32 %.val, 0                  ; 2 uses
  %i.b = load i32, ptr @sysctl_speed_limit_max, align 4
  %i.c = select i1 %.not.i, i32 %i.b, i32 %.val
  %i.d = select i1 %.not.i, ptr @.str.92, ptr @.str.91
  %i.e = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef %i.c, ptr noundef nonnull %i.d) #29
  %i.f = sext i32 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sync_max_store(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(7) @.str.92, i64 noundef 6) #29
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !annotation !21
  %i.d = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %i.a) #29 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %i.d to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.i = phi i32 [ %i.g, %bb.d ], [ 0, %bb.a ]
  %i.j = getelementptr i8, ptr %0, i64 476
  store i32 %i.i, ptr %i.j, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i64 [ %2, %bb.e ], [ %i.f, %bb.c ], [ -22, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @sync_io_depth_show(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #21 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 480
  %.val = load i32, ptr %i.a, align 8             ; 2 uses
  %.not.i = icmp eq i32 %.val, 0                  ; 2 uses
  %i.b = load i32, ptr @sysctl_sync_io_depth, align 4
  %i.c = select i1 %.not.i, i32 %i.b, i32 %.val
  %i.d = select i1 %.not.i, ptr @.str.92, ptr @.str.91
  %i.e = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(1) @.str.90, i32 noundef %i.c, ptr noundef nonnull %i.d) #29
  %i.f = sext i32 %i.e to i64
  ret i64 %i.f
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sync_io_depth_store(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i32, align 4                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  %i.b = tail call i32 @strncmp(ptr noundef %1, ptr noundef nonnull dereferenceable(7) @.str.92, i64 noundef 6) #29
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  store i32 0, ptr %i.a, align 4, !annotation !21
  %i.d = call i32 @kstrtouint(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %i.a) #29 ; 2 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = sext i32 %i.d to i64
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.g = load i32, ptr %i.a, align 4              ; 2 uses
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d
  %i.i = phi i32 [ %i.g, %bb.d ], [ 0, %bb.a ]
  %i.j = getelementptr i8, ptr %0, i64 480
  store i32 %i.i, ptr %i.j, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.0 = phi i64 [ %2, %bb.e ], [ %i.f, %bb.c ], [ -22, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @sync_speed_show(ptr nofree noundef captures(address) %0, ptr nofree noundef writeonly captures(none) %1) #21 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 400
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) @.str.99, i64 6, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 432
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 584
  %i.g = load volatile i32, ptr %i.f, align 8
  %i.h = sext i32 %i.g to i64
  %i.i = load volatile i64, ptr @jiffies, align 64
  %i.j = getelementptr i8, ptr %0, i64 416
  %i.k = load i64, ptr %i.j, align 8
  %i.l = sub i64 %i.i, %i.k                       ; 2 uses
  %i.m = udiv i64 %i.l, 1000
  %.not = icmp ult i64 %i.l, 1000
  %spec.select = select i1 %.not, i64 1, i64 %i.m
  %i.n = getelementptr i8, ptr %0, i64 424
  %i.o = load i64, ptr %i.n, align 8
  %i.p = add i64 %i.o, %i.h
  %i.q = sub i64 %i.e, %i.p
  %2 = udiv i64 %i.q, %spec.select
  %3 = lshr i64 %2, 1
  %i.r = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(1) @.str.100, i64 noundef %3) #29
  %i.s = sext i32 %i.r to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.012 = phi i64 [ 5, %bb.b ], [ %i.s, %bb.c ]
  ret i64 %.012
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @sync_force_parallel_show(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #21 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 484
  %i.b = load i32, ptr %i.a, align 4
  %i.c = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(1) @.str.103, i32 noundef %i.b) #29
  %i.d = sext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i64 @sync_force_parallel_store(ptr nofree noundef captures(none) %0, ptr noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8, !annotation !21
  %i.b = call i32 @kstrtoll(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %i.a) #29
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.a, align 8              ; 2 uses
  %or.cond = icmp ugt i64 %i.c, 1
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = trunc nuw nsw i64 %i.c to i32
  %i.e = getelementptr i8, ptr %0, i64 484
  store i32 %i.d, ptr %i.e, align 4
  %i.f = getelementptr i8, ptr %0, i64 384
  %i.g = load ptr, ptr %i.f, align 8
  %.not5 = icmp eq ptr %i.g, null
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call i32 @__wake_up(ptr noundef nonnull @resync_wait, i32 noundef 3, i32 noundef 1, ptr noundef null) #29 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i64 [ -22, %bb.b ], [ -22, %bb.a ], [ %2, %bb.d ], [ %2, %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.0
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @sync_completed_show(ptr nofree noundef captures(address) %0, ptr nofree noundef writeonly captures(none) %1) #21 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 496        ; 3 uses
  %i.b = load volatile i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 2
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(6) %1, ptr noundef nonnull align 1 dereferenceable(6) @.str.99, i64 6, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 400
  %i.e = load i64, ptr %i.d, align 8
  %.off = add i64 %i.e, -1
  %switch = icmp ult i64 %.off, 2
  br i1 %switch, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(9) %1, ptr noundef nonnull align 1 dereferenceable(9) @.str.105, i64 9, i1 false)
  br label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.f = load volatile i64, ptr %i.a, align 8
  %i.g = and i64 %i.f, 64
  %.not39 = icmp eq i64 %i.g, 0
  br i1 %.not39, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.h = load volatile i64, ptr %i.a, align 8
  %i.i = and i64 %i.h, 1024
  %.not41 = icmp eq i64 %i.i, 0
  %spec.select = select i1 %.not41, i64 288, i64 440
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sink = phi i64 [ 440, %bb.e ], [ %spec.select, %bb.f ]
  %i.j = getelementptr i8, ptr %0, i64 %.sink
  %.0 = load i64, ptr %i.j, align 8
  %i.k = getelementptr i8, ptr %0, i64 408
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(1) @.str.106, i64 noundef %i.l, i64 noundef %.0) #29
  %i.n = sext i32 %i.m to i64
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.b
  %.036 = phi i64 [ 8, %bb.d ], [ %i.n, %bb.g ], [ 5, %bb.b ]
  ret i64 %.036
}

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @min_sync_show(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #21 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 624
  %i.b = load i64, ptr %i.a, align 8
  %i.c = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(1) @.str.87, i64 noundef %i.b) #29
  %i.d = sext i32 %i.c to i64
  ret i64 %i.d
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i64 @min_sync_store(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #28
  store i64 0, ptr %i.a, align 8, !annotation !21
  %i.b = call i32 @kstrtoull(ptr noundef %1, i32 noundef 10, ptr noundef nonnull %i.a) #29
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr i8, ptr %0, i64 744        ; 2 uses
  call void @_raw_spin_lock(ptr noundef %i.c) #29
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 632
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr i8, ptr %0, i64 496
  %i.i = load volatile i64, ptr %i.h, align 8
  %i.j = and i64 %i.i, 2
  %.not17 = icmp eq i64 %i.j, 0
  br i1 %.not17, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.k = and i64 %i.d, -8
  %i.l = getelementptr i8, ptr %0, i64 624
  store i64 %i.k, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.d
  %.not16 = phi i64 [ -22, %bb.b ], [ -16, %bb.c ], [ %2, %bb.d ]
  call void @_raw_spin_unlock(ptr noundef %i.c) #29
  br label %bb.f

bb.f:                                             ; preds = %bb.a, %bb.e
  %.015 = phi i64 [ %.not16, %bb.e ], [ -22, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #28
  ret i64 %.015
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @kstrtoull(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: fn_ret_thunk_extern nofree noredzone nounwind null_pointer_is_valid sspstrong
define internal range(i64 -2147483648, 2147483648) i64 @max_sync_show(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef writeonly captures(none) %1) #21 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 632
  %i.b = load i64, ptr %i.a, align 8              ; 2 uses
  %i.c = icmp eq i64 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef align 1 dereferenceable(5) %1, ptr noundef nonnull align 1 dereferenceable(5) @.str.111, i64 5, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef nonnull dereferenceable(1) @.str.87, i64 noundef %i.b) #29
  %i.e = sext i32 %i.d to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i64 [ 4, %bb.b ], [ %i.e, %bb.c ]
  ret i64 %.0
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal noundef i64 @max_sync_store(ptr noundef %0, ptr noundef %1, i64 noundef %2) #0 align 16 prefalign(16) {
sub_0:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr i8, ptr %0, i64 744        ; 2 uses
  tail call void @_raw_spin_lock(ptr noundef %i.b) #29
  %i.c = load i8, ptr %1, align 1
  %.not50 = icmp eq i8 %i.c, 109
  br i1 %.not50, label %sub_1, label %.tail.thread

sub_1:                                            ; preds = %sub_0
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.e = load i8, ptr %i.d, align 1
  %.not51 = icmp eq i8 %i.e, 97
  br i1 %.not51, label %.tail, label %.tail.thread
end_hunk_0
