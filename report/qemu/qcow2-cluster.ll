Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/qcow2-cluster?download=true
inline.NumInlined: 195
inline.NumDeleted: 52
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@qcow2_parse_compressed_l2_entry:bb.a
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #7

declare i32 @qcow2_cache_get(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.cttz.i32(i32, i1 immarg) #9

declare i32 @qcow2_cache_get_empty(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #2

declare i64 @bdrv_opt_mem_align(ptr noundef) local_unnamed_addr #2

declare void @qemu_iovec_init(ptr noundef, i32 noundef) local_unnamed_addr #2

declare i32 @qemu_iovec_subvec_niov(ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

declare void @qemu_co_mutex_unlock(ptr noundef) #2

declare void @qemu_iovec_add(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @do_perform_cow_read(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16832
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %i.e, align 8
  tail call void @bdrv_co_debug_event(ptr noundef %i.f, i32 noundef 16) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %.not25 = icmp eq ptr %i.h, null
  br i1 %.not25, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = icmp sgt i64 %1, -1
  br i1 %i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @__assert_fail(ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.2, i32 noundef 517, ptr noundef nonnull @__PRETTY_FUNCTION__.do_perform_cow_read) #15
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = zext i32 %2 to i64
  %i.k = add nuw i64 %1, %i.j                     ; 3 uses
  %i.l = icmp sgt i64 %i.k, -1
  br i1 %i.l, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @__assert_fail(ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.2, i32 noundef 518, ptr noundef nonnull @__PRETTY_FUNCTION__.do_perform_cow_read) #15
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.m = load i64, ptr %i.a, align 8              ; 2 uses
  %i.n = icmp sgt i64 %i.m, -1
  br i1 %i.n, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void @__assert_fail(ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.2, i32 noundef 520, ptr noundef nonnull @__PRETTY_FUNCTION__.do_perform_cow_read) #15
  unreachable

bb.k:                                             ; preds = %bb.i
  %i.o = tail call i32 @bdrv_check_qiov_request(i64 noundef %i.k, i64 noundef %i.m, ptr noundef nonnull %3, i64 noundef 0, ptr noundef nonnull @error_abort) #13 ; 0 uses
  %i.p = load ptr, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 512
  %i.r = tail call ptr @llvm.ptr.annotation.p0.p0(ptr nonnull %i.q, ptr nonnull @.str.52, ptr nonnull @.str.53, i32 550, ptr null)
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = load i64, ptr %i.a, align 8
  %i.u = tail call i32 %i.s(ptr noundef nonnull %0, i64 noundef %i.k, i64 noundef %i.t, ptr noundef nonnull %3, i64 noundef 0, i32 noundef 0) #13
  %. = tail call i32 @llvm.smin.i32(i32 %i.u, i32 0)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.d, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ %., %bb.k ], [ -123, %bb.d ]
  ret i32 %.0
}

declare void @qemu_iovec_reset(ptr noundef) local_unnamed_addr #2

declare i32 @qcow2_co_encrypt(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i64 noundef) #2

declare void @qemu_iovec_concat(ptr noundef, ptr noundef, i64 noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -2147483648, 1) i32 @do_perform_cow_write(ptr noundef %0, i64 noundef %1, i32 noundef %2, ptr noundef %3) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i32 %2 to i64
  %i.g = add i64 %1, %i.f                         ; 2 uses
  %i.h = tail call i32 @qcow2_pre_write_overlap_check(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %i.g, i64 noundef %i.d, i1 noundef zeroext true) #13 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16832
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %i.k, align 8
  tail call void @bdrv_co_debug_event(ptr noundef %i.l, i32 noundef 17) #13
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 504
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = load i64, ptr %i.c, align 8
  %i.p = tail call i32 @bdrv_co_pwritev(ptr noundef %i.n, i64 noundef %i.g, i64 noundef %i.o, ptr noundef nonnull %3, i32 noundef 0) #13
  %. = tail call i32 @llvm.smin.i32(i32 %i.p, i32 0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %.0 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ], [ %., %bb.e ]
  ret i32 %.0
}

declare void @qemu_co_mutex_lock(ptr noundef) #2

declare void @qcow2_cache_depends_on_flush(ptr noundef) local_unnamed_addr #2

declare void @qemu_iovec_destroy(ptr noundef) local_unnamed_addr #2

declare i32 @bdrv_check_qiov_request(i64 noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare ptr @llvm.ptr.annotation.p0.p0(ptr, ptr, ptr, i32, ptr) #10

declare i32 @bdrv_co_pwritev(ptr noundef, i64 noundef, i64 noundef, ptr noundef, i32 noundef) #2

declare void @qemu_co_queue_wait_impl(ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @qemu_lockable_co_mutex_lock(ptr noundef %0) #6 {
bb.a:
  tail call void @qemu_co_mutex_lock(ptr noundef %0) #13
  ret void
}

; Function Attrs: inlinehint nounwind sspstrong uwtable
define internal void @qemu_lockable_co_mutex_unlock(ptr noundef %0) #6 {
bb.a:
  tail call void @qemu_co_mutex_unlock(ptr noundef %0) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc i32 @count_single_write_clusters(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, i32 noundef %3, i1 noundef zeroext %4) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr i8, ptr %i.b, i64 384
  %.val24 = load i64, ptr %i.c, align 8
  %.val24.fr = freeze i64 %.val24                 ; 2 uses
  %i.d = trunc i64 %.val24.fr to i32
  %i.e = lshr i32 %i.d, 4
  %i.f = and i32 %i.e, 1                          ; 3 uses
  %i.g = shl i32 %3, %i.f
  %i.h = sext i32 %i.g to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %2, i64 %i.h
  %i.j = load i64, ptr %i.i, align 8
  %i.k = and i64 %i.j, 71776119061217024
  %i.l = tail call i64 @llvm.bswap.i64(i64 %i.k)  ; 2 uses
  %i.m = icmp sgt i32 %1, 0
  br i1 %i.m, label %.lr.ph, label %.cluster_needs_new_alloc.exit_crit_edge._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.n = and i64 %.val24.fr, 16
  %.not15.i.i = icmp eq i64 %i.n, 0               ; 2 uses
  %i.o = getelementptr i8, ptr %0, i64 16832      ; 4 uses
  %i.p = getelementptr i8, ptr %i.b, i64 504      ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %wide.trip.count83 = zext nneg i32 %1 to i64    ; 4 uses
  br i1 %4, label %.lr.ph.split.us.split, label %.lr.ph.split

.lr.ph.split.us.split:                            ; preds = %.lr.ph
  br i1 %.not15.i.i, label %.lr.ph.split.us.split.split, label %.lr.ph.split.us.split.split.us

.lr.ph.split.us.split.split.us:                   ; preds = %.lr.ph.split.us.split, %.critedge.us.us
  %indvars.iv75 = phi i64 [ %indvars.iv.next76, %.critedge.us.us ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  %5 = trunc nuw nsw i64 %indvars.iv75 to i32     ; 2 uses
  %i.r = add i32 %3, %5
  %i.s = shl i32 %i.r, %i.f
  %i.t = sext i32 %i.s to i64
  %i.u = getelementptr inbounds [8 x i8], ptr %2, i64 %i.t
  %i.v = load i64, ptr %i.u, align 8
  %i.w = tail call noundef i64 @llvm.bswap.i64(i64 %i.v) ; 4 uses
  %i.x = and i64 %i.w, 4611686018427387904
  %.not.i.i.us.us = icmp eq i64 %i.x, 0
  br i1 %.not.i.i.us.us, label %bb.b, label %.critedge.us.us

bb.b:                                             ; preds = %.lr.ph.split.us.split.split.us
  %i.y = and i64 %i.w, 72057594037927424
  %.not10.i.i.us.us = icmp eq i64 %i.y, 0
  br i1 %.not10.i.i.us.us, label %bb.c, label %cluster_needs_new_alloc.exit.us.us

bb.c:                                             ; preds = %bb.b
  %.val14.i.i.us.us = load ptr, ptr %i.o, align 8
  %.val13.val.i.i.us.us = load ptr, ptr %i.p, align 8
  %.not16.i.i.us.us = icmp eq ptr %.val13.val.i.i.us.us, %.val14.i.i.us.us
  %.not11.i.i.us.us = icmp sgt i64 %i.w, -1
  %or.cond.i.i.us.us = or i1 %.not11.i.i.us.us, %.not16.i.i.us.us
  br label %cluster_needs_new_alloc.exit.us.us

cluster_needs_new_alloc.exit.us.us:               ; preds = %bb.c, %bb.b
  %.0.i.i.us.us = phi i1 [ false, %bb.b ], [ %or.cond.i.i.us.us, %bb.c ]
  %.not.i.us.us = icmp sgt i64 %i.w, -1
  %or.cond.i.us.us = or i1 %.not.i.us.us, %.0.i.i.us.us
  br i1 %or.cond.i.us.us, label %.critedge.us.us, label %.cluster_needs_new_alloc.exit_crit_edge._crit_edge

.critedge.us.us:                                  ; preds = %cluster_needs_new_alloc.exit.us.us, %.lr.ph.split.us.split.split.us
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count83
  br i1 %exitcond71.not, label %.cluster_needs_new_alloc.exit_crit_edge._crit_edge.thread, label %.lr.ph.split.us.split.split.us, !llvm.loop !39

.lr.ph.split.us.split.split:                      ; preds = %.lr.ph.split.us.split, %.critedge.us
  %indvars.iv72 = phi i64 [ %indvars.iv.next73, %.critedge.us ], [ 0, %.lr.ph.split.us.split ] ; 2 uses
  %i.z = trunc nuw nsw i64 %indvars.iv72 to i32   ; 2 uses
  %i.aa = add i32 %3, %i.z
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ab
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = tail call noundef i64 @llvm.bswap.i64(i64 %i.ad) ; 5 uses
  %i.af = and i64 %i.ae, 4611686018427387904
  %.not.i.i.us = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.us, label %bb.d, label %.critedge.us

bb.d:                                             ; preds = %.lr.ph.split.us.split.split
  %i.ag = and i64 %i.ae, 72057594037927425
  %brmerge94.not = icmp eq i64 %i.ag, 0
  %i.ah = and i64 %i.ae, 72057594037927425
  %.not9.i.i.us.mux = icmp eq i64 %i.ah, 1
  br i1 %brmerge94.not, label %bb.e, label %cluster_needs_new_alloc.exit.us

bb.e:                                             ; preds = %bb.d
  %.val14.i.i.us = load ptr, ptr %i.o, align 8
  %.val13.val.i.i.us = load ptr, ptr %i.p, align 8
  %.not16.i.i.us = icmp eq ptr %.val13.val.i.i.us, %.val14.i.i.us
  %.not11.i.i.us = icmp sgt i64 %i.ae, -1
  %or.cond.i.i.us = or i1 %.not11.i.i.us, %.not16.i.i.us
  br label %cluster_needs_new_alloc.exit.us

cluster_needs_new_alloc.exit.us:                  ; preds = %bb.d, %bb.e
  %.0.i.i.us = phi i1 [ %.not9.i.i.us.mux, %bb.d ], [ %or.cond.i.i.us, %bb.e ]
  %.not.i.us = icmp sgt i64 %i.ae, -1
  %or.cond.i.us = or i1 %.not.i.us, %.0.i.i.us
  br i1 %or.cond.i.us, label %.critedge.us, label %.cluster_needs_new_alloc.exit_crit_edge._crit_edge

.critedge.us:                                     ; preds = %cluster_needs_new_alloc.exit.us, %.lr.ph.split.us.split.split
  %indvars.iv.next73 = add nuw nsw i64 %indvars.iv72, 1 ; 2 uses
  %exitcond76.not = icmp eq i64 %indvars.iv.next73, %wide.trip.count83
  br i1 %exitcond76.not, label %.cluster_needs_new_alloc.exit_crit_edge._crit_edge.thread, label %.lr.ph.split.us.split.split, !llvm.loop !39

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %.not15.i.i, label %.lr.ph.split.split, label %.lr.ph.split.split.us

.lr.ph.split.split.us:                            ; preds = %.lr.ph.split, %.critedge.us50
  %indvars.iv = phi i64 [ %indvars.iv.next, %.critedge.us50 ], [ 0, %.lr.ph.split ] ; 2 uses
  %.02226.us35 = phi i64 [ %i.as, %.critedge.us50 ], [ %i.l, %.lr.ph.split ] ; 2 uses
  %6 = trunc nuw nsw i64 %indvars.iv to i32       ; 3 uses
  %i.ai = add i32 %3, %6
  %i.aj = shl i32 %i.ai, %i.f
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ak
  %i.am = load i64, ptr %i.al, align 8
  %i.an = tail call noundef i64 @llvm.bswap.i64(i64 %i.am) ; 4 uses
  %i.ao = and i64 %i.an, 4611686018427387904
  %.not.i.i.us36 = icmp eq i64 %i.ao, 0
  br i1 %.not.i.i.us36, label %bb.f, label %.cluster_needs_new_alloc.exit_crit_edge._crit_edge

bb.f:                                             ; preds = %.lr.ph.split.split.us
  %i.ap = and i64 %i.an, 72057594037927424        ; 2 uses
  %.not10.i.i.us40 = icmp eq i64 %i.ap, 0
  br i1 %.not10.i.i.us40, label %bb.g, label %cluster_needs_new_alloc.exit.us46

bb.g:                                             ; preds = %bb.f
  %.val14.i.i.us41 = load ptr, ptr %i.o, align 8
  %.val13.val.i.i.us42 = load ptr, ptr %i.p, align 8
  %.not16.i.i.us43 = icmp eq ptr %.val13.val.i.i.us42, %.val14.i.i.us41
  %.not11.i.i.us44 = icmp sgt i64 %i.an, -1
  %or.cond.i.i.us45 = or i1 %.not11.i.i.us44, %.not16.i.i.us43
  br label %cluster_needs_new_alloc.exit.us46

cluster_needs_new_alloc.exit.us46:                ; preds = %bb.g, %bb.f
  %.0.i.i.us47 = phi i1 [ false, %bb.f ], [ %or.cond.i.i.us45, %bb.g ]
  %.not.i.us48 = icmp sgt i64 %i.an, -1
  %or.cond.i.us49 = or i1 %.not.i.us48, %.0.i.i.us47
  %.not.us = icmp ne i64 %.02226.us35, %i.ap
  %or.cond.not = select i1 %or.cond.i.us49, i1 true, i1 %.not.us
  br i1 %or.cond.not, label %.cluster_needs_new_alloc.exit_crit_edge._crit_edge, label %.critedge.us50

.critedge.us50:                                   ; preds = %cluster_needs_new_alloc.exit.us46
  %i.aq = load i32, ptr %i.q, align 4
  %i.ar = sext i32 %i.aq to i64
  %i.as = add nsw i64 %.02226.us35, %i.ar
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count83
  br i1 %exitcond.not, label %.cluster_needs_new_alloc.exit_crit_edge._crit_edge.thread, label %.lr.ph.split.split.us, !llvm.loop !39

.lr.ph.split.split:                               ; preds = %.lr.ph.split, %.critedge
  %indvars.iv.a = phi i64 [ %indvars.iv.next.a, %.critedge ], [ 0, %.lr.ph.split ] ; 2 uses
  %.02226 = phi i64 [ %i.bf, %.critedge ], [ %i.l, %.lr.ph.split ] ; 2 uses
  %i.at = trunc nuw nsw i64 %indvars.iv.a to i32  ; 3 uses
  %i.au = add i32 %3, %i.at
  %i.av = sext i32 %i.au to i64
  %i.aw = getelementptr inbounds [8 x i8], ptr %2, i64 %i.av
  %i.ax = load i64, ptr %i.aw, align 8
  %i.ay = tail call noundef i64 @llvm.bswap.i64(i64 %i.ax) ; 6 uses
  %i.az = and i64 %i.ay, 4611686018427387904
  %.not.i.i = icmp eq i64 %i.az, 0
  br i1 %.not.i.i, label %bb.h, label %.cluster_needs_new_alloc.exit_crit_edge._crit_edge

bb.h:                                             ; preds = %.lr.ph.split.split
  %i.ba = and i64 %i.ay, 72057594037927424
  %i.bb = and i64 %i.ay, 72057594037927425
  %brmerge.not = icmp eq i64 %i.bb, 0
  %i.bc = and i64 %i.ay, 72057594037927425
  %.not9.i.i.mux = icmp eq i64 %i.bc, 1
  br i1 %brmerge.not, label %bb.i, label %cluster_needs_new_alloc.exit

bb.i:                                             ; preds = %bb.h
  %.val14.i.i = load ptr, ptr %i.o, align 8
  %.val13.val.i.i = load ptr, ptr %i.p, align 8
  %.not16.i.i = icmp eq ptr %.val13.val.i.i, %.val14.i.i
  %.not11.i.i = icmp sgt i64 %i.ay, -1
  %or.cond.i.i = or i1 %.not11.i.i, %.not16.i.i
  br label %cluster_needs_new_alloc.exit

cluster_needs_new_alloc.exit:                     ; preds = %bb.h, %bb.i
  %.pre-phi = phi i64 [ 0, %bb.i ], [ %i.ba, %bb.h ]
  %.0.i.i = phi i1 [ %or.cond.i.i, %bb.i ], [ %.not9.i.i.mux, %bb.h ]
  %.not.i = icmp sgt i64 %i.ay, -1
  %or.cond.i = or i1 %.not.i, %.0.i.i
  %.not = icmp ne i64 %.02226, %.pre-phi
  %or.cond62.not = select i1 %or.cond.i, i1 true, i1 %.not
  br i1 %or.cond62.not, label %.cluster_needs_new_alloc.exit_crit_edge._crit_edge, label %.critedge

.critedge:                                        ; preds = %cluster_needs_new_alloc.exit
  %i.bd = load i32, ptr %i.q, align 4
  %i.be = sext i32 %i.bd to i64
  %i.bf = add nsw i64 %.02226, %i.be
  %indvars.iv.next.a = add nuw nsw i64 %indvars.iv.a, 1 ; 2 uses
  %exitcond70.not = icmp eq i64 %indvars.iv.next.a, %wide.trip.count83
  br i1 %exitcond70.not, label %.cluster_needs_new_alloc.exit_crit_edge._crit_edge.thread, label %.lr.ph.split.split, !llvm.loop !39

.cluster_needs_new_alloc.exit_crit_edge._crit_edge: ; preds = %cluster_needs_new_alloc.exit.us46, %.lr.ph.split.split.us, %cluster_needs_new_alloc.exit, %.lr.ph.split.split, %cluster_needs_new_alloc.exit.us.us, %cluster_needs_new_alloc.exit.us, %bb.a
  %.0.lcssa = phi i32 [ 0, %bb.a ], [ %i.z, %cluster_needs_new_alloc.exit.us ], [ %5, %cluster_needs_new_alloc.exit.us.us ], [ %i.at, %cluster_needs_new_alloc.exit ], [ %i.at, %.lr.ph.split.split ], [ %6, %.lr.ph.split.split.us ], [ %6, %cluster_needs_new_alloc.exit.us46 ] ; 2 uses
  %.not23 = icmp sgt i32 %.0.lcssa, %1
  br i1 %.not23, label %bb.j, label %.cluster_needs_new_alloc.exit_crit_edge._crit_edge.thread

bb.j:                                             ; preds = %.cluster_needs_new_alloc.exit_crit_edge._crit_edge
  tail call void @__assert_fail(ptr noundef nonnull @.str.62, ptr noundef nonnull @.str.2, i32 noundef 1386, ptr noundef nonnull @__PRETTY_FUNCTION__.count_single_write_clusters) #15
  unreachable

.cluster_needs_new_alloc.exit_crit_edge._crit_edge.thread: ; preds = %.critedge.us50, %.critedge, %.critedge.us.us, %.critedge.us, %.cluster_needs_new_alloc.exit_crit_edge._crit_edge
  %.0.lcssa82 = phi i32 [ %.0.lcssa, %.cluster_needs_new_alloc.exit_crit_edge._crit_edge ], [ %1, %.critedge.us.us ], [ %1, %.critedge.us ], [ %1, %.critedge ], [ %1, %.critedge.us50 ]
  ret i32 %.0.lcssa82
}

; Function Attrs: nounwind sspstrong uwtable
define internal range(i32 -5, 1) i32 @calculate_l2_meta(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef captures(none) %5, i1 noundef zeroext %6) #0 {
bb.a:
  %i.a = zext i1 %6 to i8                         ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 16 uses
  %.val165 = load i32, ptr %i.c, align 8
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val166 = load i32, ptr %i.d, align 8          ; 2 uses
  %i.e = zext nneg i32 %.val165 to i64            ; 2 uses
  %i.f = ashr i64 %2, %i.e
  %i.g = add i32 %.val166, -1
  %i.h = trunc i64 %i.f to i32
  %i.i = and i32 %i.g, %i.h                       ; 5 uses
  %i.j = getelementptr i8, ptr %i.c, i64 4        ; 4 uses
  %.val = load i32, ptr %i.j, align 4
  %i.k = add i32 %.val, -1                        ; 2 uses
  %i.l = sext i32 %i.k to i64
  %i.m = trunc i64 %2 to i32
  %i.n = and i32 %i.k, %i.m                       ; 4 uses
  %i.o = add i32 %i.n, %3                         ; 9 uses
  %i.p = zext i32 %i.o to i64
  %i.q = add nsw i64 %i.p, %i.l
  %i.r = lshr i64 %i.q, %i.e
  %i.s = trunc i64 %i.r to i32                    ; 5 uses
  %i.t = load ptr, ptr %5, align 8
  %i.u = sub i32 %.val166, %i.i
  %.not = icmp ult i32 %i.u, %i.s
  br i1 %.not, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %.not205 = icmp eq i32 %i.s, 0
  br i1 %.not205, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.v = getelementptr i8, ptr %i.c, i64 384
  %i.w = getelementptr i8, ptr %i.c, i64 12
  %i.x = getelementptr i8, ptr %i.c, i64 20
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.2, i32 noundef 1176, ptr noundef nonnull @__PRETTY_FUNCTION__.calculate_l2_meta) #15
  unreachable

bb.c:                                             ; preds = %bb.n
  %i.y = add nuw i32 %.0159204, 1                 ; 2 uses
  %exitcond.not = icmp eq i32 %i.y, %i.s
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %bb.d, !llvm.loop !40

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.0159204 = phi i32 [ 0, %.lr.ph ], [ %i.y, %bb.c ] ; 4 uses
  %.0160203 = phi i8 [ %i.a, %.lr.ph ], [ %.2, %bb.c ]
  %i.z = add i32 %.0159204, %i.i                  ; 3 uses
  %.val181 = load i64, ptr %i.v, align 8          ; 2 uses
  %i.aa = trunc i64 %.val181 to i32
  %i.ab = lshr i32 %i.aa, 4
  %i.ac = and i32 %i.ab, 1
  %i.ad = shl i32 %i.z, %i.ac
  %i.ae = sext i32 %i.ad to i64
  %i.af = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ae
  %i.ag = load i64, ptr %i.af, align 8
  %i.ah = tail call noundef i64 @llvm.bswap.i64(i64 %i.ag) ; 2 uses
  %i.ai = and i64 %.val181, 16
  %.not.i = icmp eq i64 %i.ai, 0
  br i1 %.not.i, label %get_l2_bitmap.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aj = shl i32 %i.z, 1
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr [8 x i8], ptr %4, i64 %i.ak
  %i.am = getelementptr i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8
  %i.ao = tail call noundef i64 @llvm.bswap.i64(i64 %i.an)
  br label %get_l2_bitmap.exit

get_l2_bitmap.exit:                               ; preds = %bb.d, %bb.e
  %.0.i = phi i64 [ %i.ao, %bb.e ], [ 0, %bb.d ]  ; 6 uses
  %i.ap = trunc nuw i8 %.0160203 to i1
  br i1 %i.ap, label %bb.f, label %bb.m

bb.f:                                             ; preds = %get_l2_bitmap.exit
  %i.aq = load i32, ptr %i.c, align 8             ; 2 uses
  %i.ar = shl i32 %.0159204, %i.aq
  %i.as = tail call i32 @llvm.umax.i32(i32 %i.ar, i32 %i.n)
  %i.at = add nuw i32 %.0159204, 1
  %i.au = shl i32 %i.at, %i.aq
  %i.av = tail call i32 @llvm.umin.i32(i32 %i.o, i32 %i.au)
  %i.aw = zext i32 %i.as to i64
  %.val177 = load i32, ptr %i.w, align 4
  %.val178 = load i32, ptr %i.x, align 4
  %i.ax = zext nneg i32 %.val177 to i64           ; 2 uses
  %i.ay = lshr i64 %i.aw, %i.ax
  %i.az = add i32 %.val178, -1                    ; 2 uses
  %i.ba = trunc nuw i64 %i.ay to i32
  %i.bb = and i32 %i.az, %i.ba                    ; 9 uses
  %i.bc = add i32 %i.av, -1
  %i.bd = zext i32 %i.bc to i64
  %i.be = lshr i64 %i.bd, %i.ax
  %i.bf = trunc nuw i64 %i.be to i32
  %i.bg = and i32 %i.az, %i.bf
  %i.bh = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.bi = tail call fastcc i32 @qcow2_get_subcluster_type(ptr noundef readonly %0, i64 noundef %i.ah, i64 noundef %.0.i, i32 noundef %i.bb) ; 4 uses
  %i.bj = icmp eq i32 %i.bi, 6
  br i1 %i.bj, label %qcow2_get_subcluster_range_type.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bk = getelementptr i8, ptr %i.bh, i64 384
  %.val.i = load i64, ptr %i.bk, align 8
  %i.bl = and i64 %.val.i, 16
  %.not.i188 = icmp eq i64 %i.bl, 0
  br i1 %.not.i188, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  switch i32 %i.bi, label %default.unreachable [
    i32 5, label %bb.i
    i32 4, label %bb.j
    i32 2, label %bb.k
    i32 3, label %bb.k
    i32 0, label %bb.l
    i32 1, label %bb.l
  ]

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bh, i64 20
  %i.bn = load i32, ptr %i.bm, align 4
  %i.bo = sub i32 %i.bn, %i.bb
  br label %qcow2_get_subcluster_range_type.exit

bb.j:                                             ; preds = %bb.h
  %i.bp = zext nneg i32 %i.bb to i64
  %notmask27.i = shl nsw i64 -1, %i.bp
  %i.bq = xor i64 %notmask27.i, -1
  %i.br = or i64 %.0.i, %i.bq
  %i.bs = trunc i64 %i.br to i32
  %i.bt = xor i32 %i.bs, -1
  %i.bu = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.bt, i1 false)
  %i.bv = sub i32 %i.bu, %i.bb
  br label %qcow2_get_subcluster_range_type.exit

bb.k:                                             ; preds = %bb.h, %bb.h
  %i.bw = zext nneg i32 %i.bb to i64
  %notmask26.i = shl nsw i64 -1, %i.bw
  %i.bx = xor i64 %notmask26.i, -1
  %i.by = shl i64 %i.bx, 32
  %i.bz = or i64 %i.by, %.0.i
  %i.ca = lshr i64 %i.bz, 32
  %i.cb = trunc nuw i64 %i.ca to i32
  %i.cc = xor i32 %i.cb, -1
  %i.cd = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cc, i1 false)
  %i.ce = sub i32 %i.cd, %i.bb
  br label %qcow2_get_subcluster_range_type.exit

bb.l:                                             ; preds = %bb.h, %bb.h
  %i.cf = lshr i64 %.0.i, 32
  %i.cg = or i64 %i.cf, %.0.i
  %i.ch = zext nneg i32 %i.bb to i64
  %notmask.i = shl nsw i64 -1, %i.ch
  %i.ci = and i64 %notmask.i, %i.cg
  %i.cj = trunc i64 %i.ci to i32
  %i.ck = tail call range(i32 0, 33) i32 @llvm.cttz.i32(i32 %i.cj, i1 false)
  %i.cl = sub i32 %i.ck, %i.bb
  br label %qcow2_get_subcluster_range_type.exit

default.unreachable:                              ; preds = %bb.h
  unreachable

qcow2_get_subcluster_range_type.exit:             ; preds = %bb.f, %bb.i, %bb.j, %bb.k, %bb.l
  %.0.i189 = phi i32 [ %i.cl, %bb.l ], [ %i.bo, %bb.i ], [ %i.bv, %bb.j ], [ %i.ce, %bb.k ], [ -22, %bb.f ]
  %.not163 = icmp eq i32 %i.bi, 4
  %i.cm = add i32 %.0.i189, %i.bb
  %.not164 = icmp sgt i32 %i.cm, %i.bg
  %or.cond = select i1 %.not163, i1 %.not164, i1 false
  %.1 = zext i1 %or.cond to i8
  br label %bb.n

bb.m:                                             ; preds = %get_l2_bitmap.exit
  %i.cn = tail call fastcc i32 @qcow2_get_subcluster_type(ptr noundef %0, i64 noundef %i.ah, i64 noundef %.0.i, i32 noundef 0)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %qcow2_get_subcluster_range_type.exit
  %.0197 = phi i32 [ %i.bi, %qcow2_get_subcluster_range_type.exit ], [ %i.cn, %bb.m ]
  %.2 = phi i8 [ %.1, %qcow2_get_subcluster_range_type.exit ], [ 0, %bb.m ] ; 2 uses
  %i.co = icmp eq i32 %.0197, 6
  br i1 %i.co, label %bb.o, label %bb.c

bb.o:                                             ; preds = %bb.n
  %.val167 = load i32, ptr %i.c, align 8
  %i.cp = getelementptr i8, ptr %i.c, i64 24
end_hunk_0
