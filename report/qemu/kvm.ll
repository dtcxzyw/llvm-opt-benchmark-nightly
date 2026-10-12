Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/kvm?download=true
inline.NumInlined: 610
inline.NumDeleted: 128
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 24
begin_hunk_0_@kvm_queue_exception:bb.a
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.205, ptr noundef nonnull @.str.18, i32 noundef 829, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_queue_exception) #31
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 14813 ; 2 uses
  %i.e = load i8, ptr %i.d, align 1
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @__assert_fail(ptr noundef nonnull @.str.206, ptr noundef nonnull @.str.18, i32 noundef 830, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_queue_exception) #31
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 14814 ; 2 uses
  %i.g = load i8, ptr %i.f, align 2
  %.not20 = icmp eq i8 %i.g, 0
  br i1 %.not20, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.207, ptr noundef nonnull @.str.18, i32 noundef 831, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_queue_exception) #31
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 14816 ; 2 uses
  %i.i = load i8, ptr %i.h, align 16
  %.not21 = icmp eq i8 %i.i, 0
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.208, ptr noundef nonnull @.str.18, i32 noundef 832, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_queue_exception) #31
  unreachable

bb.i:                                             ; preds = %bb.g
  store i32 %1, ptr %i.a, align 4
  %i.j = load i32, ptr @has_exception_payload, align 4
  %.not22 = icmp eq i32 %i.j, 0
  br i1 %.not22, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store i8 1, ptr %i.d, align 1
  store i8 %2, ptr %i.h, align 16
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 14824
  store i64 %3, ptr %i.k, align 8
  br label %bb.t

bb.k:                                             ; preds = %bb.i
  store i8 1, ptr %i.f, align 2
  %.not23 = icmp eq i8 %2, 0                      ; 3 uses
  switch i32 %1, label %bb.r [
    i32 1, label %bb.l
    i32 14, label %bb.o
  ]

bb.l:                                             ; preds = %bb.k
  br i1 %.not23, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @__assert_fail(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.18, i32 noundef 845, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_queue_exception) #31
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 13504
  store i64 %3, ptr %i.l, align 16
  br label %bb.t

bb.o:                                             ; preds = %bb.k
  br i1 %.not23, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void @__assert_fail(ptr noundef nonnull @.str.209, ptr noundef nonnull @.str.18, i32 noundef 848, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_queue_exception) #31
  unreachable

bb.q:                                             ; preds = %bb.o
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 568
  store i64 %3, ptr %i.m, align 8
  br label %bb.t

bb.r:                                             ; preds = %bb.k
  br i1 %.not23, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @__assert_fail(ptr noundef nonnull @.str.210, ptr noundef nonnull @.str.18, i32 noundef 851, ptr noundef nonnull @__PRETTY_FUNCTION__.kvm_queue_exception) #31
  unreachable

bb.t:                                             ; preds = %bb.n, %bb.r, %bb.q, %bb.j
  ret void
}

declare void @do_cpu_init(ptr noundef) local_unnamed_addr #2

declare void @apic_poll_irq(ptr noundef) local_unnamed_addr #2

declare void @do_cpu_sipi(ptr noundef) local_unnamed_addr #2

declare void @apic_handle_tpr_access_report(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -22, 1) i32 @kvm_arch_insert_sw_breakpoint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = tail call i32 @cpu_memory_rw_debug(ptr noundef %0, i64 noundef %i.a, ptr noundef nonnull %i.b, i64 noundef 1, i1 noundef zeroext false) #29
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = load i64, ptr %1, align 8
  %i.e = tail call i32 @cpu_memory_rw_debug(ptr noundef %0, i64 noundef %i.d, ptr noundef nonnull @kvm_arch_insert_sw_breakpoint.int3, i64 noundef 1, i1 noundef zeroext true) #29
  %.not5 = icmp eq i32 %i.e, 0
  %spec.select = select i1 %.not5, i32 0, i32 -22
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi i32 [ -22, %bb.a ], [ %spec.select, %bb.b ]
  ret i32 %.0
}

declare i32 @cpu_memory_rw_debug(ptr noundef, i64 noundef, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -22, 1) i32 @kvm_arch_remove_sw_breakpoint(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i8, align 1                       ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #29
  store i8 0, ptr %i.a, align 1, !annotation !13
  %i.b = load i64, ptr %1, align 8
  %i.c = call i32 @cpu_memory_rw_debug(ptr noundef %0, i64 noundef %i.b, ptr noundef nonnull %i.a, i64 noundef 1, i1 noundef zeroext false) #29
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load i8, ptr %i.a, align 1
  %.not5 = icmp eq i8 %i.d, -52
  br i1 %.not5, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = load i64, ptr %1, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = call i32 @cpu_memory_rw_debug(ptr noundef %0, i64 noundef %i.e, ptr noundef nonnull %i.f, i64 noundef 1, i1 noundef zeroext true) #29
  %.not6 = icmp eq i32 %i.g, 0
  %. = select i1 %.not6, i32 0, i32 -22
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i32 [ 0, %bb.b ], [ -22, %bb.a ], [ %., %bb.c ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #29
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -105, 1) i32 @kvm_arch_insert_gdbstub_hw_breakpoint(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  switch i32 %2, label %bb.k [
    i32 1, label %bb.d
    i32 2, label %bb.b
    i32 4, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  %i.a = tail call range(i64 0, 65) i64 @llvm.ctpop.i64(i64 %1)
  %i.b = icmp eq i64 %i.a, 1
  br i1 %i.b, label %.split, label %bb.k

.split:                                           ; preds = %bb.b
  %i.c = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %1, i1 true)
  switch i64 %i.c, label %bb.k [
    i64 0, label %bb.d
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
  ]

bb.c:                                             ; preds = %.split, %.split, %.split
  %i.d = add i64 %1, -1
  %i.e = and i64 %i.d, %0
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.k

bb.d:                                             ; preds = %bb.a, %.split, %bb.c
  %.011 = phi i64 [ %1, %bb.c ], [ %1, %.split ], [ 1, %bb.a ]
  %i.f = load i32, ptr @nb_hw_breakpoint, align 4 ; 5 uses
  %i.g = icmp eq i32 %i.f, 4
  br i1 %i.g, label %bb.k, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = trunc i64 %.011 to i32                   ; 3 uses
  %i.i = icmp sgt i32 %i.f, 0
  br i1 %i.i, label %.lr.ph.i, label %find_hw_breakpoint.exit.thread

.lr.ph.i:                                         ; preds = %bb.e
  %i.j = icmp eq i32 %i.h, -1
  %wide.trip.count24.i = zext nneg i32 %i.f to i64 ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.g
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %bb.g ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.k = getelementptr inbounds nuw [16 x i8], ptr @hw_breakpoint, i64 %indvars.iv21.i ; 2 uses
  %i.l = load i64, ptr %i.k, align 16
  %i.m = icmp eq i64 %i.l, %0
  br i1 %i.m, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.split.us.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 12
  %i.o = load i32, ptr %i.n, align 4
  %i.p = icmp eq i32 %i.o, %2
  br i1 %i.p, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.us.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next22.i, %wide.trip.count24.i
  br i1 %exitcond25.not.i, label %find_hw_breakpoint.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !2

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.j
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.j ], [ 0, %.lr.ph.i ] ; 2 uses
  %i.q = getelementptr inbounds nuw [16 x i8], ptr @hw_breakpoint, i64 %indvars.iv.i ; 3 uses
  %i.r = load i64, ptr %i.q, align 16
  %i.s = icmp eq i64 %i.r, %0
  br i1 %i.s, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.split.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 12
  %i.u = load i32, ptr %i.t, align 4
  %i.v = icmp eq i32 %i.u, %2
  br i1 %i.v, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.w = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.x = load i32, ptr %i.w, align 8
  %i.y = icmp eq i32 %i.x, %i.h
  br i1 %i.y, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count24.i
  br i1 %exitcond.not.i, label %find_hw_breakpoint.exit.thread, label %.lr.ph.split.i, !llvm.loop !2

find_hw_breakpoint.exit.thread:                   ; preds = %bb.j, %bb.g, %bb.e
  %i.z = sext i32 %i.f to i64
  %i.aa = getelementptr inbounds [16 x i8], ptr @hw_breakpoint, i64 %i.z ; 3 uses
  store i64 %0, ptr %i.aa, align 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store i32 %i.h, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 12
  store i32 %2, ptr %i.ac, align 4
  %i.ad = add i32 %i.f, 1
  store i32 %i.ad, ptr @nb_hw_breakpoint, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.f, %bb.d, %bb.a, %.split, %bb.b, %bb.c, %find_hw_breakpoint.exit.thread
  %.0 = phi i32 [ -22, %.split ], [ -38, %bb.a ], [ -105, %bb.d ], [ 0, %find_hw_breakpoint.exit.thread ], [ -22, %bb.c ], [ -22, %bb.b ], [ -17, %bb.f ], [ -17, %bb.i ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind sspstrong memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -2, 1) i32 @kvm_arch_remove_gdbstub_hw_breakpoint(i64 noundef %0, i64 noundef %1, i32 noundef %2) local_unnamed_addr #20 {
bb.a:
  %i.a = icmp eq i32 %2, 1
  %i.b = trunc i64 %1 to i32
  %i.c = select i1 %i.a, i32 1, i32 %i.b          ; 2 uses
  %i.d = load i32, ptr @nb_hw_breakpoint, align 4 ; 3 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %.lr.ph.i, label %find_hw_breakpoint.exit.thread

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = icmp eq i32 %i.c, -1
  %wide.trip.count24.i = zext nneg i32 %i.d to i64 ; 2 uses
  br i1 %i.f, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %bb.c
  %indvars.iv21.i = phi i64 [ %indvars.iv.next22.i, %bb.c ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.g = getelementptr inbounds nuw [16 x i8], ptr @hw_breakpoint, i64 %indvars.iv21.i ; 2 uses
  %i.h = load i64, ptr %i.g, align 16
  %i.i = icmp eq i64 %i.h, %0
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split.us.i
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 12
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %i.k, %2
  br i1 %i.l, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph.split.us.i
  %indvars.iv.next22.i = add nuw nsw i64 %indvars.iv21.i, 1 ; 2 uses
  %exitcond25.not.i = icmp eq i64 %indvars.iv.next22.i, %wide.trip.count24.i
  br i1 %exitcond25.not.i, label %find_hw_breakpoint.exit.thread, label %.lr.ph.split.us.i, !llvm.loop !2

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %bb.f
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %bb.f ], [ 0, %.lr.ph.i ] ; 3 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr @hw_breakpoint, i64 %indvars.iv.i ; 3 uses
  %i.n = load i64, ptr %i.m, align 16
  %i.o = icmp eq i64 %i.n, %0
  br i1 %i.o, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.split.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 12
  %i.q = load i32, ptr %i.p, align 4
  %i.r = icmp eq i32 %i.q, %2
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.t = load i32, ptr %i.s, align 8
  %i.u = icmp eq i32 %i.t, %i.c
  br i1 %i.u, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %.lr.ph.split.i
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count24.i
  br i1 %exitcond.not.i, label %find_hw_breakpoint.exit.thread, label %.lr.ph.split.i, !llvm.loop !2

bb.g:                                             ; preds = %bb.e, %bb.b
  %.012.i.in = phi i64 [ %indvars.iv21.i, %bb.b ], [ %indvars.iv.i, %bb.e ]
  %i.v = add nsw i32 %i.d, -1                     ; 2 uses
  store i32 %i.v, ptr @nb_hw_breakpoint, align 4
  %i.w = and i64 %.012.i.in, 4294967295
  %i.x = getelementptr inbounds nuw [16 x i8], ptr @hw_breakpoint, i64 %i.w
  %i.y = zext nneg i32 %i.v to i64
  %i.z = getelementptr inbounds nuw [16 x i8], ptr @hw_breakpoint, i64 %i.y
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.x, ptr noundef nonnull align 16 dereferenceable(16) %i.z, i64 16, i1 false)
  br label %find_hw_breakpoint.exit.thread

find_hw_breakpoint.exit.thread:                   ; preds = %bb.f, %bb.c, %bb.a, %bb.g
  %.0 = phi i32 [ 0, %bb.g ], [ -2, %bb.c ], [ -2, %bb.a ], [ -2, %bb.f ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @kvm_arch_remove_all_gdbstub_hw_breakpoints() local_unnamed_addr #21 {
bb.a:
  store i32 0, ptr @nb_hw_breakpoint, align 4
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @kvm_arch_update_guest_debug(ptr noundef %0, ptr nofree noundef captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @kvm_sw_breakpoints_active(ptr noundef %0) #29
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %1, align 8
  %i.c = or i32 %i.b, 65537
  store i32 %i.c, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr @nb_hw_breakpoint, align 4 ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.f = load i32, ptr %1, align 8
  %i.g = or i32 %i.f, 131073
  store i32 %i.g, ptr %1, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  store i64 1536, ptr %i.i, align 8
  %wide.trip.count = zext nneg i32 %i.d to i64
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.e
  %indvars.iv = phi i64 [ 0, %bb.d ], [ %indvars.iv.next, %bb.e ] ; 5 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr @hw_breakpoint, i64 %indvars.iv ; 3 uses
  %i.k = load i64, ptr %i.j, align 16
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.h, i64 %indvars.iv
  store i64 %i.k, ptr %i.l, align 8
  %indvars.iv.tr = trunc nuw i64 %indvars.iv to i32
  %i.m = shl nuw i32 %indvars.iv.tr, 1
  %i.n = shl i32 2, %i.m
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 12
  %i.p = load i32, ptr %i.o, align 4
  %i.q = zext i32 %i.p to i64
  %i.r = getelementptr inbounds nuw i8, ptr @__const.kvm_arch_update_guest_debug.type_code, i64 %i.q
  %i.s = load i8, ptr %i.r, align 1
  %i.t = zext i8 %i.s to i32
  %i.u = shl nuw nsw i64 %indvars.iv, 2           ; 2 uses
  %i.v = trunc i64 %i.u to i32
  %i.w = add i32 %i.v, 16
  %i.x = shl i32 %i.t, %i.w
  %i.y = or i32 %i.x, %i.n
  %i.z = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.aa = load i32, ptr %i.z, align 8
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds i8, ptr @__const.kvm_arch_update_guest_debug.len_code, i64 %i.ab
  %i.ad = load i8, ptr %i.ac, align 1
  %i.ae = zext i8 %i.ad to i32
  %i.af = trunc i64 %i.u to i32
  %i.ag = add i32 %i.af, 18
  %i.ah = shl i32 %i.ae, %i.ag
  %i.ai = or i32 %i.y, %i.ah
  %i.aj = zext i32 %i.ai to i64
  %i.ak = load i64, ptr %i.i, align 8
  %i.al = or i64 %i.ak, %i.aj
  store i64 %i.al, ptr %i.i, align 8
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.loopexit, label %bb.e, !llvm.loop !58

.loopexit:                                        ; preds = %bb.e, %bb.c
  ret void
}

declare i32 @kvm_sw_breakpoints_active(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define dso_local zeroext i1 @kvm_enable_sgx_provisioning(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.kvm_enable_cap, align 8     ; 6 uses
  %.b = load i1, ptr @kvm_enable_sgx_provisioning._memorized, align 1
  br i1 %.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = load i8, ptr @has_sgx_provisioning, align 1, !range !10, !noundef !11
  %i.b = trunc nuw i8 %i.a to i1
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  store i1 true, ptr @kvm_enable_sgx_provisioning._memorized, align 1
  %i.c = tail call i32 @kvm_vm_check_extension(ptr noundef %0, i32 noundef 196) #29
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %__kvm_enable_sgx_provisioning.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 (ptr, i32, ...) @qemu_open_old(ptr noundef nonnull @.str.211, i32 noundef 0) #29 ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %__kvm_enable_sgx_provisioning.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #29
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %1, i8 0, i64 104, i1 false)
  store i32 196, ptr %1, align 8
  %i.f = zext nneg i32 %i.d to i64
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.f, ptr %i.g, align 8
  %i.h = call i32 (ptr, i64, ...) @kvm_vm_ioctl(ptr noundef %0, i64 noundef 1080602275, ptr noundef nonnull %1) #29 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #29
  %.not16.i = icmp eq i32 %i.h, 0
  br i1 %.not16.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = sub i32 0, %i.h
  %i.j = call ptr @strerror(i32 noundef %i.i) #29
  call void (ptr, ...) @error_report(ptr noundef nonnull @.str.212, ptr noundef %i.j) #29
  call void @exit(i32 noundef 1) #30
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.k = call i32 @close(i32 noundef %i.d) #29    ; 0 uses
  br label %__kvm_enable_sgx_provisioning.exit

__kvm_enable_sgx_provisioning.exit:               ; preds = %bb.c, %bb.d, %bb.g
  %.0.i = phi i1 [ false, %bb.c ], [ true, %bb.g ], [ false, %bb.d ] ; 2 uses
  %i.l = zext i1 %.0.i to i8
  store i8 %i.l, ptr @has_sgx_provisioning, align 1
  br label %bb.h

bb.h:                                             ; preds = %__kvm_enable_sgx_provisioning.exit, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ %.0.i, %__kvm_enable_sgx_provisioning.exit ]
  ret i1 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @kvm_arch_handle_exit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.kvm_pre_fault_memory, align 8 ; 6 uses
  %i.a = alloca i32, align 4                      ; 5 uses
  %i.b = alloca i32, align 4                      ; 6 uses
  %i.c = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.114, i32 noundef 31, ptr noundef nonnull @__func__.X86_CPU) #29 ; 21 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  switch i32 %i.e, label %bb.co [
    i32 5, label %bb.b
    i32 11, label %kvm_handle_hypercall.exit
    i32 12, label %bb.f
    i32 9, label %bb.g
    i32 1, label %bb.i
    i32 4, label %bb.j
    i32 27, label %bb.ai
    i32 26, label %bb.aj
    i32 33, label %kvm_handle_hypercall.exit
    i32 37, label %bb.ak
    i32 29, label %bb.ao
    i32 30, label %bb.bh
    i32 34, label %bb.ca
    i32 3, label %bb.cb
    i32 24, label %bb.ci
    i32 40, label %bb.ck
  ]

bb.b:                                             ; preds = %bb.a
  tail call void @bql_lock_impl(ptr noundef nonnull @.str.18, i32 noundef 6543) #29
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 208 ; 2 uses
  %i.g = load atomic i32, ptr %i.f acquire, align 16
  %i.h = and i32 %i.g, 2
  %.not6.i = icmp eq i32 %i.h, 0
  br i1 %.not6.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16760
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 512
  %.not.i = icmp eq i64 %i.k, 0
  br i1 %.not.i, label %bb.d, label %kvm_handle_halt.exit

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.l = load atomic i32, ptr %i.f acquire, align 16
  %i.m = and i32 %i.l, 512
  %.not7.i = icmp eq i32 %i.m, 0
  br i1 %.not7.i, label %bb.e, label %kvm_handle_halt.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 700
  store i32 1, ptr %i.n, align 4
  br label %kvm_handle_halt.exit

kvm_handle_halt.exit:                             ; preds = %bb.c, %bb.d, %bb.e
  %.0.i = phi i32 [ 65537, %bb.e ], [ 0, %bb.d ], [ 0, %bb.c ]
  tail call void @bql_unlock() #29
  br label %kvm_handle_hypercall.exit

bb.f:                                             ; preds = %bb.a
  tail call void @bql_lock_impl(ptr noundef nonnull @.str.18, i32 noundef 6551) #29
end_hunk_0
