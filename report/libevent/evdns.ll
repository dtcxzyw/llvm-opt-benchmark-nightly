Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evdns?download=true
inline.NumInlined: 196
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@evdns_getaddrinfo_cancel:bb.a
  %i.r = load ptr, ptr %0, align 8
  tail call void @evdns_cancel_request(ptr noundef %i.r, ptr noundef nonnull %i.q)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not21 = icmp eq ptr %i.t, null
  br i1 %.not21, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8
  tail call void @evdns_cancel_request(ptr noundef %i.u, ptr noundef nonnull %i.t)
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.v = load ptr, ptr %0, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 304
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not22 = icmp eq ptr %i.x, null
  br i1 %.not22, label %bb.j, label %.sink.split

.sink.split:                                      ; preds = %bb.i, %bb.d
  %.sink = phi ptr [ %i.k, %bb.d ], [ %i.x, %bb.i ]
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.z = tail call i32 %i.y(i32 noundef 0, ptr noundef nonnull %.sink) #19 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %bb.i, %bb.d
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @evdns_base_set_max_requests_inflight(ptr nofree noundef captures(none) %0, i32 noundef range(i32 0, -1) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %i.c = load ptr, ptr %0, align 8                ; 3 uses
  %spec.store.select = tail call i32 @llvm.smax.i32(i32 %1, i32 1) ; 2 uses
  %i.d = add nuw nsw i32 %spec.store.select, 4
  %i.e = udiv i32 %i.d, 5                         ; 3 uses
  %i.f = zext nneg i32 %i.e to i64
  %i.g = tail call ptr @event_mm_calloc_(i64 noundef %i.f, i64 noundef 8) #19 ; 3 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not34 = icmp eq ptr %i.c, null
  br i1 %.not34, label %bb.f, label %.preheader36

.preheader36:                                     ; preds = %bb.b
  %i.h = icmp sgt i32 %i.b, 0
  br i1 %i.h, label %.preheader.preheader, label %._crit_edge39

.preheader.preheader:                             ; preds = %.preheader36
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %i.i = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv ; 4 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not3537 = icmp eq ptr %i.j, null
  br i1 %.not3537, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader, %evdns_request_insert.exit
  %i.k = phi ptr [ %i.aj, %evdns_request_insert.exit ], [ %i.j, %.preheader ] ; 12 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 5 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.n = icmp eq ptr %i.m, %i.k
  br i1 %i.n, label %.sink.split.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr %i.p, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.l, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.r, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.i, align 8
  %i.u = icmp eq ptr %i.t, %i.k
  br i1 %i.u, label %.sink.split.i, label %evdns_request_remove.exit

.sink.split.i:                                    ; preds = %bb.c, %.lr.ph
  %.sink.i = phi ptr [ null, %.lr.ph ], [ %i.r, %bb.c ]
  store ptr %.sink.i, ptr %i.i, align 8
  br label %evdns_request_remove.exit

evdns_request_remove.exit:                        ; preds = %bb.c, %.sink.split.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 192
  %i.w = load i16, ptr %i.v, align 8
  %i.x = zext i16 %i.w to i32
  %i.y = urem i32 %i.x, %i.e
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.z ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not.i = icmp eq ptr %i.ab, null
  br i1 %.not.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %evdns_request_remove.exit
  store ptr %i.k, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.k, ptr %i.ac, align 8
  store ptr %i.k, ptr %i.l, align 8
  br label %evdns_request_insert.exit

bb.e:                                             ; preds = %evdns_request_remove.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ae = load ptr, ptr %i.ad, align 8            ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr %i.ae, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 48
  store ptr %i.k, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.aa, align 8            ; 2 uses
  store ptr %i.ah, ptr %i.l, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  store ptr %i.k, ptr %i.ai, align 8
  br label %evdns_request_insert.exit

evdns_request_insert.exit:                        ; preds = %bb.d, %bb.e
  %i.aj = load ptr, ptr %i.i, align 8             ; 2 uses
  %.not35 = icmp eq ptr %i.aj, null
  br i1 %.not35, label %._crit_edge, label %.lr.ph, !llvm.loop !39

._crit_edge:                                      ; preds = %evdns_request_insert.exit, %.preheader
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge39, label %.preheader, !llvm.loop !40

._crit_edge39:                                    ; preds = %._crit_edge, %.preheader36
  tail call void @event_mm_free_(ptr noundef nonnull %i.c) #19
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge39, %bb.b
  store ptr %i.g, ptr %0, align 8
  store i32 %i.e, ptr %i.a, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 52
  store i32 %spec.store.select, ptr %i.ak, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @evdns_base_free_and_unlock(ptr noundef %0, i32 noundef %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 6 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not80 = icmp eq ptr %i.b, null
  br i1 %.not80, label %.preheader79, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.not74 = icmp eq i32 %1, 0
  br i1 %.not74, label %reply_schedule_callback.exit.us, label %.lr.ph.split

reply_schedule_callback.exit.us:                  ; preds = %.lr.ph, %reply_schedule_callback.exit.us
  %i.c = phi ptr [ %i.d, %reply_schedule_callback.exit.us ], [ %i.b, %.lr.ph ]
  tail call fastcc void @request_finished(ptr noundef nonnull %i.c, ptr noundef nonnull %i.a, i32 noundef 1)
  %i.d = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.us = icmp eq ptr %i.d, null
  br i1 %.not.us, label %.preheader79.thread, label %reply_schedule_callback.exit.us, !llvm.loop !41

.preheader79:                                     ; preds = %reply_schedule_callback.exit, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8              ; 3 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %.preheader.lr.ph, label %._crit_edge84

.preheader79.thread:                              ; preds = %reply_schedule_callback.exit.us
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp sgt i32 %i.i, 0
  br i1 %i.j, label %.preheader.us.preheader, label %._crit_edge84

.preheader.lr.ph:                                 ; preds = %.preheader79
  %.not73 = icmp eq i32 %1, 0
  br i1 %.not73, label %.preheader.us.preheader, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.preheader.lr.ph
  %.pre = load ptr, ptr %0, align 8
  br label %.preheader

.preheader.us.preheader:                          ; preds = %.preheader79.thread, %.preheader.lr.ph
  %i.k = phi ptr [ %i.e, %.preheader.lr.ph ], [ %i.h, %.preheader79.thread ] ; 2 uses
  %i.l = phi i32 [ %i.f, %.preheader.lr.ph ], [ %i.i, %.preheader79.thread ]
  %.pre99 = load ptr, ptr %0, align 8
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.split.us.us
  %i.m = phi i32 [ %i.l, %.preheader.us.preheader ], [ %2, %._crit_edge.split.us.us ]
  %i.n = phi ptr [ %.pre99, %.preheader.us.preheader ], [ %3, %._crit_edge.split.us.us ] ; 3 uses
  %indvars.iv95 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next96, %._crit_edge.split.us.us ] ; 3 uses
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %indvars.iv95
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not7281.us = icmp eq ptr %i.p, null
  br i1 %.not7281.us, label %._crit_edge.split.us.us, label %reply_schedule_callback.exit77.us.us

reply_schedule_callback.exit77.us.us:             ; preds = %.preheader.us, %reply_schedule_callback.exit77.us.us
  %i.q = phi ptr [ %i.ab, %reply_schedule_callback.exit77.us.us ], [ %i.p, %.preheader.us ] ; 2 uses
  %i.r = phi ptr [ %i.z, %reply_schedule_callback.exit77.us.us ], [ %i.n, %.preheader.us ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 192
  %i.t = load i16, ptr %i.s, align 8
  %i.u = zext i16 %i.t to i32
  %i.v = load i32, ptr %i.k, align 8
  %i.w = srem i32 %i.u, %i.v
  %i.x = zext nneg i32 %i.w to i64
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.x
  tail call fastcc void @request_finished(ptr noundef nonnull %i.q, ptr noundef %i.y, i32 noundef 1)
  %i.z = load ptr, ptr %0, align 8                ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %indvars.iv95
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %.not72.us.us = icmp eq ptr %i.ab, null
  br i1 %.not72.us.us, label %._crit_edge.split.us.us.loopexit, label %reply_schedule_callback.exit77.us.us, !llvm.loop !42

._crit_edge.split.us.us.loopexit:                 ; preds = %reply_schedule_callback.exit77.us.us
  %.pre100 = load i32, ptr %i.k, align 8
  br label %._crit_edge.split.us.us

._crit_edge.split.us.us:                          ; preds = %._crit_edge.split.us.us.loopexit, %.preheader.us
  %2 = phi i32 [ %.pre100, %._crit_edge.split.us.us.loopexit ], [ %i.m, %.preheader.us ] ; 2 uses
  %3 = phi ptr [ %i.z, %._crit_edge.split.us.us.loopexit ], [ %i.n, %.preheader.us ]
  %indvars.iv.next96 = add nuw nsw i64 %indvars.iv95, 1 ; 2 uses
  %4 = sext i32 %2 to i64
  %5 = icmp slt i64 %indvars.iv.next96, %4
  br i1 %5, label %.preheader.us, label %._crit_edge84, !llvm.loop !43

.lr.ph.split:                                     ; preds = %.lr.ph, %reply_schedule_callback.exit
  %i.ac = phi ptr [ %i.bc, %reply_schedule_callback.exit ], [ %i.b, %.lr.ph ] ; 6 uses
  %i.ad = tail call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef 600) #19 ; 8 uses
  %.not.i = icmp eq ptr %i.ad, null
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.lr.ph.split
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.reply_schedule_callback) #19
  br label %reply_schedule_callback.exit

bb.c:                                             ; preds = %.lr.ph.split
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 208
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i8, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  store i8 %i.ag, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ac, i64 32
  %i.aj = load ptr, ptr %i.ai, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ad, i64 52
  store i32 0, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  store i32 68, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 216 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8            ; 2 uses
  %.not26.i = icmp eq ptr %i.ao, null
  br i1 %.not26.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 1, ptr %i.ap, align 8
  %i.aq = load ptr, ptr %i.an, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  store ptr %i.aq, ptr %i.ar, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 64
  %i.at = tail call i32 @event_get_priority(ptr noundef nonnull %i.as) #19
  %i.au = trunc i32 %i.at to i8
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 24
  %i.aw = load ptr, ptr %i.av, align 8
  tail call void @event_deferred_cb_init_(ptr noundef nonnull %i.ad, i8 noundef zeroext %i.au, ptr noundef nonnull @reply_run_callback, ptr noundef %i.aw) #19
  %i.ax = load ptr, ptr %i.ae, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8
  %i.ba = tail call i32 @event_deferred_cb_schedule_(ptr noundef %i.az, ptr noundef nonnull %i.ad) #19 ; 0 uses
  br label %reply_schedule_callback.exit

reply_schedule_callback.exit:                     ; preds = %bb.e, %bb.b
  %i.bb = load ptr, ptr %i.a, align 8
  tail call fastcc void @request_finished(ptr noundef %i.bb, ptr noundef nonnull %i.a, i32 noundef 1)
  %i.bc = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not = icmp eq ptr %i.bc, null
  br i1 %.not, label %.preheader79, label %.lr.ph.split, !llvm.loop !41

.preheader:                                       ; preds = %.preheader.preheader, %._crit_edge.split
  %i.bd = phi i32 [ %i.f, %.preheader.preheader ], [ %i.ct, %._crit_edge.split ]
  %i.be = phi ptr [ %.pre, %.preheader.preheader ], [ %i.cu, %._crit_edge.split ] ; 2 uses
  %indvars.iv = phi i64 [ 0, %.preheader.preheader ], [ %indvars.iv.next, %._crit_edge.split ] ; 4 uses
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %indvars.iv
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not7281 = icmp eq ptr %i.bg, null
  br i1 %.not7281, label %._crit_edge.split, label %.lr.ph82

.lr.ph82:                                         ; preds = %.preheader, %reply_schedule_callback.exit77
  %i.bh = phi ptr [ %i.cs, %reply_schedule_callback.exit77 ], [ %i.bg, %.preheader ] ; 6 uses
  %i.bi = tail call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef 600) #19 ; 8 uses
  %.not.i75 = icmp eq ptr %i.bi, null
  br i1 %.not.i75, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph82
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.53, ptr noundef nonnull @__func__.reply_schedule_callback) #19
  br label %reply_schedule_callback.exit77

bb.g:                                             ; preds = %.lr.ph82
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 208
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.bl = load i8, ptr %i.bk, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store i8 %i.bl, ptr %i.bm, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  store ptr %i.bo, ptr %i.bp, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 52
  store i32 0, ptr %i.bq, align 4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 56
  store i32 68, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bh, i64 216 ; 2 uses
  %i.bt = load ptr, ptr %i.bs, align 8            ; 2 uses
  %.not26.i76 = icmp eq ptr %i.bt, null
  br i1 %.not26.i76, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 16
  store i32 1, ptr %i.bu, align 8
  %i.bv = load ptr, ptr %i.bs, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store ptr %i.bv, ptr %i.bw, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.by = tail call i32 @event_get_priority(ptr noundef nonnull %i.bx) #19
  %i.bz = trunc i32 %i.by to i8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.cb = load ptr, ptr %i.ca, align 8
  tail call void @event_deferred_cb_init_(ptr noundef nonnull %i.bi, i8 noundef zeroext %i.bz, ptr noundef nonnull @reply_run_callback, ptr noundef %i.cb) #19
  %i.cc = load ptr, ptr %i.bj, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8
  %i.cf = tail call i32 @event_deferred_cb_schedule_(ptr noundef %i.ce, ptr noundef nonnull %i.bi) #19 ; 0 uses
  br label %reply_schedule_callback.exit77

reply_schedule_callback.exit77:                   ; preds = %bb.i, %bb.f
  %i.cg = load ptr, ptr %0, align 8               ; 2 uses
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %indvars.iv
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 192
  %i.ck = load i16, ptr %i.cj, align 8
  %i.cl = zext i16 %i.ck to i32
  %i.cm = load i32, ptr %i.e, align 8
  %i.cn = srem i32 %i.cl, %i.cm
  %i.co = zext nneg i32 %i.cn to i64
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.cg, i64 %i.co
  tail call fastcc void @request_finished(ptr noundef %i.ci, ptr noundef %i.cp, i32 noundef 1)
  %i.cq = load ptr, ptr %0, align 8               ; 2 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %indvars.iv
  %i.cs = load ptr, ptr %i.cr, align 8            ; 2 uses
  %.not72 = icmp eq ptr %i.cs, null
  br i1 %.not72, label %._crit_edge.split.loopexit, label %.lr.ph82, !llvm.loop !42

._crit_edge.split.loopexit:                       ; preds = %reply_schedule_callback.exit77
  %.pre98 = load i32, ptr %i.e, align 8
  br label %._crit_edge.split

._crit_edge.split:                                ; preds = %._crit_edge.split.loopexit, %.preheader
  %i.ct = phi i32 [ %.pre98, %._crit_edge.split.loopexit ], [ %i.bd, %.preheader ] ; 2 uses
  %i.cu = phi ptr [ %i.cq, %._crit_edge.split.loopexit ], [ %i.be, %.preheader ]
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.cv = sext i32 %i.ct to i64
  %i.cw = icmp slt i64 %indvars.iv.next, %i.cv
  br i1 %i.cw, label %.preheader, label %._crit_edge84, !llvm.loop !43

._crit_edge84:                                    ; preds = %._crit_edge.split, %._crit_edge.split.us.us, %.preheader79.thread, %.preheader79
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 0, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i32 0, ptr %i.cy, align 4
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.da = load ptr, ptr %i.cz, align 8
  br label %bb.j

bb.j:                                             ; preds = %evdns_nameserver_free.exit, %._crit_edge84
  %.056 = phi ptr [ %i.da, %._crit_edge84 ], [ %i.dc, %evdns_nameserver_free.exit ] ; 10 uses
  %.not66 = icmp eq ptr %.056, null
  br i1 %.not66, label %bb.q, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.db = getelementptr inbounds nuw i8, ptr %.056, i64 280
  %i.dc = load ptr, ptr %i.db, align 8            ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.056, i64 424 ; 3 uses
  store ptr null, ptr %i.dd, align 8
  %i.de = load i32, ptr %.056, align 8            ; 2 uses
  %i.df = icmp sgt i32 %i.de, -1
  br i1 %i.df, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.dg = tail call i32 @evutil_closesocket(i32 noundef %i.de) #19 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.dh = getelementptr inbounds nuw i8, ptr %.056, i64 152 ; 2 uses
  %i.di = tail call i32 @event_del(ptr noundef nonnull %i.dh) #19 ; 0 uses
  tail call void @event_debug_unassign(ptr noundef nonnull %i.dh) #19
  %i.dj = getelementptr inbounds nuw i8, ptr %.056, i64 432
  %i.dk = load i8, ptr %i.dj, align 8
  %i.dl = icmp eq i8 %i.dk, 0
  br i1 %i.dl, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.dm = getelementptr inbounds nuw i8, ptr %.056, i64 296
  %i.dn = tail call i32 @event_del(ptr noundef nonnull %i.dm) #19 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.do = load ptr, ptr %i.dd, align 8            ; 2 uses
  %.not.i78 = icmp eq ptr %i.do, null
  br i1 %.not.i78, label %evdns_nameserver_free.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dp = getelementptr inbounds nuw i8, ptr %.056, i64 440
  %i.dq = load ptr, ptr %i.dp, align 8
  tail call void @evdns_cancel_request(ptr noundef %i.dq, ptr noundef nonnull %i.do)
  store ptr null, ptr %i.dd, align 8
  br label %evdns_nameserver_free.exit

evdns_nameserver_free.exit:                       ; preds = %bb.o, %bb.p
  %i.dr = getelementptr inbounds nuw i8, ptr %.056, i64 296
  tail call void @event_debug_unassign(ptr noundef nonnull %i.dr) #19
  tail call void @event_mm_free_(ptr noundef nonnull %.056) #19
  %i.ds = load ptr, ptr %i.cz, align 8
  %i.dt = icmp eq ptr %i.dc, %i.ds
  br i1 %i.dt, label %bb.q, label %bb.j, !llvm.loop !44

bb.q:                                             ; preds = %evdns_nameserver_free.exit, %bb.j
  store ptr null, ptr %i.cz, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 0, ptr %i.du, align 8
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.dw = load ptr, ptr %i.dv, align 8            ; 3 uses
  %.not67 = icmp eq ptr %i.dw, null
  br i1 %.not67, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 16
  %i.dy = load ptr, ptr %i.dx, align 8            ; 2 uses
  %.not6885 = icmp eq ptr %i.dy, null
  br i1 %.not6885, label %._crit_edge, label %.lr.ph87

.lr.ph87:                                         ; preds = %bb.r, %.lr.ph87
  %.05586 = phi ptr [ %i.ea, %.lr.ph87 ], [ %i.dy, %bb.r ] ; 2 uses
  %i.dz = getelementptr inbounds nuw i8, ptr %.05586, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8            ; 2 uses
  tail call void @event_mm_free_(ptr noundef nonnull %.05586) #19
  %.not68 = icmp eq ptr %i.ea, null
  br i1 %.not68, label %._crit_edge.loopexit, label %.lr.ph87, !llvm.loop !45

._crit_edge.loopexit:                             ; preds = %.lr.ph87
  %.pre101 = load ptr, ptr %i.dv, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %bb.r
  %i.eb = phi ptr [ %.pre101, %._crit_edge.loopexit ], [ %i.dw, %bb.r ]
  tail call void @event_mm_free_(ptr noundef %i.eb) #19
  store ptr null, ptr %i.dv, align 8
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.q
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.ed = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not6988 = icmp eq ptr %i.ed, null
  br i1 %.not6988, label %._crit_edge91, label %.lr.ph90

.lr.ph90:                                         ; preds = %bb.s
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 296
  br label %bb.t

bb.t:                                             ; preds = %.lr.ph90, %bb.w
  %i.ef = phi ptr [ %i.ed, %.lr.ph90 ], [ %i.el, %bb.w ] ; 4 uses
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  %.not71 = icmp eq ptr %i.eg, null
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.ei = load ptr, ptr %i.eh, align 8            ; 3 uses
  br i1 %.not71, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ej = getelementptr inbounds nuw i8, ptr %i.eg, i64 8
  store ptr %i.ei, ptr %i.ej, align 8
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  store ptr %i.ei, ptr %i.ee, align 8
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.ek = load ptr, ptr %i.ef, align 8
  store ptr %i.ek, ptr %i.ei, align 8
  tail call void @event_mm_free_(ptr noundef nonnull %i.ef) #19
  %i.el = load ptr, ptr %i.ec, align 8            ; 2 uses
  %.not69 = icmp eq ptr %i.el, null
  br i1 %.not69, label %._crit_edge91, label %bb.t, !llvm.loop !46

._crit_edge91:                                    ; preds = %bb.w, %bb.s
  %i.em = load ptr, ptr %0, align 8
  tail call void @event_mm_free_(ptr noundef %i.em) #19
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8            ; 2 uses
  %.not70 = icmp eq ptr %i.eo, null
  br i1 %.not70, label %.thread, label %bb.x

bb.x:                                             ; preds = %._crit_edge91
  %i.ep = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.eq = tail call i32 %i.ep(i32 noundef 0, ptr noundef nonnull %i.eo) #19 ; 0 uses
  %.pre102 = load ptr, ptr %i.en, align 8         ; 2 uses
  %i.er = icmp ne ptr %.pre102, null
  %i.es = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 16), align 8 ; 2 uses
  %i.et = icmp ne ptr %i.es, null
  %or.cond = select i1 %i.er, i1 %i.et, i1 false
  br i1 %or.cond, label %bb.y, label %.thread

bb.y:                                             ; preds = %bb.x
  tail call void %i.es(ptr noundef nonnull %.pre102, i32 noundef 1) #19
  br label %.thread

.thread:                                          ; preds = %._crit_edge91, %bb.y, %bb.x
  tail call void @event_mm_free_(ptr noundef nonnull %0) #19
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evdns_init() local_unnamed_addr #3 {
bb.a:
  %i.a = tail call ptr @evdns_base_new(ptr noundef null, i32 noundef 1) ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr %i.a, ptr @current_base, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef nonnull ptr @evdns_err_to_string(i32 noundef %0) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp ult i32 %0, 71
  br i1 %i.a, label %switch.lookup, label %bb.b

switch.lookup:                                    ; preds = %bb.a
  %i.b = zext nneg i32 %0 to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.evdns_err_to_string, i64 %i.b
  %switch.load = load ptr, ptr %switch.gep, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %switch.lookup
  %.0 = phi ptr [ %switch.load, %switch.lookup ], [ @.str.22, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @evdns_base_free(ptr noundef %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
end_hunk_0
