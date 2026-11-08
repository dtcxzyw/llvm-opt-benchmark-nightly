Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/vnc-jobs?download=true
inline.NumInlined: 43
inline.NumDeleted: 20
begin_hunk_0_@vnc_job_push:bb.a
  store ptr %i.r, ptr %i.g, align 8
  store ptr %0, ptr %i.r, align 8
  store ptr %i.f, ptr %i.q, align 8
  tail call void @qemu_cond_broadcast(ptr noundef nonnull %i.e) #9
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.m, ptr noundef nonnull @.str.1, i32 noundef 68) #9
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %vnc_job_free.exit
  ret void
}

declare void @qemu_cond_broadcast(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_jobs_join(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 86432 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.e = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 56 ; 3 uses
  tail call void %i.e(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.1, i32 noundef 63) #9, !inline_history !0
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 216
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 120
  %.08.i12 = load ptr, ptr %i.j, align 8          ; 2 uses
  %.not9.not.i13 = icmp eq ptr %.08.i12, null
  br i1 %.not9.not.i13, label %.loopexit, label %.lr.ph.i

bb.b:                                             ; preds = %.lr.ph.i
  %i.k = getelementptr inbounds nuw i8, ptr %.010.i, i64 16
  %.0.i = load ptr, ptr %i.k, align 8             ; 2 uses
  %.not.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.not.i, label %.loopexit, label %.lr.ph.i.backedge

.lr.ph.i.backedge:                                ; preds = %bb.b, %vnc_has_job_locked.exit
  %.010.i.be = phi ptr [ %.0.i, %bb.b ], [ %.08.i, %vnc_has_job_locked.exit ]
  br label %.lr.ph.i, !llvm.loop !12

.lr.ph.i:                                         ; preds = %bb.a, %.lr.ph.i.backedge
  %.010.i = phi ptr [ %.010.i.be, %.lr.ph.i.backedge ], [ %.08.i12, %bb.a ] ; 2 uses
  %i.l = load ptr, ptr %.010.i, align 8
  %i.m = icmp eq ptr %i.l, %0
  br i1 %i.m, label %vnc_has_job_locked.exit, label %bb.b

vnc_has_job_locked.exit:                          ; preds = %.lr.ph.i
  %i.n = load atomic ptr, ptr @qemu_cond_wait_func monotonic, align 8
  tail call void %i.n(ptr noundef %i.d, ptr noundef nonnull %i.f, ptr noundef nonnull @.str.1, i32 noundef 153) #9
  %i.o = load ptr, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 216
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 120
  %.08.i = load ptr, ptr %i.r, align 8            ; 2 uses
  %.not9.not.i = icmp eq ptr %.08.i, null
  br i1 %.not9.not.i, label %.loopexit, label %.lr.ph.i.backedge

.loopexit:                                        ; preds = %vnc_has_job_locked.exit, %bb.b, %bb.a
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.f, ptr noundef nonnull @.str.1, i32 noundef 68) #9
  tail call void @vnc_jobs_consume_buffer(ptr noundef %0)
  ret void
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_jobs_consume_buffer(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 86744 ; 3 uses
  tail call void %i.a(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8, i32 noundef 61) #9, !inline_history !13
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 86800 ; 2 uses
  %i.d = tail call i32 @buffer_empty(ptr noundef nonnull %i.c) #9
  %.not = icmp eq i32 %i.d, 0
  br i1 %.not, label %bb.b, label %bb.k

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %.not23 = icmp eq ptr %i.f, null
  br i1 %.not23, label %bb.h, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 86568
  %i.h = tail call i32 @buffer_empty(ptr noundef nonnull %i.g) #9
  %.not24 = icmp eq i32 %i.h, 0
  br i1 %.not24, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not25 = icmp eq i32 %i.j, 0
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.i, align 8
  %i.k = tail call i32 @g_source_remove(i32 noundef %i.j) #9 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.m = load i32, ptr %i.l, align 4
  %i.n = icmp eq i32 %i.m, 0
  br i1 %i.n, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.o = load ptr, ptr %i.e, align 8
  %i.p = tail call i32 @qio_channel_add_watch(ptr noundef %i.o, i32 noundef 29, ptr noundef nonnull @vnc_client_io, ptr noundef nonnull %0, ptr noundef null) #9
  store i32 %i.p, ptr %i.i, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g, %bb.c, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 86568
  tail call void @buffer_move(ptr noundef nonnull %i.q, ptr noundef nonnull %i.c) #9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 86444 ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = icmp eq i32 %i.s, 2
  br i1 %i.t, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 86584
  %i.v = load i64, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 86552
  store i64 %i.v, ptr %i.w, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  store i32 0, ptr %i.r, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.a
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %.not26 = icmp eq ptr %i.y, null
  br i1 %.not26, label %.critedge, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 86736
  %i.aa = load i8, ptr %i.z, align 8, !range !9, !noundef !10
  %i.ab = icmp eq i8 %i.aa, 0
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8, i32 noundef 66) #9
  br i1 %i.ab, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void @vnc_flush(ptr noundef nonnull %0) #9
  br label %bb.n

.critedge:                                        ; preds = %bb.k
  tail call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.b, ptr noundef nonnull @.str.8, i32 noundef 66) #9
  br label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.m, %bb.l
  ret void
}

declare i32 @buffer_empty(ptr noundef) local_unnamed_addr #4

declare i32 @g_source_remove(i32 noundef) local_unnamed_addr #4

declare i32 @qio_channel_add_watch(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @vnc_client_io(ptr noundef, i32 noundef, ptr noundef) #4

declare void @buffer_move(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @vnc_flush(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @vnc_start_worker_thread(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @__assert_fail(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.1, i32 noundef 372, ptr noundef nonnull @__PRETTY_FUNCTION__.vnc_start_worker_thread) #8
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(136) ptr @g_malloc0(i64 noundef 136) #7 ; 7 uses
  tail call void @qemu_cond_init(ptr noundef %i.d) #9
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  tail call void @qemu_mutex_init(ptr noundef nonnull %i.e) #9
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 120 ; 2 uses
  store ptr null, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 128
  store ptr %i.f, ptr %i.g, align 8
  store ptr %i.d, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  tail call void @qemu_thread_create(ptr noundef nonnull %i.h, ptr noundef nonnull @.str.5, ptr noundef nonnull @vnc_worker_thread, ptr noundef %i.d, i32 noundef 0) #9
  ret void
}

declare void @qemu_thread_create(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind sspstrong uwtable
define internal noalias noundef ptr @vnc_worker_thread(ptr noundef %0) #0 {
bb.a:
  %1 = alloca %struct.VncState, align 8           ; 26 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 86568 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 86492
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 86452
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 86432
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 86648
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 86656
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 86692
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 86840 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 86472 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 86480
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 86584
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 86600 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 128
  br label %bb.b

bb.b:                                             ; preds = %vnc_worker_thread_loop.exit, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(103328) %1, i8 0, i64 103328, i1 false)
  %i.r = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  call void %i.r(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, i32 noundef 63) #9, !inline_history !14
  %i.s = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %.lr.ph.i, label %.critedge.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %i.u = load i8, ptr %i.c, align 8, !range !9, !noundef !10
  %i.v = trunc nuw i8 %i.u to i1
  br i1 %i.v, label %.critedge.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.w = load atomic ptr, ptr @qemu_cond_wait_func monotonic, align 8
  call void %i.w(ptr noundef nonnull %0, ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, i32 noundef 253) #9, !inline_history !15
  %i.x = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %.lr.ph.i, label %.critedge.i, !llvm.loop !16

.critedge.i:                                      ; preds = %bb.c, %.lr.ph.i, %bb.b
  %.lcssa98.i = phi ptr [ %i.s, %bb.b ], [ null, %.lr.ph.i ], [ %i.x, %bb.c ] ; 23 uses
  %i.z = load i8, ptr %i.c, align 8, !range !9, !noundef !10
  %i.aa = trunc nuw i8 %i.z to i1
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1, i32 noundef 68) #9
  br i1 %i.aa, label %bb.an, label %bb.d

bb.d:                                             ; preds = %.critedge.i
  %i.ab = load ptr, ptr %.lcssa98.i, align 8      ; 3 uses
  %i.ac = load i64, ptr %i.ab, align 8
  %i.ad = icmp eq i64 %i.ac, 410936327799964859
  br i1 %i.ad, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @__assert_fail(ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.1, i32 noundef 262, ptr noundef nonnull @__PRETTY_FUNCTION__.vnc_worker_thread_loop) #8
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ae = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ab, i64 86744
  call void %i.ae(ptr noundef nonnull %i.af, ptr noundef nonnull @.str.8, i32 noundef 61) #9, !inline_history !17
  %i.ag = load ptr, ptr %.lcssa98.i, align 8      ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.ai = load ptr, ptr %i.ah, align 8
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 86736
  %i.al = load i8, ptr %i.ak, align 8, !range !9, !noundef !10
  %i.am = trunc nuw i8 %i.al to i1
  br i1 %i.am, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 86744
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.an, ptr noundef nonnull @.str.8, i32 noundef 66) #9
  br label %bb.aj

bb.i:                                             ; preds = %bb.g
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 86568
  %i.ap = call i32 @buffer_empty(ptr noundef nonnull %i.ao) #9
  %.not.i = icmp eq i32 %i.ap, 0
  br i1 %.not.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.aq = load ptr, ptr %.lcssa98.i, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 86568
  call void @buffer_move_empty(ptr noundef nonnull %i.d, ptr noundef nonnull %i.ar) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.as = load ptr, ptr %.lcssa98.i, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 86744
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.at, ptr noundef nonnull @.str.8, i32 noundef 66) #9
  %i.au = load ptr, ptr %.lcssa98.i, align 8      ; 8 uses
  call void (ptr, ptr, ...) @buffer_init(ptr noundef nonnull %i.d, ptr noundef nonnull @.str.10) #9
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 86492
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.aw = load i32, ptr %i.av, align 4
  store i32 %i.aw, ptr %i.f, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 86452
  %i.ay = load i32, ptr %i.ax, align 4
  store i32 %i.ay, ptr %i.g, align 4
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 86432
  %i.ba = load ptr, ptr %i.az, align 8
  store ptr %i.ba, ptr %i.h, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 86648
  %i.bc = load ptr, ptr %i.bb, align 8
  store ptr %i.bc, ptr %i.i, align 8
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 86656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.bd, i64 32, i1 false)
  %i.be = getelementptr inbounds nuw i8, ptr %i.au, i64 86692
  %i.bf = load i32, ptr %i.be, align 4
  store i32 %i.bf, ptr %i.k, align 4
  %i.bg = getelementptr inbounds nuw i8, ptr %i.au, i64 86840
  %i.bh = load i64, ptr %i.bg, align 8
  store i64 %i.bh, ptr %i.l, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 86472
  %i.bj = load <2 x i64>, ptr %i.bi, align 8
  store <2 x i64> %i.bj, ptr %i.m, align 8
  store i64 410936327799964859, ptr %1, align 8
  call void @vnc_write_u8(ptr noundef nonnull %1, i8 noundef zeroext 0) #9
  call void @vnc_write_u8(ptr noundef nonnull %1, i8 noundef zeroext 0) #9
  %i.bk = load i64, ptr %i.o, align 8
  call void @vnc_write_u16(ptr noundef nonnull %1, i16 noundef zeroext 0) #9
  %i.bl = load ptr, ptr %.lcssa98.i, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 86432
  %i.bn = load ptr, ptr %i.bm, align 8
  %i.bo = load atomic ptr, ptr @qemu_mutex_lock_func monotonic, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 168
  call void %i.bo(ptr noundef nonnull %i.bp, ptr noundef nonnull @.str.8, i32 noundef 51) #9, !inline_history !18
  %i.bq = getelementptr inbounds nuw i8, ptr %.lcssa98.i, i64 8
  %i.br = load ptr, ptr %i.bq, align 8            ; 2 uses
  %.not87101.i = icmp eq ptr %i.br, null
  br i1 %.not87101.i, label %.critedge2.i, label %.lr.ph104.i

.lr.ph104.i:                                      ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.ab, i64 103328
  br label %bb.l

bb.l:                                             ; preds = %vnc_worker_clamp_rect.exit._crit_edge.i, %.lr.ph104.i
  %.082103.i = phi ptr [ %i.br, %.lr.ph104.i ], [ %i.bu, %vnc_worker_clamp_rect.exit._crit_edge.i ] ; 9 uses
  %.083102.i = phi i32 [ 0, %.lr.ph104.i ], [ %.1.i, %vnc_worker_clamp_rect.exit._crit_edge.i ] ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %.082103.i, i64 16 ; 4 uses
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = load ptr, ptr %.lcssa98.i, align 8      ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = icmp eq ptr %i.bx, null
  br i1 %i.by, label %.thread.i, label %bb.m

.thread.i:                                        ; preds = %bb.l
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bv, i64 86432
  %i.ca = load ptr, ptr %i.bz, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 168
  call void @qemu_mutex_unlock_impl(ptr noundef nonnull %i.cb, ptr noundef nonnull @.str.8, i32 noundef 56) #9
  %i.cc = load ptr, ptr %.lcssa98.i, align 8
  call void @buffer_free(ptr noundef nonnull %i.d) #9
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 86840
  %i.ce = load i64, ptr %i.l, align 8
  store i64 %i.ce, ptr %i.cd, align 8
  br label %bb.aj

bb.m:                                             ; preds = %bb.l
  %i.cf = load i32, ptr %.082103.i, align 8       ; 4 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %.082103.i, i64 4 ; 4 uses
  %i.ch = load i32, ptr %i.cg, align 4
  %i.ci = getelementptr inbounds nuw i8, ptr %.082103.i, i64 8 ; 4 uses
  %i.cj = load i32, ptr %i.ci, align 8            ; 4 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.082103.i, i64 12 ; 5 uses
  %i.cl = load i32, ptr %i.ck, align 4
  %i.cm = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i.i.i = icmp eq i32 %i.cm, 0
  br i1 %.not.i.i.i, label %trace_vnc_job_clamp_rect.exit.i.i, label %bb.n, !prof !8

bb.n:                                             ; preds = %bb.m
  %i.cn = load i16, ptr @_TRACE_VNC_JOB_CLAMP_RECT_DSTATE, align 2
  %.not5.i.i.i = icmp eq i16 %i.cn, 0
  br i1 %.not5.i.i.i, label %trace_vnc_job_clamp_rect.exit.i.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.co = load i32, ptr @qemu_loglevel, align 4
  %i.cp = and i32 %i.co, 32768
  %.not6.i.i.i = icmp eq i32 %i.cp, 0
  br i1 %.not6.i.i.i, label %trace_vnc_job_clamp_rect.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.11, ptr noundef nonnull %1, ptr noundef nonnull %.lcssa98.i, i32 noundef %i.cf, i32 noundef %i.ch, i32 noundef %i.cj, i32 noundef %i.cl) #9
  %.pre.i.i = load i32, ptr %.082103.i, align 8
  %.pre.i = load i32, ptr %i.ci, align 8
  br label %trace_vnc_job_clamp_rect.exit.i.i

trace_vnc_job_clamp_rect.exit.i.i:                ; preds = %bb.p, %bb.o, %bb.n, %bb.m
  %i.cq = phi i32 [ %i.cj, %bb.m ], [ %i.cj, %bb.n ], [ %i.cj, %bb.o ], [ %.pre.i, %bb.p ] ; 2 uses
  %i.cr = phi i32 [ %i.cf, %bb.m ], [ %i.cf, %bb.n ], [ %i.cf, %bb.o ], [ %.pre.i.i, %bb.p ] ; 6 uses
  %i.cs = sext i32 %i.cr to i64                   ; 2 uses
  %i.ct = load i64, ptr %i.m, align 8             ; 2 uses
  %.not.i.i = icmp ugt i64 %i.ct, %i.cs
  br i1 %.not.i.i, label %bb.q, label %trace_vnc_job_clamp_rect.exit._crit_edge.i.i

trace_vnc_job_clamp_rect.exit._crit_edge.i.i:     ; preds = %trace_vnc_job_clamp_rect.exit.i.i
  %.pre54.i.i = load i32, ptr %i.cg, align 4
  br label %bb.x

bb.q:                                             ; preds = %trace_vnc_job_clamp_rect.exit.i.i
  %i.cu = sub nuw i64 %i.ct, %i.cs
  %i.cv = sext i32 %i.cq to i64
  %i.cw = call i64 @llvm.umin.i64(i64 %i.cu, i64 %i.cv)
  %i.cx = trunc i64 %i.cw to i32                  ; 8 uses
  store i32 %i.cx, ptr %i.ci, align 8
  %i.cy = icmp eq i32 %i.cx, 0
  %.pre55.i.i = load i32, ptr %i.cg, align 4      ; 8 uses
  br i1 %i.cy, label %bb.x, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.cz = sext i32 %.pre55.i.i to i64             ; 2 uses
  %i.da = load i64, ptr %i.n, align 8             ; 2 uses
  %.not47.i.i = icmp ugt i64 %i.da, %i.cz
  br i1 %.not47.i.i, label %bb.s, label %bb.x

bb.s:                                             ; preds = %bb.r
  %i.db = sub nuw i64 %i.da, %i.cz
  %i.dc = load i32, ptr %i.ck, align 4
  %i.dd = sext i32 %i.dc to i64
  %i.de = call i64 @llvm.umin.i64(i64 %i.db, i64 %i.dd)
  %i.df = trunc i64 %i.de to i32                  ; 6 uses
  store i32 %i.df, ptr %i.ck, align 4
  %i.dg = icmp eq i32 %i.df, 0
  br i1 %i.dg, label %bb.x, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.dh = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i48.i.i = icmp eq i32 %i.dh, 0
  br i1 %.not.i48.i.i, label %bb.ab, label %bb.u, !prof !8

bb.u:                                             ; preds = %bb.t
  %i.di = load i16, ptr @_TRACE_VNC_JOB_CLAMPED_RECT_DSTATE, align 2
  %.not5.i49.i.i = icmp eq i16 %i.di, 0
  br i1 %.not5.i49.i.i, label %bb.ab, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.dj = load i32, ptr @qemu_loglevel, align 4
  %i.dk = and i32 %i.dj, 32768
end_hunk_0
