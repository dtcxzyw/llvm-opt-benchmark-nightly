Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/edu?download=true
inline.NumInlined: 39
inline.NumDeleted: 23
begin_hunk_0_@pci_edu_realize:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 3048
  tail call void @qemu_mutex_init(ptr noundef nonnull %i.g) #3
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3096
  tail call void @qemu_cond_init(ptr noundef nonnull %i.h) #3
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 3040
  tail call void @qemu_thread_create(ptr noundef nonnull %i.i, ptr noundef nonnull @.str, ptr noundef nonnull @edu_fact_thread, ptr noundef %i.a, i32 noundef 0) #3
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 2768 ; 2 uses
  tail call void @memory_region_init_io(ptr noundef nonnull %i.j, ptr noundef %i.a, ptr noundef nonnull @edu_mmio_ops, ptr noundef %i.a, ptr noundef nonnull @.str.9, i64 noundef 1048576) #3
  tail call void @pci_register_bar(ptr noundef nonnull %0, i32 noundef 0, i8 noundef zeroext 0, ptr noundef nonnull %i.j) #3
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @pci_edu_uninit(ptr noundef %0) #0 {
bb.a:
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef 39, ptr noundef nonnull @__func__.EDU) #3 ; 5 uses
  %i.b = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 3048 ; 3 uses
  tail call void %i.b(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.5, i32 noundef 400) #3
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 3152
  store i8 1, ptr %i.d, align 16
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.c, ptr noundef nonnull @.str.5, i32 noundef 402) #3
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 3096 ; 2 uses
  tail call void @qemu_cond_signal(ptr noundef nonnull %i.e) #3
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 3040
  %i.g = tail call ptr @qemu_thread_join(ptr noundef nonnull %i.f) #3 ; 0 uses
  tail call void @qemu_cond_destroy(ptr noundef nonnull %i.e) #3
  tail call void @qemu_mutex_destroy(ptr noundef nonnull %i.c) #3
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 3208
  tail call void @timer_del(ptr noundef nonnull %i.h) #3
  tail call void @msi_uninit(ptr noundef %0) #3
  ret void
}

declare ptr @object_class_dynamic_cast_assert(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare i32 @msi_init(ptr noundef, i8 noundef zeroext, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @edu_dma_timer(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3176 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3200 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %i.d = and i64 %i.c, 1
  %.not = icmp eq i64 %i.d, 0
  br i1 %.not, label %edu_raise_irq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = and i64 %i.c, 2
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.c, label %bb.h

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.h = load i64, ptr %i.g, align 8              ; 5 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8              ; 3 uses
  %i.k = add i64 %i.j, %i.h                       ; 3 uses
  %.not.i = icmp uge i64 %i.k, %i.h
  %i.l = icmp ugt i64 %i.h, 262143
  %or.cond.i = and i1 %i.l, %.not.i
  %i.m = icmp ult i64 %i.k, 266241
  %or.cond20.i = and i1 %i.m, %or.cond.i
  br i1 %or.cond20.i, label %edu_check_range.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = load i32, ptr @qemu_loglevel, align 4
  %i.o = and i32 %i.n, 2048
  %.not21.i = icmp eq i32 %i.o, 0
  br i1 %.not21.i, label %edu_check_range.exit.thread, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  %i.p = add i64 %i.k, -1
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, i64 noundef %i.h, i64 noundef %i.p, i64 noundef 262144, i64 noundef 266239) #3
  br label %edu_check_range.exit.thread

edu_check_range.exit:                             ; preds = %bb.c
  %i.q = load i64, ptr %i.a, align 8              ; 3 uses
  %i.r = getelementptr i8, ptr %0, i64 7352
  %.val27 = load i64, ptr %i.r, align 8
  %i.s = and i64 %.val27, %i.q                    ; 3 uses
  %.not.i28 = icmp eq i64 %i.q, %i.s
  br i1 %.not.i28, label %edu_clamp_addr.exit, label %bb.f

bb.f:                                             ; preds = %edu_check_range.exit
  %i.t = load i32, ptr @qemu_loglevel, align 4
  %i.u = and i32 %i.t, 2048
  %.not1.i = icmp eq i32 %i.u, 0
  br i1 %.not1.i, label %edu_clamp_addr.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, i64 noundef %i.q, i64 noundef %i.s) #3
  %.pre38 = load i64, ptr %i.i, align 8
  br label %edu_clamp_addr.exit

edu_clamp_addr.exit:                              ; preds = %edu_check_range.exit, %bb.f, %bb.g
  %i.v = phi i64 [ %i.j, %edu_check_range.exit ], [ %i.j, %bb.f ], [ %.pre38, %bb.g ]
  %i.w = getelementptr i8, ptr %0, i64 -258888
  %i.x = getelementptr i8, ptr %i.w, i64 %i.h
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !8
  fence seq_cst
  %i.z = tail call i32 @address_space_rw(ptr noundef nonnull %i.y, i64 noundef %i.s, i64 4294967296, ptr noundef %i.x, i64 noundef %i.v, i1 noundef zeroext false) #3 ; 0 uses
  br label %edu_check_range.exit.thread

bb.h:                                             ; preds = %bb.b
  %i.aa = load i64, ptr %i.a, align 8             ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3192 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = add i64 %i.ac, %i.aa                    ; 3 uses
  %.not.i29 = icmp uge i64 %i.ad, %i.aa
  %i.ae = icmp ugt i64 %i.aa, 262143
  %or.cond.i30 = and i1 %i.ae, %.not.i29
  %i.af = icmp ult i64 %i.ad, 266241
  %or.cond20.i31 = and i1 %i.af, %or.cond.i30
  br i1 %or.cond20.i31, label %edu_check_range.exit33, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ag = load i32, ptr @qemu_loglevel, align 4
  %i.ah = and i32 %i.ag, 2048
  %.not21.i32 = icmp eq i32 %i.ah, 0
  br i1 %.not21.i32, label %edu_check_range.exit.thread, label %bb.j, !prof !7

bb.j:                                             ; preds = %bb.i
  %i.ai = add i64 %i.ad, -1
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.10, i64 noundef %i.aa, i64 noundef %i.ai, i64 noundef 262144, i64 noundef 266239) #3
  br label %edu_check_range.exit.thread

edu_check_range.exit33:                           ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.ak = load i64, ptr %i.aj, align 8            ; 3 uses
  %i.al = getelementptr i8, ptr %0, i64 7352
  %.val = load i64, ptr %i.al, align 8
  %i.am = and i64 %.val, %i.ak                    ; 3 uses
  %.not.i34 = icmp eq i64 %i.ak, %i.am
  br i1 %.not.i34, label %edu_clamp_addr.exit36, label %bb.k

bb.k:                                             ; preds = %edu_check_range.exit33
  %i.an = load i32, ptr @qemu_loglevel, align 4
  %i.ao = and i32 %i.an, 2048
  %.not1.i35 = icmp eq i32 %i.ao, 0
  br i1 %.not1.i35, label %edu_clamp_addr.exit36, label %bb.l, !prof !7

bb.l:                                             ; preds = %bb.k
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, i64 noundef %i.ak, i64 noundef %i.am) #3
  %.pre = load i64, ptr %i.ab, align 8
  br label %edu_clamp_addr.exit36

edu_clamp_addr.exit36:                            ; preds = %edu_check_range.exit33, %bb.k, %bb.l
  %i.ap = phi i64 [ %i.ac, %edu_check_range.exit33 ], [ %i.ac, %bb.k ], [ %.pre, %bb.l ]
  %i.aq = getelementptr i8, ptr %0, i64 -258888
  %i.ar = getelementptr i8, ptr %i.aq, i64 %i.aa
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 576
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !srcloc !8
  fence seq_cst
  %i.at = tail call i32 @address_space_rw(ptr noundef nonnull %i.as, i64 noundef %i.am, i64 4294967296, ptr noundef %i.ar, i64 noundef %i.ap, i1 noundef zeroext true) #3 ; 0 uses
  br label %edu_check_range.exit.thread

edu_check_range.exit.thread:                      ; preds = %bb.j, %bb.i, %bb.e, %bb.d, %edu_clamp_addr.exit36, %edu_clamp_addr.exit
  %i.au = load i64, ptr %i.b, align 8             ; 2 uses
  %i.av = and i64 %i.au, -2
  store i64 %i.av, ptr %i.b, align 8
  %i.aw = and i64 %i.au, 4
  %.not26.not = icmp eq i64 %i.aw, 0
  br i1 %.not26.not, label %edu_raise_irq.exit, label %bb.m

bb.m:                                             ; preds = %edu_check_range.exit.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  %i.ay = load i32, ptr %i.ax, align 16
  %i.az = or i32 %i.ay, 256
  store i32 %i.az, ptr %i.ax, align 16
  %i.ba = tail call zeroext i1 @msi_enabled(ptr noundef nonnull %0) #3
  br i1 %i.ba, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @msi_notify(ptr noundef nonnull %0, i32 noundef 0) #3
  br label %edu_raise_irq.exit

bb.o:                                             ; preds = %bb.m
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef 1) #3
  br label %edu_raise_irq.exit

edu_raise_irq.exit:                               ; preds = %bb.o, %bb.n, %edu_check_range.exit.thread, %bb.a
  ret void
}

declare void @qemu_mutex_init(ptr noundef) local_unnamed_addr #1

declare void @qemu_cond_init(ptr noundef) local_unnamed_addr #1

declare void @qemu_thread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal noalias noundef ptr @edu_fact_thread(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 3048 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3164 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3152 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3096
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3160 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 3168 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %i.g = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.g(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, i32 noundef 332) #3
  %i.h = load atomic i32, ptr %i.b monotonic, align 4
  %i.i = and i32 %i.h, 1
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.b, %bb.c
  %i.k = load i8, ptr %i.c, align 16, !range !12, !noundef !13
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %.critedge, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.m = load atomic ptr, ptr @qemu_cond_wait_func monotonic, align 8
  tail call void %i.m(ptr noundef nonnull %i.d, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, i32 noundef 335) #3
  %i.n = load atomic i32, ptr %i.b monotonic, align 4
  %i.o = and i32 %i.n, 1
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.lr.ph, label %.critedge, !llvm.loop !9

.critedge:                                        ; preds = %.lr.ph, %bb.c, %bb.b
  %i.q = load i8, ptr %i.c, align 16, !range !12, !noundef !13
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %bb.h, label %bb.d

bb.d:                                             ; preds = %.critedge
  %i.s = load i32, ptr %i.e, align 8              ; 7 uses
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, i32 noundef 344) #3
  %.not40 = icmp eq i32 %i.s, 0
  br i1 %.not40, label %._crit_edge, label %.lr.ph43.preheader

.lr.ph43.preheader:                               ; preds = %bb.d
  %min.iters.check = icmp ult i32 %i.s, 8
  br i1 %min.iters.check, label %.lr.ph43.preheader45, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph43.preheader
  %n.vec = and i32 %i.s, -8                       ; 2 uses
  %i.t = and i32 %i.s, 7
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.s, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.u = add <4 x i32> %broadcast.splat, <i32 0, i32 -1, i32 -2, i32 -3>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i32 [ 0, %vector.ph ], [ %index.next, %vector.body ]
  %vec.ind = phi <4 x i32> [ %i.u, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %vec.phi = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.v, %vector.body ]
  %vec.phi44 = phi <4 x i32> [ splat (i32 1), %vector.ph ], [ %i.w, %vector.body ]
  %step.add = add <4 x i32> %vec.ind, splat (i32 -4)
  %i.v = mul <4 x i32> %vec.ind, %vec.phi         ; 2 uses
  %i.w = mul <4 x i32> %step.add, %vec.phi44      ; 2 uses
  %index.next = add nuw i32 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 -8)
  %i.x = icmp eq i32 %index.next, %n.vec
  br i1 %i.x, label %middle.block, label %vector.body, !llvm.loop !10

middle.block:                                     ; preds = %vector.body
  %bin.rdx = mul <4 x i32> %i.w, %i.v
  %i.y = tail call i32 @llvm.vector.reduce.mul.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i32 %i.s, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %.lr.ph43.preheader45

.lr.ph43.preheader45:                             ; preds = %.lr.ph43.preheader, %middle.block
  %.042.ph = phi i32 [ %i.s, %.lr.ph43.preheader ], [ %i.t, %middle.block ]
  %.03441.ph = phi i32 [ 1, %.lr.ph43.preheader ], [ %i.y, %middle.block ]
  br label %.lr.ph43

.lr.ph43:                                         ; preds = %.lr.ph43.preheader45, %.lr.ph43
  %.042 = phi i32 [ %i.z, %.lr.ph43 ], [ %.042.ph, %.lr.ph43.preheader45 ] ; 2 uses
  %.03441 = phi i32 [ %i.aa, %.lr.ph43 ], [ %.03441.ph, %.lr.ph43.preheader45 ]
  %i.z = add i32 %.042, -1                        ; 2 uses
  %i.aa = mul i32 %.042, %.03441                  ; 2 uses
  %.not = icmp eq i32 %i.z, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph43, !llvm.loop !11

._crit_edge:                                      ; preds = %.lr.ph43, %middle.block, %bb.d
  %.034.lcssa = phi i32 [ 1, %bb.d ], [ %i.y, %middle.block ], [ %i.aa, %.lr.ph43 ]
  %i.ab = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  tail call void %i.ab(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, i32 noundef 355) #3
  store i32 %.034.lcssa, ptr %i.e, align 8
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, i32 noundef 357) #3
  %i.ac = atomicrmw and ptr %i.b, i32 -2 seq_cst, align 4 ; 0 uses
  fence syncscope("singlethread") seq_cst
  %i.ad = load atomic i32, ptr %i.b monotonic, align 4
  %i.ae = and i32 %i.ad, 128
  %.not36 = icmp eq i32 %i.ae, 0
  br i1 %.not36, label %.backedge, label %bb.e

.backedge:                                        ; preds = %._crit_edge, %edu_raise_irq.exit
  br label %bb.b

bb.e:                                             ; preds = %._crit_edge
  tail call void @bql_lock_impl(ptr noundef nonnull @.str.5, i32 noundef 364) #3
  %i.af = load i32, ptr %i.f, align 16
  %i.ag = or i32 %i.af, 1
  store i32 %i.ag, ptr %i.f, align 16
  %i.ah = tail call zeroext i1 @msi_enabled(ptr noundef nonnull %0) #3
  br i1 %i.ah, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void @msi_notify(ptr noundef nonnull %0, i32 noundef 0) #3
  br label %edu_raise_irq.exit

bb.g:                                             ; preds = %bb.e
  tail call void @pci_set_irq(ptr noundef nonnull %0, i32 noundef 1) #3
  br label %edu_raise_irq.exit

edu_raise_irq.exit:                               ; preds = %bb.f, %bb.g
  tail call void @bql_unlock() #3
  br label %.backedge

bb.h:                                             ; preds = %.critedge
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.5, i32 noundef 339) #3
  ret ptr null
}

declare void @memory_region_init_io(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare void @pci_register_bar(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare void @timer_init_full(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

declare i32 @address_space_rw(ptr noundef, i64 noundef, i64, ptr noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

declare void @msi_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @pci_set_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @msi_enabled(ptr noundef) local_unnamed_addr #1

declare void @qemu_mutex_unlock_impl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @bql_lock_impl(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @bql_unlock() local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal i64 @edu_mmio_read(ptr noundef %0, i64 noundef %1, i32 noundef %2) #0 {
bb.a:
  %i.a = icmp ult i64 %1, 128
  %i.b = icmp ne i32 %2, 4
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.m, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 127
  br i1 %i.c, label %switch.early.test, label %bb.c

switch.early.test:                                ; preds = %bb.b
  switch i32 %2, label %bb.m [
    i32 8, label %bb.c
    i32 4, label %bb.c
  ]

bb.c:                                             ; preds = %switch.early.test, %switch.early.test, %bb.b
  switch i64 %1, label %bb.m [
    i64 0, label %bb.d
    i64 4, label %bb.e
    i64 8, label %bb.f
    i64 32, label %bb.g
    i64 36, label %bb.h
    i64 128, label %bb.i
    i64 136, label %bb.j
    i64 144, label %bb.k
    i64 152, label %bb.l
  ]

bb.d:                                             ; preds = %bb.c
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 3156
  %i.e = load i32, ptr %i.d, align 4
  %i.f = zext i32 %i.e to i64
  br label %bb.m

bb.f:                                             ; preds = %bb.c
  %i.g = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3048 ; 2 uses
  tail call void %i.g(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.5, i32 noundef 216) #3
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3160
  %i.j = load i32, ptr %i.i, align 8
  %i.k = zext i32 %i.j to i64
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.5, i32 noundef 218) #3
  br label %bb.m

bb.g:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 3164
  %i.m = load atomic i32, ptr %i.l monotonic, align 4
  %i.n = zext i32 %i.m to i64
  br label %bb.m

bb.h:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3168
  %i.p = load i32, ptr %i.o, align 16
  %i.q = zext i32 %i.p to i64
  br label %bb.m

bb.i:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 3176
  %i.s = load i64, ptr %i.r, align 8
  br label %bb.m

bb.j:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 3184
  %i.u = load i64, ptr %i.t, align 8
  br label %bb.m

bb.k:                                             ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 3192
  %i.w = load i64, ptr %i.v, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.c
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3200
  %i.y = load i64, ptr %i.x, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %switch.early.test, %bb.a
  %.0 = phi i64 [ -1, %switch.early.test ], [ -1, %bb.a ], [ -1, %bb.c ], [ 16777453, %bb.d ], [ %i.f, %bb.e ], [ %i.k, %bb.f ], [ %i.n, %bb.g ], [ %i.q, %bb.h ], [ %i.s, %bb.i ], [ %i.u, %bb.j ], [ %i.w, %bb.k ], [ %i.y, %bb.l ]
  ret i64 %.0
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @edu_mmio_write(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3) #0 {
bb.a:
  %i.a = icmp ult i64 %1, 128
  %i.b = icmp ne i32 %3, 4
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %edu_raise_irq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 127
  br i1 %i.c, label %switch.early.test, label %bb.c

switch.early.test:                                ; preds = %bb.b
  switch i32 %3, label %edu_raise_irq.exit [
    i32 8, label %bb.c
    i32 4, label %bb.c
  ]

bb.c:                                             ; preds = %switch.early.test, %switch.early.test, %bb.b
  %i.d = add i64 %1, -4                           ; 2 uses
  %i.e = tail call i64 @llvm.fshl.i64(i64 %i.d, i64 %i.d, i64 62)
  switch i64 %i.e, label %edu_raise_irq.exit [
    i64 0, label %bb.d
    i64 1, label %bb.e
    i64 7, label %bb.g
    i64 23, label %bb.j
    i64 24, label %bb.n
    i64 31, label %bb.q
    i64 33, label %bb.r
    i64 35, label %bb.s
    i64 37, label %bb.t
  ]

bb.d:                                             ; preds = %bb.c
  %i.f = trunc i64 %2 to i32
  %i.g = xor i32 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 3156
  store i32 %i.g, ptr %i.h, align 4
  br label %edu_raise_irq.exit

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3164 ; 2 uses
  %i.j = load atomic i32, ptr %i.i monotonic, align 4
  %i.k = and i32 %i.j, 1
  %.not39 = icmp eq i32 %i.k, 0
  br i1 %.not39, label %bb.f, label %edu_raise_irq.exit

bb.f:                                             ; preds = %bb.e
  %i.l = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 3048 ; 2 uses
  tail call void %i.l(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.5, i32 noundef 267) #3
  %i.n = trunc i64 %2 to i32
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 3160
  store i32 %i.n, ptr %i.o, align 8
  %i.p = atomicrmw or ptr %i.i, i32 1 seq_cst, align 4 ; 0 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3096
  tail call void @qemu_cond_signal(ptr noundef nonnull %i.q) #3
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.5, i32 noundef 271) #3
  br label %edu_raise_irq.exit
end_hunk_0
