inline.NumInlined: 82
inline.NumDeleted: 31
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@vhost_svq_stop:bb.a
bb.i:                                             ; preds = %vhost_svq_set_svq_kick_fd.exit, %bb.h
  %.022 = phi ptr [ null, %vhost_svq_set_svq_kick_fd.exit ], [ %i.h, %bb.h ]
  tail call void @g_free(ptr noundef %.022) #13
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc void @vhost_svq_flush(ptr noundef %0, i1 noundef zeroext %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 150 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.pre = load ptr, ptr %i.d, align 8
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %i.l = phi ptr [ %.pre, %bb.a ], [ %i.ap, %.backedge.backedge ]
  %i.m = getelementptr i8, ptr %i.l, i64 184
  %.val.i = load i64, ptr %i.m, align 8
  %i.n = and i64 %.val.i, 536870912
  %.not.i = icmp eq i64 %i.n, 0
  br i1 %.not.i, label %bb.b, label %vhost_svq_disable_notification.exit

bb.b:                                             ; preds = %.backedge
  %i.o = load ptr, ptr %i.e, align 8              ; 2 uses
  %i.p = load i16, ptr %i.o, align 2
  %i.q = or i16 %i.p, 1
  store i16 %i.q, ptr %i.o, align 2
  br label %vhost_svq_disable_notification.exit

vhost_svq_disable_notification.exit:              ; preds = %.backedge, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !annotation !20
  %i.r = call fastcc ptr @vhost_svq_get_buf(ptr noundef nonnull %0, ptr noundef %i.a) ; 2 uses
  %.not41 = icmp eq ptr %i.r, null
  br i1 %.not41, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %vhost_svq_disable_notification.exit, %bb.e
  %i.s = phi ptr [ %i.y, %bb.e ], [ %i.r, %vhost_svq_disable_notification.exit ] ; 4 uses
  %.02142 = phi i32 [ %i.x, %bb.e ], [ 0, %vhost_svq_disable_notification.exit ] ; 6 uses
  %i.t = load i32, ptr %0, align 8                ; 2 uses
  %.not24 = icmp ult i32 %.02142, %i.t
  br i1 %.not24, label %bb.e, label %bb.c, !prof !8

bb.c:                                             ; preds = %.lr.ph
  %i.u = load i32, ptr @qemu_loglevel, align 4
  %i.v = and i32 %i.u, 2048
  %.not37 = icmp eq i32 %i.v, 0
  br i1 %.not37, label %bb.h, label %bb.d, !prof !8

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9, i32 noundef %.02142, i32 noundef %i.t) #13
  br label %bb.h

bb.e:                                             ; preds = %.lr.ph
  %i.w = load i32, ptr %i.a, align 4
  %i.x = add nuw i32 %.02142, 1                   ; 2 uses
  tail call void @virtqueue_fill(ptr noundef %i.c, ptr noundef nonnull %i.s, i32 noundef %i.w, i32 noundef %.02142) #13
  tail call void @g_free(ptr noundef nonnull %i.s) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #13
  store i32 0, ptr %i.a, align 4, !annotation !20
  %i.y = call fastcc ptr @vhost_svq_get_buf(ptr noundef nonnull %0, ptr noundef %i.a) ; 2 uses
  %.not = icmp eq ptr %i.y, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %bb.e, %vhost_svq_disable_notification.exit
  %.021.lcssa = phi i32 [ 0, %vhost_svq_disable_notification.exit ], [ %i.x, %bb.e ]
  tail call void @g_free(ptr noundef null) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  tail call void @virtqueue_flush(ptr noundef %i.c, i32 noundef %.021.lcssa) #13
  %i.z = tail call i32 @event_notifier_set(ptr noundef nonnull %i.f) #13 ; 0 uses
  br i1 %1, label %bb.f, label %bb.i

bb.f:                                             ; preds = %._crit_edge
  %i.aa = load ptr, ptr %i.g, align 8
  %.not25 = icmp eq ptr %i.aa, null
  br i1 %.not25, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @vhost_handle_guest_kick(ptr noundef nonnull %0)
  br label %bb.i

bb.h:                                             ; preds = %bb.c, %bb.d
  %i.ab = load i32, ptr %i.a, align 4
  tail call void @virtqueue_fill(ptr noundef %i.c, ptr noundef nonnull %i.s, i32 noundef %i.ab, i32 noundef %.02142) #13
  tail call void @virtqueue_flush(ptr noundef %i.c, i32 noundef %.02142) #13
  tail call void @g_free(ptr noundef nonnull %i.s) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #13
  br label %.loopexit

bb.i:                                             ; preds = %bb.g, %bb.f, %._crit_edge
  %i.ac = load ptr, ptr %i.d, align 8
  %i.ad = getelementptr i8, ptr %i.ac, i64 184
  %.val.i26 = load i64, ptr %i.ad, align 8
  %i.ae = and i64 %.val.i26, 536870912
  %.not.i27 = icmp eq i64 %i.ae, 0
  %i.af = load ptr, ptr %i.e, align 8             ; 3 uses
  br i1 %.not.i27, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 4
  %i.ah = load i32, ptr %0, align 8
  %i.ai = zext i32 %i.ah to i64
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.ag, i64 %i.ai
  %i.ak = load i16, ptr %i.h, align 2
  store i16 %i.ak, ptr %i.aj, align 2
  br label %bb.l

bb.k:                                             ; preds = %bb.i
  %i.al = load i16, ptr %i.af, align 2
  %i.am = and i16 %i.al, -2
  store i16 %i.am, ptr %i.af, align 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  tail call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #13, !srcloc !21
  fence seq_cst
  %i.an = load ptr, ptr %i.i, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 2
  %i.ap = load ptr, ptr %i.d, align 8             ; 2 uses
  %i.aq = getelementptr i8, ptr %i.ap, i64 184
  %.val.i.i = load i64, ptr %i.aq, align 8
  %i.ar = and i64 %.val.i.i, 34359738368
  %.not11.i.i = icmp eq i64 %i.ar, 0
  br i1 %.not11.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = load i32, ptr %i.j, align 4
  %.not.i.i = icmp eq i32 %i.as, 65535
  br i1 %.not.i.i, label %bb.n, label %.backedge.backedge

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.at = load i16, ptr %i.k, align 8             ; 2 uses
  %i.au = load i16, ptr %i.h, align 2
  %.not10.i.i = icmp eq i16 %i.at, %i.au
  br i1 %.not10.i.i, label %.split, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.n, %bb.m, %.split
  br label %.backedge, !llvm.loop !22

.split:                                           ; preds = %bb.n
  %i.av = load volatile i16, ptr %i.ao, align 2   ; 2 uses
  store i16 %i.av, ptr %i.h, align 2
  %i.aw = icmp eq i16 %i.at, %i.av
  br i1 %i.aw, label %.loopexit, label %.backedge.backedge

.loopexit:                                        ; preds = %.split, %bb.h
  ret void
}

declare void @virtqueue_unpop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @vhost_svq_new(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(160) ptr @g_malloc0(i64 noundef 160) #16 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  tail call void @event_notifier_init_fd(ptr noundef nonnull %i.b, i32 noundef -1) #13
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %0, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 128
  store ptr %1, ptr %i.d, align 8
  ret ptr %i.a
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vhost_svq_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call void @vhost_svq_stop(ptr noundef %0)
  tail call void @g_free(ptr noundef %0) #13
  ret void
}

; Function Attrs: allocsize(0,1)
declare noalias ptr @g_malloc_n(i64 noundef, i64 noundef) local_unnamed_addr #8

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind sspstrong uwtable
define internal fastcc noundef zeroext i1 @vhost_svq_vring_write_descs(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3, ptr nofree noundef readonly captures(address_is_null) %4, i1 noundef zeroext %5, i1 noundef zeroext %6) unnamed_addr #0 {
bb.a:
  %7 = alloca %struct.DMAMap, align 8             ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 138 ; 5 uses
  %i.b = load i16, ptr %i.a, align 2              ; 2 uses
  %spec.select = select i1 %6, i16 2, i16 0       ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8              ; 4 uses
  %i.e = icmp eq i64 %3, 0
  br i1 %i.e, label %vhost_svq_update_free_head.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp eq ptr %4, null
  %.sroa.22.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 5 uses
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  br i1 %.not.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b, %bb.d
  %.03344.us.i = phi i64 [ %i.af, %bb.d ], [ 0, %bb.b ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.g = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.03344.us.i ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = ptrtoint ptr %i.h to i64
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8
  store i64 0, ptr %7, align 8
  store i64 %i.i, ptr %.sroa.22.0..sroa_idx.i, align 8
  store i64 %i.k, ptr %.sroa.33.0..sroa_idx.i, align 8
  store i32 0, ptr %.sroa.44.0..sroa_idx.i, align 8
  %i.l = load ptr, ptr %i.f, align 8
  %i.m = call ptr @vhost_iova_tree_find_iova(ptr noundef %i.l, ptr noundef nonnull %7) #13 ; 4 uses
  %.not39.us.i = icmp eq ptr %i.m, null
  br i1 %.not39.us.i, label %.split46.us.i, label %bb.c, !prof !7

bb.c:                                             ; preds = %.split.us.i
  %i.n = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 1
  %i.q = sub i64 %i.n, %i.p
  %i.r = load i64, ptr %i.m, align 1
  %i.s = add i64 %i.q, %i.r
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03344.us.i
  store i64 %i.s, ptr %i.t, align 8
  %i.u = zext i64 %i.n to i128
  %i.v = load i64, ptr %i.j, align 8
  %i.w = add i64 %i.v, -1
  %i.x = sext i64 %i.w to i128
  %i.y = add nsw i128 %i.x, %i.u
  %i.z = load i64, ptr %i.o, align 1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ab = load i64, ptr %i.aa, align 1
  %i.ac = add i64 %i.ab, %i.z
  %i.ad = zext i64 %i.ac to i128
  %i.ae = icmp sgt i128 %i.y, %i.ad
  br i1 %i.ae, label %.split48.us.i, label %bb.d, !prof !7

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.af = add nuw i64 %.03344.us.i, 1             ; 2 uses
  %exitcond56.not.i = icmp eq i64 %i.af, %3
  br i1 %exitcond56.not.i, label %vhost_svq_translate_addr.exit, label %.split.us.i, !llvm.loop !23

.split.i:                                         ; preds = %bb.b, %bb.h
  %.03344.i = phi i64 [ %i.bk, %bb.h ], [ 0, %bb.b ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #13
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %4, i64 %.03344.i
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %.03344.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  %i.ak = load i64, ptr %i.aj, align 8
  store i64 0, ptr %7, align 8
  store i64 %i.ah, ptr %.sroa.22.0..sroa_idx.i, align 8
  store i64 %i.ak, ptr %.sroa.33.0..sroa_idx.i, align 8
  store i32 0, ptr %.sroa.44.0..sroa_idx.i, align 8
  %i.al = load ptr, ptr %i.f, align 8
  %i.am = call ptr @vhost_iova_tree_find_gpa(ptr noundef %i.al, ptr noundef nonnull %7) #13 ; 4 uses
  %.not39.i = icmp eq ptr %i.am, null
  br i1 %.not39.i, label %.split46.us.i, label %bb.f, !prof !7

.split46.us.i:                                    ; preds = %.split.i, %.split.us.i
  %i.an = load i32, ptr @qemu_loglevel, align 4
  %i.ao = and i32 %i.an, 2048
  %.not41.i = icmp eq i32 %i.ao, 0
  br i1 %.not41.i, label %vhost_svq_translate_addr.exit.thread, label %bb.e, !prof !8

bb.e:                                             ; preds = %.split46.us.i
  %i.ap = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.3, i64 noundef %i.ap) #13
  br label %vhost_svq_translate_addr.exit.thread

bb.f:                                             ; preds = %.split.i
  %i.aq = load i64, ptr %.sroa.22.0..sroa_idx.i, align 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 1
  %i.at = sub i64 %i.aq, %i.as
  %i.au = load i64, ptr %i.am, align 1
  %i.av = add i64 %i.at, %i.au
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.03344.i
  store i64 %i.av, ptr %i.aw, align 8
  %i.ax = zext i64 %i.aq to i128
  %i.ay = load i64, ptr %i.aj, align 8
  %i.az = add i64 %i.ay, -1
  %i.ba = sext i64 %i.az to i128
  %i.bb = add nsw i128 %i.ba, %i.ax
  %i.bc = load i64, ptr %i.ar, align 1
  %i.bd = getelementptr inbounds nuw i8, ptr %i.am, i64 16
  %i.be = load i64, ptr %i.bd, align 1
  %i.bf = add i64 %i.be, %i.bc
  %i.bg = zext i64 %i.bf to i128
  %i.bh = icmp sgt i128 %i.bb, %i.bg
  br i1 %i.bh, label %.split48.us.i, label %bb.h, !prof !7

.split48.us.i:                                    ; preds = %bb.f, %bb.c
  %i.bi = load i32, ptr @qemu_loglevel, align 4
  %i.bj = and i32 %i.bi, 2048
  %.not40.i = icmp eq i32 %i.bj, 0
  br i1 %.not40.i, label %vhost_svq_translate_addr.exit.thread, label %bb.g, !prof !8

bb.g:                                             ; preds = %.split48.us.i
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.4) #13
  br label %vhost_svq_translate_addr.exit.thread

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  %i.bk = add nuw i64 %.03344.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bk, %3
  br i1 %exitcond.not.i, label %vhost_svq_translate_addr.exit, label %.split.i, !llvm.loop !23

vhost_svq_translate_addr.exit.thread:             ; preds = %.split46.us.i, %bb.e, %.split48.us.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #13
  br label %vhost_svq_update_free_head.exit

vhost_svq_translate_addr.exit:                    ; preds = %bb.h, %bb.d
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.bn = or disjoint i16 %spec.select, 1         ; 2 uses
  br i1 %5, label %vhost_svq_translate_addr.exit.split.us, label %vhost_svq_translate_addr.exit.split

vhost_svq_translate_addr.exit.split.us:           ; preds = %vhost_svq_translate_addr.exit, %vhost_svq_next_desc.exit.us
  %indvars.iv61 = phi i64 [ %9, %vhost_svq_next_desc.exit.us ], [ 0, %vhost_svq_translate_addr.exit ] ; 2 uses
  %.056.us = phi i32 [ %8, %vhost_svq_next_desc.exit.us ], [ 0, %vhost_svq_translate_addr.exit ]
  %.04255.us = phi i16 [ %.0.i.us, %vhost_svq_next_desc.exit.us ], [ %i.b, %vhost_svq_translate_addr.exit ] ; 5 uses
  %i.bo = load ptr, ptr %i.bl, align 8
  %i.bp = getelementptr i8, ptr %i.bo, i64 184
  %.val.i.us = load i64, ptr %i.bp, align 8
  %i.bq = and i64 %.val.i.us, 34359738368
  %.not.i48.us = icmp eq i64 %i.bq, 0
  br i1 %.not.i48.us, label %bb.j, label %bb.i

bb.i:                                             ; preds = %vhost_svq_translate_addr.exit.split.us
  %i.br = zext i16 %.04255.us to i32
  %i.bs = load i32, ptr %0, align 8
  %i.bt = icmp eq i32 %i.bs, %i.br
  %i.bu = add i16 %.04255.us, 1
  %spec.select.i.us = select i1 %i.bt, i16 0, i16 %i.bu
  %.pre = zext i16 %.04255.us to i64
  br label %vhost_svq_next_desc.exit.us

bb.j:                                             ; preds = %vhost_svq_translate_addr.exit.split.us
  %i.bv = load ptr, ptr %i.bm, align 8
  %i.bw = zext i16 %.04255.us to i64              ; 2 uses
  %i.bx = getelementptr inbounds nuw [16 x i8], ptr %i.bv, i64 %i.bw
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 12
  %i.bz = load i16, ptr %i.by, align 4
  br label %vhost_svq_next_desc.exit.us

vhost_svq_next_desc.exit.us:                      ; preds = %bb.j, %bb.i
  %.pre-phi = phi i64 [ %i.bw, %bb.j ], [ %.pre, %bb.i ]
  %.0.i.us = phi i16 [ %i.bz, %bb.j ], [ %spec.select.i.us, %bb.i ] ; 2 uses
  %8 = add i32 %.056.us, 1                        ; 2 uses
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %.pre-phi ; 4 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 12
  store i16 %i.bn, ptr %i.cb, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 14
  store i16 %.0.i.us, ptr %i.cc, align 2
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv61
  %i.ce = load i64, ptr %i.cd, align 8
  store i64 %i.ce, ptr %i.ca, align 16
  %i.cf = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv61
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 8
  %i.ch = load i64, ptr %i.cg, align 8
  %i.ci = trunc i64 %i.ch to i32
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  store i32 %i.ci, ptr %i.cj, align 8
  %9 = zext i32 %8 to i64                         ; 2 uses
  %i.ck = icmp ugt i64 %3, %9
  br i1 %i.ck, label %vhost_svq_translate_addr.exit.split.us, label %.split.us, !llvm.loop !24

vhost_svq_translate_addr.exit.split:              ; preds = %vhost_svq_translate_addr.exit, %bb.m
  %indvars.iv = phi i64 [ %11, %bb.m ], [ 0, %vhost_svq_translate_addr.exit ] ; 4 uses
  %.056 = phi i32 [ %10, %bb.m ], [ 0, %vhost_svq_translate_addr.exit ]
  %.04255 = phi i16 [ %.0.i, %bb.m ], [ %i.b, %vhost_svq_translate_addr.exit ] ; 5 uses
  %i.cl = load ptr, ptr %i.bl, align 8
  %i.cm = getelementptr i8, ptr %i.cl, i64 184
  %.val.i = load i64, ptr %i.cm, align 8
  %i.cn = and i64 %.val.i, 34359738368
  %.not.i48 = icmp eq i64 %i.cn, 0
  br i1 %.not.i48, label %bb.l, label %bb.k

bb.k:                                             ; preds = %vhost_svq_translate_addr.exit.split
  %i.co = zext i16 %.04255 to i32
  %i.cp = load i32, ptr %0, align 8
  %i.cq = icmp eq i32 %i.cp, %i.co
  %i.cr = add i16 %.04255, 1
  %spec.select.i = select i1 %i.cq, i16 0, i16 %i.cr
  br label %vhost_svq_next_desc.exit

bb.l:                                             ; preds = %vhost_svq_translate_addr.exit.split
  %i.cs = load ptr, ptr %i.bm, align 8
  %i.ct = zext i16 %.04255 to i64
  %i.cu = getelementptr inbounds nuw [16 x i8], ptr %i.cs, i64 %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 12
  %i.cw = load i16, ptr %i.cv, align 4
  br label %vhost_svq_next_desc.exit

vhost_svq_next_desc.exit:                         ; preds = %bb.k, %bb.l
  %.0.i = phi i16 [ %spec.select.i, %bb.k ], [ %i.cw, %bb.l ] ; 2 uses
  %10 = add i32 %.056, 1                          ; 2 uses
  %11 = zext i32 %10 to i64                       ; 2 uses
  %i.cx = icmp ugt i64 %3, %11
  %i.cy = zext i16 %.04255 to i64                 ; 3 uses
  %i.cz = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.cy ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 12 ; 2 uses
  br i1 %i.cx, label %bb.m, label %bb.n

bb.m:                                             ; preds = %vhost_svq_next_desc.exit
  store i16 %i.bn, ptr %i.da, align 4
  %i.db = getelementptr inbounds nuw i8, ptr %i.cz, i64 14
  store i16 %.0.i, ptr %i.db, align 2
  %12 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %13 = load i64, ptr %12, align 8
  %14 = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.cy ; 2 uses
  store i64 %13, ptr %14, align 16
  %15 = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %16 = getelementptr inbounds nuw i8, ptr %15, i64 8
  %17 = load i64, ptr %16, align 8
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds nuw i8, ptr %14, i64 8
  store i32 %18, ptr %19, align 8
  br label %vhost_svq_translate_addr.exit.split

bb.n:                                             ; preds = %vhost_svq_next_desc.exit
  store i16 %spec.select, ptr %i.da, align 4
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv
  %i.dd = load i64, ptr %i.dc, align 8
  %i.de = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %i.cy ; 2 uses
  store i64 %i.dd, ptr %i.de, align 16
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %indvars.iv
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load i64, ptr %i.dg, align 8
  %i.di = trunc i64 %i.dh to i32
  %i.dj = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i32 %i.di, ptr %i.dj, align 8
  br label %.split.us

.split.us:                                        ; preds = %vhost_svq_next_desc.exit.us, %bb.n
  %.us-phi = phi i16 [ %.04255, %bb.n ], [ %.04255.us, %vhost_svq_next_desc.exit.us ]
  %i.dk = load ptr, ptr %i.bl, align 8
  %i.dl = getelementptr i8, ptr %i.dk, i64 184
  %.val.i49 = load i64, ptr %i.dl, align 8
  %i.dm = and i64 %.val.i49, 34359738368
  %.not10.i = icmp eq i64 %i.dm, 0
  br i1 %.not10.i, label %vhost_svq_next_desc.exit.i, label %bb.o

bb.o:                                             ; preds = %.split.us
  %i.dn = load i16, ptr %i.a, align 2
  %i.do = trunc i64 %3 to i16
  %i.dp = add i16 %i.dn, %i.do                    ; 3 uses
  store i16 %i.dp, ptr %i.a, align 2
  %i.dq = zext i16 %i.dp to i32
  %i.dr = load i32, ptr %0, align 8               ; 2 uses
  %.not.i50 = icmp ugt i32 %i.dr, %i.dq
  br i1 %.not.i50, label %vhost_svq_update_free_head.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ds = trunc nuw i32 %i.dr to i16
  %i.dt = sub i16 %i.dp, %i.ds
  store i16 %i.dt, ptr %i.a, align 2
  br label %vhost_svq_update_free_head.exit

vhost_svq_next_desc.exit.i:                       ; preds = %.split.us
  %i.du = load ptr, ptr %i.bm, align 8
  %i.dv = zext i16 %.us-phi to i64
  %i.dw = getelementptr inbounds nuw [16 x i8], ptr %i.du, i64 %i.dv
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 12
  %i.dy = load i16, ptr %i.dx, align 4
  store i16 %i.dy, ptr %i.a, align 2
  br label %vhost_svq_update_free_head.exit

vhost_svq_update_free_head.exit:                  ; preds = %vhost_svq_next_desc.exit.i, %bb.p, %bb.o, %vhost_svq_translate_addr.exit.thread, %bb.a
  %.043 = phi i1 [ false, %vhost_svq_translate_addr.exit.thread ], [ true, %bb.a ], [ true, %bb.o ], [ true, %bb.p ], [ true, %vhost_svq_next_desc.exit.i ]
  ret i1 %.043
}

declare ptr @vhost_iova_tree_find_gpa(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @vhost_iova_tree_find_iova(ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @event_notifier_test_and_clear(ptr noundef) local_unnamed_addr #2

declare void @virtio_queue_set_notification(ptr noundef, i32 noundef) local_unnamed_addr #2

declare ptr @virtqueue_pop(ptr noundef, i64 noundef) local_unnamed_addr #2

declare i32 @virtio_queue_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare i32 @getpagesize() local_unnamed_addr #9

declare void @virtqueue_fill(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @virtqueue_flush(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind sspstrong willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #5 = { mustprogress nofree nosync nounwind sspstrong willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #7 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #8 = { allocsize(0,1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #9 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nounwind }
attributes #14 = { nounwind allocsize(0,1) }
attributes #15 = { nounwind willreturn memory(none) }
attributes #16 = { nounwind allocsize(0) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!9 = !{i64 2151456486}
!10 = !{i64 2151456600}
!11 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = !{i64 2151458596}
!15 = distinct !{!15, !13}
!16 = distinct !{!16, !17}
!17 = !{!"llvm.loop.unroll.disable"}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = !{!"auto-init"}
!21 = !{i64 2151457561}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
end_hunk_0
