Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/ivshmem-pci?download=true
inline.NumInlined: 72
inline.NumDeleted: 31
begin_hunk_0_@ivshmem_io_read:bb.a
  switch i64 %1, label %bb.e [
    i64 0, label %bb.b
    i64 4, label %bb.c
    i64 8, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr i8, ptr %0, i64 2840
  %.val = load i32, ptr %i.a, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2844 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4
  store i32 0, ptr %i.b, align 4
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.e = load i32, ptr %i.d, align 16
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.d, %bb.c, %bb.b
  %.0 = phi i32 [ %i.e, %bb.d ], [ %.val, %bb.b ], [ %i.c, %bb.c ], [ 0, %bb.a ]
  %i.f = zext i32 %.0 to i64
  ret i64 %i.f
}

; Function Attrs: nounwind sspstrong uwtable
define internal void @ivshmem_io_write(ptr nofree noundef captures(none) %0, i64 noundef %1, i64 noundef %2, i32 %3) #0 {
bb.a:
  %i.a = lshr i64 %2, 16                          ; 2 uses
  %i.b = trunc i64 %2 to i32                      ; 3 uses
  %i.c = and i32 %i.b, 255
  %i.d = trunc i64 %1 to i8
  %trunc = and i8 %i.d, -4
  switch i8 %trunc, label %bb.g [
    i8 0, label %bb.b
    i8 4, label %bb.c
    i8 12, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 2840
  store i32 %i.b, ptr %i.e, align 8
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 2844
  store i32 %i.b, ptr %i.f, align 4
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.g = trunc i64 %i.a to i32
  %i.h = and i32 %i.g, 65535
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.j = load i32, ptr %i.i, align 8
  %.not = icmp slt i32 %i.h, %i.j
  br i1 %.not, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 3424
  %i.l = load ptr, ptr %i.k, align 16
  %i.m = and i64 %i.a, 65535
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.l, i64 %i.m ; 2 uses
  %i.o = load i32, ptr %i.n, align 8
  %i.p = icmp sgt i32 %i.o, %i.c
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = and i64 %2, 255
  %i.t = getelementptr inbounds nuw [12 x i8], ptr %i.r, i64 %i.s
  %i.u = tail call i32 @event_notifier_set(ptr noundef %i.t) #11 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  ret void
}

declare i32 @event_notifier_set(ptr noundef) local_unnamed_addr #1

declare void @g_free(ptr noundef) local_unnamed_addr #1

declare ptr @g_realloc(ptr noundef, i64 noundef) local_unnamed_addr #1

declare ptr @g_realloc_n(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc0_n(i64 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @process_msg(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %4 = alloca %struct.stat, align 8               ; 5 uses
  %i.b = add i64 %1, -65536
  %or.cond = icmp ult i64 %i.b, -65537
  br i1 %or.cond, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef 570, ptr noundef nonnull @__func__.process_msg, ptr noundef nonnull @.str.22, i64 noundef %1) #11
  %i.c = icmp sgt i32 %2, -1
  br i1 %i.c, label %bb.c, label %process_msg_connect.exit

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i32 @close(i32 noundef %2) #11 ; 0 uses
  br label %process_msg_connect.exit

bb.d:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %1, -1
  br i1 %i.e, label %bb.e, label %bb.m

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #11
  %i.f = icmp slt i32 %2, 0
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef 488, ptr noundef nonnull @__func__.process_msg_shmem, ptr noundef nonnull @.str.23) #11
  br label %process_msg_shmem.exit

bb.g:                                             ; preds = %bb.e
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3136 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 16
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef 493, ptr noundef nonnull @__func__.process_msg_shmem, ptr noundef nonnull @.str.24) #11
  %i.i = tail call i32 @close(i32 noundef %2) #11 ; 0 uses
  br label %process_msg_shmem.exit

bb.i:                                             ; preds = %bb.g
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %4, i8 0, i64 144, i1 false), !annotation !10
  %i.j = call i32 @fstat64(i32 noundef %2, ptr noundef nonnull %4) #11
  %i.k = icmp slt i32 %i.j, 0
  br i1 %i.k, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.l = tail call ptr @__errno_location() #14
  %i.m = load i32, ptr %i.l, align 4
  tail call void (ptr, ptr, i32, ptr, i32, ptr, ...) @error_setg_errno_internal(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef 500, ptr noundef nonnull @__func__.process_msg_shmem, i32 noundef %i.m, ptr noundef nonnull @.str.25) #11
  %i.n = tail call i32 @close(i32 noundef %2) #11 ; 0 uses
  br label %process_msg_shmem.exit

bb.k:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.p = load i64, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 3152 ; 2 uses
  %i.r = tail call zeroext i1 @memory_region_init_ram_from_fd(ptr noundef nonnull %i.q, ptr noundef nonnull %0, ptr noundef nonnull @.str.26, i64 noundef %i.p, i32 noundef 2, i32 noundef %2, i64 noundef 0, ptr noundef nonnull %3) #11
  br i1 %i.r, label %bb.l, label %process_msg_shmem.exit

bb.l:                                             ; preds = %bb.k
  store ptr %i.q, ptr %i.g, align 16
  br label %process_msg_shmem.exit

process_msg_shmem.exit:                           ; preds = %bb.f, %bb.h, %bb.j, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #11
  br label %process_msg_connect.exit

bb.m:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 3432 ; 3 uses
  %i.t = load i32, ptr %i.s, align 8
  %i.u = sext i32 %i.t to i64                     ; 2 uses
  %.not = icmp slt i64 %1, %i.u
  br i1 %.not, label %resize_peers.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m
  %i.v = trunc nuw nsw i64 %1 to i32
  %i.w = add nuw nsw i32 %i.v, 1                  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 3424 ; 4 uses
  %i.y = load ptr, ptr %i.x, align 16
  %i.z = zext nneg i32 %i.w to i64
  %i.aa = tail call ptr @g_realloc_n(ptr noundef %i.y, i64 noundef %i.z, i64 noundef 16) #11
  store ptr %i.aa, ptr %i.x, align 16
  store i32 %i.w, ptr %i.s, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 3436
  br label %bb.n

bb.n:                                             ; preds = %.lr.ph.i, %bb.n
  %indvars.iv.i = phi i64 [ %i.u, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.n ] ; 3 uses
  %i.ac = load i32, ptr %i.ab, align 4
  %i.ad = zext i32 %i.ac to i64
  %i.ae = tail call noalias ptr @g_malloc0_n(i64 noundef %i.ad, i64 noundef 12) #13
  %i.af = load ptr, ptr %i.x, align 16
  %i.ag = getelementptr inbounds [16 x i8], ptr %i.af, i64 %indvars.iv.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %i.ae, ptr %i.ah, align 8
  %i.ai = load ptr, ptr %i.x, align 16
  %i.aj = getelementptr inbounds [16 x i8], ptr %i.ai, i64 %indvars.iv.i
  store i32 0, ptr %i.aj, align 8
  %indvars.iv.next.i = add nsw i64 %indvars.iv.i, 1 ; 2 uses
  %lftr.wideiv.i = trunc i64 %indvars.iv.next.i to i32
  %exitcond.not.i = icmp eq i32 %i.w, %lftr.wideiv.i
  br i1 %exitcond.not.i, label %resize_peers.exit, label %bb.n, !llvm.loop !0

resize_peers.exit:                                ; preds = %bb.n, %bb.m
  %i.ak = icmp sgt i32 %2, -1
  %5 = trunc nuw i64 %1 to i32                    ; 2 uses
  br i1 %i.ak, label %bb.o, label %bb.af

bb.o:                                             ; preds = %resize_peers.exit
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 3424 ; 3 uses
  %i.am = load ptr, ptr %i.al, align 16
  %i.an = getelementptr inbounds nuw [16 x i8], ptr %i.am, i64 %1 ; 3 uses
  %i.ao = load i32, ptr %i.an, align 8            ; 6 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 3436
  %i.aq = load i32, ptr %i.ap, align 4            ; 2 uses
  %.not.i23 = icmp ult i32 %i.ao, %i.aq
  br i1 %.not.i23, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef 540, ptr noundef nonnull @__func__.process_msg_connect, ptr noundef nonnull @.str.27, i32 noundef %i.aq) #11
  %i.ar = tail call i32 @close(i32 noundef range(i32 0, -2147483648) %2) #11 ; 0 uses
  br label %process_msg_connect.exit

bb.q:                                             ; preds = %bb.o
  %i.as = add nuw i32 %i.ao, 1
  store i32 %i.as, ptr %i.an, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = sext i32 %i.ao to i64                   ; 7 uses
  %i.aw = getelementptr inbounds [12 x i8], ptr %i.au, i64 %i.av
  tail call void @event_notifier_init_fd(ptr noundef %i.aw, i32 noundef range(i32 0, -2147483648) %2) #11
  %i.ax = tail call zeroext i1 @qemu_set_blocking(i32 noundef range(i32 0, -2147483648) %2, i1 noundef zeroext false, ptr noundef nonnull %3) #11
  br i1 %i.ax, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ay = tail call i32 @close(i32 noundef range(i32 0, -2147483648) %2) #11 ; 0 uses
  br label %process_msg_connect.exit

bb.s:                                             ; preds = %bb.q
  %6 = and i32 %5, 65535                          ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.ba = load i32, ptr %i.az, align 16
  %i.bb = icmp eq i32 %i.ba, %6
  br i1 %i.bb, label %bb.t, label %bb.ad

bb.t:                                             ; preds = %bb.s
  %i.bc = load ptr, ptr %i.al, align 16
  %i.bd = getelementptr inbounds nuw [16 x i8], ptr %i.bc, i64 %1
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  %i.bf = load ptr, ptr %i.be, align 8
  %i.bg = getelementptr inbounds [12 x i8], ptr %i.bf, i64 %i.av ; 2 uses
  %i.bh = load i8, ptr @kvm_msi_via_irqfd_allowed, align 1, !range !11, !noundef !12
  %i.bi = trunc nuw i8 %i.bh to i1
  br i1 %i.bi, label %bb.u, label %.critedge.i.i

bb.u:                                             ; preds = %bb.t
  %i.bj = getelementptr i8, ptr %0, i64 2768
  %.val.i.i = load i32, ptr %i.bj, align 16
  %i.bk = and i32 %.val.i.i, 2
  %.not22.i.i = icmp eq i32 %i.bk, 0
  %i.bl = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  store ptr null, ptr %i.a, align 8
  br i1 %.not22.i.i, label %bb.v, label %bb.x

.critedge.i.i:                                    ; preds = %bb.t
  %i.bm = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #11 ; 0 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #11
  br label %bb.v

bb.v:                                             ; preds = %.critedge.i.i, %bb.u
  %i.bn = tail call i32 @event_notifier_get_fd(ptr noundef %i.bg) #11
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 3 uses
  %i.bp = load ptr, ptr %i.bo, align 16
  %i.bq = getelementptr inbounds [16 x i8], ptr %i.bp, i64 %i.av
  %i.br = load ptr, ptr %i.bq, align 8
  %.not.i.i.i = icmp eq ptr %i.br, null
  br i1 %.not.i.i.i, label %watch_vector_notifier.exit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.8, i32 noundef 356, ptr noundef nonnull @__PRETTY_FUNCTION__.watch_vector_notifier) #12
  unreachable

watch_vector_notifier.exit.i.i:                   ; preds = %bb.v
  %i.bs = tail call ptr @object_dynamic_cast_assert(ptr noundef nonnull %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #11
  %i.bt = load ptr, ptr %i.bo, align 16
  %i.bu = getelementptr inbounds [16 x i8], ptr %i.bt, i64 %i.av
  store ptr %i.bs, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %i.bo, align 16
  %i.bw = getelementptr inbounds [16 x i8], ptr %i.bv, i64 %i.av
  tail call void @qemu_set_fd_handler(i32 noundef %i.bn, ptr noundef nonnull @ivshmem_vector_notify, ptr noundef null, ptr noundef %i.bw) #11
  br label %setup_interrupt.exit.i

bb.x:                                             ; preds = %bb.u
  %i.bx = tail call i32 @msix_enabled(ptr noundef %i.bl) #11
  %.not.i.i = icmp eq i32 %i.bx, 0
  br i1 %.not.i.i, label %setup_interrupt.exit.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  call fastcc void @ivshmem_add_kvm_msi_virq(ptr noundef nonnull %0, i32 noundef %i.ao, ptr noundef %i.a)
  %i.by = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not21.i.i = icmp eq ptr %i.by, null
  br i1 %.not21.i.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @error_propagate(ptr noundef nonnull %3, ptr noundef nonnull %i.by) #11
  br label %setup_interrupt.exit.i

bb.aa:                                            ; preds = %bb.y
  %i.bz = call zeroext i1 @msix_is_masked(ptr noundef %i.bl, i32 noundef %i.ao) #11
  br i1 %i.bz, label %setup_interrupt.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ca = load ptr, ptr @kvm_state, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 3440
  %i.cc = load ptr, ptr %i.cb, align 16
  %i.cd = getelementptr inbounds [16 x i8], ptr %i.cc, i64 %i.av
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 8
  %i.cf = load i32, ptr %i.ce, align 8
  %i.cg = call i32 @kvm_irqchip_add_irqfd_notifier_gsi(ptr noundef %i.ca, ptr noundef %i.bg, ptr noundef null, i32 noundef %i.cf) #11
  %i.ch = icmp slt i32 %i.cg, 0
  br i1 %i.ch, label %bb.ac, label %setup_interrupt.exit.i

bb.ac:                                            ; preds = %bb.ab
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef 471, ptr noundef nonnull @__func__.setup_interrupt, ptr noundef nonnull @.str.28) #11
  br label %setup_interrupt.exit.i

setup_interrupt.exit.i:                           ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.x, %watch_vector_notifier.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #11
  br label %bb.ad

bb.ad:                                            ; preds = %setup_interrupt.exit.i, %bb.s
  %i.ci = getelementptr i8, ptr %0, i64 2768
  %.val.i = load i32, ptr %i.ci, align 16
  %i.cj = and i32 %.val.i, 1
  %.not23.i = icmp eq i32 %i.cj, 0
  br i1 %.not23.i, label %process_msg_connect.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.cl = shl nuw i32 %6, 16
  %i.cm = or i32 %i.ao, %i.cl
  %i.cn = sext i32 %i.cm to i64
  %i.co = load ptr, ptr %i.al, align 16
  %i.cp = getelementptr inbounds nuw [16 x i8], ptr %i.co, i64 %1
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.cr = load ptr, ptr %i.cq, align 8
  %i.cs = getelementptr inbounds [12 x i8], ptr %i.cr, i64 %i.av
  call void @memory_region_add_eventfd(ptr noundef nonnull %i.ck, i64 noundef 12, i32 noundef 4, i1 noundef zeroext true, i64 noundef %i.cn, ptr noundef %i.cs) #11
  br label %process_msg_connect.exit

bb.af:                                            ; preds = %resize_peers.exit
  %7 = and i32 %5, 65535                          ; 4 uses
  %i.ct = load i32, ptr %i.s, align 8
  %.not.i24 = icmp sgt i32 %i.ct, %7
  br i1 %.not.i24, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 2848
  %i.cv = load i32, ptr %i.cu, align 16
  %i.cw = icmp eq i32 %i.cv, %7
  br i1 %i.cw, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag, %bb.af
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %3, ptr noundef nonnull @.str.8, i32 noundef 522, ptr noundef nonnull @__func__.process_msg_disconnect, ptr noundef nonnull @.str.31, i32 noundef %7) #11
  br label %process_msg_connect.exit

bb.ai:                                            ; preds = %bb.ag
  tail call fastcc void @close_peer_eventfds(ptr noundef nonnull %0, i32 noundef %7)
  br label %process_msg_connect.exit

process_msg_connect.exit:                         ; preds = %bb.ai, %bb.ah, %bb.ae, %bb.ad, %bb.r, %bb.p, %bb.b, %bb.c, %process_msg_shmem.exit
  ret void
}

declare i32 @qemu_chr_fe_read_all(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @error_setg_errno_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

declare i32 @qemu_chr_fe_get_msgfd(ptr noundef) local_unnamed_addr #1

declare i32 @close(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @fstat64(i32 noundef, ptr noundef captures(none)) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

declare zeroext i1 @memory_region_init_ram_from_fd(ptr noundef, ptr noundef, ptr noundef, i64 noundef, i32 noundef, i32 noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare void @event_notifier_init_fd(ptr noundef, i32 noundef) local_unnamed_addr #1

declare zeroext i1 @qemu_set_blocking(i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

declare i32 @msix_enabled(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @ivshmem_add_kvm_msi_virq(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.AccelRouteChange, align 8   ; 7 uses
  %i.a = tail call ptr @object_dynamic_cast_assert(ptr noundef %0, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.7, i32 noundef 12, ptr noundef nonnull @__func__.PCI_DEVICE) #11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #11
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 0, ptr %i.b, align 8, !annotation !10
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 3440 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = sext i32 %1 to i64                       ; 3 uses
  %i.f = getelementptr inbounds [16 x i8], ptr %i.d, i64 %i.e
  %i.g = load ptr, ptr %i.f, align 8
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.8, i32 noundef 431, ptr noundef nonnull @__PRETTY_FUNCTION__.ivshmem_add_kvm_msi_virq) #12
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.h = tail call { ptr, i32 } @accel_irqchip_begin_route_changes() #11 ; 2 uses
  %i.i = extractvalue { ptr, i32 } %i.h, 0
  %i.j = extractvalue { ptr, i32 } %i.h, 1
  store ptr %i.i, ptr %3, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %i.j, ptr %.sroa.4.0..sroa_idx, align 8
  %i.k = call i32 @kvm_irqchip_add_msi_route(ptr noundef nonnull %3, i32 noundef %1, ptr noundef %i.a) #11 ; 2 uses
  %i.l = icmp slt i32 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef nonnull %2, ptr noundef nonnull @.str.8, i32 noundef 436, ptr noundef nonnull @__func__.ivshmem_add_kvm_msi_virq, ptr noundef nonnull @.str.30) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @accel_irqchip_commit_route_changes(ptr noundef nonnull %3) #11
  %i.m = load ptr, ptr %i.c, align 16
  %i.n = getelementptr inbounds [16 x i8], ptr %i.m, i64 %i.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i32 %i.k, ptr %i.o, align 8
  %i.p = load ptr, ptr %i.c, align 16
  %i.q = getelementptr inbounds [16 x i8], ptr %i.p, i64 %i.e
  store ptr %i.a, ptr %i.q, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #11
  ret void
}

declare zeroext i1 @msix_is_masked(ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @kvm_irqchip_add_irqfd_notifier_gsi(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

declare i32 @event_notifier_get_fd(ptr noundef) local_unnamed_addr #1

declare void @qemu_set_fd_handler(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal void @ivshmem_vector_notify(ptr noundef %0) #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 3 uses
  %i.b = tail call ptr @object_dynamic_cast_assert(ptr noundef %i.a, ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef 63, ptr noundef nonnull @__func__.IVSHMEM_COMMON) #11 ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3440
  %i.d = load ptr, ptr %i.c, align 16
  %i.e = ptrtoint ptr %0 to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f                       ; 2 uses
  %i.h = lshr exact i64 %i.g, 4
  %i.i = trunc i64 %i.h to i32
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 3424
  %i.k = load ptr, ptr %i.j, align 16
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 2848
  %i.m = load i32, ptr %i.l, align 16
  %i.n = sext i32 %i.m to i64
  %i.o = getelementptr inbounds [16 x i8], ptr %i.k, i64 %i.n
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %sext = shl i64 %i.g, 28
  %i.r = ashr i64 %sext, 32
  %i.s = getelementptr inbounds [12 x i8], ptr %i.q, i64 %i.r
  %i.t = tail call i32 @event_notifier_test_and_clear(ptr noundef %i.s) #11
  %.not = icmp eq i32 %i.t, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr i8, ptr %i.b, i64 2768
  %.val = load i32, ptr %i.u, align 16
  %i.v = and i32 %.val, 2
  %.not13 = icmp eq i32 %i.v, 0
  br i1 %.not13, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = tail call i32 @msix_enabled(ptr noundef %i.a) #11
  %.not14 = icmp eq i32 %i.w, 0
  br i1 %.not14, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @msix_notify(ptr noundef %i.a, i32 noundef %i.i) #11
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 2844
  store i32 1, ptr %i.x, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.a
  ret void
}

declare i32 @event_notifier_test_and_clear(ptr noundef) local_unnamed_addr #1

declare void @msix_notify(ptr noundef, i32 noundef) local_unnamed_addr #1

declare { ptr, i32 } @accel_irqchip_begin_route_changes() local_unnamed_addr #1

declare i32 @kvm_irqchip_add_msi_route(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

declare void @accel_irqchip_commit_route_changes(ptr noundef) local_unnamed_addr #1

declare void @memory_region_add_eventfd(ptr noundef, i64 noundef, i32 noundef, i1 noundef zeroext, i64 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @close_peer_eventfds(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, -1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 3432
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp slt i32 %1, %i.c
  br i1 %i.d, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.8, i32 noundef 387, ptr noundef nonnull @__PRETTY_FUNCTION__.close_peer_eventfds) #12
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 3424 ; 5 uses
  %i.f = load ptr, ptr %i.e, align 16
  %i.g = zext nneg i32 %1 to i64                  ; 5 uses
  %i.h = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %i.g
  %i.i = load i32, ptr %i.h, align 8              ; 4 uses
  %i.j = getelementptr i8, ptr %0, i64 2768
  %.val = load i32, ptr %i.j, align 16
  %i.k = and i32 %.val, 1
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @memory_region_transaction_begin() #11
  %i.l = icmp sgt i32 %i.i, 0
  br i1 %i.l, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 2864
  %i.n = shl i32 %1, 16
  %wide.trip.count = zext nneg i32 %i.i to i64
  %i.o = sext i32 %i.n to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.f
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.f ] ; 3 uses
  %i.p = or i64 %indvars.iv, %i.o
  %i.q = load ptr, ptr %i.e, align 16
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.q, i64 %i.g
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw [12 x i8], ptr %i.t, i64 %indvars.iv
  tail call void @memory_region_del_eventfd(ptr noundef nonnull %i.m, i64 noundef 12, i32 noundef 4, i1 noundef zeroext true, i64 noundef %i.p, ptr noundef %i.u) #11
end_hunk_0
