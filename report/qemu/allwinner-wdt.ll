Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/allwinner-wdt?download=true
inline.NumInlined: 33
inline.NumDeleted: 12
begin_hunk_0_@allwinner_wdt_register:bb.a
}

declare ptr @type_register_static(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @allwinner_wdt_init(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.3, i32 noundef 20, ptr noundef nonnull @__func__.SYS_BUS_DEVICE) #5
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 49, ptr noundef nonnull @__func__.AW_WDT) #5 ; 4 uses
  %i.c = tail call ptr @object_get_class(ptr noundef %i.b) #5
  %i.d = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.c, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 49, ptr noundef nonnull @__func__.AW_WDT_GET_CLASS) #5
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 816 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 200
  %i.g = load i64, ptr %i.f, align 8
  %i.h = shl i64 %i.g, 2
  tail call void @memory_region_init_io(ptr noundef nonnull %i.e, ptr noundef %i.b, ptr noundef nonnull @allwinner_wdt_ops, ptr noundef %i.b, ptr noundef nonnull @.str, i64 noundef %i.h) #5
  tail call void @sysbus_init_mmio(ptr noundef %i.a, ptr noundef nonnull %i.e) #5
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @allwinner_wdt_class_init(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE_CLASS) #5 ; 2 uses
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef 22, ptr noundef nonnull @__func__.RESETTABLE_CLASS) #5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @allwinner_wdt_reset_enter, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  store ptr @allwinner_wdt_realize, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr @allwinner_wdt_vmstate, ptr %i.e, align 8
  ret void
}

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @sysbus_init_mmio(ptr noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare ptr @object_get_class(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4294967296) i64 @allwinner_wdt_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 49, ptr noundef nonnull @__func__.AW_WDT) #5 ; 3 uses
  %i.b = tail call ptr @object_get_class(ptr noundef %i.a) #5
  %i.c = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 49, ptr noundef nonnull @__func__.AW_WDT_GET_CLASS) #5 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp ult i64 %1, %i.e
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 2048
  %.not23 = icmp eq i32 %i.g, 0
  br i1 %.not23, label %trace_allwinner_wdt_read.exit, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.h = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.allwinner_wdt_read, i32 noundef %i.h) #5
  br label %trace_allwinner_wdt_read.exit

bb.d:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %1
  %i.l = load i8, ptr %i.k, align 1               ; 3 uses
  switch i8 %i.l, label %bb.e [
    i8 2, label %bb.i
    i8 4, label %bb.i
  ]

bb.e:                                             ; preds = %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 208
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = trunc i64 %1 to i32                      ; 2 uses
  %i.p = tail call zeroext i1 %i.n(ptr noundef %i.a, i32 noundef %i.o) #5
  br i1 %i.p, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = load i32, ptr @qemu_loglevel, align 4
  %i.r = and i32 %i.q, 1024
  %.not24 = icmp eq i32 %i.r, 0
  br i1 %.not24, label %trace_allwinner_wdt_read.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.allwinner_wdt_read, i32 noundef %i.o) #5
  br label %trace_allwinner_wdt_read.exit

bb.h:                                             ; preds = %bb.e
  %i.s = load ptr, ptr %i.i, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %1
  %i.u = load i8, ptr %i.t, align 1
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.d, %bb.h
  %.sink27 = phi i8 [ %i.u, %bb.h ], [ %i.l, %bb.d ], [ %i.l, %bb.d ]
  %.sink = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.v = zext i8 %.sink27 to i64
  %i.w = getelementptr inbounds nuw [4 x i8], ptr %.sink, i64 %i.v
  %.0.in = load i32, ptr %i.w, align 4
  %.0 = zext i32 %.0.in to i64                    ; 5 uses
  %i.x = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %trace_allwinner_wdt_read.exit, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.y = load i16, ptr @_TRACE_ALLWINNER_WDT_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.y, 0
  br i1 %.not3.i, label %trace_allwinner_wdt_read.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = load i32, ptr @qemu_loglevel, align 4
  %i.aa = and i32 %i.z, 32768
  %.not4.i = icmp eq i32 %i.aa, 0
  br i1 %.not4.i, label %trace_allwinner_wdt_read.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8, i64 noundef %1, i64 noundef range(i64 0, 4294967296) %.0, i32 noundef %2) #5
  br label %trace_allwinner_wdt_read.exit

trace_allwinner_wdt_read.exit:                    ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.f, %bb.g, %bb.b, %bb.c
  %.021 = phi i64 [ 0, %bb.b ], [ 0, %bb.f ], [ 0, %bb.c ], [ 0, %bb.g ], [ %.0, %bb.i ], [ %.0, %bb.j ], [ %.0, %bb.k ], [ %.0, %bb.l ]
  ret i64 %.021
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @allwinner_wdt_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 49, ptr noundef nonnull @__func__.AW_WDT) #5 ; 7 uses
  %i.b = tail call ptr @object_get_class(ptr noundef %i.a) #5
  %i.c = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 49, ptr noundef nonnull @__func__.AW_WDT_GET_CLASS) #5 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 200
  %i.e = load i64, ptr %i.d, align 8
  %.not = icmp ult i64 %1, %i.e
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 2048
  %.not32 = icmp eq i32 %i.g, 0
  br i1 %.not32, label %bb.p, label %bb.c, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.h = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.6, ptr noundef nonnull @__func__.allwinner_wdt_write, i32 noundef %i.h) #5
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.i = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %trace_allwinner_wdt_write.exit, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.j = load i16, ptr @_TRACE_ALLWINNER_WDT_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.j, 0
  br i1 %.not3.i, label %trace_allwinner_wdt_write.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load i32, ptr @qemu_loglevel, align 4
  %i.l = and i32 %i.k, 32768
  %.not4.i = icmp eq i32 %i.l, 0
  br i1 %.not4.i, label %trace_allwinner_wdt_write.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, i64 noundef %1, i64 noundef %2, i32 noundef %3) #5
  br label %trace_allwinner_wdt_write.exit

trace_allwinner_wdt_write.exit:                   ; preds = %bb.d, %bb.e, %bb.f, %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 192 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 %1
  %i.p = load i8, ptr %i.o, align 1
  switch i8 %i.p, label %bb.l [
    i8 2, label %bb.h
    i8 4, label %bb.j
  ]

bb.h:                                             ; preds = %trace_allwinner_wdt_write.exit
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 232
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = trunc i64 %2 to i32
  %i.t = tail call zeroext i1 %i.r(ptr noundef %i.a, i32 noundef %i.s) #5
  %.not30 = trunc i64 %2 to i1
  %or.cond.not = and i1 %i.t, %.not30
  br i1 %or.cond.not, label %bb.i, label %bb.p

bb.i:                                             ; preds = %bb.h
  tail call fastcc void @allwinner_wdt_update_timer(ptr noundef %i.a)
  br label %bb.p

bb.j:                                             ; preds = %trace_allwinner_wdt_write.exit
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 1112 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = trunc i64 %2 to i32                      ; 2 uses
  store i32 %i.w, ptr %i.u, align 8
  %4 = xor i32 %i.v, -1
  %i.x = and i32 %i.w, 1
  %5 = and i32 %i.x, %4
  %.not29 = icmp eq i32 %5, 0
  br i1 %.not29, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @allwinner_wdt_update_timer(ptr noundef nonnull %i.a)
  br label %bb.p

bb.l:                                             ; preds = %trace_allwinner_wdt_write.exit
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 216
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = trunc i64 %1 to i32                     ; 2 uses
  %i.ab = trunc i64 %2 to i32                     ; 2 uses
  %i.ac = tail call zeroext i1 %i.z(ptr noundef %i.a, i32 noundef %i.aa, i32 noundef %i.ab) #5
  br i1 %i.ac, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load i32, ptr @qemu_loglevel, align 4
  %i.ae = and i32 %i.ad, 1024
  %.not33 = icmp eq i32 %i.ae, 0
  br i1 %.not33, label %bb.o, label %bb.n, !prof !7

bb.n:                                             ; preds = %bb.m
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.allwinner_wdt_write, i32 noundef %i.aa) #5
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n, %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.ag = load ptr, ptr %i.m, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 %1
  %i.ai = load i8, ptr %i.ah, align 1
  %i.aj = zext i8 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.af, i64 %i.aj
  store i32 %i.ab, ptr %i.ak, align 4
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.i, %bb.h, %bb.k, %bb.j, %bb.b, %bb.c
  ret void
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @allwinner_wdt_update_timer(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @object_get_class(ptr noundef %0) #5
  %i.b = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 49, ptr noundef nonnull @__func__.AW_WDT_GET_CLASS) #5
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call zeroext i8 %i.d(ptr noundef %0) #5 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088 ; 5 uses
  %i.g = load ptr, ptr %i.f, align 16
  tail call void @ptimer_transaction_begin(ptr noundef %i.g) #5
  %i.h = load ptr, ptr %i.f, align 16
  tail call void @ptimer_stop(ptr noundef %i.h) #5
  %i.i = icmp ult i8 %i.e, 12
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.j = zext nneg i8 %i.e to i64
  %i.k = load ptr, ptr %i.f, align 16
  %i.l = getelementptr inbounds nuw i8, ptr @allwinner_wdt_count_map, i64 %i.j
  %i.m = load i8, ptr %i.l, align 1
  %i.n = zext i8 %i.m to i64
  tail call void @ptimer_set_count(ptr noundef %i.k, i64 noundef %i.n) #5
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.o = load i32, ptr @qemu_loglevel, align 4
  %i.p = and i32 %i.o, 2048
  %.not = icmp eq i32 %i.p, 0
  br i1 %.not, label %bb.e, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  %i.q = zext i8 %i.e to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, ptr noundef nonnull @__func__.allwinner_wdt_update_timer, i32 noundef %i.q) #5
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.r = load ptr, ptr %i.f, align 16
  tail call void @ptimer_run(ptr noundef %i.r, i32 noundef 1) #5
  %i.s = load ptr, ptr %i.f, align 16
  tail call void @ptimer_transaction_commit(ptr noundef %i.s) #5
  %i.t = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.t, 0
  br i1 %.not.i, label %trace_allwinner_wdt_update_timer.exit, label %bb.f, !prof !7

bb.f:                                             ; preds = %bb.e
  %i.u = load i16, ptr @_TRACE_ALLWINNER_WDT_UPDATE_TIMER_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.u, 0
  br i1 %.not1.i, label %trace_allwinner_wdt_update_timer.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr @qemu_loglevel, align 4
  %i.w = and i32 %i.v, 32768
  %.not2.i = icmp eq i32 %i.w, 0
  br i1 %.not2.i, label %trace_allwinner_wdt_update_timer.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.x = zext i8 %i.e to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, i32 noundef %i.x) #5
  br label %trace_allwinner_wdt_update_timer.exit

trace_allwinner_wdt_update_timer.exit:            ; preds = %bb.e, %bb.f, %bb.g, %bb.h
  ret void
}

declare void @ptimer_transaction_begin(ptr noundef) local_unnamed_addr #1

declare void @ptimer_stop(ptr noundef) local_unnamed_addr #1

declare void @ptimer_set_count(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ptimer_run(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ptimer_transaction_commit(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @allwinner_wdt_reset_enter(ptr noundef %0, i32 %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 49, ptr noundef nonnull @__func__.AW_WDT) #5
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %trace_allwinner_wdt_reset_enter.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_ALLWINNER_WDT_RESET_ENTER_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.c, 0
  br i1 %.not1.i, label %trace_allwinner_wdt_reset_enter.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not2.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i, label %trace_allwinner_wdt_reset_enter.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.16) #5
  br label %trace_allwinner_wdt_reset_enter.exit

trace_allwinner_wdt_reset_enter.exit:             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.f, i8 noundef 0, i64 noundef 20, i1 noundef false) #5
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @allwinner_wdt_realize(ptr noundef %0, ptr nofree readnone captures(none) %1) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 49, ptr noundef nonnull @__func__.AW_WDT) #5 ; 2 uses
  %i.b = tail call ptr @ptimer_init(ptr noundef nonnull @allwinner_wdt_expired, ptr noundef %i.a, i8 noundef zeroext 28) #5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 1088 ; 4 uses
  store ptr %i.b, ptr %i.c, align 16
  tail call void @ptimer_transaction_begin(ptr noundef %i.b) #5
  %i.d = load ptr, ptr %i.c, align 16
  tail call void @ptimer_set_freq(ptr noundef %i.d, i32 noundef 2) #5
  %i.e = load ptr, ptr %i.c, align 16
  tail call void @ptimer_set_limit(ptr noundef %i.e, i64 noundef 255, i32 noundef 1) #5
  %i.f = load ptr, ptr %i.c, align 16
  tail call void @ptimer_transaction_commit(ptr noundef %i.f) #5
  ret void
}

declare ptr @ptimer_init(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @allwinner_wdt_expired(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 49, ptr noundef nonnull @__func__.AW_WDT) #5 ; 3 uses
  %i.b = tail call ptr @object_get_class(ptr noundef %i.a) #5
  %i.c = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.b, ptr noundef nonnull @.str, ptr noundef nonnull @.str.4, i32 noundef 49, ptr noundef nonnull @__func__.AW_WDT_GET_CLASS) #5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 1112
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = trunc i32 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 224
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call zeroext i1 %i.h(ptr noundef %i.a) #5 ; 2 uses
  %i.j = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %trace_allwinner_wdt_expired.exit, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.k = load i16, ptr @_TRACE_ALLWINNER_WDT_EXPIRED_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.k, 0
  br i1 %.not2.i, label %trace_allwinner_wdt_expired.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i32, ptr @qemu_loglevel, align 4
  %i.m = and i32 %i.l, 32768
  %.not3.i = icmp eq i32 %i.m, 0
  br i1 %.not3.i, label %trace_allwinner_wdt_expired.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = and i32 %i.e, 1
  %i.o = zext i1 %i.i to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.17, i32 noundef %i.n, i32 noundef %i.o) #5
  br label %trace_allwinner_wdt_expired.exit

trace_allwinner_wdt_expired.exit:                 ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %or.cond = and i1 %i.i, %i.f
  br i1 %or.cond, label %bb.e, label %bb.f

end_hunk_0
