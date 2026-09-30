Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/linux/original/syscalls?download=true
inline.NumInlined: 79
inline.NumDeleted: 49
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@llvm.lifetime.start.p0
; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_wait(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_wake(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_requeue(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_wake_op(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_lock_pi(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_unlock_pi(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @futex_wait_requeue_pi(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_futex(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call fastcc i64 @__se_sys_futex(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.l) #9, !srcloc !20
  ret i64 %i.m
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @__se_sys_futex(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %6 = alloca %struct.timespec64, align 8         ; 6 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = trunc i64 %1 to i32                      ; 3 uses
  %i.d = trunc i64 %2 to i32
  %i.e = inttoptr i64 %3 to ptr
  %i.f = inttoptr i64 %4 to ptr
  %i.g = trunc i64 %5 to i32
  %i.h = and i32 %i.c, -1921                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !annotation !17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !annotation !17
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %futex_cmd_has_timeout.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.h, label %futex_cmd_has_timeout.exit.i [
    i32 0, label %bb.c
    i32 6, label %bb.c
    i32 13, label %bb.c
    i32 9, label %bb.c
    i32 11, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.i = call i32 @get_timespec64(ptr noundef nonnull %6, ptr noundef nonnull %i.e) #11
  %.not20.i = icmp eq i32 %i.i, 0
  br i1 %.not20.i, label %bb.d, label %__do_sys_futex.exit

bb.d:                                             ; preds = %bb.c
  %.val.i = load i64, ptr %6, align 8             ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val23.i = load i64, ptr %i.j, align 8         ; 2 uses
  %i.k = icmp sgt i64 %.val.i, -1
  %i.l = icmp ult i64 %.val23.i, 1000000000
  %.0.i24.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %.0.i24.i, label %bb.e, label %__do_sys_futex.exit

bb.e:                                             ; preds = %bb.d
  %i.m = icmp samesign ugt i64 %.val.i, 9223372035
  %i.n = mul i64 %.val.i, 1000000000
  %i.o = add i64 %i.n, %.val23.i
  %.0.i.i.i = select i1 %i.m, i64 9223372036854775807, i64 %i.o, !prof !18 ; 4 uses
  store i64 %.0.i.i.i, ptr %i.a, align 8
  switch i32 %i.h, label %bb.g [
    i32 0, label %bb.f
    i32 6, label %futex_cmd_has_timeout.exit.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = call i64 @ktime_get() #11
  %i.q = call i64 @ktime_add_safe(i64 noundef %i.p, i64 noundef %.0.i.i.i) #11
  br label %futex_cmd_has_timeout.exit.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.r = and i32 %i.c, 256
  %.not11.i.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i.i, label %bb.h, label %futex_cmd_has_timeout.exit.i

bb.h:                                             ; preds = %bb.g
  %i.s = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #8, !srcloc !13
  %i.t = inttoptr i64 %i.s to ptr
  %i.u = getelementptr i8, ptr %i.t, i64 2088
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr i8, ptr %i.v, i64 48
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.x, @init_time_ns
  br i1 %i.y, label %futex_cmd_has_timeout.exit.sink.split.i, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.z = getelementptr i8, ptr %i.x, i64 320
  %i.aa = call i64 @do_timens_ktime_to_host(i32 noundef 1, i64 noundef %.0.i.i.i, ptr noundef %i.z) #11
  br label %futex_cmd_has_timeout.exit.sink.split.i

futex_cmd_has_timeout.exit.sink.split.i:          ; preds = %bb.i, %bb.h, %bb.f
  %.sink.i = phi i64 [ %i.q, %bb.f ], [ %i.aa, %bb.i ], [ %.0.i.i.i, %bb.h ]
  store i64 %.sink.i, ptr %i.a, align 8
  br label %futex_cmd_has_timeout.exit.i

futex_cmd_has_timeout.exit.i:                     ; preds = %futex_cmd_has_timeout.exit.sink.split.i, %bb.g, %bb.e, %bb.b, %bb.a
  %.0.i = phi ptr [ null, %bb.a ], [ null, %bb.b ], [ %i.a, %bb.e ], [ %i.a, %bb.g ], [ %i.a, %futex_cmd_has_timeout.exit.sink.split.i ]
  %i.ab = trunc i64 %3 to i32
  %i.ac = call i64 @do_futex(ptr noundef %i.b, i32 noundef %i.c, i32 noundef %i.d, ptr noundef %.0.i, ptr noundef %i.f, i32 noundef %i.ab, i32 noundef %i.g) #9
  br label %__do_sys_futex.exit

__do_sys_futex.exit:                              ; preds = %bb.c, %bb.d, %futex_cmd_has_timeout.exit.i
  %.016.i = phi i64 [ %i.ac, %futex_cmd_has_timeout.exit.i ], [ -14, %bb.c ], [ -22, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %.016.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_futex(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4294967295
  %i.j = getelementptr i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 4294967295
  %i.m = getelementptr i8, ptr %0, i64 112
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 4294967295
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 4294967295
  %i.s = tail call fastcc i64 @__se_sys_futex(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.i, i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.r) #9, !srcloc !21
  ret i64 %i.s
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i32 -22, 1) i32 @futex_parse_waitv(ptr nofree noundef writeonly captures(none) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.futex_waitv, align 8        ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  %.not45 = icmp eq i32 %2, 0
  br i1 %.not45, label %futex_validate_input.exit.thread33, label %copy_from_user.exit.lr.ph

copy_from_user.exit.lr.ph:                        ; preds = %bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !annotation !17
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 8
  %wide.trip.count = zext i32 %2 to i64
  br label %copy_from_user.exit

copy_from_user.exit:                              ; preds = %copy_from_user.exit.lr.ph, %bb.e
  %indvars.iv = phi i64 [ 0, %copy_from_user.exit.lr.ph ], [ %indvars.iv.next, %bb.e ] ; 3 uses
  %i.d = getelementptr [24 x i8], ptr %1, i64 %indvars.iv
  %i.e = call i64 @_copy_from_user(ptr noundef nonnull %5, ptr noundef %i.d, i64 noundef 24) #11
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.b, label %futex_validate_input.exit.thread33

bb.b:                                             ; preds = %copy_from_user.exit
  %i.f = load i32, ptr %i.a, align 8              ; 5 uses
  %i.g = and i32 %i.f, -144
  %i.h = icmp ne i32 %i.g, 0
  %i.i = load i32, ptr %i.b, align 4
  %i.j = icmp ne i32 %i.i, 0
  %or.cond = select i1 %i.h, i1 true, i1 %i.j
  br i1 %or.cond, label %futex_validate_input.exit.thread33, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = and i32 %i.f, 3                          ; 2 uses
  %i.l = lshr i32 %i.f, 3
  %i.m = and i32 %i.l, 16
  %6 = or disjoint i32 %i.m, %i.k
  %i.n = and i32 %i.f, 4
  %.not8.i = icmp eq i32 %i.n, 0                  ; 2 uses
  %.1.v.i = select i1 %.not8.i, i32 16, i32 144
  %.1.i = xor i32 %6, %.1.v.i
  %7 = shl nuw nsw i32 %i.f, 6
  %8 = and i32 %7, 512
  %.2.i = or disjoint i32 %.1.i, %8
  %i.o = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #8, !srcloc !13 ; 0 uses
  %.not.i = icmp eq i32 %i.k, 2
  br i1 %.not.i, label %futex_flags_valid.exit, label %futex_validate_input.exit.thread33

futex_flags_valid.exit:                           ; preds = %bb.c
  %i.p = load i32, ptr @nr_node_ids, align 4
  %.not10.not.i = icmp ne i32 %i.p, -1
  %or.cond.not.i = select i1 %.not8.i, i1 true, i1 %.not10.not.i
  br i1 %or.cond.not.i, label %bb.d, label %futex_validate_input.exit.thread33

bb.d:                                             ; preds = %futex_flags_valid.exit
  %i.q = load i64, ptr %5, align 8                ; 2 uses
  %.not.i27 = icmp ult i64 %i.q, 4294967296
  br i1 %.not.i27, label %bb.e, label %futex_validate_input.exit.thread33

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr [160 x i8], ptr %0, i64 %indvars.iv ; 6 uses
  %i.s = getelementptr i8, ptr %i.r, i64 16
  store i32 %.2.i, ptr %i.s, align 8
  store i64 %i.q, ptr %i.r, align 8
  %i.t = load i64, ptr %i.c, align 8
  %i.u = getelementptr i8, ptr %i.r, i64 8
  store i64 %i.t, ptr %i.u, align 8
  %i.v = getelementptr i8, ptr %i.r, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(136) %i.v, ptr noundef nonnull align 8 dereferenceable(136) @futex_q_init, i64 136, i1 false)
  %i.w = getelementptr i8, ptr %i.r, i64 80
  store ptr %3, ptr %i.w, align 8
  %i.x = getelementptr i8, ptr %i.r, i64 88
  store ptr %4, ptr %i.x, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %futex_validate_input.exit.thread33, label %copy_from_user.exit, !llvm.loop !0

futex_validate_input.exit.thread33:               ; preds = %bb.e, %bb.b, %copy_from_user.exit, %futex_flags_valid.exit, %bb.d, %bb.c, %bb.a
  %.2 = phi i32 [ 0, %bb.a ], [ -22, %bb.b ], [ -22, %bb.c ], [ -14, %copy_from_user.exit ], [ -22, %bb.d ], [ -22, %futex_flags_valid.exit ], [ 0, %bb.e ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  ret i32 %.2
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_futex_waitv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8
  %i.k = tail call fastcc i64 @__se_sys_futex_waitv(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j) #9, !srcloc !22
  ret i64 %i.k
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @__se_sys_futex_waitv(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %5 = alloca %struct.futex_waitv, align 8        ; 9 uses
  %6 = alloca %struct.timespec64, align 8         ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %struct.hrtimer_sleeper, align 8    ; 6 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = trunc i64 %1 to i32                      ; 2 uses
  %i.d = inttoptr i64 %3 to ptr
  %i.e = trunc i64 %4 to i32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.f = and i64 %2, 4294967295
  %.not.i = icmp eq i64 %i.f, 0
  br i1 %.not.i, label %bb.b, label %__do_sys_futex_waitv.exit

bb.b:                                             ; preds = %bb.a
  %i.g = add i32 %i.c, -1
  %or.cond.i = icmp ult i32 %i.g, 128
  %i.h = icmp ne i64 %0, 0
  %or.cond3.i = and i1 %i.h, %or.cond.i
  br i1 %or.cond3.i, label %bb.c, label %__do_sys_futex_waitv.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %7, i8 0, i64 88, i1 false), !annotation !17
  %.not35.i = icmp eq i64 %3, 0                   ; 3 uses
  br i1 %.not35.i, label %_kzalloc_noprof.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not21.i.i = icmp eq i32 %i.e, 0               ; 2 uses
  %.011.i.i = select i1 %.not21.i.i, i32 32, i32 0
  %or.cond.i.i = icmp ugt i32 %i.e, 1
  br i1 %or.cond.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !annotation !17
  %i.i = call i32 @get_timespec64(ptr noundef nonnull %6, ptr noundef nonnull %i.d) #11
  %.not.i.i = icmp eq i32 %i.i, 0
  br i1 %.not.i.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i64, ptr %6, align 8           ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val16.i.i = load i64, ptr %i.j, align 8       ; 2 uses
  %i.k = icmp sgt i64 %.val.i.i, -1
  %i.l = icmp ult i64 %.val16.i.i, 1000000000
  %.0.i17.i.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %.0.i17.i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.m = icmp samesign ugt i64 %.val.i.i, 9223372035
  %i.n = mul i64 %.val.i.i, 1000000000
  %i.o = add i64 %i.n, %.val16.i.i
  %.0.i.i.i.i = select i1 %i.m, i64 9223372036854775807, i64 %i.o, !prof !18 ; 3 uses
  store i64 %.0.i.i.i.i, ptr %i.a, align 8
  br i1 %.not21.i.i, label %futex2_setup_timeout.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #8, !srcloc !13
  %i.q = inttoptr i64 %i.p to ptr
  %i.r = getelementptr i8, ptr %i.q, i64 2088
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = getelementptr i8, ptr %i.s, i64 48
  %i.u = load ptr, ptr %i.t, align 8              ; 2 uses
  %i.v = icmp eq ptr %i.u, @init_time_ns
  br i1 %i.v, label %timens_ktime_to_host.exit.i.i, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr i8, ptr %i.u, i64 320
  %i.x = call i64 @do_timens_ktime_to_host(i32 noundef 1, i64 noundef %.0.i.i.i.i, ptr noundef %i.w) #11
  br label %timens_ktime_to_host.exit.i.i

timens_ktime_to_host.exit.i.i:                    ; preds = %bb.i, %bb.h
  %.0.i18.i.i = phi i64 [ %i.x, %bb.i ], [ %.0.i.i.i.i, %bb.h ]
  store i64 %.0.i18.i.i, ptr %i.a, align 8
  br label %futex2_setup_timeout.exit.i

futex2_setup_timeout.exit.i:                      ; preds = %timens_ktime_to_host.exit.i.i, %bb.g
  %i.y = call ptr @futex_setup_timer(ptr noundef nonnull %i.a, ptr noundef nonnull %7, i32 noundef %.011.i.i, i64 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %_kzalloc_noprof.exit.i

bb.j:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.012.i.ph.i = phi i64 [ -22, %bb.f ], [ -14, %bb.e ], [ -22, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %__do_sys_futex_waitv.exit

_kzalloc_noprof.exit.i:                           ; preds = %futex2_setup_timeout.exit.i, %bb.c
  %i.z = and i64 %1, 4294967295                   ; 2 uses
  %i.aa = mul nuw nsw i64 %i.z, 160
  %i.ab = call noalias align 8 ptr @__kmalloc_noprof(i64 noundef range(i64 0, 687194767201) %i.aa, i32 noundef 3520) #12 ; 4 uses
  %.not37.i = icmp eq ptr %i.ab, null
  br i1 %.not37.i, label %bb.q, label %copy_from_user.exit.lr.ph.i.i

copy_from_user.exit.lr.ph.i.i:                    ; preds = %_kzalloc_noprof.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %5, i8 0, i64 24, i1 false), !annotation !17
  %i.ac = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 20
  %i.ae = getelementptr inbounds nuw i8, ptr %5, i64 8
  br label %copy_from_user.exit.i.i

copy_from_user.exit.i.i:                          ; preds = %bb.n, %copy_from_user.exit.lr.ph.i.i
  %indvars.iv.i.i = phi i64 [ 0, %copy_from_user.exit.lr.ph.i.i ], [ %indvars.iv.next.i.i, %bb.n ] ; 3 uses
  %i.af = getelementptr [24 x i8], ptr %i.b, i64 %indvars.iv.i.i
  %i.ag = call i64 @_copy_from_user(ptr noundef nonnull %5, ptr noundef %i.af, i64 noundef 24) #11
  %.not.i39.i = icmp eq i64 %i.ag, 0
  br i1 %.not.i39.i, label %bb.k, label %futex_parse_waitv.exit.thread.i

bb.k:                                             ; preds = %copy_from_user.exit.i.i
  %i.ah = load i32, ptr %i.ac, align 8            ; 5 uses
  %i.ai = and i32 %i.ah, -144
  %i.aj = icmp ne i32 %i.ai, 0
  %i.ak = load i32, ptr %i.ad, align 4
  %i.al = icmp ne i32 %i.ak, 0
  %or.cond.i40.i = select i1 %i.aj, i1 true, i1 %i.al
  br i1 %or.cond.i40.i, label %futex_parse_waitv.exit.thread.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.am = and i32 %i.ah, 3                        ; 2 uses
  %i.an = lshr i32 %i.ah, 3
  %i.ao = and i32 %i.an, 16
  %8 = or disjoint i32 %i.ao, %i.am
  %i.ap = and i32 %i.ah, 4
  %.not8.i.i.i = icmp eq i32 %i.ap, 0             ; 2 uses
  %.1.v.i.i.i = select i1 %.not8.i.i.i, i32 16, i32 144
  %.1.i.i41.i = xor i32 %8, %.1.v.i.i.i
  %9 = shl nuw nsw i32 %i.ah, 6
  %10 = and i32 %9, 512
  %.2.i.i.i = or disjoint i32 %.1.i.i41.i, %10
  %i.aq = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #8, !srcloc !13 ; 0 uses
  %.not.i.i.i = icmp eq i32 %i.am, 2
  br i1 %.not.i.i.i, label %futex_flags_valid.exit.i.i, label %futex_parse_waitv.exit.thread.i

futex_flags_valid.exit.i.i:                       ; preds = %bb.l
  %i.ar = load i32, ptr @nr_node_ids, align 4
  %.not10.not.i.i.i = icmp ne i32 %i.ar, -1
  %or.cond.not.i.i.i = select i1 %.not8.i.i.i, i1 true, i1 %.not10.not.i.i.i
  br i1 %or.cond.not.i.i.i, label %bb.m, label %futex_parse_waitv.exit.thread.i

bb.m:                                             ; preds = %futex_flags_valid.exit.i.i
  %i.as = load i64, ptr %5, align 8               ; 2 uses
  %.not.i27.i.i = icmp ult i64 %i.as, 4294967296
  br i1 %.not.i27.i.i, label %bb.n, label %futex_parse_waitv.exit.thread.i

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr [160 x i8], ptr %i.ab, i64 %indvars.iv.i.i ; 6 uses
  %i.au = getelementptr i8, ptr %i.at, i64 16
  store i32 %.2.i.i.i, ptr %i.au, align 8
  store i64 %i.as, ptr %i.at, align 8
  %i.av = load i64, ptr %i.ae, align 8
  %i.aw = getelementptr i8, ptr %i.at, i64 8
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = getelementptr i8, ptr %i.at, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef align 8 dereferenceable(136) %i.ax, ptr noundef nonnull align 8 dereferenceable(136) @futex_q_init, i64 136, i1 false)
  %i.ay = getelementptr i8, ptr %i.at, i64 80
  store ptr @futex_wake_mark, ptr %i.ay, align 8
  %i.az = getelementptr i8, ptr %i.at, i64 88
  store ptr null, ptr %i.az, align 8
  %indvars.iv.next.i.i = add nuw nsw i64 %indvars.iv.i.i, 1 ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %indvars.iv.next.i.i, %i.z
  br i1 %exitcond.not.i.i, label %bb.o, label %copy_from_user.exit.i.i, !llvm.loop !0

futex_parse_waitv.exit.thread.i:                  ; preds = %bb.m, %futex_flags_valid.exit.i.i, %bb.l, %bb.k, %copy_from_user.exit.i.i
  %.2.i.ph.i = phi i32 [ -22, %futex_flags_valid.exit.i.i ], [ -22, %bb.m ], [ -14, %copy_from_user.exit.i.i ], [ -22, %bb.l ], [ -22, %bb.k ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  br label %bb.p

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #10
  %..i = select i1 %.not35.i, ptr null, ptr %7
  %i.ba = call i32 @futex_wait_multiple(ptr noundef nonnull %i.ab, i32 noundef %i.c, ptr noundef %..i) #11
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %futex_parse_waitv.exit.thread.i
  %.030.i = phi i32 [ %.2.i.ph.i, %futex_parse_waitv.exit.thread.i ], [ %i.ba, %bb.o ]
  call void @kfree(ptr noundef nonnull %i.ab) #11
  %i.bb = sext i32 %.030.i to i64
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %_kzalloc_noprof.exit.i
  %.1.i = phi i64 [ %i.bb, %bb.p ], [ -12, %_kzalloc_noprof.exit.i ] ; 2 uses
  br i1 %.not35.i, label %__do_sys_futex_waitv.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bc = call i32 @hrtimer_cancel(ptr noundef nonnull %7) #11 ; 0 uses
  br label %__do_sys_futex_waitv.exit

__do_sys_futex_waitv.exit:                        ; preds = %bb.a, %bb.b, %bb.j, %bb.q, %bb.r
  %.0.i = phi i64 [ -22, %bb.a ], [ %.012.i.ph.i, %bb.j ], [ -22, %bb.b ], [ %.1.i, %bb.r ], [ %.1.i, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_futex_waitv(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4294967295
  %i.j = getelementptr i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 4294967295
  %i.m = getelementptr i8, ptr %0, i64 112
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 4294967295
  %i.p = tail call fastcc i64 @__se_sys_futex_waitv(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.i, i64 noundef %i.l, i64 noundef %i.o) #9, !srcloc !23
  ret i64 %i.p
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_futex_wake(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %i.i = inttoptr i64 %i.b to ptr
  %i.j = trunc i64 %i.f to i32
  %i.k = trunc i64 %i.h to i32                    ; 5 uses
  %i.l = and i32 %i.k, -144
  %.not.i.i = icmp eq i32 %i.l, 0
  br i1 %.not.i.i, label %bb.b, label %__se_sys_futex_wake.exit

bb.b:                                             ; preds = %bb.a
  %i.m = and i32 %i.k, 3
  %i.n = lshr i32 %i.k, 3
  %i.o = and i32 %i.n, 16
  %1 = or disjoint i32 %i.o, 2
  %i.p = and i32 %i.k, 4
  %.not8.i.i.i = icmp eq i32 %i.p, 0              ; 2 uses
  %.1.v.i.i.i = select i1 %.not8.i.i.i, i32 16, i32 144
  %.1.i.i.i = xor i32 %1, %.1.v.i.i.i
  %2 = shl nuw nsw i32 %i.k, 6
  %3 = and i32 %2, 512
  %i.q = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #8, !srcloc !13 ; 0 uses
  %.not.i.i.i = icmp eq i32 %i.m, 2
  br i1 %.not.i.i.i, label %futex_flags_valid.exit.i.i, label %__se_sys_futex_wake.exit

futex_flags_valid.exit.i.i:                       ; preds = %bb.b
  %i.r = load i32, ptr @nr_node_ids, align 4
  %.not10.not.i.i.i = icmp ne i32 %i.r, -1
  %or.cond.not.i.i.i = select i1 %.not8.i.i.i, i1 true, i1 %.not10.not.i.i.i
  %.not.i9.i.i = icmp ult i64 %i.d, 4294967296
  %or.cond.i.i = and i1 %.not.i9.i.i, %or.cond.not.i.i.i
  br i1 %or.cond.i.i, label %bb.c, label %__se_sys_futex_wake.exit

bb.c:                                             ; preds = %futex_flags_valid.exit.i.i
  %.2.i.i.i = or disjoint i32 %3, %.1.i.i.i
  %4 = or disjoint i32 %.2.i.i.i, 256
  %i.s = trunc nuw i64 %i.d to i32
  %i.t = tail call i32 @futex_wake(ptr noundef %i.i, i32 noundef %4, ptr noundef null, i32 noundef %i.j, i32 noundef %i.s) #11
  %i.u = sext i32 %i.t to i64
  br label %__se_sys_futex_wake.exit

__se_sys_futex_wake.exit:                         ; preds = %bb.a, %bb.b, %futex_flags_valid.exit.i.i, %bb.c
  %.0.i.i = phi i64 [ -22, %bb.a ], [ %i.u, %bb.c ], [ -22, %futex_flags_valid.exit.i.i ], [ -22, %bb.b ]
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_futex_wake(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8
  %i.h = getelementptr i8, ptr %0, i64 104
  %i.i = load i64, ptr %i.h, align 8
  %i.j = inttoptr i64 %i.c to ptr
  %i.k = trunc i64 %i.g to i32
  %i.l = trunc i64 %i.i to i32                    ; 5 uses
  %i.m = and i32 %i.l, -144
  %.not.i.i = icmp eq i32 %i.m, 0
  br i1 %.not.i.i, label %bb.b, label %__se_sys_futex_wake.exit

bb.b:                                             ; preds = %bb.a
  %i.n = and i32 %i.l, 3
  %i.o = lshr i32 %i.l, 3
  %i.p = and i32 %i.o, 16
  %1 = or disjoint i32 %i.p, 2
  %i.q = and i32 %i.l, 4
  %.not8.i.i.i = icmp eq i32 %i.q, 0              ; 2 uses
  %.1.v.i.i.i = select i1 %.not8.i.i.i, i32 16, i32 144
  %.1.i.i.i = xor i32 %1, %.1.v.i.i.i
  %2 = shl nuw nsw i32 %i.l, 6
  %3 = and i32 %2, 512
  %i.r = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #8, !srcloc !13 ; 0 uses
  %.not.i.i.i = icmp eq i32 %i.n, 2
  br i1 %.not.i.i.i, label %futex_flags_valid.exit.i.i, label %__se_sys_futex_wake.exit

futex_flags_valid.exit.i.i:                       ; preds = %bb.b
  %i.s = load i32, ptr @nr_node_ids, align 4
  %.not10.not.i.i.i = icmp ne i32 %i.s, -1
  %or.cond.not.i.i.i = select i1 %.not8.i.i.i, i1 true, i1 %.not10.not.i.i.i
  br i1 %or.cond.not.i.i.i, label %bb.c, label %__se_sys_futex_wake.exit

bb.c:                                             ; preds = %futex_flags_valid.exit.i.i
  %.2.i.i.i = or disjoint i32 %3, %.1.i.i.i
  %4 = or disjoint i32 %.2.i.i.i, 256
  %i.t = trunc i64 %i.e to i32
  %i.u = tail call i32 @futex_wake(ptr noundef %i.j, i32 noundef %4, ptr noundef null, i32 noundef %i.k, i32 noundef %i.t) #11
  %i.v = sext i32 %i.u to i64
  br label %__se_sys_futex_wake.exit

__se_sys_futex_wake.exit:                         ; preds = %bb.a, %bb.b, %futex_flags_valid.exit.i.i, %bb.c
  %.0.i.i = phi i64 [ -22, %bb.a ], [ %i.v, %bb.c ], [ -22, %futex_flags_valid.exit.i.i ], [ -22, %bb.b ]
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_futex_wait(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call fastcc i64 @__se_sys_futex_wait(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.l) #9, !srcloc !24
  ret i64 %i.m
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @__se_sys_futex_wait(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %6 = alloca %struct.timespec64, align 8         ; 7 uses
  %i.a = alloca i64, align 8                      ; 6 uses
  %7 = alloca %struct.hrtimer_sleeper, align 8    ; 6 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = trunc i64 %3 to i32                      ; 5 uses
  %i.d = inttoptr i64 %4 to ptr
  %i.e = trunc i64 %5 to i32                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #10
  %i.f = and i32 %i.c, -144
  %.not.i = icmp eq i32 %i.f, 0
  br i1 %.not.i, label %bb.b, label %__do_sys_futex_wait.exit

bb.b:                                             ; preds = %bb.a
  %i.g = and i32 %i.c, 3                          ; 2 uses
  %i.h = lshr i32 %i.c, 3
  %i.i = and i32 %i.h, 16
  %8 = or disjoint i32 %i.i, %i.g
  %i.j = and i32 %i.c, 4
  %.not8.i.i = icmp eq i32 %i.j, 0                ; 2 uses
  %.1.v.i.i = select i1 %.not8.i.i, i32 16, i32 144
  %.1.i.i = xor i32 %8, %.1.v.i.i
  %9 = shl nuw nsw i32 %i.c, 6
  %10 = and i32 %9, 512
  %.2.i.i = or disjoint i32 %.1.i.i, %10          ; 2 uses
  %i.k = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #8, !srcloc !13
  %.not.i.i = icmp eq i32 %i.g, 2
  br i1 %.not.i.i, label %futex_flags_valid.exit.i, label %__do_sys_futex_wait.exit

futex_flags_valid.exit.i:                         ; preds = %bb.b
  %i.l = load i32, ptr @nr_node_ids, align 4
  %.not10.not.i.i = icmp ne i32 %i.l, -1
  %or.cond.not.i.i = select i1 %.not8.i.i, i1 true, i1 %.not10.not.i.i
  %i.m = or i64 %2, %1
  %i.n = icmp ult i64 %i.m, 4294967296
  %or.cond35.i = and i1 %i.n, %or.cond.not.i.i
  br i1 %or.cond35.i, label %bb.c, label %__do_sys_futex_wait.exit

bb.c:                                             ; preds = %futex_flags_valid.exit.i
  %.not20.i = icmp eq i64 %4, 0
  br i1 %.not20.i, label %.thread.i, label %bb.d

.thread.i:                                        ; preds = %bb.c
  %i.o = trunc nuw i64 %1 to i32
  %i.p = trunc nuw i64 %2 to i32
  %i.q = tail call i32 @__futex_wait(ptr noundef %i.b, i32 noundef %.2.i.i, i32 noundef %i.o, ptr noundef null, i32 noundef %i.p) #11
  br label %bb.l

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %.not21.i.i = icmp eq i32 %i.e, 0               ; 2 uses
  %.011.i.i = select i1 %.not21.i.i, i32 32, i32 0
  %or.cond.i.i = icmp ugt i32 %i.e, 1
  br i1 %or.cond.i.i, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %7, i8 0, i64 88, i1 false), !annotation !17
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !annotation !17
  %i.r = call i32 @get_timespec64(ptr noundef nonnull %6, ptr noundef nonnull %i.d) #11
  %.not.i27.i = icmp eq i32 %i.r, 0
  br i1 %.not.i27.i, label %bb.f, label %bb.j

bb.f:                                             ; preds = %bb.e
  %.val.i.i = load i64, ptr %6, align 8           ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val16.i.i = load i64, ptr %i.s, align 8       ; 2 uses
  %i.t = icmp sgt i64 %.val.i.i, -1
  %i.u = icmp ult i64 %.val16.i.i, 1000000000
  %.0.i17.i.i = select i1 %i.t, i1 %i.u, i1 false
  br i1 %.0.i17.i.i, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  %i.v = icmp samesign ugt i64 %.val.i.i, 9223372035
  %i.w = mul i64 %.val.i.i, 1000000000
  %i.x = add i64 %i.w, %.val16.i.i
  %.0.i.i.i.i = select i1 %i.v, i64 9223372036854775807, i64 %i.x, !prof !18 ; 3 uses
  store i64 %.0.i.i.i.i, ptr %i.a, align 8
  br i1 %.not21.i.i, label %bb.k, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = inttoptr i64 %i.k to ptr
  %i.z = getelementptr i8, ptr %i.y, i64 2088
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = getelementptr i8, ptr %i.aa, i64 48
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %i.ad = icmp eq ptr %i.ac, @init_time_ns
  br i1 %i.ad, label %timens_ktime_to_host.exit.i.i, label %bb.i, !prof !12

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr i8, ptr %i.ac, i64 320
  %i.af = call i64 @do_timens_ktime_to_host(i32 noundef 1, i64 noundef %.0.i.i.i.i, ptr noundef %i.ae) #11
  br label %timens_ktime_to_host.exit.i.i

timens_ktime_to_host.exit.i.i:                    ; preds = %bb.i, %bb.h
  %.0.i18.i.i = phi i64 [ %i.af, %bb.i ], [ %.0.i.i.i.i, %bb.h ]
  store i64 %.0.i18.i.i, ptr %i.a, align 8
  br label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.e, %bb.d
  %.012.i.ph.i = phi i64 [ -22, %bb.f ], [ -14, %bb.e ], [ -22, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  br label %__do_sys_futex_wait.exit

bb.k:                                             ; preds = %timens_ktime_to_host.exit.i.i, %bb.g
  %i.ag = call ptr @futex_setup_timer(ptr noundef nonnull %i.a, ptr noundef nonnull %7, i32 noundef %.011.i.i, i64 noundef 0) #11 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #10
  %i.ah = trunc nuw i64 %1 to i32
  %i.ai = trunc nuw i64 %2 to i32
  %i.aj = call i32 @__futex_wait(ptr noundef %i.b, i32 noundef %.2.i.i, i32 noundef %i.ah, ptr noundef nonnull %7, i32 noundef %i.ai) #11
  %i.ak = call i32 @hrtimer_cancel(ptr noundef nonnull %7) #11 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.thread.i
  %i.al = phi i32 [ %i.q, %.thread.i ], [ %i.aj, %bb.k ]
  %i.am = sext i32 %i.al to i64
  br label %__do_sys_futex_wait.exit

__do_sys_futex_wait.exit:                         ; preds = %bb.a, %bb.b, %futex_flags_valid.exit.i, %bb.j, %bb.l
  %.0.i = phi i64 [ -22, %bb.a ], [ %.012.i.ph.i, %bb.j ], [ %i.am, %bb.l ], [ -22, %futex_flags_valid.exit.i ], [ -22, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #10
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_futex_wait(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4294967295
  %i.j = getelementptr i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 4294967295
  %i.m = getelementptr i8, ptr %0, i64 112
  %i.n = load i64, ptr %i.m, align 8
  %i.o = and i64 %i.n, 4294967295
  %i.p = getelementptr i8, ptr %0, i64 32
  %i.q = load i64, ptr %i.p, align 8
  %i.r = and i64 %i.q, 4294967295
  %i.s = tail call fastcc i64 @__se_sys_futex_wait(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.i, i64 noundef %i.l, i64 noundef %i.o, i64 noundef %i.r) #9, !srcloc !25
  ret i64 %i.s
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_futex_requeue(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %i.i = tail call fastcc i64 @__se_sys_futex_requeue(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h) #9, !srcloc !26
  ret i64 %i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @__se_sys_futex_requeue(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %4 = alloca %struct.futex_waitv, align 8        ; 11 uses
  %i.a = alloca i32, align 4                      ; 4 uses
  %i.b = inttoptr i64 %0 to ptr                   ; 2 uses
  %i.c = trunc i64 %2 to i32
  %i.d = trunc i64 %3 to i32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  %i.e = and i64 %1, 4294967295
  %.not.i = icmp ne i64 %i.e, 0
  %.not11.i = icmp eq i64 %0, 0
  %or.cond.i = or i1 %.not11.i, %.not.i
  br i1 %or.cond.i, label %__do_sys_futex_requeue.exit, label %copy_from_user.exit.i.i

copy_from_user.exit.i.i:                          ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %4, i8 0, i64 24, i1 false), !annotation !17
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 20 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = call i64 @_copy_from_user(ptr noundef nonnull %4, ptr noundef nonnull %i.b, i64 noundef 24) #11
  %.not.i.i = icmp eq i64 %i.i, 0
  br i1 %.not.i.i, label %bb.b, label %bb.h

bb.b:                                             ; preds = %copy_from_user.exit.i.i
  %i.j = load i32, ptr %i.f, align 8              ; 5 uses
  %i.k = and i32 %i.j, -144
  %i.l = icmp ne i32 %i.k, 0
  %i.m = load i32, ptr %i.g, align 4
  %i.n = icmp ne i32 %i.m, 0
  %or.cond.i.i = select i1 %i.l, i1 true, i1 %i.n
  br i1 %or.cond.i.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = and i32 %i.j, 3                          ; 2 uses
  %i.p = lshr i32 %i.j, 3
  %i.q = and i32 %i.p, 16
  %5 = or disjoint i32 %i.q, %i.o
  %i.r = and i32 %i.j, 4
  %.not8.i.i.i = icmp eq i32 %i.r, 0              ; 2 uses
  %.1.v.i.i.i = select i1 %.not8.i.i.i, i32 16, i32 144
  %.1.i.i.i = xor i32 %5, %.1.v.i.i.i
  %6 = shl nuw nsw i32 %i.j, 6
  %7 = and i32 %6, 512
  %.2.i.i.i = or disjoint i32 %.1.i.i.i, %7       ; 3 uses
  %i.s = call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #8 ; 0 uses
  %.not.i.i.i = icmp eq i32 %i.o, 2
  br i1 %.not.i.i.i, label %futex_flags_valid.exit.i.i, label %bb.h

futex_flags_valid.exit.i.i:                       ; preds = %bb.c
  %i.t = load i32, ptr @nr_node_ids, align 4
  %.not10.not.i.i.i = icmp ne i32 %i.t, -1
  %or.cond.not.i.i.i = select i1 %.not8.i.i.i, i1 true, i1 %.not10.not.i.i.i
  br i1 %or.cond.not.i.i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %futex_flags_valid.exit.i.i
  %i.u = load i64, ptr %4, align 8                ; 2 uses
  %.not.i27.i.i = icmp ult i64 %i.u, 4294967296
  br i1 %.not.i27.i.i, label %copy_from_user.exit.i.1.i, label %bb.h

copy_from_user.exit.i.1.i:                        ; preds = %bb.d
  %i.v = load i64, ptr %i.h, align 8
  %i.w = getelementptr i8, ptr %i.b, i64 24
  %i.x = call i64 @_copy_from_user(ptr noundef nonnull %4, ptr noundef %i.w, i64 noundef 24) #11
  %.not.i.1.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.1.i, label %bb.e, label %bb.h

bb.e:                                             ; preds = %copy_from_user.exit.i.1.i
  %i.y = load i32, ptr %i.f, align 8              ; 5 uses
  %i.z = and i32 %i.y, -144
  %i.aa = icmp ne i32 %i.z, 0
  %i.ab = load i32, ptr %i.g, align 4
  %i.ac = icmp ne i32 %i.ab, 0
  %or.cond.i.1.i = select i1 %i.aa, i1 true, i1 %i.ac
  br i1 %or.cond.i.1.i, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = and i32 %i.y, 3                         ; 2 uses
  %i.ae = lshr i32 %i.y, 3
  %i.af = and i32 %i.ae, 16
  %8 = or disjoint i32 %i.af, %i.ad
  %i.ag = and i32 %i.y, 4
  %.not8.i.i.1.i = icmp eq i32 %i.ag, 0           ; 2 uses
  %.1.v.i.i.1.i = select i1 %.not8.i.i.1.i, i32 16, i32 144
  %.1.i.i.1.i = xor i32 %8, %.1.v.i.i.1.i
  %9 = shl nuw nsw i32 %i.y, 6
  %10 = and i32 %9, 512
  %i.ah = or disjoint i32 %.1.i.i.1.i, %10
  %.not.i.i.1.i = icmp eq i32 %i.ad, 2
  br i1 %.not.i.i.1.i, label %futex_flags_valid.exit.i.1.i, label %bb.h

futex_flags_valid.exit.i.1.i:                     ; preds = %bb.f
  %i.ai = load i32, ptr @nr_node_ids, align 4
  %.not10.not.i.i.1.i = icmp ne i32 %i.ai, -1
  %or.cond.not.i.i.1.i = select i1 %.not8.i.i.1.i, i1 true, i1 %.not10.not.i.i.1.i
  %i.aj = load i64, ptr %4, align 8
  %.not.i27.i.1.i = icmp ult i64 %i.aj, 4294967296
  %or.cond20.i = select i1 %or.cond.not.i.i.1.i, i1 %.not.i27.i.1.i, i1 false
  br i1 %or.cond20.i, label %bb.g, label %bb.h

bb.g:                                             ; preds = %futex_flags_valid.exit.i.1.i
  %i.ak = load i64, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  %.not13.i = icmp eq i32 %.2.i.i.i, %i.ah
  br i1 %.not13.i, label %bb.i, label %__do_sys_futex_requeue.exit

bb.h:                                             ; preds = %futex_flags_valid.exit.i.1.i, %bb.f, %bb.e, %copy_from_user.exit.i.1.i, %bb.d, %futex_flags_valid.exit.i.i, %bb.c, %bb.b, %copy_from_user.exit.i.i
  %.2.i.ph.i = phi i64 [ -22, %futex_flags_valid.exit.i.i ], [ -22, %bb.d ], [ -14, %copy_from_user.exit.i.i ], [ -22, %bb.c ], [ -22, %bb.b ], [ -14, %copy_from_user.exit.i.1.i ], [ -22, %bb.e ], [ -22, %bb.f ], [ -22, %futex_flags_valid.exit.i.1.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #10
  br label %__do_sys_futex_requeue.exit

bb.i:                                             ; preds = %bb.g
  %i.al = trunc nuw i64 %i.u to i32
  store i32 %i.al, ptr %i.a, align 4
  %i.am = inttoptr i64 %i.v to ptr
  %i.an = inttoptr i64 %i.ak to ptr
  %i.ao = call i32 @futex_requeue(ptr noundef %i.am, i32 noundef %.2.i.i.i, ptr noundef %i.an, i32 noundef %.2.i.i.i, i32 noundef %i.c, i32 noundef %i.d, ptr noundef nonnull %i.a, i32 noundef 0) #11
  %i.ap = sext i32 %i.ao to i64
  br label %__do_sys_futex_requeue.exit

__do_sys_futex_requeue.exit:                      ; preds = %bb.a, %bb.g, %bb.h, %bb.i
  %.0.i = phi i64 [ -22, %bb.a ], [ %.2.i.ph.i, %bb.h ], [ -22, %bb.g ], [ %i.ap, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #10
  ret i64 %.0.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__ia32_sys_futex_requeue(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %i.d = getelementptr i8, ptr %0, i64 88
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = getelementptr i8, ptr %0, i64 96
  %i.h = load i64, ptr %i.g, align 8
  %i.i = and i64 %i.h, 4294967295
  %i.j = getelementptr i8, ptr %0, i64 104
  %i.k = load i64, ptr %i.j, align 8
  %i.l = and i64 %i.k, 4294967295
  %i.m = tail call fastcc i64 @__se_sys_futex_requeue(i64 noundef %i.c, i64 noundef %i.f, i64 noundef %i.i, i64 noundef %i.l) #9, !srcloc !27
  ret i64 %i.m
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none)
define dso_local range(i64 -22, 1) i64 @__ia32_compat_sys_set_robust_list(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #0 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 88
  %i.b = load i64, ptr %i.a, align 8
  %i.c = and i64 %i.b, 4294967295
  %.not.i.i = icmp eq i64 %i.c, 12
  br i1 %.not.i.i, label %bb.b, label %__se_compat_sys_set_robust_list.exit, !prof !12

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8
  %i.f = and i64 %i.e, 4294967295
  %i.g = inttoptr i64 %i.f to ptr
  %i.h = tail call i64 asm "movq %gs:${1:a}, $0", "=r,i,~{dirflag},~{fpsr},~{flags}"(ptr nonnull @current_task) #8, !srcloc !13
  %i.i = inttoptr i64 %i.h to ptr
  %i.j = getelementptr i8, ptr %i.i, i64 2536
  store ptr %i.g, ptr %i.j, align 8
  br label %__se_compat_sys_set_robust_list.exit

__se_compat_sys_set_robust_list.exit:             ; preds = %bb.a, %bb.b
  %.0.i.i = phi i64 [ 0, %bb.b ], [ -22, %bb.a ]
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local i64 @__ia32_compat_sys_get_robust_list(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 40
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 88
  %i.d = load i64, ptr %i.c, align 8
  %i.e = and i64 %i.d, 4294967295
  %i.f = getelementptr i8, ptr %0, i64 96
  %i.g = load i64, ptr %i.f, align 8
  %i.h = trunc i64 %i.b to i32
  %i.i = inttoptr i64 %i.e to ptr
  %i.j = tail call fastcc ptr @futex_get_robust_list_common(i32 noundef %i.h, i1 noundef zeroext true) #9, !srcloc !28 ; 3 uses
  %i.k = icmp ugt ptr %i.j, inttoptr (i64 -4096 to ptr)
  br i1 %i.k, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.l = ptrtoint ptr %i.j to i64
  br label %__se_compat_sys_get_robust_list.exit

bb.c:                                             ; preds = %bb.a
  %i.m = and i64 %i.g, 4294967295
  %i.n = inttoptr i64 %i.m to ptr
  %i.o = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.p = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.n, i32 12, i64 4, i64 %i.o) #10, !srcloc !29 ; 2 uses
  %i.q = extractvalue { ptr, i64 } %i.p, 0
  %i.r = extractvalue { ptr, i64 } %i.p, 1
  %i.s = ptrtoint ptr %i.q to i64
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.r)
  %sext.mask.i.i = and i64 %i.s, 4294967295
  %.not.i.i = icmp eq i64 %sext.mask.i.i, 0
  br i1 %.not.i.i, label %bb.d, label %__se_compat_sys_get_robust_list.exit

bb.d:                                             ; preds = %bb.c
  %i.t = ptrtoint ptr %i.j to i64
  %i.u = trunc i64 %i.t to i32
  %i.v = tail call i64 @llvm.read_register.i64(metadata !1)
  %i.w = tail call { ptr, i64 } asm sideeffect "call __put_user_${4:c}", "={cx},={rsp},0,{rax},i,{rsp},~{ebx},~{dirflag},~{fpsr},~{flags}"(ptr %i.i, i32 %i.u, i64 4, i64 %i.v) #10, !srcloc !30 ; 2 uses
  %i.x = extractvalue { ptr, i64 } %i.w, 0
  %i.y = extractvalue { ptr, i64 } %i.w, 1
  %i.z = ptrtoint ptr %i.x to i64
  tail call void @llvm.write_register.i64(metadata !1, i64 %i.y)
  %sext.i.i = shl i64 %i.z, 32
  %i.aa = ashr exact i64 %sext.i.i, 32
  br label %__se_compat_sys_get_robust_list.exit

__se_compat_sys_get_robust_list.exit:             ; preds = %bb.b, %bb.c, %bb.d
  %.0.i.i = phi i64 [ %i.l, %bb.b ], [ %i.aa, %bb.d ], [ -14, %bb.c ]
  ret i64 %.0.i.i
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define dso_local range(i64 -2147483648, 2147483648) i64 @__x64_sys_futex_time32(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 112
  %i.b = load i64, ptr %i.a, align 8
  %i.c = getelementptr i8, ptr %0, i64 104
  %i.d = load i64, ptr %i.c, align 8
  %i.e = getelementptr i8, ptr %0, i64 96
  %i.f = load i64, ptr %i.e, align 8
  %i.g = getelementptr i8, ptr %0, i64 56
  %i.h = load i64, ptr %i.g, align 8
  %i.i = getelementptr i8, ptr %0, i64 72
  %i.j = load i64, ptr %i.i, align 8
  %i.k = getelementptr i8, ptr %0, i64 64
  %i.l = load i64, ptr %i.k, align 8
  %i.m = tail call fastcc i64 @__se_sys_futex_time32(i64 noundef %i.b, i64 noundef %i.d, i64 noundef %i.f, i64 noundef %i.h, i64 noundef %i.j, i64 noundef %i.l) #9, !srcloc !31
  ret i64 %i.m
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal fastcc range(i64 -2147483648, 2147483648) i64 @__se_sys_futex_time32(i64 noundef %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i64 noundef %5) unnamed_addr #1 align 16 prefalign(16) {
bb.a:
  %i.a = alloca i64, align 8                      ; 8 uses
  %6 = alloca %struct.timespec64, align 8         ; 6 uses
  %i.b = inttoptr i64 %0 to ptr
  %i.c = trunc i64 %1 to i32                      ; 3 uses
  %i.d = trunc i64 %2 to i32
  %i.e = inttoptr i64 %3 to ptr
  %i.f = inttoptr i64 %4 to ptr
  %i.g = trunc i64 %5 to i32
  %i.h = and i32 %i.c, -1921                      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #10
  store i64 0, ptr %i.a, align 8, !annotation !17
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false), !annotation !17
  %.not.i = icmp eq i64 %3, 0
  br i1 %.not.i, label %futex_cmd_has_timeout.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  switch i32 %i.h, label %futex_cmd_has_timeout.exit.i [
    i32 0, label %bb.c
    i32 6, label %bb.c
    i32 13, label %bb.c
    i32 9, label %bb.c
    i32 11, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b, %bb.b, %bb.b, %bb.b, %bb.b
  %i.i = call i32 @get_old_timespec32(ptr noundef nonnull %6, ptr noundef nonnull %i.e) #11
  %.not18.i = icmp eq i32 %i.i, 0
  br i1 %.not18.i, label %bb.d, label %__do_sys_futex_time32.exit

bb.d:                                             ; preds = %bb.c
  %.val.i = load i64, ptr %6, align 8             ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 8
  %.val21.i = load i64, ptr %i.j, align 8         ; 2 uses
  %i.k = icmp sgt i64 %.val.i, -1
  %i.l = icmp ult i64 %.val21.i, 1000000000
  %.0.i22.i = select i1 %i.k, i1 %i.l, i1 false
  br i1 %.0.i22.i, label %bb.e, label %__do_sys_futex_time32.exit

bb.e:                                             ; preds = %bb.d
  %i.m = icmp samesign ugt i64 %.val.i, 9223372035
  %i.n = mul i64 %.val.i, 1000000000
  %i.o = add i64 %i.n, %.val21.i
  %.0.i.i.i = select i1 %i.m, i64 9223372036854775807, i64 %i.o, !prof !18 ; 4 uses
  store i64 %.0.i.i.i, ptr %i.a, align 8
  switch i32 %i.h, label %bb.g [
    i32 0, label %bb.f
    i32 6, label %futex_cmd_has_timeout.exit.i
  ]

bb.f:                                             ; preds = %bb.e
  %i.p = call i64 @ktime_get() #11
  %i.q = call i64 @ktime_add_safe(i64 noundef %i.p, i64 noundef %.0.i.i.i) #11
  br label %futex_cmd_has_timeout.exit.sink.split.i

bb.g:                                             ; preds = %bb.e
  %i.r = and i32 %i.c, 256
  %.not11.i.i = icmp eq i32 %i.r, 0
  br i1 %.not11.i.i, label %bb.h, label %futex_cmd_has_timeout.exit.i

bb.h:                                             ; preds = %bb.g
end_hunk_0
