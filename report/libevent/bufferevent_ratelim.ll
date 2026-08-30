Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/bufferevent_ratelim?download=true
inline.NumInlined: 30
inline.NumDeleted: 5
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@bufferevent_decrement_read_buckets_:bb.a
  %.not35 = icmp eq ptr %i.ad, null
  br i1 %.not35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.af = tail call i32 %i.ae(i32 noundef 0, ptr noundef nonnull %i.ad) #9 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre38 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = phi ptr [ %.pre38, %bb.k ], [ %i.ab, %bb.j ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = sub nsw i64 %i.ai, %1
  store i64 %i.aj, ptr %i.ah, align 8
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 96 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = add i64 %i.ao, %1
  store i64 %i.ap, ptr %i.an, align 8
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.au = load i64, ptr %i.at, align 8
  %i.av = icmp slt i64 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 88 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8             ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ay = and i8 %i.ax, -6
  %i.az = or disjoint i8 %i.ay, 1
  store i8 %i.az, ptr %i.aw, align 8
  %.014.i = load ptr, ptr %i.as, align 8          ; 2 uses
  %.not15.i = icmp eq ptr %.014.i, null
  br i1 %.not15.i, label %bev_group_suspend_reading_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.o
  %.016.i = phi ptr [ %.0.i, %bb.o ], [ %.014.i, %bb.m ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.016.i, i64 464 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp ne ptr %i.bb, null
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8 ; 2 uses
  %i.be = icmp ne ptr %i.bd, null
  %or.cond.i.i = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond.i.i, label %EVLOCK_TRY_LOCK_.exit.i, label %EVLOCK_TRY_LOCK_.exit.thread.i

EVLOCK_TRY_LOCK_.exit.i:                          ; preds = %.lr.ph.i
  %i.bf = tail call i32 %i.bd(i32 noundef 16, ptr noundef nonnull %i.bb) #9, !inline_history !3
  %.not.i.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.not.i, label %EVLOCK_TRY_LOCK_.exit.thread.i, label %bb.o

EVLOCK_TRY_LOCK_.exit.thread.i:                   ; preds = %EVLOCK_TRY_LOCK_.exit.i, %.lr.ph.i
  tail call void @bufferevent_suspend_read_(ptr noundef nonnull %.016.i, i16 noundef zeroext 4) #9
  %i.bg = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not11.i = icmp eq ptr %i.bg, null
  br i1 %.not11.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %EVLOCK_TRY_LOCK_.exit.thread.i
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.bi = tail call i32 %i.bh(i32 noundef 0, ptr noundef nonnull %i.bg) #9, !inline_history !4 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %EVLOCK_TRY_LOCK_.exit.thread.i, %EVLOCK_TRY_LOCK_.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.016.i, i64 488
  %i.bk = load ptr, ptr %i.bj, align 8
  %.0.i = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %bev_group_suspend_reading_.exit, label %.lr.ph.i, !llvm.loop !5

bb.p:                                             ; preds = %bb.l
  %i.bl = and i8 %i.ax, 1
  %.not36 = icmp eq i8 %i.bl, 0
  br i1 %.not36, label %bev_group_suspend_reading_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @bev_group_unsuspend_reading_(ptr noundef nonnull %i.as)
  br label %bev_group_suspend_reading_.exit

bev_group_suspend_reading_.exit:                  ; preds = %bb.o, %bb.m, %bb.q, %bb.p
  %i.bm = load ptr, ptr %i.a, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 272
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not37 = icmp eq ptr %i.bq, null
  br i1 %.not37, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bev_group_suspend_reading_.exit
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.bs = tail call i32 %i.br(i32 noundef 0, ptr noundef nonnull %i.bq) #9 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.i, %bb.r, %bev_group_suspend_reading_.exit, %bb.a
  %.026 = phi i32 [ 0, %bb.a ], [ %.0, %bev_group_suspend_reading_.exit ], [ %.0, %bb.r ], [ %.0, %bb.i ]
  ret i32 %.026
}

declare void @bufferevent_suspend_read_(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

declare i32 @event_add(ptr noundef, ptr noundef) local_unnamed_addr #4

declare i32 @event_del(ptr noundef) local_unnamed_addr #4

declare void @bufferevent_unsuspend_read_(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @bev_group_unsuspend_reading_(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, -2
  store i8 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = tail call i32 @evutil_weakrand_range_(ptr noundef nonnull %i.f, i32 noundef %i.e) #9 ; 5 uses
  %.011.i = load ptr, ptr %0, align 8             ; 3 uses
  %.not1012.i = icmp eq i32 %i.g, 0
  br i1 %.not1012.i, label %bev_group_random_element_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i32 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.014.i.prol = phi ptr [ %.0.i.prol, %.lr.ph.i.prol ], [ %.011.i, %.lr.ph.i.preheader ]
  %.0713.i.prol = phi i32 [ %i.h, %.lr.ph.i.prol ], [ %i.g, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.h = add nsw i32 %.0713.i.prol, -1            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.014.i.prol, i64 488
  %i.j = load ptr, ptr %i.i, align 8
  %.0.i.prol = load ptr, ptr %i.j, align 8        ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !7

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.0.i.prol, %.lr.ph.i.prol ]
  %.014.i.unr = phi ptr [ %.011.i, %.lr.ph.i.preheader ], [ %.0.i.prol, %.lr.ph.i.prol ]
  %.0713.i.unr = phi i32 [ %i.g, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.prol ]
  %i.k = icmp ult i32 %i.g, 8
  br i1 %i.k, label %bev_group_random_element_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.014.i = phi ptr [ %.0.i.7, %.lr.ph.i ], [ %.014.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0713.i = phi i32 [ %i.z, %.lr.ph.i ], [ %.0713.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.l = getelementptr inbounds nuw i8, ptr %.014.i, i64 488
  %i.m = load ptr, ptr %i.l, align 8
  %.0.i = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 488
  %i.o = load ptr, ptr %i.n, align 8
  %.0.i.1 = load ptr, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.1, i64 488
  %i.q = load ptr, ptr %i.p, align 8
  %.0.i.2 = load ptr, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.2, i64 488
  %i.s = load ptr, ptr %i.r, align 8
  %.0.i.3 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.3, i64 488
  %i.u = load ptr, ptr %i.t, align 8
  %.0.i.4 = load ptr, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.4, i64 488
  %i.w = load ptr, ptr %i.v, align 8
  %.0.i.5 = load ptr, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.5, i64 488
  %i.y = load ptr, ptr %i.x, align 8
  %.0.i.6 = load ptr, ptr %i.y, align 8
  %i.z = add nsw i32 %.0713.i, -8                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.6, i64 488
  %i.ab = load ptr, ptr %i.aa, align 8
  %.0.i.7 = load ptr, ptr %i.ab, align 8          ; 2 uses
  %.not10.i.7 = icmp eq i32 %i.z, 0
  br i1 %.not10.i.7, label %bev_group_random_element_.exit, label %.lr.ph.i, !llvm.loop !9

bev_group_random_element_.exit:                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.08.i = phi ptr [ %.011.i, %bb.b ], [ %.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.0.i.7, %.lr.ph.i ] ; 3 uses
  %.not37 = icmp eq ptr %.08.i, null
  br i1 %.not37, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.d, %bb.a, %bev_group_random_element_.exit
  %.08.i55 = phi ptr [ null, %bev_group_random_element_.exit ], [ null, %bb.a ], [ %.08.i, %bb.d ] ; 2 uses
  %.0.lcssa = phi i8 [ 0, %bev_group_random_element_.exit ], [ 0, %bb.a ], [ %.1.a, %bb.d ] ; 2 uses
  %.12040 = load ptr, ptr %0, align 8             ; 3 uses
  %i.ac = icmp ne ptr %.12040, null
  %i.ad = icmp ne ptr %.12040, %.08.i55
  %i.ae = and i1 %i.ac, %i.ad
  br i1 %i.ae, label %.lr.ph43, label %._crit_edge

.lr.ph:                                           ; preds = %bev_group_random_element_.exit, %bb.d
  %.039 = phi ptr [ %i.aq, %bb.d ], [ %.08.i, %bev_group_random_element_.exit ] ; 3 uses
  %.01938 = phi i8 [ %.1.a, %bb.d ], [ 0, %bev_group_random_element_.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.039, i64 464 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp ne ptr %i.ag, null
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8 ; 2 uses
  %i.aj = icmp ne ptr %i.ai, null
  %or.cond.i = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond.i, label %EVLOCK_TRY_LOCK_.exit, label %EVLOCK_TRY_LOCK_.exit.thread

EVLOCK_TRY_LOCK_.exit:                            ; preds = %.lr.ph
  %i.ak = tail call i32 %i.ai(i32 noundef 16, ptr noundef nonnull %i.ag) #9, !inline_history !10
  %.not.i28.not = icmp eq i32 %i.ak, 0
  br i1 %.not.i28.not, label %EVLOCK_TRY_LOCK_.exit.thread, label %bb.d

EVLOCK_TRY_LOCK_.exit.thread:                     ; preds = %.lr.ph, %EVLOCK_TRY_LOCK_.exit
  tail call void @bufferevent_unsuspend_read_(ptr noundef nonnull %.039, i16 noundef zeroext 4) #9
  %i.al = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not26 = icmp eq ptr %i.al, null
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %EVLOCK_TRY_LOCK_.exit.thread
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.an = tail call i32 %i.am(i32 noundef 0, ptr noundef nonnull %i.al) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %EVLOCK_TRY_LOCK_.exit, %bb.c, %EVLOCK_TRY_LOCK_.exit.thread
  %.1.a = phi i8 [ %.01938, %bb.c ], [ %.01938, %EVLOCK_TRY_LOCK_.exit.thread ], [ 1, %EVLOCK_TRY_LOCK_.exit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.039, i64 488
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !11

.lr.ph43:                                         ; preds = %.preheader, %bb.f
  %.12042 = phi ptr [ %.120, %bb.f ], [ %.12040, %.preheader ] ; 3 uses
  %.241 = phi i8 [ %.3, %bb.f ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.12042, i64 464 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp ne ptr %i.as, null
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8 ; 2 uses
  %i.av = icmp ne ptr %i.au, null
  %or.cond.i29 = select i1 %i.at, i1 %i.av, i1 false
  br i1 %or.cond.i29, label %EVLOCK_TRY_LOCK_.exit32, label %EVLOCK_TRY_LOCK_.exit32.thread

EVLOCK_TRY_LOCK_.exit32:                          ; preds = %.lr.ph43
  %i.aw = tail call i32 %i.au(i32 noundef 16, ptr noundef nonnull %i.as) #9, !inline_history !10
  %.not.i31.not = icmp eq i32 %i.aw, 0
  br i1 %.not.i31.not, label %EVLOCK_TRY_LOCK_.exit32.thread, label %bb.f

EVLOCK_TRY_LOCK_.exit32.thread:                   ; preds = %.lr.ph43, %EVLOCK_TRY_LOCK_.exit32
  tail call void @bufferevent_unsuspend_read_(ptr noundef nonnull %.12042, i16 noundef zeroext 4) #9
  %i.ax = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not24 = icmp eq ptr %i.ax, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %EVLOCK_TRY_LOCK_.exit32.thread
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.az = tail call i32 %i.ay(i32 noundef 0, ptr noundef nonnull %i.ax) #9 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %EVLOCK_TRY_LOCK_.exit32, %bb.e, %EVLOCK_TRY_LOCK_.exit32.thread
  %.3 = phi i8 [ %.241, %bb.e ], [ %.241, %EVLOCK_TRY_LOCK_.exit32.thread ], [ 1, %EVLOCK_TRY_LOCK_.exit32 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.12042, i64 488
  %i.bb = load ptr, ptr %i.ba, align 8
  %.120 = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bc = icmp ne ptr %.120, null
  %i.bd = icmp ne ptr %.120, %.08.i55
  %i.be = and i1 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph43, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.2.lcssa = phi i8 [ %.0.lcssa, %.preheader ], [ %.3, %bb.f ]
  %i.bf = load i8, ptr %i.a, align 8
  %i.bg = shl nuw nsw i8 %.2.lcssa, 2
  %i.bh = and i8 %i.bf, -5
  %i.bi = or i8 %i.bh, %i.bg
  store i8 %i.bi, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @bufferevent_decrement_write_buckets_(ptr noundef %0, i64 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 3 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.d = load ptr, ptr %i.c, align 8
  %.not31 = icmp eq ptr %i.d, null
  br i1 %.not31, label %bb.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = sub nsw i64 %i.f, %1
  store i64 %i.g, ptr %i.e, align 8
  %i.h = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp slt i64 %i.j, 1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @bufferevent_suspend_write_(ptr noundef nonnull %0, i16 noundef zeroext 2) #9
  %i.l = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %i.q = tail call i32 @event_add(ptr noundef nonnull %i.m, ptr noundef nonnull %i.p) #9
  %.lobit = ashr i32 %i.q, 31
  br label %bb.i

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 406
  %i.s = load i16, ptr %i.r, align 2
  %i.t = and i16 %i.s, 2
  %.not32 = icmp eq i16 %i.t, 0
  br i1 %.not32, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 404
  %i.v = load i16, ptr %i.u, align 4
  %i.w = and i16 %i.v, 2
  %.not33 = icmp eq i16 %i.w, 0
  br i1 %.not33, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.y = tail call i32 @event_del(ptr noundef nonnull %i.x) #9 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @bufferevent_unsuspend_write_(ptr noundef nonnull %0, i16 noundef zeroext 2) #9
  br label %bb.i

bb.i:                                             ; preds = %bb.d, %bb.h, %bb.e, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ %.lobit, %bb.d ], [ 0, %bb.h ], [ 0, %bb.e ] ; 3 uses
  %i.z = load ptr, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8            ; 3 uses
  %.not34 = icmp eq ptr %i.ab, null
  br i1 %.not34, label %bb.s, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 272
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not35 = icmp eq ptr %i.ad, null
  br i1 %.not35, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.af = tail call i32 %i.ae(i32 noundef 0, ptr noundef nonnull %i.ad) #9 ; 0 uses
  %.pre = load ptr, ptr %i.a, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.pre, i64 16
  %.pre38 = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %i.ag = phi ptr [ %.pre38, %bb.k ], [ %i.ab, %bb.j ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16 ; 2 uses
  %i.ai = load i64, ptr %i.ah, align 8
  %i.aj = sub nsw i64 %i.ai, %1
  store i64 %i.aj, ptr %i.ah, align 8
  %i.ak = load ptr, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %i.am = load ptr, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 104 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = add i64 %i.ao, %1
  store i64 %i.ap, ptr %i.an, align 8
  %i.aq = load ptr, ptr %i.a, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.as = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.au = load i64, ptr %i.at, align 8
  %i.av = icmp slt i64 %i.au, 1
  %i.aw = getelementptr inbounds nuw i8, ptr %i.as, i64 88 ; 2 uses
  %i.ax = load i8, ptr %i.aw, align 8             ; 2 uses
  br i1 %i.av, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.ay = and i8 %i.ax, -11
  %i.az = or disjoint i8 %i.ay, 2
  store i8 %i.az, ptr %i.aw, align 8
  %.014.i = load ptr, ptr %i.as, align 8          ; 2 uses
  %.not15.i = icmp eq ptr %.014.i, null
  br i1 %.not15.i, label %bev_group_suspend_writing_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.m, %bb.o
  %.016.i = phi ptr [ %.0.i, %bb.o ], [ %.014.i, %bb.m ] ; 3 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.016.i, i64 464 ; 2 uses
  %i.bb = load ptr, ptr %i.ba, align 8            ; 2 uses
  %i.bc = icmp ne ptr %i.bb, null
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8 ; 2 uses
  %i.be = icmp ne ptr %i.bd, null
  %or.cond.i.i = select i1 %i.bc, i1 %i.be, i1 false
  br i1 %or.cond.i.i, label %EVLOCK_TRY_LOCK_.exit.i, label %EVLOCK_TRY_LOCK_.exit.thread.i

EVLOCK_TRY_LOCK_.exit.i:                          ; preds = %.lr.ph.i
  %i.bf = tail call i32 %i.bd(i32 noundef 16, ptr noundef nonnull %i.bb) #9, !inline_history !13
  %.not.i.not.i = icmp eq i32 %i.bf, 0
  br i1 %.not.i.not.i, label %EVLOCK_TRY_LOCK_.exit.thread.i, label %bb.o

EVLOCK_TRY_LOCK_.exit.thread.i:                   ; preds = %EVLOCK_TRY_LOCK_.exit.i, %.lr.ph.i
  tail call void @bufferevent_suspend_write_(ptr noundef nonnull %.016.i, i16 noundef zeroext 4) #9
  %i.bg = load ptr, ptr %i.ba, align 8            ; 2 uses
  %.not11.i = icmp eq ptr %i.bg, null
  br i1 %.not11.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %EVLOCK_TRY_LOCK_.exit.thread.i
  %i.bh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.bi = tail call i32 %i.bh(i32 noundef 0, ptr noundef nonnull %i.bg) #9, !inline_history !14 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %EVLOCK_TRY_LOCK_.exit.thread.i, %EVLOCK_TRY_LOCK_.exit.i
  %i.bj = getelementptr inbounds nuw i8, ptr %.016.i, i64 488
  %i.bk = load ptr, ptr %i.bj, align 8
  %.0.i = load ptr, ptr %i.bk, align 8            ; 2 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %bev_group_suspend_writing_.exit, label %.lr.ph.i, !llvm.loop !15

bb.p:                                             ; preds = %bb.l
  %i.bl = and i8 %i.ax, 2
  %.not36 = icmp eq i8 %i.bl, 0
  br i1 %.not36, label %bev_group_suspend_writing_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call fastcc void @bev_group_unsuspend_writing_(ptr noundef nonnull %i.as)
  br label %bev_group_suspend_writing_.exit

bev_group_suspend_writing_.exit:                  ; preds = %bb.o, %bb.m, %bb.q, %bb.p
  %i.bm = load ptr, ptr %i.a, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bo = load ptr, ptr %i.bn, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 272
  %i.bq = load ptr, ptr %i.bp, align 8            ; 2 uses
  %.not37 = icmp eq ptr %i.bq, null
  br i1 %.not37, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bev_group_suspend_writing_.exit
  %i.br = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.bs = tail call i32 %i.br(i32 noundef 0, ptr noundef nonnull %i.bq) #9 ; 0 uses
  br label %bb.s

bb.s:                                             ; preds = %bb.i, %bb.r, %bev_group_suspend_writing_.exit, %bb.a
  %.026 = phi i32 [ 0, %bb.a ], [ %.0, %bev_group_suspend_writing_.exit ], [ %.0, %bb.r ], [ %.0, %bb.i ]
  ret i32 %.026
}

declare void @bufferevent_suspend_write_(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

declare void @bufferevent_unsuspend_write_(ptr noundef, i16 noundef zeroext) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define internal fastcc void @bev_group_unsuspend_writing_(ptr noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.b = load i8, ptr %i.a, align 8
  %i.c = and i8 %i.b, -3
  store i8 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %.not.i = icmp eq i32 %i.e, 0
  br i1 %.not.i, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.g = tail call i32 @evutil_weakrand_range_(ptr noundef nonnull %i.f, i32 noundef %i.e) #9 ; 5 uses
  %.011.i = load ptr, ptr %0, align 8             ; 3 uses
  %.not1012.i = icmp eq i32 %i.g, 0
  br i1 %.not1012.i, label %bev_group_random_element_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.b
  %xtraiter = and i32 %i.g, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.014.i.prol = phi ptr [ %.0.i.prol, %.lr.ph.i.prol ], [ %.011.i, %.lr.ph.i.preheader ]
  %.0713.i.prol = phi i32 [ %i.h, %.lr.ph.i.prol ], [ %i.g, %.lr.ph.i.preheader ]
  %prol.iter = phi i32 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.h = add nsw i32 %.0713.i.prol, -1            ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.014.i.prol, i64 488
  %i.j = load ptr, ptr %i.i, align 8
  %.0.i.prol = load ptr, ptr %i.j, align 8        ; 3 uses
  %prol.iter.next = add i32 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i32 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !16

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.0.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.preheader ], [ %.0.i.prol, %.lr.ph.i.prol ]
  %.014.i.unr = phi ptr [ %.011.i, %.lr.ph.i.preheader ], [ %.0.i.prol, %.lr.ph.i.prol ]
  %.0713.i.unr = phi i32 [ %i.g, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.prol ]
  %i.k = icmp ult i32 %i.g, 8
  br i1 %i.k, label %bev_group_random_element_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.014.i = phi ptr [ %.0.i.7, %.lr.ph.i ], [ %.014.i.unr, %.lr.ph.i.prol.loopexit ]
  %.0713.i = phi i32 [ %i.z, %.lr.ph.i ], [ %.0713.i.unr, %.lr.ph.i.prol.loopexit ]
  %i.l = getelementptr inbounds nuw i8, ptr %.014.i, i64 488
  %i.m = load ptr, ptr %i.l, align 8
  %.0.i = load ptr, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 488
  %i.o = load ptr, ptr %i.n, align 8
  %.0.i.1 = load ptr, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %.0.i.1, i64 488
  %i.q = load ptr, ptr %i.p, align 8
  %.0.i.2 = load ptr, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %.0.i.2, i64 488
  %i.s = load ptr, ptr %i.r, align 8
  %.0.i.3 = load ptr, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %.0.i.3, i64 488
  %i.u = load ptr, ptr %i.t, align 8
  %.0.i.4 = load ptr, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %.0.i.4, i64 488
  %i.w = load ptr, ptr %i.v, align 8
  %.0.i.5 = load ptr, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.0.i.5, i64 488
  %i.y = load ptr, ptr %i.x, align 8
  %.0.i.6 = load ptr, ptr %i.y, align 8
  %i.z = add nsw i32 %.0713.i, -8                 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.i.6, i64 488
  %i.ab = load ptr, ptr %i.aa, align 8
  %.0.i.7 = load ptr, ptr %i.ab, align 8          ; 2 uses
  %.not10.i.7 = icmp eq i32 %i.z, 0
  br i1 %.not10.i.7, label %bev_group_random_element_.exit, label %.lr.ph.i, !llvm.loop !9

bev_group_random_element_.exit:                   ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.b
  %.08.i = phi ptr [ %.011.i, %bb.b ], [ %.0.i.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %.0.i.7, %.lr.ph.i ] ; 3 uses
  %.not37 = icmp eq ptr %.08.i, null
  br i1 %.not37, label %.preheader, label %.lr.ph

.preheader:                                       ; preds = %bb.d, %bb.a, %bev_group_random_element_.exit
  %.08.i55 = phi ptr [ null, %bev_group_random_element_.exit ], [ null, %bb.a ], [ %.08.i, %bb.d ] ; 2 uses
  %.0.lcssa = phi i8 [ 0, %bev_group_random_element_.exit ], [ 0, %bb.a ], [ %.1.a, %bb.d ] ; 2 uses
  %.12040 = load ptr, ptr %0, align 8             ; 3 uses
  %i.ac = icmp ne ptr %.12040, null
  %i.ad = icmp ne ptr %.12040, %.08.i55
  %i.ae = and i1 %i.ac, %i.ad
  br i1 %i.ae, label %.lr.ph43, label %._crit_edge

.lr.ph:                                           ; preds = %bev_group_random_element_.exit, %bb.d
  %.039 = phi ptr [ %i.aq, %bb.d ], [ %.08.i, %bev_group_random_element_.exit ] ; 3 uses
  %.01938 = phi i8 [ %.1.a, %bb.d ], [ 0, %bev_group_random_element_.exit ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.039, i64 464 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8            ; 2 uses
  %i.ah = icmp ne ptr %i.ag, null
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8 ; 2 uses
  %i.aj = icmp ne ptr %i.ai, null
  %or.cond.i = select i1 %i.ah, i1 %i.aj, i1 false
  br i1 %or.cond.i, label %EVLOCK_TRY_LOCK_.exit, label %EVLOCK_TRY_LOCK_.exit.thread

EVLOCK_TRY_LOCK_.exit:                            ; preds = %.lr.ph
  %i.ak = tail call i32 %i.ai(i32 noundef 16, ptr noundef nonnull %i.ag) #9, !inline_history !10
  %.not.i28.not = icmp eq i32 %i.ak, 0
  br i1 %.not.i28.not, label %EVLOCK_TRY_LOCK_.exit.thread, label %bb.d

EVLOCK_TRY_LOCK_.exit.thread:                     ; preds = %.lr.ph, %EVLOCK_TRY_LOCK_.exit
  tail call void @bufferevent_unsuspend_write_(ptr noundef nonnull %.039, i16 noundef zeroext 4) #9
  %i.al = load ptr, ptr %i.af, align 8            ; 2 uses
  %.not26 = icmp eq ptr %i.al, null
  br i1 %.not26, label %bb.d, label %bb.c

bb.c:                                             ; preds = %EVLOCK_TRY_LOCK_.exit.thread
  %i.am = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.an = tail call i32 %i.am(i32 noundef 0, ptr noundef nonnull %i.al) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %EVLOCK_TRY_LOCK_.exit, %bb.c, %EVLOCK_TRY_LOCK_.exit.thread
  %.1.a = phi i8 [ %.01938, %bb.c ], [ %.01938, %EVLOCK_TRY_LOCK_.exit.thread ], [ 1, %EVLOCK_TRY_LOCK_.exit ] ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %.039, i64 488
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = load ptr, ptr %i.ap, align 8            ; 2 uses
  %.not = icmp eq ptr %i.aq, null
  br i1 %.not, label %.preheader, label %.lr.ph, !llvm.loop !17

.lr.ph43:                                         ; preds = %.preheader, %bb.f
  %.12042 = phi ptr [ %.120, %bb.f ], [ %.12040, %.preheader ] ; 3 uses
  %.241 = phi i8 [ %.3, %bb.f ], [ %.0.lcssa, %.preheader ] ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %.12042, i64 464 ; 2 uses
  %i.as = load ptr, ptr %i.ar, align 8            ; 2 uses
  %i.at = icmp ne ptr %i.as, null
  %i.au = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8 ; 2 uses
  %i.av = icmp ne ptr %i.au, null
  %or.cond.i29 = select i1 %i.at, i1 %i.av, i1 false
  br i1 %or.cond.i29, label %EVLOCK_TRY_LOCK_.exit32, label %EVLOCK_TRY_LOCK_.exit32.thread

EVLOCK_TRY_LOCK_.exit32:                          ; preds = %.lr.ph43
  %i.aw = tail call i32 %i.au(i32 noundef 16, ptr noundef nonnull %i.as) #9, !inline_history !10
  %.not.i31.not = icmp eq i32 %i.aw, 0
  br i1 %.not.i31.not, label %EVLOCK_TRY_LOCK_.exit32.thread, label %bb.f

EVLOCK_TRY_LOCK_.exit32.thread:                   ; preds = %.lr.ph43, %EVLOCK_TRY_LOCK_.exit32
  tail call void @bufferevent_unsuspend_write_(ptr noundef nonnull %.12042, i16 noundef zeroext 4) #9
  %i.ax = load ptr, ptr %i.ar, align 8            ; 2 uses
  %.not24 = icmp eq ptr %i.ax, null
  br i1 %.not24, label %bb.f, label %bb.e

bb.e:                                             ; preds = %EVLOCK_TRY_LOCK_.exit32.thread
  %i.ay = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.az = tail call i32 %i.ay(i32 noundef 0, ptr noundef nonnull %i.ax) #9 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %EVLOCK_TRY_LOCK_.exit32, %bb.e, %EVLOCK_TRY_LOCK_.exit32.thread
  %.3 = phi i8 [ %.241, %bb.e ], [ %.241, %EVLOCK_TRY_LOCK_.exit32.thread ], [ 1, %EVLOCK_TRY_LOCK_.exit32 ] ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.12042, i64 488
  %i.bb = load ptr, ptr %i.ba, align 8
  %.120 = load ptr, ptr %i.bb, align 8            ; 3 uses
  %i.bc = icmp ne ptr %.120, null
  %i.bd = icmp ne ptr %.120, %.08.i55
  %i.be = and i1 %i.bc, %i.bd
  br i1 %i.be, label %.lr.ph43, label %._crit_edge, !llvm.loop !18

._crit_edge:                                      ; preds = %bb.f, %.preheader
  %.2.lcssa = phi i8 [ %.0.lcssa, %.preheader ], [ %.3, %bb.f ]
  %i.bf = load i8, ptr %i.a, align 8
  %i.bg = shl nuw nsw i8 %.2.lcssa, 3
  %i.bh = and i8 %i.bf, -9
  %i.bi = or i8 %i.bh, %i.bg
  store i8 %i.bi, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @bufferevent_set_rate_limit(ptr noundef %0, ptr noundef %1) local_unnamed_addr #3 {
bb.a:
  %2 = alloca %struct.timeval, align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 464 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #9 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = icmp eq ptr %1, null
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.g = load ptr, ptr %i.f, align 8              ; 3 uses
  %.not58 = icmp eq ptr %i.g, null
  br i1 %.not58, label %bb.u, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr null, ptr %i.h, align 8
  tail call void @bufferevent_unsuspend_read_(ptr noundef nonnull %0, i16 noundef zeroext 2) #9
  tail call void @bufferevent_unsuspend_write_(ptr noundef nonnull %0, i16 noundef zeroext 2) #9
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56 ; 2 uses
  %i.j = tail call i32 @event_initialized(ptr noundef nonnull %i.i) #9
  %.not59 = icmp eq i32 %i.j, 0
  br i1 %.not59, label %bb.u, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @event_del(ptr noundef nonnull %i.i) #9 ; 0 uses
  br label %bb.u

bb.g:                                             ; preds = %bb.c
  %i.l = load ptr, ptr %0, align 8
  %i.m = call i32 @event_base_gettimeofday_cached(ptr noundef %i.l, ptr noundef nonnull %2) #9 ; 0 uses
  %i.n = load i64, ptr %2, align 8
  %i.o = mul i64 %i.n, 1000
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.q = load i64, ptr %i.p, align 8
  %i.r = sdiv i64 %i.q, 1000
  %i.s = add i64 %i.r, %i.o
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.u = load i32, ptr %i.t, align 8
  %i.v = zext i32 %i.u to i64
  %i.w = udiv i64 %i.s, %i.v
  %i.x = trunc i64 %i.w to i32
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 488 ; 2 uses
  %i.z = load ptr, ptr %i.y, align 8              ; 3 uses
  %.not55 = icmp eq ptr %i.z, null
  br i1 %.not55, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = icmp eq ptr %i.ab, %1
  br i1 %i.ac, label %bb.u, label %bb.k

bb.i:                                             ; preds = %bb.g
  %i.ad = call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef 184) #9 ; 4 uses
  %.not56 = icmp eq ptr %i.ad, null
  br i1 %.not56, label %bb.u, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %i.ad, ptr %i.y, align 8
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %.pre = load ptr, ptr %.phi.trans.insert, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.j
  %i.ae = phi ptr [ %.pre, %bb.j ], [ %i.ab, %bb.h ]
  %.046 = phi ptr [ %i.ad, %bb.j ], [ %i.z, %bb.h ] ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.046, i64 48
  %.not63 = icmp eq ptr %i.ae, null
  store ptr %1, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %.046, i64 24 ; 4 uses
  br i1 %.not63, label %ev_token_bucket_init_.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ah = load i64, ptr %i.ag, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aj = load i64, ptr %i.ai, align 8            ; 2 uses
  %i.ak = icmp sgt i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store i64 %i.aj, ptr %i.ag, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %.046, i64 32 ; 2 uses
  %i.am = load i64, ptr %i.al, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ao = load i64, ptr %i.an, align 8            ; 2 uses
  %i.ap = icmp sgt i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  store i64 %i.ao, ptr %i.al, align 8
  br label %bb.p

ev_token_bucket_init_.exit:                       ; preds = %bb.k
  %i.aq = load i64, ptr %1, align 8
  store i64 %i.aq, ptr %i.ag, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.046, i64 32
  store i64 %i.as, ptr %i.at, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.046, i64 40
  store i32 %i.x, ptr %i.au, align 8
  br label %bb.q

bb.p:                                             ; preds = %bb.n, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %.046, i64 56
  %i.aw = call i32 @event_del(ptr noundef nonnull %i.av) #9 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %ev_token_bucket_init_.exit, %bb.p
  %i.ax = getelementptr inbounds nuw i8, ptr %.046, i64 56 ; 2 uses
  %i.ay = load ptr, ptr %0, align 8
  %i.az = call i32 @event_assign(ptr noundef nonnull %i.ax, ptr noundef %i.ay, i32 noundef -1, i16 noundef signext 64, ptr noundef nonnull @bev_refill_callback_, ptr noundef nonnull %0) #9 ; 0 uses
  %i.ba = load i64, ptr %i.ag, align 8
  %i.bb = icmp sgt i64 %i.ba, 0
  %i.bc = getelementptr inbounds nuw i8, ptr %.046, i64 32 ; 2 uses
  br i1 %i.bb, label %bb.r, label %.thread61

bb.r:                                             ; preds = %bb.q
  call void @bufferevent_unsuspend_read_(ptr noundef nonnull %0, i16 noundef zeroext 2) #9
  %i.bd = load i64, ptr %i.bc, align 8
  %i.be = icmp sgt i64 %i.bd, 0
  br i1 %i.be, label %bb.s, label %.critedge

.thread61:                                        ; preds = %bb.q
  call void @bufferevent_suspend_read_(ptr noundef nonnull %0, i16 noundef zeroext 2) #9
  %i.bf = load i64, ptr %i.bc, align 8
  %i.bg = icmp sgt i64 %i.bf, 0
  br i1 %i.bg, label %.thread62, label %.critedge

.thread62:                                        ; preds = %.thread61
  call void @bufferevent_unsuspend_write_(ptr noundef nonnull %0, i16 noundef zeroext 2) #9
  br label %bb.t

end_hunk_0
