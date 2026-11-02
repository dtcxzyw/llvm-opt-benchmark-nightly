Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/virtio?download=true
inline.NumInlined: 440
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 16
begin_hunk_0_@virtio_queue_set_vector:bb.a
bb.j:                                             ; preds = %bb.f, %bb.i, %bb.a
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @virtio_add_queue(ptr noundef %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 7 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %indvars.iv = phi i64 [ 0, %bb.a ], [ %indvars.iv.next.3, %bb.f ] ; 6 uses
  %i.c = getelementptr inbounds nuw [152 x i8], ptr %i.b, i64 %indvars.iv
  %i.d = load i32, ptr %i.c, align 8
  %i.e = icmp eq i32 %i.d, 0
  br i1 %i.e, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %i.f = getelementptr inbounds nuw [152 x i8], ptr %i.b, i64 %indvars.iv.next
  %i.g = load i32, ptr %i.f, align 8
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next.1 = or disjoint i64 %indvars.iv, 2 ; 2 uses
  %i.i = getelementptr inbounds nuw [152 x i8], ptr %i.b, i64 %indvars.iv.next.1
  %i.j = load i32, ptr %i.i, align 8
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %indvars.iv.next.2 = or disjoint i64 %indvars.iv, 3 ; 2 uses
  %i.l = getelementptr inbounds nuw [152 x i8], ptr %i.b, i64 %indvars.iv.next.2
  %i.m = load i32, ptr %i.l, align 8
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, 1024
  br i1 %exitcond.not.3, label %.thread, label %bb.b, !llvm.loop !63

bb.g:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %indvars.iv.lcssa = phi i64 [ %indvars.iv, %bb.b ], [ %indvars.iv.next, %bb.c ], [ %indvars.iv.next.1, %bb.d ], [ %indvars.iv.next.2, %bb.e ] ; 7 uses
  %i.o = icmp eq i64 %indvars.iv.lcssa, 1024
  %i.p = icmp sgt i32 %1, 1024
  %or.cond = or i1 %i.p, %i.o
  br i1 %or.cond, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.f, %bb.g
  tail call void @abort() #26
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #25
  %i.r = tail call ptr @qdev_get_parent_bus(ptr noundef %i.q) #25 ; 2 uses
  %.not = icmp eq ptr %i.r, null
  br i1 %.not, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not47 = icmp eq ptr %i.t, null
  br i1 %.not47, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.u = tail call ptr @object_property_find(ptr noundef nonnull %i.t, ptr noundef nonnull @.str.51) #25
  %.not48 = icmp eq ptr %i.u, null
  br i1 %.not48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.v = load ptr, ptr %i.s, align 8
  %i.w = tail call i64 @object_property_get_int(ptr noundef %i.v, ptr noundef nonnull @.str.51, ptr noundef nonnull @error_abort) #25
  %i.x = trunc i64 %i.w to i32                    ; 2 uses
  %.not49 = icmp eq i32 %i.x, 0
  %spec.select = select i1 %.not49, i32 %1, i32 %i.x
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h
  %.1 = phi i32 [ %spec.select, %bb.k ], [ %1, %bb.j ], [ %1, %bb.i ], [ %1, %bb.h ] ; 3 uses
  %i.y = load ptr, ptr %i.a, align 8
  %i.z = getelementptr inbounds nuw [152 x i8], ptr %i.y, i64 %indvars.iv.lcssa
  store i32 %.1, ptr %i.z, align 8
  %i.aa = load ptr, ptr %i.a, align 8
  %i.ab = getelementptr inbounds nuw [152 x i8], ptr %i.aa, i64 %indvars.iv.lcssa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 4
  store i32 %.1, ptr %i.ac, align 4
  %i.ad = load ptr, ptr %i.a, align 8
  %i.ae = getelementptr inbounds nuw [152 x i8], ptr %i.ad, i64 %indvars.iv.lcssa
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store i32 4096, ptr %i.af, align 8
  %i.ag = load ptr, ptr %i.a, align 8
  %i.ah = getelementptr inbounds nuw [152 x i8], ptr %i.ag, i64 %indvars.iv.lcssa
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  store ptr %2, ptr %i.ai, align 8
  %i.aj = sext i32 %.1 to i64
  %i.ak = tail call noalias ptr @g_malloc0_n(i64 noundef %i.aj, i64 noundef 56) #28
  %i.al = load ptr, ptr %i.a, align 8
  %i.am = getelementptr inbounds nuw [152 x i8], ptr %i.al, i64 %indvars.iv.lcssa
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 48
  store ptr %i.ak, ptr %i.an, align 8
  %i.ao = load ptr, ptr %i.a, align 8
  %i.ap = getelementptr inbounds nuw [152 x i8], ptr %i.ao, i64 %indvars.iv.lcssa
  ret ptr %i.ap
}

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #13

declare ptr @object_property_find(ptr noundef, ptr noundef) local_unnamed_addr #5

declare i64 @object_property_get_int(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @virtio_delete_queue(ptr nofree noundef captures(none) initializes((0, 8), (88, 96)) %0) local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr null, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8
  tail call void @g_free(ptr noundef %i.d) #25
  store ptr null, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load atomic ptr, ptr %i.e monotonic, align 8 ; 2 uses
  store atomic ptr null, ptr %i.e release, align 8
  %.not.i = icmp eq ptr %i.f, null
  br i1 %.not.i, label %virtio_virtqueue_reset_region_cache.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @call_rcu1(ptr noundef nonnull %i.f, ptr noundef nonnull @virtio_free_region_cache) #25
  br label %virtio_virtqueue_reset_region_cache.exit

virtio_virtqueue_reset_region_cache.exit:         ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @virtio_del_queue(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %or.cond = icmp ugt i32 %1, 1023
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @abort() #26
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = zext nneg i32 %1 to i64
  %i.d = getelementptr inbounds nuw [152 x i8], ptr %i.b, i64 %i.c ; 5 uses
  store i32 0, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  store i32 0, ptr %i.e, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 48 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  tail call void @g_free(ptr noundef %i.h) #25
  store ptr null, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 40 ; 2 uses
  %i.j = load atomic ptr, ptr %i.i monotonic, align 8 ; 2 uses
  store atomic ptr null, ptr %i.i release, align 8
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %virtio_delete_queue.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @call_rcu1(ptr noundef nonnull %i.j, ptr noundef nonnull @virtio_free_region_cache) #25
  br label %virtio_delete_queue.exit

virtio_delete_queue.exit:                         ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @virtio_notify(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @get_ptr_rcu_reader() #25  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 12 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4              ; 2 uses
  %i.d = add i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %bb.b, label %rcu_read_auto_lock.exit

bb.b:                                             ; preds = %bb.a
  %i.e = load atomic i64, ptr @rcu_gp_ctr monotonic, align 8
  %i.f = and i64 %i.e, 4294967295
  store atomic i64 %i.f, ptr %i.a monotonic, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !15
  fence seq_cst
  br label %rcu_read_auto_lock.exit

rcu_read_auto_lock.exit:                          ; preds = %bb.a, %bb.b
  %i.g = getelementptr i8, ptr %0, i64 184        ; 3 uses
  %.val.i = load i64, ptr %i.g, align 8
  %i.h = and i64 %.val.i, 17179869184
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.h, label %bb.c

bb.c:                                             ; preds = %rcu_read_auto_lock.exit
  %2 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load atomic ptr, ptr %2 monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !16
  %.not.i.i5 = icmp eq ptr %i.i, null
  br i1 %.not.i.i5, label %virtio_should_notify.exit.thread12, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 128 ; 2 uses
  %i.k = tail call fastcc zeroext i16 @virtio_lduw_phys_cached(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.j, i64 noundef 2)
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !17
  fence acquire
  %i.l = tail call fastcc zeroext i16 @virtio_lduw_phys_cached(ptr noundef nonnull readonly %0, ptr noundef nonnull %i.j, i64 noundef 0)
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.m = load i16, ptr %3, align 4
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.n = load i16, ptr %4, align 8                ; 3 uses
  store i16 %i.n, ptr %3, align 4
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 70 ; 2 uses
  %i.o = load i8, ptr %5, align 2, !range !13, !noundef !14
  store i8 1, ptr %5, align 2
  switch i16 %i.k, label %bb.e [
    i16 1, label %virtio_should_notify.exit.thread12
    i16 0, label %virtio_should_notify.exit.thread
  ]

bb.e:                                             ; preds = %bb.d
  %i.p = trunc nuw i8 %i.o to i1
  br i1 %i.p, label %bb.f, label %virtio_should_notify.exit.thread

bb.f:                                             ; preds = %bb.e
  %6 = getelementptr inbounds nuw i8, ptr %1, i64 66
  %i.q = load i8, ptr %6, align 2, !range !13, !noundef !14
  %i.r = zext nneg i8 %i.q to i32
  %i.s = zext i16 %i.l to i32                     ; 2 uses
  %i.t = and i32 %i.s, 32767                      ; 2 uses
  %i.u = lshr i32 %i.s, 15
  %.not.i.i.i = icmp eq i32 %i.u, %i.r
  br i1 %.not.i.i.i, label %vring_packed_need_event.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.v = load i32, ptr %1, align 8
  %i.w = sub i32 %i.t, %i.v
  br label %vring_packed_need_event.exit.i.i

vring_packed_need_event.exit.i.i:                 ; preds = %bb.g, %bb.f
  %.0.i.i.i = phi i32 [ %i.w, %bb.g ], [ %i.t, %bb.f ]
  %i.x = trunc i32 %.0.i.i.i to i16
  %i.y = xor i16 %i.x, -1
  %i.z = add i16 %i.n, %i.y
  %i.aa = sub i16 %i.n, %i.m
  %i.ab = icmp ult i16 %i.z, %i.aa
  br i1 %i.ab, label %virtio_should_notify.exit.thread, label %virtio_should_notify.exit.thread12

bb.h:                                             ; preds = %rcu_read_auto_lock.exit
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !64
  fence seq_cst
  %.val16.i.i = load i64, ptr %i.g, align 8       ; 3 uses
  %i.ac = and i64 %.val16.i.i, 16777216
  %.not17.i.i = icmp eq i64 %i.ac, 0
  br i1 %.not17.i.i, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %7 = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.ad = load i32, ptr %7, align 4
  %.not.i6.i = icmp eq i32 %i.ad, 0
  br i1 %.not.i6.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ae = tail call i32 @virtio_queue_empty(ptr noundef nonnull %1)
  %.not14.i.i = icmp eq i32 %i.ae, 0
  br i1 %.not14.i.i, label %._crit_edge.i.i, label %virtio_should_notify.exit.thread

._crit_edge.i.i:                                  ; preds = %bb.j
  %.val.pre.i.i = load i64, ptr %i.g, align 8
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge.i.i, %bb.i, %bb.h
  %.val.i.i = phi i64 [ %.val.pre.i.i, %._crit_edge.i.i ], [ %.val16.i.i, %bb.i ], [ %.val16.i.i, %bb.h ]
  %i.af = and i64 %.val.i.i, 536870912
  %.not18.i.i = icmp eq i64 %i.af, 0
  br i1 %.not18.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %8 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ag = load atomic ptr, ptr %8 monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !16
  %.not.i.i8.i = icmp eq ptr %i.ag, null
  br i1 %.not.i.i8.i, label %virtio_should_notify.exit.thread, label %.split

.split:                                           ; preds = %bb.l
  %9 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.ah = load ptr, ptr %9, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  %i.aj = tail call fastcc zeroext i16 @virtio_lduw_phys_cached(ptr noundef %i.ah, ptr noundef %i.ai, i64 noundef 0)
  %i.ak = and i16 %i.aj, 1
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %virtio_should_notify.exit.thread, label %virtio_should_notify.exit.thread12

bb.m:                                             ; preds = %bb.k
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 70 ; 2 uses
  %i.am = load i8, ptr %10, align 2, !range !13, !noundef !14
  %i.an = trunc nuw i8 %i.am to i1
  store i8 1, ptr %10, align 2
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %i.ao = load i16, ptr %11, align 4
  %12 = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = load i16, ptr %12, align 8              ; 3 uses
  store i16 %i.ap, ptr %11, align 4
  br i1 %i.an, label %bb.n, label %virtio_should_notify.exit.thread

bb.n:                                             ; preds = %bb.m
  %i.aq = load i32, ptr %1, align 8
  %13 = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ar = load atomic ptr, ptr %13 monotonic, align 8 ; 2 uses
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !16
  %.not.i.i.i.i = icmp eq ptr %i.ar, null
  br i1 %.not.i.i.i.i, label %virtio_should_notify.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = sext i32 %i.aq to i64
  %i.at = shl nsw i64 %i.as, 1
  %i.au = add nsw i64 %i.at, 4
  %14 = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.av = load ptr, ptr %14, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ar, i64 128
  %i.ax = tail call fastcc zeroext i16 @virtio_lduw_phys_cached(ptr noundef %i.av, ptr noundef %i.aw, i64 noundef %i.au)
  %i.ay = xor i16 %i.ax, -1
  br label %virtio_should_notify.exit

virtio_should_notify.exit:                        ; preds = %bb.n, %bb.o
  %.0.i.i.i.i = phi i16 [ %i.ay, %bb.o ], [ -1, %bb.n ]
  %i.az = add i16 %.0.i.i.i.i, %i.ap
  %i.ba = sub i16 %i.ap, %i.ao
  %i.bb = icmp ult i16 %i.az, %i.ba
  br i1 %i.bb, label %virtio_should_notify.exit.thread, label %virtio_should_notify.exit.thread12

virtio_should_notify.exit.thread:                 ; preds = %bb.d, %bb.l, %bb.m, %bb.j, %bb.e, %.split, %vring_packed_need_event.exit.i.i, %virtio_should_notify.exit
  %i.bc = tail call ptr @get_ptr_rcu_reader() #25 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 12 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 4            ; 2 uses
  %.not.i.i6 = icmp eq i32 %i.be, 0
  br i1 %.not.i.i6, label %bb.p, label %bb.q

bb.p:                                             ; preds = %virtio_should_notify.exit.thread
  tail call void @__assert_fail(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef 101, ptr noundef nonnull @__PRETTY_FUNCTION__.rcu_read_unlock) #26
  unreachable

bb.q:                                             ; preds = %virtio_should_notify.exit.thread
  %i.bf = add i32 %i.be, -1                       ; 2 uses
  store i32 %i.bf, ptr %i.bd, align 4
  %.not8.i.i = icmp eq i32 %i.bf, 0
  br i1 %.not8.i.i, label %bb.r, label %.critedge

bb.r:                                             ; preds = %bb.q
  store atomic i64 0, ptr %i.bc release, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !18
  fence seq_cst
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 8 ; 2 uses
  %i.bh = load atomic i8, ptr %i.bg monotonic, align 8, !range !13, !noundef !14
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.s, label %.critedge, !prof !19

bb.s:                                             ; preds = %bb.r
  store atomic i8 0, ptr %i.bg monotonic, align 8
  tail call void @qemu_event_set(ptr noundef nonnull @rcu_gp_event) #25
  br label %.critedge

virtio_should_notify.exit.thread12:               ; preds = %bb.d, %bb.c, %.split, %virtio_should_notify.exit, %vring_packed_need_event.exit.i.i
  %i.bj = tail call ptr @get_ptr_rcu_reader() #25 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 12 ; 2 uses
  %i.bl = load i32, ptr %i.bk, align 4            ; 2 uses
  %.not.i.i.i.i8 = icmp eq i32 %i.bl, 0
  br i1 %.not.i.i.i.i8, label %bb.t, label %bb.u

bb.t:                                             ; preds = %virtio_should_notify.exit.thread12
  tail call void @__assert_fail(ptr noundef nonnull @.str.111, ptr noundef nonnull @.str.112, i32 noundef 101, ptr noundef nonnull @__PRETTY_FUNCTION__.rcu_read_unlock) #26
  unreachable

bb.u:                                             ; preds = %virtio_should_notify.exit.thread12
  %i.bm = add i32 %i.bl, -1                       ; 2 uses
  store i32 %i.bm, ptr %i.bk, align 4
  %.not8.i.i.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not8.i.i.i.i, label %bb.v, label %glib_autoptr_cleanup_RCUReadAuto.exit

bb.v:                                             ; preds = %bb.u
  store atomic i64 0, ptr %i.bj release, align 8
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #25, !srcloc !18
  fence seq_cst
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 8 ; 2 uses
  %i.bo = load atomic i8, ptr %i.bn monotonic, align 8, !range !13, !noundef !14
  %i.bp = trunc nuw i8 %i.bo to i1
  br i1 %i.bp, label %bb.w, label %glib_autoptr_cleanup_RCUReadAuto.exit, !prof !19

bb.w:                                             ; preds = %bb.v
  store atomic i8 0, ptr %i.bn monotonic, align 8
  tail call void @qemu_event_set(ptr noundef nonnull @rcu_gp_event) #25
  br label %glib_autoptr_cleanup_RCUReadAuto.exit

.critedge:                                        ; preds = %bb.s, %bb.q, %bb.r
  %i.bq = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i9 = icmp eq i32 %i.bq, 0
  br i1 %.not.i9, label %trace_virtio_notify.exit, label %bb.x, !prof !21

bb.x:                                             ; preds = %.critedge
  %i.br = load i16, ptr @_TRACE_VIRTIO_NOTIFY_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.br, 0
  br i1 %.not2.i, label %trace_virtio_notify.exit, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bs = load i32, ptr @qemu_loglevel, align 4
  %i.bt = and i32 %i.bs, 32768
  %.not3.i = icmp eq i32 %i.bt, 0
  br i1 %.not3.i, label %trace_virtio_notify.exit, label %bb.z

bb.z:                                             ; preds = %bb.y
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.113, ptr noundef nonnull %0, ptr noundef nonnull %1) #25
  br label %trace_virtio_notify.exit

trace_virtio_notify.exit:                         ; preds = %.critedge, %bb.x, %bb.y, %bb.z
  tail call fastcc void @virtio_irq(ptr noundef nonnull %1)
  br label %glib_autoptr_cleanup_RCUReadAuto.exit

glib_autoptr_cleanup_RCUReadAuto.exit:            ; preds = %bb.w, %bb.v, %bb.u, %trace_virtio_notify.exit
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @virtio_irq(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 161 ; 2 uses
  %i.d = load atomic i8, ptr %i.c monotonic, align 1
  %i.e = and i8 %i.d, 1
  %.not.i.not = icmp eq i8 %i.e, 0
  br i1 %.not.i.not, label %bb.b, label %virtio_set_isr.exit

bb.b:                                             ; preds = %bb.a
  %i.f = atomicrmw or ptr %i.c, i8 1 seq_cst, align 1 ; 0 uses
  br label %virtio_set_isr.exit

virtio_set_isr.exit:                              ; preds = %bb.a, %bb.b
  %i.g = tail call zeroext i1 @qemu_in_iothread() #25
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %virtio_set_isr.exit
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 104
  tail call void @defer_call(ptr noundef nonnull @virtio_notify_irqfd_deferred_fn, ptr noundef nonnull %i.h) #25
  br label %virtio_notify_vector.exit

bb.d:                                             ; preds = %virtio_set_isr.exit
  %i.i = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = load i16, ptr %i.j, align 8
  %i.l = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.i, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #25
  %i.m = tail call ptr @qdev_get_parent_bus(ptr noundef %i.l) #25 ; 2 uses
  %i.n = tail call ptr @object_get_class(ptr noundef %i.m) #25
  %i.o = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.n, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS_GET_CLASS) #25
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 453
  %i.q = load i8, ptr %i.p, align 1, !range !13, !noundef !14
  %i.r = trunc nuw i8 %i.q to i1
  br i1 %i.r, label %virtio_notify_vector.exit, label %virtio_device_disabled.exit.i, !prof !19

virtio_device_disabled.exit.i:                    ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 451
  %i.t = load i8, ptr %i.s, align 1, !range !13, !noundef !14
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %virtio_notify_vector.exit, label %bb.e

bb.e:                                             ; preds = %virtio_device_disabled.exit.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 152
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %.not.i4 = icmp eq ptr %i.w, null
  br i1 %.not.i4, label %virtio_notify_vector.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 40
  %i.y = load ptr, ptr %i.x, align 8
  tail call void %i.w(ptr noundef %i.y, i16 noundef zeroext %i.k) #25, !inline_history !22
  br label %virtio_notify_vector.exit

virtio_notify_vector.exit:                        ; preds = %bb.f, %bb.e, %virtio_device_disabled.exit.i, %bb.d, %bb.c
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @virtio_notify_config(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, 4
  %.not = icmp eq i8 %i.c, 0
  br i1 %.not, label %virtio_notify_vector.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 161 ; 2 uses
  %i.e = load atomic i8, ptr %i.d monotonic, align 1
  %i.f = and i8 %i.e, 3
  %.not.i = icmp eq i8 %i.f, 3
  br i1 %.not.i, label %virtio_set_isr.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = atomicrmw or ptr %i.d, i8 3 seq_cst, align 1 ; 0 uses
  br label %virtio_set_isr.exit

virtio_set_isr.exit:                              ; preds = %bb.b, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 236 ; 2 uses
  %i.i = load i32, ptr %i.h, align 4
  %i.j = add i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 4
  %i.k = tail call zeroext i1 @qemu_in_iothread() #25
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %virtio_set_isr.exit
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 520
  tail call void @defer_call(ptr noundef nonnull @virtio_notify_irqfd_deferred_fn, ptr noundef nonnull %i.l) #25
  br label %virtio_notify_vector.exit

bb.e:                                             ; preds = %virtio_set_isr.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.n = load i16, ptr %i.m, align 8
  %i.o = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #25
  %i.p = tail call ptr @qdev_get_parent_bus(ptr noundef %i.o) #25 ; 2 uses
  %i.q = tail call ptr @object_get_class(ptr noundef %i.p) #25
  %i.r = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.q, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS_GET_CLASS) #25
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 453
  %i.t = load i8, ptr %i.s, align 1, !range !13, !noundef !14
  %i.u = trunc nuw i8 %i.t to i1
  br i1 %i.u, label %virtio_notify_vector.exit, label %virtio_device_disabled.exit.i, !prof !19

virtio_device_disabled.exit.i:                    ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 451
  %i.w = load i8, ptr %i.v, align 1, !range !13, !noundef !14
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %virtio_notify_vector.exit, label %bb.f

bb.f:                                             ; preds = %virtio_device_disabled.exit.i
  %i.y = getelementptr inbounds nuw i8, ptr %i.r, i64 152
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not.i6 = icmp eq ptr %i.z, null
  br i1 %.not.i6, label %virtio_notify_vector.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 40
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.z(ptr noundef %i.ab, i16 noundef zeroext %i.n) #25, !inline_history !22
  br label %virtio_notify_vector.exit

virtio_notify_vector.exit:                        ; preds = %bb.g, %bb.f, %virtio_device_disabled.exit.i, %bb.e, %bb.a, %bb.d
  ret void
}

declare zeroext i1 @qemu_in_iothread() local_unnamed_addr #5

declare void @defer_call(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind sspstrong uwtable
define internal void @virtio_notify_irqfd_deferred_fn(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds i8, ptr %0, i64 -104
  %i.b = getelementptr inbounds i8, ptr %0, i64 -8
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %trace_virtio_notify_irqfd_deferred_fn.exit, label %bb.b, !prof !21

bb.b:                                             ; preds = %bb.a
  %i.e = load i16, ptr @_TRACE_VIRTIO_NOTIFY_IRQFD_DEFERRED_FN_DSTATE, align 2
  %.not2.i = icmp eq i16 %i.e, 0
  br i1 %.not2.i, label %trace_virtio_notify_irqfd_deferred_fn.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load i32, ptr @qemu_loglevel, align 4
  %i.g = and i32 %i.f, 32768
  %.not3.i = icmp eq i32 %i.g, 0
  br i1 %.not3.i, label %trace_virtio_notify_irqfd_deferred_fn.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.114, ptr noundef %i.c, ptr noundef nonnull %i.a) #25
  br label %trace_virtio_notify_irqfd_deferred_fn.exit

trace_virtio_notify_irqfd_deferred_fn.exit:       ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %i.h = tail call i32 @event_notifier_set(ptr noundef nonnull %0) #25 ; 0 uses
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local i32 @virtio_save(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.78, ptr noundef nonnull @.str.79, i32 noundef 78, ptr noundef nonnull @__func__.DEVICE) #25
  %i.c = tail call ptr @qdev_get_parent_bus(ptr noundef %i.b) #25 ; 3 uses
  %i.d = tail call ptr @object_get_class(ptr noundef %i.c) #25
  %i.e = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.d, ptr noundef nonnull @.str.108, ptr noundef nonnull @.str.109, i32 noundef 37, ptr noundef nonnull @__func__.VIRTIO_BUS_GET_CLASS) #25 ; 3 uses
  %i.f = tail call ptr @object_get_class(ptr noundef %0) #25
  %i.g = tail call ptr @object_class_dynamic_cast_assert(ptr noundef %i.f, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.77, i32 noundef 91, ptr noundef nonnull @__func__.VIRTIO_DEVICE_GET_CLASS) #25 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.i = load i64, ptr %i.h, align 8
  %i.j = trunc i64 %i.i to i32
end_hunk_0
