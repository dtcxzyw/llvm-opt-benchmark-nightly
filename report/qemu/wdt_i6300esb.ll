Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/wdt_i6300esb?download=true
inline.NumInlined: 27
inline.NumDeleted: 18
begin_hunk_0_@object_class_dynamic_cast_assert
declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @pci_default_read_config(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare ptr @object_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @pci_default_write_config(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

declare void @timer_mod(ptr noundef, i64 noundef) local_unnamed_addr #1

declare i64 @qemu_clock_get_ns(i32 noundef) local_unnamed_addr #1

declare void @timer_del(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @i6300esb_timer_expired(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3080 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3048
  %i.e = load i32, ptr %i.d, align 8
  switch i32 %i.e, label %bb.d [
    i32 0, label %.sink.split
    i32 2, label %bb.c
  ]

bb.c:                                             ; preds = %bb.b
  br label %.sink.split

.sink.split:                                      ; preds = %bb.b, %bb.c
  %.str.10.sink = phi ptr [ @.str.10, %bb.c ], [ @.str.9, %bb.b ]
  %i.f = load ptr, ptr @stderr, align 8
  %i.g = tail call i32 (ptr, i32, ptr, ...) @__fprintf_chk(ptr noundef %i.f, i32 noundef 1, ptr noundef nonnull %.str.10.sink) #5 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.sink.split, %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3060
  %i.i = load i32, ptr %i.h, align 4
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %i6300esb_restart_timer.exit, label %i6300esb_restart_timer.exit.sink.split

bb.e:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 3040
  %i.k = load i32, ptr %i.j, align 16
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3088
  store i32 1, ptr %i.l, align 16
  tail call void @watchdog_perform_action() #5
  %i.m = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #5
  %i.n = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.m, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #5
  %i.o = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.n, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 107, ptr noundef nonnull @__func__.WATCHDOG_I6300ESB_DEVICE) #5 ; 4 uses
  %i.p = getelementptr i8, ptr %i.o, i64 3064
  %.val.i = load ptr, ptr %i.p, align 8
  tail call void @timer_del(ptr noundef %.val.i) #5
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 3040
  store i32 1, ptr %i.q, align 16
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 3044
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 3072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  store <4 x i32> <i32 1048575, i32 1048575, i32 1, i32 0>, ptr %i.s, align 16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3052
  %i.u = load i32, ptr %i.t, align 4
  %.not9 = icmp eq i32 %i.u, 0
  br i1 %.not9, label %i6300esb_restart_timer.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3060
  %i.w = load i32, ptr %i.v, align 4
  %.not.i10 = icmp eq i32 %i.w, 0
  br i1 %.not.i10, label %i6300esb_restart_timer.exit, label %i6300esb_restart_timer.exit.sink.split

i6300esb_restart_timer.exit.sink.split:           ; preds = %bb.h, %bb.d
  %.sink22 = phi i32 [ 2, %bb.d ], [ 1, %bb.h ]
  %.sink = phi i64 [ 3076, %bb.d ], [ 3072, %bb.h ]
  store i32 %.sink22, ptr %i.a, align 8
  %.0.in.in.i11 = getelementptr inbounds nuw i8, ptr %0, i64 %.sink
  %.0.in.i12 = load i32, ptr %.0.in.in.i11, align 4
  %.0.i13 = zext i32 %.0.in.i12 to i64
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3044
  %i.y = load i32, ptr %i.x, align 4
  %i.z = icmp eq i32 %i.y, 0
  %.1.v.i14 = select i1 %i.z, i64 15, i64 5
  %.1.i15 = shl nuw nsw i64 %.0.i13, %.1.v.i14
  %i.aa = mul nuw nsw i64 %.1.i15, 30
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.ac = load ptr, ptr %i.ab, align 8
  %i.ad = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #5
  %i.ae = add i64 %i.aa, %i.ad
  tail call void @timer_mod(ptr noundef %i.ac, i64 noundef %i.ae) #5
  br label %i6300esb_restart_timer.exit

i6300esb_restart_timer.exit:                      ; preds = %i6300esb_restart_timer.exit.sink.split, %bb.h, %bb.d, %bb.g
  ret void
}

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @pci_register_bar(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_malloc0(i64 noundef) local_unnamed_addr #2

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare i32 @__fprintf_chk(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare void @watchdog_perform_action() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal range(i64 0, 4609) i64 @i6300esb_mem_readfn(ptr nofree noundef readonly captures(none) %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  switch i32 %2, label %bb.d [
    i32 1, label %i6300esb_mem_readw.exit
    i32 2, label %bb.b
    i32 4, label %i6300esb_mem_readw.exit
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = icmp eq i64 %1, 12
  br i1 %i.a, label %bb.c, label %i6300esb_mem_readw.exit

bb.c:                                             ; preds = %bb.b
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3088
  %i.c = load i32, ptr %i.b, align 16
  %.not.i = icmp eq i32 %i.c, 0
  %i.d = select i1 %.not.i, i64 0, i64 4608
  br label %i6300esb_mem_readw.exit

bb.d:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 373, ptr noundef nonnull @__func__.i6300esb_mem_readfn, ptr noundef null) #7
  unreachable

i6300esb_mem_readw.exit:                          ; preds = %bb.c, %bb.b, %bb.a, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ 0, %bb.a ], [ %i.d, %bb.c ], [ 0, %bb.b ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @i6300esb_mem_writefn(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  switch i32 %3, label %bb.y [
    i32 1, label %bb.b
    i32 2, label %bb.g
    i32 4, label %bb.q
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = trunc i64 %2 to i32                      ; 2 uses
  %i.b = icmp eq i64 %1, 12                       ; 2 uses
  %i.c = icmp eq i32 %i.a, 128
  %or.cond.i = and i1 %i.b, %i.c
  br i1 %or.cond.i, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3084
  store i32 1, ptr %i.d, align 4
  br label %i6300esb_mem_writeb.exit

bb.d:                                             ; preds = %bb.b
  %i.e = icmp eq i32 %i.a, 134
  %or.cond3.i = and i1 %i.b, %i.e
  br i1 %or.cond3.i, label %bb.e, label %i6300esb_mem_writeb.exit

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3084 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = icmp eq i32 %i.g, 1
  br i1 %i.h, label %bb.f, label %i6300esb_mem_writeb.exit

bb.f:                                             ; preds = %bb.e
  store i32 2, ptr %i.f, align 4
  br label %i6300esb_mem_writeb.exit

bb.g:                                             ; preds = %bb.a
  %i.i = trunc i64 %2 to i32                      ; 4 uses
  %i.j = icmp eq i64 %1, 12                       ; 3 uses
  %i.k = icmp eq i32 %i.i, 128
  %or.cond.i9 = and i1 %i.j, %i.k
  br i1 %or.cond.i9, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3084
  store i32 1, ptr %i.l, align 4
  br label %i6300esb_mem_writeb.exit

bb.i:                                             ; preds = %bb.g
  %i.m = icmp eq i32 %i.i, 134
  %or.cond3.i10 = and i1 %i.j, %i.m
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 3084 ; 3 uses
  %i.o = load i32, ptr %i.n, align 4              ; 2 uses
  br i1 %or.cond3.i10, label %4, label %._crit_edge.i.a

4:                                                ; preds = %bb.i
  switch i32 %i.o, label %i6300esb_mem_writeb.exit [
    i32 1, label %bb.j
    i32 2, label %bb.p
  ]

bb.j:                                             ; preds = %4
  store i32 2, ptr %i.n, align 4
  br label %i6300esb_mem_writeb.exit

._crit_edge.i.a:                                  ; preds = %bb.i
  %i.p = icmp eq i32 %i.o, 2
  br i1 %i.p, label %bb.k, label %i6300esb_mem_writeb.exit

bb.k:                                             ; preds = %._crit_edge.i.a
  br i1 %i.j, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  %i.q = and i32 %i.i, 256
  %.not.i = icmp eq i32 %i.q, 0
  br i1 %.not.i, label %i6300esb_restart_timer.exit.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3060
  %i.s = load i32, ptr %i.r, align 4
  %.not.i.i = icmp eq i32 %i.s, 0
  br i1 %.not.i.i, label %i6300esb_restart_timer.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3080
  store i32 1, ptr %i.t, align 8
  %.0.in.in.i.i = getelementptr inbounds nuw i8, ptr %0, i64 3072
  %.0.in.i.i = load i32, ptr %.0.in.in.i.i, align 8
  %.0.i.i = zext i32 %.0.in.i.i to i64
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 3044
  %i.v = load i32, ptr %i.u, align 4
  %i.w = icmp eq i32 %i.v, 0
  %.1.v.i.i = select i1 %i.w, i64 15, i64 5
  %.1.i.i = shl nuw nsw i64 %.0.i.i, %.1.v.i.i
  %i.x = mul nuw nsw i64 %.1.i.i, 30
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 3064
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call i64 @qemu_clock_get_ns(i32 noundef 1) #5
  %i.ab = add i64 %i.x, %i.aa
  tail call void @timer_mod(ptr noundef %i.z, i64 noundef %i.ab) #5
  br label %i6300esb_restart_timer.exit.i

i6300esb_restart_timer.exit.i:                    ; preds = %bb.n, %bb.m, %bb.l
  %i.ac = and i32 %i.i, 4608
  %or.cond20.i = icmp eq i32 %i.ac, 0
  br i1 %or.cond20.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %i6300esb_restart_timer.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 3088
  store i32 0, ptr %i.ad, align 16
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %i6300esb_restart_timer.exit.i, %bb.k, %4
  store i32 0, ptr %i.n, align 4
  br label %i6300esb_mem_writeb.exit

bb.q:                                             ; preds = %bb.a
  %i.ae = trunc i64 %2 to i32                     ; 4 uses
  %i.af = icmp eq i64 %1, 12                      ; 2 uses
  %i.ag = icmp eq i32 %i.ae, 128
  %or.cond.i11 = and i1 %i.af, %i.ag
  br i1 %or.cond.i11, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 3084
  store i32 1, ptr %i.ah, align 4
  br label %i6300esb_mem_writeb.exit

bb.s:                                             ; preds = %bb.q
  %i.ai = icmp eq i32 %i.ae, 134
  %or.cond3.i12 = and i1 %i.af, %i.ai
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3084 ; 3 uses
  %i.ak = load i32, ptr %i.aj, align 4            ; 2 uses
  %i.al = icmp eq i32 %i.ak, 1
  %or.cond18.i = select i1 %or.cond3.i12, i1 %i.al, i1 false
  br i1 %or.cond18.i, label %bb.t, label %._crit_edge.i13

bb.t:                                             ; preds = %bb.s
  store i32 2, ptr %i.aj, align 4
  br label %i6300esb_mem_writeb.exit

._crit_edge.i13:                                  ; preds = %bb.s
  %i.am = icmp eq i32 %i.ak, 2
  br i1 %i.am, label %bb.u, label %i6300esb_mem_writeb.exit

bb.u:                                             ; preds = %._crit_edge.i13
  switch i64 %1, label %bb.x [
    i64 0, label %bb.v
    i64 4, label %bb.w
  ]

bb.v:                                             ; preds = %bb.u
  %i.an = and i32 %i.ae, 1048575
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 3072
  store i32 %i.an, ptr %i.ao, align 16
  br label %bb.x

bb.w:                                             ; preds = %bb.u
  %i.ap = and i32 %i.ae, 1048575
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 3076
  store i32 %i.ap, ptr %i.aq, align 4
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  store i32 0, ptr %i.aj, align 4
  br label %i6300esb_mem_writeb.exit

bb.y:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str.8, i32 noundef 391, ptr noundef nonnull @__func__.i6300esb_mem_writefn, ptr noundef null) #7
  unreachable

i6300esb_mem_writeb.exit:                         ; preds = %bb.x, %._crit_edge.i13, %bb.t, %bb.r, %bb.p, %._crit_edge.i.a, %bb.j, %4, %bb.h, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nounwind }
attributes #6 = { nounwind allocsize(0) }
attributes #7 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
end_hunk_0
