Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/cmsdk-apb-watchdog?download=true
inline.NumInlined: 30
inline.NumDeleted: 11
begin_hunk_0_@cmsdk_apb_watchdog_read:bb.a
bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 1132
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = zext i32 %i.aa to i64
  br label %cmsdk_apb_watchdog_intstatus.exit

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.a, i64 1144
  %i.ad = load ptr, ptr %i.ac, align 8
  %i.ae = add nsw i64 %1, -4048
  %i.af = lshr i64 %i.ae, 2
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %i.af
  %i.ah = load i32, ptr %i.ag, align 4
  %i.ai = zext i32 %i.ah to i64
  br label %cmsdk_apb_watchdog_intstatus.exit

bb.l:                                             ; preds = %bb.a, %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.ak = load i8, ptr %i.aj, align 8, !range !7, !noundef !8
  %i.al = trunc nuw i8 %i.ak to i1
  br i1 %i.al, label %bb.r, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.am = load i32, ptr @qemu_loglevel, align 4
  %i.an = and i32 %i.am, 2048
  %.not20 = icmp eq i32 %i.an, 0
  br i1 %.not20, label %cmsdk_apb_watchdog_intstatus.exit, label %bb.n, !prof !9

bb.n:                                             ; preds = %bb.m
  %i.ao = trunc nuw nsw i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, i32 noundef %i.ao) #4
  br label %cmsdk_apb_watchdog_intstatus.exit

bb.o:                                             ; preds = %bb.a
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.aq = load i8, ptr %i.ap, align 8, !range !7, !noundef !8
  %i.ar = trunc nuw i8 %i.aq to i1
  br i1 %i.ar, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.as = load i32, ptr @qemu_loglevel, align 4
  %i.at = and i32 %i.as, 1024
  %.not = icmp eq i32 %i.at, 0
  br i1 %.not, label %cmsdk_apb_watchdog_intstatus.exit, label %bb.q, !prof !9

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.8) #4
  br label %cmsdk_apb_watchdog_intstatus.exit

bb.r:                                             ; preds = %bb.i, %bb.l, %bb.o, %bb.a
  %i.au = load i32, ptr @qemu_loglevel, align 4
  %i.av = and i32 %i.au, 2048
  %.not21 = icmp eq i32 %i.av, 0
  br i1 %.not21, label %cmsdk_apb_watchdog_intstatus.exit, label %bb.s, !prof !9

bb.s:                                             ; preds = %bb.r
  %i.aw = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, i32 noundef %i.aw) #4
  br label %cmsdk_apb_watchdog_intstatus.exit

cmsdk_apb_watchdog_intstatus.exit:                ; preds = %bb.g, %bb.f, %bb.r, %bb.s, %bb.p, %bb.q, %bb.m, %bb.n, %bb.k, %bb.j, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b
  %.0 = phi i64 [ 0, %bb.p ], [ %i.d, %bb.b ], [ %i.g, %bb.c ], [ %i.j, %bb.d ], [ %i.m, %bb.e ], [ 0, %bb.r ], [ %i.v, %bb.h ], [ %i.ab, %bb.j ], [ %i.ai, %bb.k ], [ 0, %bb.m ], [ 0, %bb.n ], [ 0, %bb.q ], [ 0, %bb.s ], [ 0, %bb.f ], [ %i.s, %bb.g ] ; 2 uses
  %i.ax = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i19 = icmp eq i32 %i.ax, 0
  br i1 %.not.i19, label %trace_cmsdk_apb_watchdog_read.exit, label %bb.t, !prof !9

bb.t:                                             ; preds = %cmsdk_apb_watchdog_intstatus.exit
  %i.ay = load i16, ptr @_TRACE_CMSDK_APB_WATCHDOG_READ_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.ay, 0
  br i1 %.not3.i, label %trace_cmsdk_apb_watchdog_read.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.az = load i32, ptr @qemu_loglevel, align 4
  %i.ba = and i32 %i.az, 32768
  %.not4.i = icmp eq i32 %i.ba, 0
  br i1 %.not4.i, label %trace_cmsdk_apb_watchdog_read.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, i64 noundef %1, i64 noundef %.0, i32 noundef %2) #4
  br label %trace_cmsdk_apb_watchdog_read.exit

trace_cmsdk_apb_watchdog_read.exit:               ; preds = %cmsdk_apb_watchdog_intstatus.exit, %bb.t, %bb.u, %bb.v
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @cmsdk_apb_watchdog_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 40, ptr noundef nonnull @__func__.CMSDK_APB_WATCHDOG) #4 ; 16 uses
  %i.b = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.b, 0
  br i1 %.not.i, label %trace_cmsdk_apb_watchdog_write.exit, label %bb.b, !prof !9

bb.b:                                             ; preds = %bb.a
  %i.c = load i16, ptr @_TRACE_CMSDK_APB_WATCHDOG_WRITE_DSTATE, align 2
  %.not3.i = icmp eq i16 %i.c, 0
  br i1 %.not3.i, label %trace_cmsdk_apb_watchdog_write.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = load i32, ptr @qemu_loglevel, align 4
  %i.e = and i32 %i.d, 32768
  %.not4.i = icmp eq i32 %i.e, 0
  br i1 %.not4.i, label %trace_cmsdk_apb_watchdog_write.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.15, i64 noundef %1, i64 noundef %2, i32 noundef %3) #4
  br label %trace_cmsdk_apb_watchdog_write.exit

trace_cmsdk_apb_watchdog_write.exit:              ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 1128 ; 2 uses
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp ne i32 %i.g, 0
  %i.i = icmp ne i64 %1, 3072
  %or.cond = and i1 %i.i, %i.h
  br i1 %or.cond, label %bb.e, label %bb.g

bb.e:                                             ; preds = %trace_cmsdk_apb_watchdog_write.exit
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 2048
  %.not53 = icmp eq i32 %i.k, 0
  br i1 %.not53, label %bb.ac, label %bb.f, !prof !9

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11) #4
  br label %bb.ac

bb.g:                                             ; preds = %trace_cmsdk_apb_watchdog_write.exit
  switch i64 %1, label %bb.aa [
    i64 0, label %bb.h
    i64 8, label %bb.i
    i64 12, label %bb.p
    i64 3072, label %bb.q
    i64 3840, label %bb.r
    i64 3844, label %bb.t
    i64 4, label %bb.v
    i64 16, label %bb.v
    i64 20, label %bb.v
    i64 4048, label %bb.v
    i64 4049, label %bb.v
    i64 4050, label %bb.v
    i64 4051, label %bb.v
    i64 4052, label %bb.v
    i64 4053, label %bb.v
    i64 4054, label %bb.v
    i64 4055, label %bb.v
    i64 4056, label %bb.v
    i64 4057, label %bb.v
    i64 4058, label %bb.v
    i64 4059, label %bb.v
    i64 4060, label %bb.v
    i64 4061, label %bb.v
    i64 4062, label %bb.v
    i64 4063, label %bb.v
    i64 4064, label %bb.v
    i64 4065, label %bb.v
    i64 4066, label %bb.v
    i64 4067, label %bb.v
    i64 4068, label %bb.v
    i64 4069, label %bb.v
    i64 4070, label %bb.v
    i64 4071, label %bb.v
    i64 4072, label %bb.v
    i64 4073, label %bb.v
    i64 4074, label %bb.v
    i64 4075, label %bb.v
    i64 4076, label %bb.v
    i64 4077, label %bb.v
    i64 4078, label %bb.v
    i64 4079, label %bb.v
    i64 4080, label %bb.v
    i64 4081, label %bb.v
    i64 4082, label %bb.v
    i64 4083, label %bb.v
    i64 4084, label %bb.v
    i64 4085, label %bb.v
    i64 4086, label %bb.v
    i64 4087, label %bb.v
    i64 4088, label %bb.v
    i64 4089, label %bb.v
    i64 4090, label %bb.v
    i64 4091, label %bb.v
    i64 4092, label %bb.v
    i64 1048, label %bb.x
  ]

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 1104 ; 3 uses
  %i.m = load ptr, ptr %i.l, align 16
  tail call void @ptimer_transaction_begin(ptr noundef %i.m) #4
  %i.n = load ptr, ptr %i.l, align 16
  tail call void @ptimer_set_limit(ptr noundef %i.n, i64 noundef %2, i32 noundef 1) #4
  %i.o = load ptr, ptr %i.l, align 16
  tail call void @ptimer_transaction_commit(ptr noundef %i.o) #4
  br label %bb.ac

bb.i:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 1120 ; 3 uses
  %i.q = load i32, ptr %i.p, align 16             ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.s = load i8, ptr %i.r, align 8, !range !7, !noundef !8
  %.not48 = icmp eq i8 %i.s, 0
  %4 = and i32 %i.q, 1
  %.not = icmp eq i32 %4, 0
  %or.cond49.not = select i1 %.not48, i1 true, i1 %.not
  br i1 %or.cond49.not, label %bb.j, label %bb.ac

bb.j:                                             ; preds = %bb.i
  %i.t = trunc i64 %2 to i32                      ; 2 uses
  %i.u = and i32 %i.t, 3
  store i32 %i.u, ptr %i.p, align 16
  %i.v = xor i32 %i.q, %i.t
  %i.w = and i32 %i.v, 1
  %.not46 = icmp eq i32 %i.w, 0
  br i1 %.not46, label %bb.o, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 1104 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 16
  tail call void @ptimer_transaction_begin(ptr noundef %i.y) #4
  %i.z = load i32, ptr %i.p, align 16
  %i.aa = and i32 %i.z, 1
  %.not47 = icmp eq i32 %i.aa, 0
  %i.ab = load ptr, ptr %i.x, align 16            ; 3 uses
  br i1 %.not47, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = tail call i64 @ptimer_get_limit(ptr noundef %i.ab) #4
  tail call void @ptimer_set_count(ptr noundef %i.ab, i64 noundef %i.ac) #4
  %i.ad = load ptr, ptr %i.x, align 16
  tail call void @ptimer_run(ptr noundef %i.ad, i32 noundef 0) #4
  br label %bb.n

bb.m:                                             ; preds = %bb.k
  tail call void @ptimer_stop(ptr noundef %i.ab) #4
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.ae = load ptr, ptr %i.x, align 16
  tail call void @ptimer_transaction_commit(ptr noundef %i.ae) #4
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.j
  tail call fastcc void @cmsdk_apb_watchdog_update(ptr noundef nonnull %i.a)
  br label %bb.ac

bb.p:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 1124
  store i32 0, ptr %i.af, align 4
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 1104 ; 3 uses
  %i.ah = load ptr, ptr %i.ag, align 16
  tail call void @ptimer_transaction_begin(ptr noundef %i.ah) #4
  %i.ai = load ptr, ptr %i.ag, align 16           ; 2 uses
  %i.aj = tail call i64 @ptimer_get_limit(ptr noundef %i.ai) #4
  tail call void @ptimer_set_count(ptr noundef %i.ai, i64 noundef %i.aj) #4
  %i.ak = load ptr, ptr %i.ag, align 16
  tail call void @ptimer_transaction_commit(ptr noundef %i.ak) #4
  tail call fastcc void @cmsdk_apb_watchdog_update(ptr noundef nonnull %i.a)
  br label %bb.ac

bb.q:                                             ; preds = %bb.g
  %i.al = icmp ne i64 %2, 449635665
  %i.am = zext i1 %i.al to i32                    ; 2 uses
  store i32 %i.am, ptr %i.f, align 8
  tail call fastcc void @trace_cmsdk_apb_watchdog_lock(i32 noundef %i.am)
  br label %bb.ac

bb.r:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.ao = load i8, ptr %i.an, align 8, !range !7, !noundef !8
  %i.ap = trunc nuw i8 %i.ao to i1
  br i1 %i.ap, label %bb.aa, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = trunc i64 %2 to i32
  %i.ar = and i32 %i.aq, 1
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 1132
  store i32 %i.ar, ptr %i.as, align 4
  tail call fastcc void @cmsdk_apb_watchdog_update(ptr noundef nonnull %i.a)
  br label %bb.ac

bb.t:                                             ; preds = %bb.g
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.au = load i8, ptr %i.at, align 8, !range !7, !noundef !8
  %i.av = trunc nuw i8 %i.au to i1
  br i1 %i.av, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = trunc i64 %2 to i32
  %i.ax = and i32 %i.aw, 3
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 1136
  store i32 %i.ax, ptr %i.ay, align 16
  tail call fastcc void @cmsdk_apb_watchdog_update(ptr noundef nonnull %i.a)
  br label %bb.ac

bb.v:                                             ; preds = %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g, %bb.g
  %i.az = load i32, ptr @qemu_loglevel, align 4
  %i.ba = and i32 %i.az, 2048
  %.not51 = icmp eq i32 %i.ba, 0
  br i1 %.not51, label %bb.ac, label %bb.w, !prof !9

bb.w:                                             ; preds = %bb.v
  %i.bb = trunc nuw nsw i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.12, i32 noundef %i.bb) #4
  br label %bb.ac

bb.x:                                             ; preds = %bb.g
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 1096
  %i.bd = load i8, ptr %i.bc, align 8, !range !7, !noundef !8
  %i.be = trunc nuw i8 %i.bd to i1
  br i1 %i.be, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bf = load i32, ptr @qemu_loglevel, align 4
  %i.bg = and i32 %i.bf, 1024
  %.not50 = icmp eq i32 %i.bg, 0
  br i1 %.not50, label %bb.ac, label %bb.z, !prof !9

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.13) #4
  br label %bb.ac

bb.aa:                                            ; preds = %bb.r, %bb.t, %bb.x, %bb.g
  %i.bh = load i32, ptr @qemu_loglevel, align 4
  %i.bi = and i32 %i.bh, 2048
  %.not52 = icmp eq i32 %i.bi, 0
  br i1 %.not52, label %bb.ac, label %bb.ab, !prof !9

bb.ab:                                            ; preds = %bb.aa
  %i.bj = trunc i64 %1 to i32
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.14, i32 noundef %i.bj) #4
  br label %bb.ac

bb.ac:                                            ; preds = %bb.h, %bb.p, %bb.q, %bb.s, %bb.u, %bb.w, %bb.v, %bb.z, %bb.y, %bb.ab, %bb.aa, %bb.i, %bb.o, %bb.e, %bb.f
  ret void
}

declare i64 @ptimer_get_limit(ptr noundef) local_unnamed_addr #1

declare i64 @ptimer_get_count(ptr noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare void @ptimer_transaction_begin(ptr noundef) local_unnamed_addr #1

declare void @ptimer_set_limit(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

declare void @ptimer_transaction_commit(ptr noundef) local_unnamed_addr #1

declare void @ptimer_set_count(ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @ptimer_run(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @ptimer_stop(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @cmsdk_apb_watchdog_update(ptr nofree noundef readonly captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1132
  %i.b = load i32, ptr %i.a, align 4
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %.split

.split:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1136
  %i.d = load i32, ptr %i.c, align 16             ; 2 uses
  %i.e = trunc i32 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.g = load ptr, ptr %i.f, align 16
  %i.h = lshr i32 %i.d, 1
  %.lobit = and i32 %i.h, 1
  tail call void @qemu_set_irq(ptr noundef %i.g, i32 noundef %.lobit) #4
  br i1 %i.e, label %bb.d, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 1124
  %i.j = load i32, ptr %i.i, align 4
  %.not.i = icmp eq i32 %i.j, 0
  br i1 %.not.i, label %cmsdk_apb_watchdog_intstatus.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.l = load i32, ptr %i.k, align 16
  %i.m = and i32 %i.l, 1
  br label %cmsdk_apb_watchdog_intstatus.exit

cmsdk_apb_watchdog_intstatus.exit:                ; preds = %bb.b, %bb.c
  %i.n = phi i32 [ 0, %bb.b ], [ %i.m, %bb.c ]    ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 1140
  %i.p = load i32, ptr %i.o, align 4
  %.not.i8 = icmp eq i32 %i.p, 0
  br i1 %.not.i8, label %cmsdk_apb_watchdog_resetstatus.exit.thread, label %cmsdk_apb_watchdog_resetstatus.exit

cmsdk_apb_watchdog_resetstatus.exit.thread:       ; preds = %cmsdk_apb_watchdog_intstatus.exit
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.r = load ptr, ptr %i.q, align 16
  tail call void @qemu_set_irq(ptr noundef %i.r, i32 noundef %i.n) #4
  br label %bb.e

cmsdk_apb_watchdog_resetstatus.exit:              ; preds = %cmsdk_apb_watchdog_intstatus.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 1120
  %i.t = load i32, ptr %i.s, align 16
  %i.u = and i32 %i.t, 2
  %.not11 = icmp eq i32 %i.u, 0
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 1088
  %i.w = load ptr, ptr %i.v, align 16
end_hunk_0
