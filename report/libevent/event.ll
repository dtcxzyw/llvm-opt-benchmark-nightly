Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/event?download=true
begin_hunk_0_@evthread_make_base_notifiable:bb.a
  %.not10 = icmp eq ptr %i.b, null
  br i1 %.not10, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #25 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = tail call fastcc i32 @evthread_make_base_notifiable_nolock_(ptr noundef nonnull %0) ; 2 uses
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.f, null
  br i1 %.not11, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.h = tail call i32 %i.g(i32 noundef 0, ptr noundef nonnull %i.f) #25 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.0 = phi i32 [ -1, %bb.a ], [ %i.e, %bb.e ], [ %i.e, %bb.d ]
  ret i32 %.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef i32 @event_base_start_iocp_(ptr nofree noundef readnone captures(none) %0, i32 noundef %1) local_unnamed_addr #8 {
bb.a:
  ret i32 -1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define hidden void @event_base_stop_iocp_(ptr nofree noundef readnone captures(none) %0) local_unnamed_addr #8 {
bb.a:
  ret void
}

; Function Attrs: nounwind uwtable
define void @event_base_free_nofinalize(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @event_base_free_(ptr noundef %0, i32 noundef 0)
  ret void
}

; Function Attrs: nounwind uwtable
define internal fastcc void @event_base_free_(ptr noundef %0, i32 noundef range(i32 0, 2) %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = load ptr, ptr @event_global_current_base_, align 8 ; 2 uses
  %i.c = icmp ne ptr %i.b, null
  %or.cond = select i1 %i.a, i1 %i.c, i1 false
  %spec.select = select i1 %or.cond, ptr %i.b, ptr %0 ; 28 uses
  %i.d = icmp eq ptr %spec.select, null
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ...) @event_warnx(ptr noundef nonnull @.str.35, ptr noundef nonnull @__func__.event_base_free_) #25
  br label %event_mm_free_.exit121

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %spec.select, i64 500 ; 3 uses
  %i.f = load i32, ptr %i.e, align 4
  %.not = icmp eq i32 %i.f, -1
  br i1 %.not, label %bb.j, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %spec.select, i64 512 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %spec.select, i64 576
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 432 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.m = tail call i32 %i.l(i32 noundef 0, ptr noundef nonnull %i.k) #25, !inline_history !28 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.n = tail call i32 @event_del_nolock_(ptr noundef nonnull %i.g, i32 noundef 2) ; 0 uses
  %i.o = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not8.i.i = icmp eq ptr %i.o, null
  br i1 %.not8.i.i, label %event_del.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.q = tail call i32 %i.p(i32 noundef 0, ptr noundef nonnull %i.o) #25, !inline_history !28 ; 0 uses
  br label %event_del.exit

event_del.exit:                                   ; preds = %bb.f, %bb.g
  %i.r = load i32, ptr %i.e, align 4
  %i.s = tail call i32 @evutil_closesocket(i32 noundef %i.r) #25 ; 0 uses
  %i.t = getelementptr inbounds nuw i8, ptr %spec.select, i64 504 ; 2 uses
  %i.u = load i32, ptr %i.t, align 8              ; 2 uses
  %.not88 = icmp eq i32 %i.u, -1
  br i1 %.not88, label %bb.i, label %bb.h

bb.h:                                             ; preds = %event_del.exit
  %i.v = tail call i32 @evutil_closesocket(i32 noundef %i.u) #25 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %event_del.exit
  store i32 -1, ptr %i.e, align 4
  store i32 -1, ptr %i.t, align 8
  tail call void @event_debug_unassign(ptr noundef nonnull %i.g)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.c
  tail call void @evmap_delete_all_(ptr noundef nonnull %spec.select) #25
  %i.w = getelementptr inbounds nuw i8, ptr %spec.select, i64 328 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %spec.select, i64 336 ; 2 uses
  %i.y = load i32, ptr %i.x, align 8
  %.not.i229 = icmp eq i32 %i.y, 0
  br i1 %.not.i229, label %.preheader, label %min_heap_top_.exit

min_heap_top_.exit:                               ; preds = %bb.j, %event_del.exit102
  %.072230 = phi i32 [ %i.ap, %event_del.exit102 ], [ 0, %bb.j ] ; 2 uses
  %i.z = load ptr, ptr %i.w, align 8
  %i.aa = load ptr, ptr %i.z, align 8             ; 3 uses
  %.not89 = icmp eq ptr %i.aa, null
  br i1 %.not89, label %.preheader, label %bb.k

.preheader:                                       ; preds = %min_heap_top_.exit, %event_del.exit102, %bb.j
  %.072.lcssa = phi i32 [ 0, %bb.j ], [ %.072230, %min_heap_top_.exit ], [ %i.ap, %event_del.exit102 ] ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %spec.select, i64 288 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8
  %i.ad = icmp sgt i32 %i.ac, 0
  br i1 %i.ad, label %.lr.ph152, label %._crit_edge153

.lr.ph152:                                        ; preds = %.preheader
  %i.ae = getelementptr inbounds nuw i8, ptr %spec.select, i64 280
  br label %bb.o

bb.k:                                             ; preds = %min_heap_top_.exit
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 64
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 432 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not.i.i100 = icmp eq ptr %i.ai, null
  br i1 %.not.i.i100, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.ak = tail call i32 %i.aj(i32 noundef 0, ptr noundef nonnull %i.ai) #25, !inline_history !28 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.al = tail call i32 @event_del_nolock_(ptr noundef nonnull %i.aa, i32 noundef 2) ; 0 uses
  %i.am = load ptr, ptr %i.ah, align 8            ; 2 uses
  %.not8.i.i101 = icmp eq ptr %i.am, null
  br i1 %.not8.i.i101, label %event_del.exit102, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ao = tail call i32 %i.an(i32 noundef 0, ptr noundef nonnull %i.am) #25, !inline_history !28 ; 0 uses
  br label %event_del.exit102

event_del.exit102:                                ; preds = %bb.m, %bb.n
  %i.ap = add nuw nsw i32 %.072230, 1             ; 2 uses
  %i.aq = load i32, ptr %i.x, align 8
  %.not.i = icmp eq i32 %i.aq, 0
  br i1 %.not.i, label %.preheader, label %min_heap_top_.exit, !llvm.loop !29

bb.o:                                             ; preds = %.lr.ph152, %event_mm_free_.exit
  %indvars.iv = phi i64 [ 0, %.lr.ph152 ], [ %indvars.iv.next, %event_mm_free_.exit ] ; 2 uses
  %.173150 = phi i32 [ %.072.lcssa, %.lr.ph152 ], [ %.2.lcssa, %event_mm_free_.exit ] ; 2 uses
  %i.ar = load ptr, ptr %i.ae, align 8
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.ar, i64 %indvars.iv
  %i.at = load ptr, ptr %i.as, align 8            ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 32 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 96
  %i.aw = load ptr, ptr %i.av, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aw, i64 432 ; 2 uses
  %i.ay = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not.i.i103 = icmp eq ptr %i.ay, null
  br i1 %.not.i.i103, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.ba = tail call i32 %i.az(i32 noundef 0, ptr noundef nonnull %i.ay) #25, !inline_history !28 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.bb = tail call i32 @event_del_nolock_(ptr noundef nonnull %i.au, i32 noundef 2) ; 0 uses
  %i.bc = load ptr, ptr %i.ax, align 8            ; 2 uses
  %.not8.i.i104 = icmp eq ptr %i.bc, null
  br i1 %.not8.i.i104, label %event_del.exit105, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.be = tail call i32 %i.bd(i32 noundef 0, ptr noundef nonnull %i.bc) #25, !inline_history !28 ; 0 uses
  br label %event_del.exit105

event_del.exit105:                                ; preds = %bb.q, %bb.r
  tail call void @event_debug_unassign(ptr noundef nonnull %i.au)
  %i.bf = load ptr, ptr %i.at, align 8            ; 2 uses
  %.not98147 = icmp eq ptr %i.bf, null
  br i1 %.not98147, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %event_del.exit105, %bb.w
  %.2149 = phi i32 [ %.3, %bb.w ], [ %.173150, %event_del.exit105 ] ; 2 uses
  %.074148 = phi ptr [ %i.bh, %bb.w ], [ %i.bf, %event_del.exit105 ] ; 4 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %.074148, i64 40
  %i.bh = load ptr, ptr %i.bg, align 8            ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.074148, i64 16
  %i.bj = load i16, ptr %i.bi, align 8
  %i.bk = and i16 %i.bj, 16
  %.not99 = icmp eq i16 %i.bk, 0
  br i1 %.not99, label %bb.s, label %bb.w

bb.s:                                             ; preds = %.lr.ph
  %i.bl = getelementptr inbounds nuw i8, ptr %.074148, i64 64
  %i.bm = load ptr, ptr %i.bl, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 432 ; 2 uses
  %i.bo = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not.i.i106 = icmp eq ptr %i.bo, null
  br i1 %.not.i.i106, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bp = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.bq = tail call i32 %i.bp(i32 noundef 0, ptr noundef nonnull %i.bo) #25, !inline_history !28 ; 0 uses
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  %i.br = tail call i32 @event_del_nolock_(ptr noundef nonnull %.074148, i32 noundef 2) ; 0 uses
  %i.bs = load ptr, ptr %i.bn, align 8            ; 2 uses
  %.not8.i.i107 = icmp eq ptr %i.bs, null
  br i1 %.not8.i.i107, label %event_del.exit108, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.bu = tail call i32 %i.bt(i32 noundef 0, ptr noundef nonnull %i.bs) #25, !inline_history !28 ; 0 uses
  br label %event_del.exit108

event_del.exit108:                                ; preds = %bb.u, %bb.v
  %i.bv = add nsw i32 %.2149, 1
  br label %bb.w

bb.w:                                             ; preds = %event_del.exit108, %.lr.ph
  %.3 = phi i32 [ %.2149, %.lr.ph ], [ %i.bv, %event_del.exit108 ] ; 2 uses
  %.not98 = icmp eq ptr %i.bh, null
  br i1 %.not98, label %._crit_edge, label %.lr.ph, !llvm.loop !30

._crit_edge:                                      ; preds = %bb.w, %event_del.exit105
  %.2.lcssa = phi i32 [ %.173150, %event_del.exit105 ], [ %.3, %bb.w ] ; 2 uses
  %i.bw = load ptr, ptr @mm_free_fn_, align 8     ; 2 uses
  %.not.i109 = icmp eq ptr %i.bw, null
  br i1 %.not.i109, label %bb.y, label %bb.x

bb.x:                                             ; preds = %._crit_edge
  tail call void %i.bw(ptr noundef nonnull %i.at) #25, !inline_history !8
  br label %event_mm_free_.exit

bb.y:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %i.at) #25
  br label %event_mm_free_.exit

event_mm_free_.exit:                              ; preds = %bb.x, %bb.y
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.bx = load i32, ptr %i.ab, align 8
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp slt i64 %indvars.iv.next, %i.by
  br i1 %i.bz, label %bb.o, label %._crit_edge153, !llvm.loop !31

._crit_edge153:                                   ; preds = %event_mm_free_.exit, %.preheader
  %.173.lcssa = phi i32 [ %.072.lcssa, %.preheader ], [ %.2.lcssa, %event_mm_free_.exit ]
  %i.ca = getelementptr inbounds nuw i8, ptr %spec.select, i64 280
  %i.cb = load ptr, ptr %i.ca, align 8            ; 3 uses
  %.not90 = icmp eq ptr %i.cb, null
  br i1 %.not90, label %event_mm_free_.exit111, label %bb.z

bb.z:                                             ; preds = %._crit_edge153
  %i.cc = load ptr, ptr @mm_free_fn_, align 8     ; 2 uses
  %.not.i110 = icmp eq ptr %i.cc, null
  br i1 %.not.i110, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  tail call void %i.cc(ptr noundef nonnull %i.cb) #25, !inline_history !8
  br label %event_mm_free_.exit111

bb.ab:                                            ; preds = %bb.z
  tail call void @free(ptr noundef nonnull %i.cb) #25
  br label %event_mm_free_.exit111

event_mm_free_.exit111:                           ; preds = %bb.ab, %bb.aa, %._crit_edge153
  %i.cd = getelementptr inbounds nuw i8, ptr %spec.select, i64 256 ; 2 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %spec.select, i64 248 ; 6 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %spec.select, i64 432 ; 7 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %spec.select, i64 208 ; 12 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %spec.select, i64 216 ; 12 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %spec.select, i64 272 ; 3 uses
  %.not27.i.i = icmp eq i32 %1, 0                 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %spec.select, i64 264 ; 3 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ch, %event_mm_free_.exit111
  %.4 = phi i32 [ %.173.lcssa, %event_mm_free_.exit111 ], [ %i.kn, %bb.ch ]
  %i.ck = load i32, ptr %i.cd, align 8            ; 2 uses
  %i.cl = icmp sgt i32 %i.ck, 0
  br i1 %i.cl, label %.lr.ph47.i, label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %bb.ac
  %.0.lcssa.i = phi i32 [ 0, %bb.ac ], [ %.1.lcssa.i, %._crit_edge.i ] ; 3 uses
  %i.cm = load ptr, ptr %i.cj, align 8            ; 3 uses
  %.not49.i = icmp eq ptr %i.cm, null
  br i1 %.not49.i, label %event_base_free_queues_.exit, label %.lr.ph51.i

.lr.ph51.i:                                       ; preds = %.preheader.i
  br i1 %.not27.i.i, label %.lr.ph51.split.us.i, label %.lr.ph51.split.i

.lr.ph51.split.us.i:                              ; preds = %.lr.ph51.i, %event_del_.exit.i23.us.i
  %i.cn = phi ptr [ %i.er, %event_del_.exit.i23.us.i ], [ %i.cm, %.lr.ph51.i ] ; 11 uses
  %.250.us.i = phi i32 [ %i.eq, %event_del_.exit.i23.us.i ], [ %.0.lcssa.i, %.lr.ph51.i ]
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 6 uses
  %i.cp = load i16, ptr %i.co, align 8            ; 3 uses
  %i.cq = and i16 %i.cp, 128
  %.not.i21.us.i = icmp eq i16 %i.cq, 0
  br i1 %.not.i21.us.i, label %bb.ah, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph51.split.us.i
  %i.cr = and i16 %i.cp, 16
  %.not26.i22.us.i = icmp eq i16 %i.cr, 0
  br i1 %.not26.i22.us.i, label %bb.ae, label %event_del_.exit.i23.us.i

bb.ae:                                            ; preds = %bb.ad
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 64
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 432 ; 2 uses
  %i.cv = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not.i.i28.us.i = icmp eq ptr %i.cv, null
  br i1 %.not.i.i28.us.i, label %bb.ag, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.cx = tail call i32 %i.cw(i32 noundef 0, ptr noundef nonnull %i.cv) #25, !inline_history !32 ; 0 uses
  br label %bb.ag

bb.ag:                                            ; preds = %bb.af, %bb.ae
  %i.cy = tail call i32 @event_del_nolock_(ptr noundef nonnull %i.cn, i32 noundef 3) ; 0 uses
  %i.cz = load ptr, ptr %i.cu, align 8            ; 2 uses
  %.not8.i.i29.us.i = icmp eq ptr %i.cz, null
  br i1 %.not8.i.i29.us.i, label %event_del_.exit.i23.us.i, label %event_del_.exit.sink.split.i30.us.i

bb.ah:                                            ; preds = %.lr.ph51.split.us.i
  %i.da = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not24.i32.us.i = icmp eq ptr %i.da, null
  br i1 %.not24.i32.us.i, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.db = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.dc = tail call i32 %i.db(i32 noundef 0, ptr noundef nonnull %i.da) #25, !inline_history !33 ; 0 uses
  %.pre164 = load i16, ptr %i.co, align 8
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah
  %i.dd = phi i16 [ %.pre164, %bb.ai ], [ %i.cp, %bb.ah ] ; 4 uses
  %i.de = and i16 %i.dd, 128
  %.not.i125 = icmp eq i16 %i.de, 0
  br i1 %.not.i125, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.df = tail call i32 @event_del_nolock_(ptr noundef nonnull %i.cn, i32 noundef 3) ; 0 uses
  br label %event_callback_cancel_nolock_.exit136

bb.al:                                            ; preds = %bb.aj
  %i.dg = lshr i16 %i.dd, 3
  %i.dh = and i16 %i.dg, 5
  switch i16 %i.dh, label %.unreachabledefault.i135 [
    i16 5, label %event_callback_cancel_nolock_.exit136
    i16 1, label %bb.am
    i16 4, label %bb.ao
    i16 0, label %event_callback_cancel_nolock_.exit136
  ]

.unreachabledefault.i135:                         ; preds = %bb.al
  unreachable

bb.am:                                            ; preds = %bb.al
  %i.di = lshr i16 %i.dd, 4
  %i.dj = and i16 %i.di, 1
  %sext.i.i130 = add nsw i16 %i.dj, -1
  %.neg.i.i131 = sext i16 %sext.i.i130 to i32
  %i.dk = load i32, ptr %i.cg, align 8
  %i.dl = add i32 %i.dk, %.neg.i.i131
  store i32 %i.dl, ptr %i.cg, align 8
  %i.dm = load i16, ptr %i.co, align 8
  %i.dn = and i16 %i.dm, -9
  store i16 %i.dn, ptr %i.co, align 8
  %i.do = load i32, ptr %i.ch, align 8
  %i.dp = add nsw i32 %i.do, -1
  store i32 %i.dp, ptr %i.ch, align 8
  %i.dq = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not.i.i132 = icmp eq ptr %i.dq, null
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  br i1 %.not.i.i132, label %bb.an, label %event_queue_remove_active.exit.i133

bb.an:                                            ; preds = %bb.am
  %i.dt = load ptr, ptr %i.ce, align 8
  %i.du = getelementptr inbounds nuw i8, ptr %i.cn, i64 18
  %i.dv = load i8, ptr %i.du, align 2
  %i.dw = zext i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw [16 x i8], ptr %i.dt, i64 %i.dw
  br label %event_queue_remove_active.exit.i133

event_queue_remove_active.exit.i133:              ; preds = %bb.an, %bb.am
  %.sink14.i.i134 = phi ptr [ %i.dx, %bb.an ], [ %i.dq, %bb.am ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.sink14.i.i134, i64 8
  store ptr %i.ds, ptr %i.dy, align 8
  %i.dz = load ptr, ptr %i.cn, align 8
  store ptr %i.dz, ptr %i.ds, align 8
  br label %event_callback_cancel_nolock_.exit136

bb.ao:                                            ; preds = %bb.al
  %i.ea = lshr i16 %i.dd, 4
  %i.eb = and i16 %i.ea, 1
  %sext.i11.i126 = add nsw i16 %i.eb, -1
  %.neg.i12.i127 = sext i16 %sext.i11.i126 to i32
  %i.ec = load i32, ptr %i.cg, align 8
  %i.ed = add i32 %i.ec, %.neg.i12.i127
  store i32 %i.ed, ptr %i.cg, align 8
  %i.ee = load i16, ptr %i.co, align 8
  %i.ef = and i16 %i.ee, -33
  store i16 %i.ef, ptr %i.co, align 8
  %i.eg = load i32, ptr %i.ch, align 8
  %i.eh = add nsw i32 %i.eg, -1
  store i32 %i.eh, ptr %i.ch, align 8
  %i.ei = load ptr, ptr %i.cn, align 8            ; 2 uses
  %.not.i13.i128 = icmp eq ptr %i.ei, null
  %i.ej = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ek = load ptr, ptr %i.ej, align 8            ; 3 uses
  br i1 %.not.i13.i128, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.el = getelementptr inbounds nuw i8, ptr %i.ei, i64 8
  store ptr %i.ek, ptr %i.el, align 8
  br label %event_queue_remove_active_later.exit.i129

bb.aq:                                            ; preds = %bb.ao
  store ptr %i.ek, ptr %i.ci, align 8
  br label %event_queue_remove_active_later.exit.i129

event_queue_remove_active_later.exit.i129:        ; preds = %bb.aq, %bb.ap
  %i.em = load ptr, ptr %i.cn, align 8
  store ptr %i.em, ptr %i.ek, align 8
  br label %event_callback_cancel_nolock_.exit136

event_callback_cancel_nolock_.exit136:            ; preds = %bb.ak, %bb.al, %bb.al, %event_queue_remove_active.exit.i133, %event_queue_remove_active_later.exit.i129
  %i.en = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not25.i33.us.i = icmp eq ptr %i.en, null
  br i1 %.not25.i33.us.i, label %event_del_.exit.i23.us.i, label %event_del_.exit.sink.split.i30.us.i

event_del_.exit.sink.split.i30.us.i:              ; preds = %event_callback_cancel_nolock_.exit136, %bb.ag
  %.sink.i31.us.i = phi ptr [ %i.cz, %bb.ag ], [ %i.en, %event_callback_cancel_nolock_.exit136 ]
  %i.eo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ep = tail call i32 %i.eo(i32 noundef 0, ptr noundef nonnull %.sink.i31.us.i) #25, !inline_history !33 ; 0 uses
  br label %event_del_.exit.i23.us.i

event_del_.exit.i23.us.i:                         ; preds = %event_del_.exit.sink.split.i30.us.i, %event_callback_cancel_nolock_.exit136, %bb.ag, %bb.ad
  %.1.i24.us.i = phi i32 [ 1, %event_callback_cancel_nolock_.exit136 ], [ 0, %bb.ad ], [ 1, %bb.ag ], [ 1, %event_del_.exit.sink.split.i30.us.i ]
  %i.eq = add nsw i32 %.1.i24.us.i, %.250.us.i    ; 2 uses
  %i.er = load ptr, ptr %i.cj, align 8            ; 2 uses
  %.not.us.i = icmp eq ptr %i.er, null
  br i1 %.not.us.i, label %event_base_free_queues_.exit, label %.lr.ph51.split.us.i, !llvm.loop !34

.lr.ph47.i:                                       ; preds = %bb.ac, %._crit_edge.i
  %i.es = phi i32 [ %i.hp, %._crit_edge.i ], [ %i.ck, %bb.ac ]
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %._crit_edge.i ], [ 0, %bb.ac ] ; 2 uses
  %.045.i = phi i32 [ %.1.lcssa.i, %._crit_edge.i ], [ 0, %bb.ac ] ; 2 uses
  %i.et = load ptr, ptr %i.ce, align 8
  %i.eu = getelementptr inbounds nuw [16 x i8], ptr %i.et, i64 %indvars.iv.i
  %i.ev = load ptr, ptr %i.eu, align 8            ; 2 uses
  %.not2039.i = icmp eq ptr %i.ev, null
  br i1 %.not2039.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph47.i, %event_base_cancel_single_callback_.exit.i
  %.143.i = phi i32 [ %i.ho, %event_base_cancel_single_callback_.exit.i ], [ %.045.i, %.lr.ph47.i ]
  %.01840.i = phi ptr [ %i.ew, %event_base_cancel_single_callback_.exit.i ], [ %i.ev, %.lr.ph47.i ] ; 21 uses
  %i.ew = load ptr, ptr %.01840.i, align 8        ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %.01840.i, i64 16 ; 7 uses
  %i.ey = load i16, ptr %i.ex, align 8            ; 3 uses
  %i.ez = and i16 %i.ey, 128
  %.not.i.i113 = icmp eq i16 %i.ez, 0
  br i1 %.not.i.i113, label %bb.av, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i
  %i.fa = and i16 %i.ey, 16
  %.not26.i.i = icmp eq i16 %i.fa, 0
  br i1 %.not26.i.i, label %bb.as, label %event_del_.exit.i.i

bb.as:                                            ; preds = %bb.ar
  %i.fb = getelementptr inbounds nuw i8, ptr %.01840.i, i64 64
  %i.fc = load ptr, ptr %i.fb, align 8
  %i.fd = getelementptr inbounds nuw i8, ptr %i.fc, i64 432 ; 2 uses
  %i.fe = load ptr, ptr %i.fd, align 8            ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.fe, null
  br i1 %.not.i.i.i, label %bb.au, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ff = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.fg = tail call i32 %i.ff(i32 noundef 0, ptr noundef nonnull %i.fe) #25, !inline_history !32 ; 0 uses
  br label %bb.au

bb.au:                                            ; preds = %bb.at, %bb.as
  %i.fh = tail call i32 @event_del_nolock_(ptr noundef nonnull %.01840.i, i32 noundef 3) ; 0 uses
  %i.fi = load ptr, ptr %i.fd, align 8            ; 2 uses
  %.not8.i.i.i = icmp eq ptr %i.fi, null
  br i1 %.not8.i.i.i, label %event_del_.exit.i.i, label %event_del_.exit.sink.split.i.i

bb.av:                                            ; preds = %.lr.ph.i
  %i.fj = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not24.i.i = icmp eq ptr %i.fj, null
  br i1 %.not24.i.i, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fk = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.fl = tail call i32 %i.fk(i32 noundef 0, ptr noundef nonnull %i.fj) #25, !inline_history !33 ; 0 uses
  %.pre.i = load i16, ptr %i.ex, align 8
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.fm = phi i16 [ %.pre.i, %bb.aw ], [ %i.ey, %bb.av ] ; 4 uses
  %i.fn = and i16 %i.fm, 128
  %.not.i35.i = icmp eq i16 %i.fn, 0
  br i1 %.not.i35.i, label %bb.az, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fo = tail call i32 @event_del_nolock_(ptr noundef nonnull %.01840.i, i32 noundef 3) ; 0 uses
  br label %event_callback_cancel_nolock_.exit.i

bb.az:                                            ; preds = %bb.ax
  %i.fp = lshr i16 %i.fm, 3
  %i.fq = and i16 %i.fp, 5
  switch i16 %i.fq, label %.unreachabledefault.i.i [
    i16 5, label %event_callback_cancel_nolock_.exit.i
    i16 1, label %bb.ba
    i16 4, label %bb.bc
    i16 0, label %event_callback_cancel_nolock_.exit.i
  ]

.unreachabledefault.i.i:                          ; preds = %bb.az
  unreachable

bb.ba:                                            ; preds = %bb.az
  %i.fr = lshr i16 %i.fm, 4
  %i.fs = and i16 %i.fr, 1
  %sext.i.i.i = add nsw i16 %i.fs, -1
  %.neg.i.i.i = sext i16 %sext.i.i.i to i32
  %i.ft = load i32, ptr %i.cg, align 8
  %i.fu = add i32 %i.ft, %.neg.i.i.i
  store i32 %i.fu, ptr %i.cg, align 8
  %i.fv = load i16, ptr %i.ex, align 8
  %i.fw = and i16 %i.fv, -9
  store i16 %i.fw, ptr %i.ex, align 8
  %i.fx = load i32, ptr %i.ch, align 8
  %i.fy = add nsw i32 %i.fx, -1
  store i32 %i.fy, ptr %i.ch, align 8
  %i.fz = load ptr, ptr %.01840.i, align 8        ; 2 uses
  %.not.i.i36.i = icmp eq ptr %i.fz, null
  %i.ga = getelementptr inbounds nuw i8, ptr %.01840.i, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8            ; 2 uses
  br i1 %.not.i.i36.i, label %bb.bb, label %event_queue_remove_active.exit.i.i

bb.bb:                                            ; preds = %bb.ba
  %i.gc = load ptr, ptr %i.ce, align 8
  %i.gd = getelementptr inbounds nuw i8, ptr %.01840.i, i64 18
  %i.ge = load i8, ptr %i.gd, align 2
  %i.gf = zext i8 %i.ge to i64
  %i.gg = getelementptr inbounds nuw [16 x i8], ptr %i.gc, i64 %i.gf
  br label %event_queue_remove_active.exit.i.i

event_queue_remove_active.exit.i.i:               ; preds = %bb.bb, %bb.ba
  %.sink14.i.i.i = phi ptr [ %i.gg, %bb.bb ], [ %i.fz, %bb.ba ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.sink14.i.i.i, i64 8
  store ptr %i.gb, ptr %i.gh, align 8
  %i.gi = load ptr, ptr %.01840.i, align 8
  store ptr %i.gi, ptr %i.gb, align 8
  br label %event_callback_cancel_nolock_.exit.i

bb.bc:                                            ; preds = %bb.az
  %i.gj = lshr i16 %i.fm, 4
  %i.gk = and i16 %i.gj, 1
  %sext.i11.i.i = add nsw i16 %i.gk, -1
  %.neg.i12.i.i = sext i16 %sext.i11.i.i to i32
  %i.gl = load i32, ptr %i.cg, align 8
  %i.gm = add i32 %i.gl, %.neg.i12.i.i
  store i32 %i.gm, ptr %i.cg, align 8
  %i.gn = load i16, ptr %i.ex, align 8
  %i.go = and i16 %i.gn, -33
  store i16 %i.go, ptr %i.ex, align 8
  %i.gp = load i32, ptr %i.ch, align 8
  %i.gq = add nsw i32 %i.gp, -1
  store i32 %i.gq, ptr %i.ch, align 8
  %i.gr = load ptr, ptr %.01840.i, align 8        ; 2 uses
  %.not.i13.i.i = icmp eq ptr %i.gr, null
  %i.gs = getelementptr inbounds nuw i8, ptr %.01840.i, i64 8
  %i.gt = load ptr, ptr %i.gs, align 8            ; 3 uses
  br i1 %.not.i13.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.gu = getelementptr inbounds nuw i8, ptr %i.gr, i64 8
  store ptr %i.gt, ptr %i.gu, align 8
  br label %event_queue_remove_active_later.exit.i.i

bb.be:                                            ; preds = %bb.bc
  store ptr %i.gt, ptr %i.ci, align 8
  br label %event_queue_remove_active_later.exit.i.i

event_queue_remove_active_later.exit.i.i:         ; preds = %bb.be, %bb.bd
  %i.gv = load ptr, ptr %.01840.i, align 8
  store ptr %i.gv, ptr %i.gt, align 8
  br label %event_callback_cancel_nolock_.exit.i

event_callback_cancel_nolock_.exit.i:             ; preds = %event_queue_remove_active_later.exit.i.i, %event_queue_remove_active.exit.i.i, %bb.az, %bb.az, %bb.ay
  %i.gw = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not25.i.i = icmp eq ptr %i.gw, null
  br i1 %.not25.i.i, label %event_del_.exit.i.i, label %event_del_.exit.sink.split.i.i

event_del_.exit.sink.split.i.i:                   ; preds = %event_callback_cancel_nolock_.exit.i, %bb.au
  %.sink.i.i = phi ptr [ %i.fi, %bb.au ], [ %i.gw, %event_callback_cancel_nolock_.exit.i ]
  %i.gx = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.gy = tail call i32 %i.gx(i32 noundef 0, ptr noundef nonnull %.sink.i.i) #25, !inline_history !33 ; 0 uses
  br label %event_del_.exit.i.i

event_del_.exit.i.i:                              ; preds = %event_del_.exit.sink.split.i.i, %event_callback_cancel_nolock_.exit.i, %bb.au, %bb.ar
  %.1.i.i = phi i32 [ 1, %event_callback_cancel_nolock_.exit.i ], [ 0, %bb.ar ], [ 1, %bb.au ], [ 1, %event_del_.exit.sink.split.i.i ]
  br i1 %.not27.i.i, label %event_base_cancel_single_callback_.exit.i, label %bb.bf

bb.bf:                                            ; preds = %event_del_.exit.i.i
  %i.gz = load i16, ptr %i.ex, align 8
  %i.ha = and i16 %i.gz, 64
  %.not28.i.i = icmp eq i16 %i.ha, 0
  br i1 %.not28.i.i, label %event_base_cancel_single_callback_.exit.i, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.hb = getelementptr inbounds nuw i8, ptr %.01840.i, i64 19 ; 2 uses
  %i.hc = load i8, ptr %i.hb, align 1
  switch i8 %i.hc, label %event_base_cancel_single_callback_.exit.i [
    i8 5, label %bb.bh
    i8 6, label %bb.bh
    i8 4, label %bb.bl
  ]

bb.bh:                                            ; preds = %bb.bg, %bb.bg
  %i.hd = getelementptr inbounds nuw i8, ptr %.01840.i, i64 24
  %i.he = load ptr, ptr %i.hd, align 8
  %i.hf = getelementptr inbounds nuw i8, ptr %.01840.i, i64 32
  %i.hg = load ptr, ptr %i.hf, align 8
  tail call void %i.he(ptr noundef nonnull %.01840.i, ptr noundef %i.hg) #25, !inline_history !33
  %i.hh = load i8, ptr %i.hb, align 1
  %i.hi = icmp eq i8 %i.hh, 6
  br i1 %i.hi, label %bb.bi, label %event_base_cancel_single_callback_.exit.i

bb.bi:                                            ; preds = %bb.bh
  %i.hj = load ptr, ptr @mm_free_fn_, align 8     ; 2 uses
  %.not.i29.i.i = icmp eq ptr %i.hj, null
  br i1 %.not.i29.i.i, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  tail call void %i.hj(ptr noundef nonnull %.01840.i) #25, !inline_history !35
  br label %event_base_cancel_single_callback_.exit.i

bb.bk:                                            ; preds = %bb.bi
  tail call void @free(ptr noundef nonnull %.01840.i) #25
  br label %event_base_cancel_single_callback_.exit.i

bb.bl:                                            ; preds = %bb.bg
  %i.hk = getelementptr inbounds nuw i8, ptr %.01840.i, i64 24
  %i.hl = load ptr, ptr %i.hk, align 8
  %i.hm = getelementptr inbounds nuw i8, ptr %.01840.i, i64 32
  %i.hn = load ptr, ptr %i.hm, align 8
  tail call void %i.hl(ptr noundef nonnull %.01840.i, ptr noundef %i.hn) #25, !inline_history !33
  br label %event_base_cancel_single_callback_.exit.i

event_base_cancel_single_callback_.exit.i:        ; preds = %bb.bl, %bb.bk, %bb.bj, %bb.bh, %bb.bg, %bb.bf, %event_del_.exit.i.i
  %i.ho = add nsw i32 %.1.i.i, %.143.i            ; 2 uses
  %.not20.i = icmp eq ptr %i.ew, null
  br i1 %.not20.i, label %._crit_edge.loopexit.i, label %.lr.ph.i, !llvm.loop !36

._crit_edge.loopexit.i:                           ; preds = %event_base_cancel_single_callback_.exit.i
  %.pre58.i = load i32, ptr %i.cd, align 8
  br label %._crit_edge.i

._crit_edge.i:                                    ; preds = %._crit_edge.loopexit.i, %.lr.ph47.i
  %i.hp = phi i32 [ %i.es, %.lr.ph47.i ], [ %.pre58.i, %._crit_edge.loopexit.i ] ; 2 uses
  %.1.lcssa.i = phi i32 [ %.045.i, %.lr.ph47.i ], [ %i.ho, %._crit_edge.loopexit.i ] ; 2 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.hq = sext i32 %i.hp to i64
  %i.hr = icmp slt i64 %indvars.iv.next.i, %i.hq
  br i1 %i.hr, label %.lr.ph47.i, label %.preheader.i, !llvm.loop !37

.lr.ph51.split.i:                                 ; preds = %.lr.ph51.i, %event_base_cancel_single_callback_.exit34.i
  %i.hs = phi ptr [ %i.kl, %event_base_cancel_single_callback_.exit34.i ], [ %i.cm, %.lr.ph51.i ] ; 20 uses
  %.250.i = phi i32 [ %i.kk, %event_base_cancel_single_callback_.exit34.i ], [ %.0.lcssa.i, %.lr.ph51.i ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.hs, i64 16 ; 7 uses
  %i.hu = load i16, ptr %i.ht, align 8            ; 3 uses
  %i.hv = and i16 %i.hu, 128
  %.not.i21.i = icmp eq i16 %i.hv, 0
  br i1 %.not.i21.i, label %bb.bq, label %bb.bm

bb.bm:                                            ; preds = %.lr.ph51.split.i
  %i.hw = and i16 %i.hu, 16
  %.not26.i22.i = icmp eq i16 %i.hw, 0
  br i1 %.not26.i22.i, label %bb.bn, label %event_del_.exit.i23.i

bb.bn:                                            ; preds = %bb.bm
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hs, i64 64
  %i.hy = load ptr, ptr %i.hx, align 8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 432 ; 2 uses
  %i.ia = load ptr, ptr %i.hz, align 8            ; 2 uses
  %.not.i.i28.i = icmp eq ptr %i.ia, null
  br i1 %.not.i.i28.i, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ib = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.ic = tail call i32 %i.ib(i32 noundef 0, ptr noundef nonnull %i.ia) #25, !inline_history !32 ; 0 uses
  br label %bb.bp

bb.bp:                                            ; preds = %bb.bo, %bb.bn
  %i.id = tail call i32 @event_del_nolock_(ptr noundef nonnull %i.hs, i32 noundef 3) ; 0 uses
  %i.ie = load ptr, ptr %i.hz, align 8            ; 2 uses
  %.not8.i.i29.i = icmp eq ptr %i.ie, null
  br i1 %.not8.i.i29.i, label %event_del_.exit.i23.i, label %event_del_.exit.sink.split.i30.i

bb.bq:                                            ; preds = %.lr.ph51.split.i
  %i.if = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not24.i32.i = icmp eq ptr %i.if, null
  br i1 %.not24.i32.i, label %bb.bs, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ig = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.ih = tail call i32 %i.ig(i32 noundef 0, ptr noundef nonnull %i.if) #25, !inline_history !33 ; 0 uses
  %.pre = load i16, ptr %i.ht, align 8
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %bb.bq
  %i.ii = phi i16 [ %.pre, %bb.br ], [ %i.hu, %bb.bq ] ; 4 uses
  %i.ij = and i16 %i.ii, 128
  %.not.i122 = icmp eq i16 %i.ij, 0
  br i1 %.not.i122, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ik = tail call i32 @event_del_nolock_(ptr noundef nonnull %i.hs, i32 noundef 3) ; 0 uses
  br label %event_callback_cancel_nolock_.exit

bb.bu:                                            ; preds = %bb.bs
  %i.il = lshr i16 %i.ii, 3
  %i.im = and i16 %i.il, 5
  switch i16 %i.im, label %.unreachabledefault.i [
    i16 5, label %event_callback_cancel_nolock_.exit
    i16 1, label %bb.bv
    i16 4, label %bb.bx
    i16 0, label %event_callback_cancel_nolock_.exit
  ]

.unreachabledefault.i:                            ; preds = %bb.bu
  unreachable

bb.bv:                                            ; preds = %bb.bu
  %i.in = lshr i16 %i.ii, 4
  %i.io = and i16 %i.in, 1
  %sext.i.i = add nsw i16 %i.io, -1
  %.neg.i.i = sext i16 %sext.i.i to i32
  %i.ip = load i32, ptr %i.cg, align 8
  %i.iq = add i32 %i.ip, %.neg.i.i
  store i32 %i.iq, ptr %i.cg, align 8
  %i.ir = load i16, ptr %i.ht, align 8
  %i.is = and i16 %i.ir, -9
  store i16 %i.is, ptr %i.ht, align 8
  %i.it = load i32, ptr %i.ch, align 8
  %i.iu = add nsw i32 %i.it, -1
  store i32 %i.iu, ptr %i.ch, align 8
  %i.iv = load ptr, ptr %i.hs, align 8            ; 2 uses
  %.not.i.i123 = icmp eq ptr %i.iv, null
  %i.iw = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.ix = load ptr, ptr %i.iw, align 8            ; 2 uses
  br i1 %.not.i.i123, label %bb.bw, label %event_queue_remove_active.exit.i

bb.bw:                                            ; preds = %bb.bv
  %i.iy = load ptr, ptr %i.ce, align 8
  %i.iz = getelementptr inbounds nuw i8, ptr %i.hs, i64 18
  %i.ja = load i8, ptr %i.iz, align 2
  %i.jb = zext i8 %i.ja to i64
  %i.jc = getelementptr inbounds nuw [16 x i8], ptr %i.iy, i64 %i.jb
  br label %event_queue_remove_active.exit.i

event_queue_remove_active.exit.i:                 ; preds = %bb.bw, %bb.bv
  %.sink14.i.i = phi ptr [ %i.jc, %bb.bw ], [ %i.iv, %bb.bv ]
  %i.jd = getelementptr inbounds nuw i8, ptr %.sink14.i.i, i64 8
  store ptr %i.ix, ptr %i.jd, align 8
  %i.je = load ptr, ptr %i.hs, align 8
  store ptr %i.je, ptr %i.ix, align 8
  br label %event_callback_cancel_nolock_.exit

bb.bx:                                            ; preds = %bb.bu
  %i.jf = lshr i16 %i.ii, 4
  %i.jg = and i16 %i.jf, 1
  %sext.i11.i = add nsw i16 %i.jg, -1
  %.neg.i12.i = sext i16 %sext.i11.i to i32
  %i.jh = load i32, ptr %i.cg, align 8
  %i.ji = add i32 %i.jh, %.neg.i12.i
  store i32 %i.ji, ptr %i.cg, align 8
  %i.jj = load i16, ptr %i.ht, align 8
  %i.jk = and i16 %i.jj, -33
  store i16 %i.jk, ptr %i.ht, align 8
  %i.jl = load i32, ptr %i.ch, align 8
  %i.jm = add nsw i32 %i.jl, -1
  store i32 %i.jm, ptr %i.ch, align 8
  %i.jn = load ptr, ptr %i.hs, align 8            ; 2 uses
  %.not.i13.i = icmp eq ptr %i.jn, null
  %i.jo = getelementptr inbounds nuw i8, ptr %i.hs, i64 8
  %i.jp = load ptr, ptr %i.jo, align 8            ; 3 uses
  br i1 %.not.i13.i, label %bb.bz, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jn, i64 8
  store ptr %i.jp, ptr %i.jq, align 8
  br label %event_queue_remove_active_later.exit.i

bb.bz:                                            ; preds = %bb.bx
  store ptr %i.jp, ptr %i.ci, align 8
  br label %event_queue_remove_active_later.exit.i

event_queue_remove_active_later.exit.i:           ; preds = %bb.bz, %bb.by
  %i.jr = load ptr, ptr %i.hs, align 8
  store ptr %i.jr, ptr %i.jp, align 8
  br label %event_callback_cancel_nolock_.exit

event_callback_cancel_nolock_.exit:               ; preds = %bb.bt, %bb.bu, %bb.bu, %event_queue_remove_active.exit.i, %event_queue_remove_active_later.exit.i
  %i.js = load ptr, ptr %i.cf, align 8            ; 2 uses
  %.not25.i33.i = icmp eq ptr %i.js, null
  br i1 %.not25.i33.i, label %event_del_.exit.i23.i, label %event_del_.exit.sink.split.i30.i

event_del_.exit.sink.split.i30.i:                 ; preds = %event_callback_cancel_nolock_.exit, %bb.bp
  %.sink.i31.i = phi ptr [ %i.ie, %bb.bp ], [ %i.js, %event_callback_cancel_nolock_.exit ]
  %i.jt = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ju = tail call i32 %i.jt(i32 noundef 0, ptr noundef nonnull %.sink.i31.i) #25, !inline_history !33 ; 0 uses
  br label %event_del_.exit.i23.i

event_del_.exit.i23.i:                            ; preds = %event_del_.exit.sink.split.i30.i, %event_callback_cancel_nolock_.exit, %bb.bp, %bb.bm
  %.1.i24.i = phi i32 [ 1, %event_callback_cancel_nolock_.exit ], [ 0, %bb.bm ], [ 1, %bb.bp ], [ 1, %event_del_.exit.sink.split.i30.i ]
  %i.jv = load i16, ptr %i.ht, align 8
  %i.jw = and i16 %i.jv, 64
  %.not28.i26.i = icmp eq i16 %i.jw, 0
  br i1 %.not28.i26.i, label %event_base_cancel_single_callback_.exit34.i, label %bb.ca

bb.ca:                                            ; preds = %event_del_.exit.i23.i
  %i.jx = getelementptr inbounds nuw i8, ptr %i.hs, i64 19 ; 2 uses
  %i.jy = load i8, ptr %i.jx, align 1
  switch i8 %i.jy, label %event_base_cancel_single_callback_.exit34.i [
    i8 5, label %bb.cb
    i8 6, label %bb.cb
    i8 4, label %bb.cf
  ]

bb.cb:                                            ; preds = %bb.ca, %bb.ca
  %i.jz = getelementptr inbounds nuw i8, ptr %i.hs, i64 24
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = getelementptr inbounds nuw i8, ptr %i.hs, i64 32
  %i.kc = load ptr, ptr %i.kb, align 8
  tail call void %i.ka(ptr noundef nonnull %i.hs, ptr noundef %i.kc) #25, !inline_history !33
  %i.kd = load i8, ptr %i.jx, align 1
  %i.ke = icmp eq i8 %i.kd, 6
  br i1 %i.ke, label %bb.cc, label %event_base_cancel_single_callback_.exit34.i

bb.cc:                                            ; preds = %bb.cb
  %i.kf = load ptr, ptr @mm_free_fn_, align 8     ; 2 uses
  %.not.i29.i27.i = icmp eq ptr %i.kf, null
  br i1 %.not.i29.i27.i, label %bb.ce, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  tail call void %i.kf(ptr noundef nonnull %i.hs) #25, !inline_history !35
  br label %event_base_cancel_single_callback_.exit34.i

bb.ce:                                            ; preds = %bb.cc
  tail call void @free(ptr noundef nonnull %i.hs) #25
end_hunk_0
begin_hunk_1_@event_add_nolock_:bb.a
  %i.t = sext i16 %i.s to i32
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.v = load i32, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.x = load i16, ptr %i.w, align 8
  %i.y = sext i16 %i.x to i32
  tail call void (i32, ptr, ...) @event_errx(i32 noundef -559030611, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.event_debug_assert_is_setup_, ptr noundef %0, i32 noundef %i.t, i32 noundef %i.v, i32 noundef %i.y) #28
  unreachable

event_debug_map_HT_FIND.exit.i:                   ; preds = %bb.g
  %i.z = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not9.i = icmp eq ptr %i.z, null
  br i1 %.not9.i, label %event_debug_assert_is_setup_.exit, label %bb.h

bb.h:                                             ; preds = %event_debug_map_HT_FIND.exit.i
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ab = tail call i32 %i.aa(i32 noundef 0, ptr noundef nonnull %i.z) #25, !inline_history !46 ; 0 uses
  br label %event_debug_assert_is_setup_.exit

event_debug_assert_is_setup_.exit:                ; preds = %bb.a, %event_debug_map_HT_FIND.exit.i, %bb.h
  %i.ac = load i32, ptr @event_debug_logging_mask_, align 4
  %.not = icmp eq i32 %i.ac, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %event_debug_assert_is_setup_.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ae = load i32, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ag = load i16, ptr %i.af, align 8            ; 3 uses
  %i.ah = and i16 %i.ag, 2
  %.not125 = icmp eq i16 %i.ah, 0
  %i.ai = select i1 %.not125, ptr @.str.22, ptr @.str.21
  %i.aj = and i16 %i.ag, 4
  %.not126 = icmp eq i16 %i.aj, 0
  %i.ak = select i1 %.not126, ptr @.str.22, ptr @.str.23
  %i.al = and i16 %i.ag, 128
  %.not127 = icmp eq i16 %i.al, 0
  %i.am = select i1 %.not127, ptr @.str.22, ptr @.str.24
  %.not128 = icmp eq ptr %1, null
  %i.an = select i1 %.not128, ptr @.str.22, ptr @.str.25
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8
  tail call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.20, ptr noundef %0, i32 noundef %i.ae, ptr noundef nonnull %i.ai, ptr noundef nonnull %i.ak, ptr noundef nonnull %i.am, ptr noundef nonnull %i.an, ptr noundef %i.ap) #25
  br label %bb.j

bb.j:                                             ; preds = %event_debug_assert_is_setup_.exit, %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 14 uses
  %i.ar = load i16, ptr %i.aq, align 8            ; 2 uses
  %i.as = and i16 %i.ar, 64
  %.not129 = icmp eq i16 %i.as, 0
  br i1 %.not129, label %bb.k, label %min_heap_reserve_.exit

bb.k:                                             ; preds = %bb.j
  %i.at = icmp ne ptr %1, null                    ; 2 uses
  %i.au = and i16 %i.ar, 1
  %.not130 = icmp eq i16 %i.au, 0
  %or.cond = and i1 %i.at, %.not130
  br i1 %or.cond, label %bb.l, label %min_heap_reserve_.exit.thread

bb.l:                                             ; preds = %bb.k
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.b, i64 336
  %.val153 = load i32, ptr %i.aw, align 8
  %i.ax = add i32 %.val153, 1                     ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.b, i64 340 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 4            ; 3 uses
  %i.ba = icmp ult i32 %i.az, %i.ax
  br i1 %i.ba, label %bb.m, label %min_heap_reserve_.exit.thread

bb.m:                                             ; preds = %bb.l
  %.not.i155 = icmp eq i32 %i.az, 0
  %i.bb = shl i32 %i.az, 1
  %spec.select.i = select i1 %.not.i155, i32 8, i32 %i.bb
  %.014.i = tail call i32 @llvm.umax.i32(i32 %spec.select.i, i32 %i.ax) ; 2 uses
  %i.bc = load ptr, ptr %i.av, align 8            ; 2 uses
  %i.bd = zext i32 %.014.i to i64
  %i.be = shl nuw nsw i64 %i.bd, 3                ; 2 uses
  %i.bf = load ptr, ptr @mm_realloc_fn_, align 8  ; 2 uses
  %.not.i.i = icmp eq ptr %i.bf, null
  br i1 %.not.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bg = tail call ptr %i.bf(ptr noundef %i.bc, i64 noundef %i.be) #25, !inline_history !47
  br label %event_mm_realloc_.exit.i

bb.o:                                             ; preds = %bb.m
  %i.bh = tail call ptr @realloc(ptr noundef %i.bc, i64 noundef %i.be) #27
  br label %event_mm_realloc_.exit.i

event_mm_realloc_.exit.i:                         ; preds = %bb.o, %bb.n
  %.0.i.i = phi ptr [ %i.bg, %bb.n ], [ %i.bh, %bb.o ] ; 2 uses
  %.not20.i = icmp eq ptr %.0.i.i, null
  br i1 %.not20.i, label %min_heap_reserve_.exit, label %.thread.i

.thread.i:                                        ; preds = %event_mm_realloc_.exit.i
  store ptr %.0.i.i, ptr %i.av, align 8
  store i32 %.014.i, ptr %i.ay, align 4
  br label %min_heap_reserve_.exit.thread

min_heap_reserve_.exit.thread:                    ; preds = %bb.l, %.thread.i, %bb.k
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 456
  %i.bj = load ptr, ptr %i.bi, align 8
  %i.bk = icmp eq ptr %i.bj, %0
  br i1 %i.bk, label %bb.p, label %bb.t

bb.p:                                             ; preds = %min_heap_reserve_.exit.thread
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bm = load i16, ptr %i.bl, align 8
  %i.bn = and i16 %i.bm, 8
  %i.bo = icmp eq i16 %i.bn, 0
  %i.bp = load ptr, ptr @evthread_id_fn_, align 8 ; 2 uses
  %i.bq = icmp eq ptr %i.bp, null
  %or.cond3 = select i1 %i.bo, i1 true, i1 %i.bq
  br i1 %or.cond3, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.bs = load i64, ptr %i.br, align 8
  %i.bt = tail call i64 %i.bp() #25
  %i.bu = icmp eq i64 %i.bs, %i.bt
  br i1 %i.bu, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 448 ; 2 uses
  %i.bw = load i32, ptr %i.bv, align 8
  %i.bx = add nsw i32 %i.bw, 1
  store i32 %i.bx, ptr %i.bv, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 440
  %i.bz = load ptr, ptr %i.by, align 8            ; 2 uses
  %.not131 = icmp eq ptr %i.bz, null
  br i1 %.not131, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ca = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_cond_fns_, i64 32), align 8
  %i.cb = load ptr, ptr %i.c, align 8
  %i.cc = tail call i32 %i.ca(ptr noundef nonnull %i.bz, ptr noundef %i.cb, ptr noundef null) #25 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q, %bb.p, %min_heap_reserve_.exit.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  %i.ce = load i16, ptr %i.cd, align 8            ; 3 uses
  %i.cf = and i16 %i.ce, 142
  %.not132 = icmp eq i16 %i.cf, 0
  br i1 %.not132, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.cg = load i16, ptr %i.aq, align 8            ; 2 uses
  %i.ch = and i16 %i.cg, 42
  %.not133 = icmp eq i16 %i.ch, 0
  br i1 %.not133, label %bb.v, label %bb.aa

bb.v:                                             ; preds = %bb.u
  %i.ci = and i16 %i.ce, 134
  %.not134 = icmp eq i16 %i.ci, 0
  br i1 %.not134, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ck = load i32, ptr %i.cj, align 8
  %i.cl = tail call i32 @evmap_io_add_(ptr noundef nonnull %i.b, i32 noundef %i.ck, ptr noundef nonnull %0) #25
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  %i.cm = and i16 %i.ce, 8
  %.not135 = icmp eq i16 %i.cm, 0
  br i1 %.not135, label %.thread, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.co = load i32, ptr %i.cn, align 8
  %i.cp = tail call i32 @evmap_signal_add_(ptr noundef nonnull %i.b, i32 noundef %i.co, ptr noundef nonnull %0) #25
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %.0113 = phi i32 [ %i.cl, %bb.w ], [ %i.cp, %bb.y ] ; 2 uses
  %cond = icmp eq i32 %.0113, -1
  br i1 %cond, label %evthread_notify_base.exit, label %..thread_crit_edge

..thread_crit_edge:                               ; preds = %bb.z
  %.pre = load i16, ptr %i.aq, align 8
  br label %.thread

.thread:                                          ; preds = %..thread_crit_edge, %bb.x
  %i.cq = phi i16 [ %.pre, %..thread_crit_edge ], [ %i.cg, %bb.x ]
  %.0113181 = phi i32 [ %.0113, %..thread_crit_edge ], [ 0, %bb.x ] ; 2 uses
  %i.cr = and i16 %i.cq, 16
  %.not.i156 = icmp eq i16 %i.cr, 0
  %i.cs = zext i1 %.not.i156 to i32
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.cu = load i32, ptr %i.ct, align 8
  %i.cv = add nsw i32 %i.cu, %i.cs                ; 2 uses
  store i32 %i.cv, ptr %i.ct, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 212 ; 2 uses
  %i.cx = load i32, ptr %i.cw, align 4
  %..i = tail call i32 @llvm.smax.i32(i32 %i.cx, i32 %i.cv)
  store i32 %..i, ptr %i.cw, align 4
  %i.cy = load i16, ptr %i.aq, align 8
  %i.cz = or i16 %i.cy, 2
  store i16 %i.cz, ptr %i.aq, align 8
  %i.da = icmp eq i32 %.0113181, 1                ; 2 uses
  %spec.select = zext i1 %i.da to i32
  %spec.select150 = select i1 %i.da, i32 0, i32 %.0113181
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.u, %bb.t
  %.0114 = phi i32 [ 0, %bb.u ], [ 0, %bb.t ], [ %spec.select, %.thread ] ; 7 uses
  %.1 = phi i32 [ 0, %bb.u ], [ 0, %bb.t ], [ %spec.select150, %.thread ] ; 6 uses
  br i1 %i.at, label %bb.ab, label %bb.cc

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.dc = load i8, ptr %i.db, align 1
  %i.dd = icmp ne i8 %i.dc, 2
  %i.de = icmp ne i32 %2, 0                       ; 3 uses
  %or.cond7 = or i1 %i.de, %i.dd
  br i1 %or.cond7, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.df, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  %i.dg = load i16, ptr %i.aq, align 8            ; 2 uses
  %i.dh = and i16 %i.dg, 1
  %.not137 = icmp eq i16 %i.dh, 0
  br i1 %.not137, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  tail call fastcc void @event_queue_remove_timeout(ptr noundef nonnull %i.b, ptr noundef nonnull %0)
  %.pre207 = load i16, ptr %i.aq, align 8
  br label %bb.af

bb.af:                                            ; preds = %bb.ae, %bb.ad
  %i.di = phi i16 [ %.pre207, %bb.ae ], [ %i.dg, %bb.ad ] ; 4 uses
  %i.dj = and i16 %i.di, 8
  %.not138 = icmp eq i16 %i.dj, 0
  br i1 %.not138, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.dl = load i16, ptr %i.dk, align 2
  %i.dm = and i16 %i.dl, 1
  %.not139 = icmp eq i16 %i.dm, 0
  br i1 %.not139, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.dn = load i16, ptr %i.cd, align 8
  %i.do = and i16 %i.dn, 8
  %.not140 = icmp eq i16 %i.do, 0
  br i1 %.not140, label %bb.al, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dq = load i16, ptr %i.dp, align 8
  %.not141 = icmp eq i16 %i.dq, 0
  br i1 %.not141, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ds = load ptr, ptr %i.dr, align 8            ; 2 uses
  %.not142 = icmp eq ptr %i.ds, null
  br i1 %.not142, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  store i16 0, ptr %i.ds, align 2
  %.pre208 = load i16, ptr %i.aq, align 8
  br label %bb.al

bb.al:                                            ; preds = %bb.ai, %bb.aj, %bb.ak, %bb.ah
  %i.dt = phi i16 [ %i.di, %bb.ai ], [ %i.di, %bb.aj ], [ %.pre208, %bb.ak ], [ %i.di, %bb.ah ]
  %i.du = lshr i16 %i.dt, 4
  %i.dv = and i16 %i.du, 1
  %sext.i = add nsw i16 %i.dv, -1
  %.neg.i = sext i16 %sext.i to i32
  %i.dw = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.dx = load i32, ptr %i.dw, align 8
  %i.dy = add i32 %i.dx, %.neg.i
  store i32 %i.dy, ptr %i.dw, align 8
  %i.dz = load i16, ptr %i.aq, align 8
  %i.ea = and i16 %i.dz, -9
  store i16 %i.ea, ptr %i.aq, align 8
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 216 ; 2 uses
  %i.ec = load i32, ptr %i.eb, align 8
  %i.ed = add nsw i32 %i.ec, -1
  store i32 %i.ed, ptr %i.eb, align 8
  %i.ee = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i157 = icmp eq ptr %i.ee, null
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.eg = load ptr, ptr %i.ef, align 8            ; 2 uses
  br i1 %.not.i157, label %bb.am, label %event_queue_remove_active.exit

bb.am:                                            ; preds = %bb.al
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 248
  %i.ei = load ptr, ptr %i.eh, align 8
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.ek = load i8, ptr %i.ej, align 2
  %i.el = zext i8 %i.ek to i64
  %i.em = getelementptr inbounds nuw [16 x i8], ptr %i.ei, i64 %i.el
  br label %event_queue_remove_active.exit

event_queue_remove_active.exit:                   ; preds = %bb.al, %bb.am
  %.sink14.i = phi ptr [ %i.em, %bb.am ], [ %i.ee, %bb.al ]
  %i.en = getelementptr inbounds nuw i8, ptr %.sink14.i, i64 8
  store ptr %i.eg, ptr %i.en, align 8
  %i.eo = load ptr, ptr %0, align 8
  store ptr %i.eo, ptr %i.eg, align 8
  br label %bb.an

bb.an:                                            ; preds = %event_queue_remove_active.exit, %bb.ag, %bb.af
  %i.ep = getelementptr inbounds nuw i8, ptr %i.b, i64 344 ; 2 uses
  %i.eq = load i64, ptr %i.ep, align 8
  %.not.i158 = icmp eq i64 %i.eq, 0
  br i1 %.not.i158, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %5, ptr noundef nonnull align 8 dereferenceable(16) %i.ep, i64 16, i1 false)
  br label %gettime.exit

bb.ap:                                            ; preds = %bb.an
  %i.er = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.es = call i32 @evutil_gettime_monotonic_(ptr noundef nonnull %i.er, ptr noundef nonnull %5) #25
  %i.et = icmp eq i32 %i.es, -1
  br i1 %i.et, label %gettime.exit, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  %i.eu = getelementptr inbounds nuw i8, ptr %i.b, i64 416 ; 2 uses
  %i.ev = load i64, ptr %i.eu, align 8
  %i.ew = add nsw i64 %i.ev, 5
  %i.ex = load i64, ptr %5, align 16
  %i.ey = icmp slt i64 %i.ew, %i.ex
  br i1 %i.ey, label %bb.ar, label %gettime.exit

bb.ar:                                            ; preds = %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %i.ez = call i32 @gettimeofday(ptr noundef nonnull %4, ptr noundef null) #25 ; 0 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.b, i64 400
  %i.fb = load <2 x i64>, ptr %4, align 16
  %i.fc = load <2 x i64>, ptr %5, align 16
  %i.fd = load i64, ptr %5, align 16
  %i.fe = sub nsw <2 x i64> %i.fb, %i.fc          ; 3 uses
  %i.ff = extractelement <2 x i64> %i.fe, i64 1
  %i.fg = icmp slt i64 %i.ff, 0
  %i.fh = add nsw <2 x i64> %i.fe, <i64 -1, i64 1000000>
  %storemerge = select i1 %i.fg, <2 x i64> %i.fh, <2 x i64> %i.fe
  store <2 x i64> %storemerge, ptr %i.fa, align 8
  store i64 %i.fd, ptr %i.eu, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  br label %gettime.exit

gettime.exit:                                     ; preds = %bb.ao, %bb.ap, %bb.aq, %bb.ar
  %i.fi = getelementptr i8, ptr %1, i64 8         ; 4 uses
  %.val = load i64, ptr %i.fi, align 8            ; 3 uses
  %i.fj = and i64 %.val, 4026531840
  %.not.i159 = icmp eq i64 %i.fj, 1342177280
  br i1 %.not.i159, label %is_common_timeout.exit, label %is_common_timeout.exit.thread

is_common_timeout.exit:                           ; preds = %gettime.exit
  %i.fk = trunc i64 %.val to i32
  %i.fl = lshr i32 %i.fk, 20
  %i.fm = and i32 %i.fl, 255
  %i.fn = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.fo = load i32, ptr %i.fn, align 8
  %i.fp = icmp sge i32 %i.fm, %i.fo               ; 2 uses
  br i1 %i.de, label %bb.as, label %bb.at

is_common_timeout.exit.thread:                    ; preds = %gettime.exit
  br i1 %i.de, label %bb.as, label %is_common_timeout.exit.thread..thread191_crit_edge

is_common_timeout.exit.thread..thread191_crit_edge: ; preds = %is_common_timeout.exit.thread
  %.pre209 = load i64, ptr %5, align 16
  br label %.thread191

bb.as:                                            ; preds = %is_common_timeout.exit.thread, %is_common_timeout.exit
  %.0.i160190 = phi i1 [ true, %is_common_timeout.exit.thread ], [ %i.fp, %is_common_timeout.exit ]
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fq, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.ay

bb.at:                                            ; preds = %is_common_timeout.exit
  %.pre210 = load i64, ptr %5, align 16           ; 2 uses
  br i1 %i.fp, label %.thread191, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %i.fr = and i64 %.val, 1048575
  %i.fs = add nsw i64 %.pre210, %.sroa.0.0.copyload ; 2 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i64 %i.fs, ptr %i.ft, align 8
  %i.fu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.fv = load i64, ptr %i.fu, align 8
  %i.fw = add nsw i64 %i.fv, %i.fr                ; 4 uses
  %i.fx = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i64 %i.fw, ptr %i.fx, align 8
  %i.fy = icmp sgt i64 %i.fw, 999999
  br i1 %i.fy, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fz = add nsw i64 %i.fs, 1
  store i64 %i.fz, ptr %i.ft, align 8
  %i.ga = add nsw i64 %i.fw, -1000000             ; 2 uses
  store i64 %i.ga, ptr %i.fx, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.gb = phi i64 [ %i.ga, %bb.av ], [ %i.fw, %bb.au ]
end_hunk_1
begin_hunk_2_@event_add_nolock_:bb.a
bb.bj:                                            ; preds = %bb.be, %bb.bd
  %i.ig = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 48
  %.pn.i.i = load ptr, ptr %i.ig, align 8
  %.0.in.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %.0.in.i.i = load ptr, ptr %.0.in.in.i.i, align 8
  %.0.i22.i = load ptr, ptr %.0.in.i.i, align 8   ; 2 uses
  %.not.i23.i = icmp eq ptr %.0.i22.i, null
  br i1 %.not.i23.i, label %._crit_edge.i.i, label %bb.bc, !llvm.loop !48

._crit_edge.i.i:                                  ; preds = %bb.bj, %bb.bb
  %i.ih = load ptr, ptr %i.hu, align 8            ; 3 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.ih, ptr %i.ii, align 8
  %.not32.i.i = icmp eq ptr %i.ih, null
  br i1 %.not32.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i.i
  %i.ij = getelementptr inbounds nuw i8, ptr %i.ih, i64 48
  store ptr %i.ii, ptr %i.ij, align 8
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i
  store ptr %i.ii, ptr %i.hv, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  store ptr %0, ptr %i.hu, align 8
  br label %insert_common_timeout_inorder.exit.i

insert_common_timeout_inorder.exit.i:             ; preds = %bb.bm, %bb.bi
  %.sink.i.i = phi ptr [ %i.hu, %bb.bm ], [ %i.ic, %bb.bi ]
  %i.ik = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink.i.i, ptr %i.ik, align 8
  br label %event_queue_insert_timeout.exit

is_common_timeout.exit.thread.i:                  ; preds = %is_common_timeout.exit.i, %bb.ba
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 4 uses
  %i.im = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 3 uses
  %i.in = load i32, ptr %i.im, align 8            ; 4 uses
  %i.io = icmp eq i32 %i.in, -1
  br i1 %i.io, label %event_queue_insert_timeout.exit, label %bb.bn

bb.bn:                                            ; preds = %is_common_timeout.exit.thread.i
  %i.ip = getelementptr inbounds nuw i8, ptr %i.b, i64 340 ; 2 uses
  %i.iq = load i32, ptr %i.ip, align 4            ; 3 uses
  %.not.i24.i = icmp ugt i32 %i.iq, %i.in
  br i1 %.not.i24.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ir = add nuw i32 %i.in, 1
  %.not.i.i.i164 = icmp eq i32 %i.iq, 0
  %i.is = shl i32 %i.iq, 1
  %spec.select.i.i.i = select i1 %.not.i.i.i164, i32 8, i32 %i.is
  %.014.i.i.i = call i32 @llvm.umax.i32(i32 %spec.select.i.i.i, i32 %i.ir) ; 2 uses
  %i.it = load ptr, ptr %i.il, align 8            ; 2 uses
  %i.iu = zext i32 %.014.i.i.i to i64
  %i.iv = shl nuw nsw i64 %i.iu, 3                ; 2 uses
  %i.iw = load ptr, ptr @mm_realloc_fn_, align 8  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.iw, null
  br i1 %.not.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.ix = call ptr %i.iw(ptr noundef %i.it, i64 noundef %i.iv) #25, !inline_history !49
  br label %event_mm_realloc_.exit.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.iy = call ptr @realloc(ptr noundef %i.it, i64 noundef %i.iv) #27
  br label %event_mm_realloc_.exit.i.i.i

event_mm_realloc_.exit.i.i.i:                     ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i = phi ptr [ %i.ix, %bb.bp ], [ %i.iy, %bb.bq ] ; 2 uses
  %.not20.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not20.i.i.i, label %event_queue_insert_timeout.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %event_mm_realloc_.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.il, align 8
  store i32 %.014.i.i.i, ptr %i.ip, align 4
  %.pre.i.i = load i32, ptr %i.im, align 8
  br label %bb.br

bb.br:                                            ; preds = %.thread.i.i.i, %bb.bn
  %i.iz = phi i32 [ %.pre.i.i, %.thread.i.i.i ], [ %i.in, %bb.bn ] ; 3 uses
  %i.ja = add i32 %i.iz, 1
  store i32 %i.ja, ptr %i.im, align 8
  %.not26.i.i.i = icmp eq i32 %i.iz, 0
  br i1 %.not26.i.i.i, label %min_heap_shift_up_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %bb.bt
  %.02127.i.i.i = phi i32 [ %.028.i.i.i, %bb.bt ], [ %i.iz, %bb.br ] ; 5 uses
  %.028.in.i.i.i = add i32 %.02127.i.i.i, -1
  %.028.i.i.i = lshr i32 %.028.in.i.i.i, 1        ; 3 uses
  %i.jb = load ptr, ptr %i.il, align 8            ; 2 uses
  %i.jc = zext nneg i32 %.028.i.i.i to i64
  %i.jd = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jc
  %i.je = load ptr, ptr %i.jd, align 8            ; 4 uses
  %i.jf = getelementptr inbounds nuw i8, ptr %i.je, i64 112
  %i.jg = load i64, ptr %i.jf, align 8            ; 2 uses
  %i.jh = load i64, ptr %i.hi, align 8            ; 2 uses
  %i.ji = icmp eq i64 %i.jg, %i.jh
  br i1 %i.ji, label %.split.i.i.i, label %bb.bs

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.jj = getelementptr inbounds nuw i8, ptr %i.je, i64 120
  %i.jk = load i64, ptr %i.jj, align 8
  %i.jl = load i64, ptr %i.hj, align 8
  %i.jm = icmp sgt i64 %i.jk, %i.jl
  br i1 %i.jm, label %bb.bt, label %min_heap_shift_up_.exit.i.i

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %i.jn = icmp sgt i64 %i.jg, %i.jh
  br i1 %i.jn, label %bb.bt, label %min_heap_shift_up_.exit.i.i

bb.bt:                                            ; preds = %bb.bs, %.split.i.i.i
  %i.jo = zext i32 %.02127.i.i.i to i64
  %i.jp = getelementptr inbounds nuw [8 x i8], ptr %i.jb, i64 %i.jo
  store ptr %i.je, ptr %i.jp, align 8
  %i.jq = getelementptr inbounds nuw i8, ptr %i.je, i64 40
  store i32 %.02127.i.i.i, ptr %i.jq, align 8
  %.not.i7.i.i = icmp eq i32 %.028.i.i.i, 0
  br i1 %.not.i7.i.i, label %min_heap_shift_up_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !50

min_heap_shift_up_.exit.i.i:                      ; preds = %bb.bt, %bb.bs, %.split.i.i.i, %bb.br
  %.021.lcssa.i.i.i = phi i32 [ 0, %bb.br ], [ %.02127.i.i.i, %bb.bs ], [ 0, %bb.bt ], [ %.02127.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.jr = load ptr, ptr %i.il, align 8
  %i.js = zext i32 %.021.lcssa.i.i.i to i64
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %i.jr, i64 %i.js
  store ptr %0, ptr %i.jt, align 8
  %i.ju = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.021.lcssa.i.i.i, ptr %i.ju, align 8
  br label %event_queue_insert_timeout.exit

event_queue_insert_timeout.exit:                  ; preds = %insert_common_timeout_inorder.exit.i, %is_common_timeout.exit.thread.i, %event_mm_realloc_.exit.i.i.i, %min_heap_shift_up_.exit.i.i
  br i1 %.0.i160188, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %event_queue_insert_timeout.exit
  %i.jv = getelementptr i8, ptr %i.b, i64 280
  %.val151 = load ptr, ptr %i.jv, align 8
  %.val152 = load i64, ptr %i.hj, align 8
  %i.jw = lshr i64 %.val152, 20
  %i.jx = and i64 %i.jw, 255
  %i.jy = getelementptr inbounds nuw [8 x i8], ptr %.val151, i64 %i.jx
  %i.jz = load ptr, ptr %i.jy, align 8            ; 2 uses
  %i.ka = load ptr, ptr %i.jz, align 8
  %i.kb = icmp eq ptr %0, %i.ka
  br i1 %i.kb, label %bb.bv, label %min_heap_top_.exit.thread

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, ptr noundef nonnull align 8 dereferenceable(16) %i.hi, i64 16, i1 false)
  %i.kc = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %i.kd = load i64, ptr %i.kc, align 8
  %i.ke = and i64 %i.kd, 1048575
  store i64 %i.ke, ptr %i.kc, align 8
  %i.kf = getelementptr inbounds nuw i8, ptr %i.jz, i64 32
  %i.kg = call i32 @event_add_nolock_(ptr noundef nonnull %i.kf, ptr noundef nonnull %3, i32 noundef 1), !inline_history !51 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  br label %min_heap_top_.exit.thread

bb.bw:                                            ; preds = %event_queue_insert_timeout.exit
  %i.kh = getelementptr i8, ptr %0, i64 40
  %.val154 = load i32, ptr %i.kh, align 8
  %.not202 = icmp eq i32 %.val154, 0
  br i1 %.not202, label %min_heap_top_.exit.thread, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.ki = getelementptr inbounds nuw i8, ptr %i.b, i64 336
  %i.kj = load i32, ptr %i.ki, align 8
  %.not.i165 = icmp eq i32 %i.kj, 0
  br i1 %.not.i165, label %min_heap_top_.exit.thread, label %min_heap_top_.exit

min_heap_top_.exit:                               ; preds = %bb.bx
  %i.kk = getelementptr inbounds nuw i8, ptr %i.b, i64 328
  %i.kl = load ptr, ptr %i.kk, align 8
  %i.km = load ptr, ptr %i.kl, align 8            ; 3 uses
  %.not147 = icmp eq ptr %i.km, null
  br i1 %.not147, label %min_heap_top_.exit.thread, label %bb.by

bb.by:                                            ; preds = %min_heap_top_.exit
  %i.kn = getelementptr inbounds nuw i8, ptr %i.km, i64 112
  %i.ko = load i64, ptr %i.kn, align 8            ; 2 uses
  %i.kp = load i64, ptr %5, align 16              ; 2 uses
  %i.kq = icmp eq i64 %i.ko, %i.kp
  br i1 %i.kq, label %bb.bz, label %bb.ca

bb.bz:                                            ; preds = %bb.by
  %i.kr = getelementptr inbounds nuw i8, ptr %i.km, i64 120
  %i.ks = load i64, ptr %i.kr, align 8
  %i.kt = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ku = load i64, ptr %i.kt, align 8
  %i.kv = icmp slt i64 %i.ks, %i.ku
  br i1 %i.kv, label %bb.cb, label %min_heap_top_.exit.thread

bb.ca:                                            ; preds = %bb.by
  %i.kw = icmp slt i64 %i.ko, %i.kp
  br i1 %i.kw, label %bb.cb, label %min_heap_top_.exit.thread

bb.cb:                                            ; preds = %bb.ca, %bb.bz
  br label %min_heap_top_.exit.thread

min_heap_top_.exit.thread:                        ; preds = %bb.bx, %bb.cb, %bb.ca, %bb.bz, %min_heap_top_.exit, %bb.bw, %bb.bu, %bb.bv
  %.2 = phi i32 [ %.0114, %bb.bu ], [ %.0114, %bb.bv ], [ %.0114, %min_heap_top_.exit ], [ 1, %bb.cb ], [ %.0114, %bb.bz ], [ %.0114, %bb.ca ], [ 1, %bb.bw ], [ %.0114, %bb.bx ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.cc

bb.cc:                                            ; preds = %min_heap_top_.exit.thread, %bb.aa
  %.3 = phi i32 [ %.2, %min_heap_top_.exit.thread ], [ %.0114, %bb.aa ]
  %i.kx = icmp ne i32 %.3, 0
  %i.ky = load ptr, ptr @evthread_id_fn_, align 8 ; 2 uses
  %i.kz = icmp ne ptr %i.ky, null
  %or.cond11 = select i1 %i.kx, i1 %i.kz, i1 false
  br i1 %or.cond11, label %bb.cd, label %evthread_notify_base.exit

bb.cd:                                            ; preds = %bb.cc
  %i.la = getelementptr inbounds nuw i8, ptr %i.b, i64 240
  %i.lb = load i32, ptr %i.la, align 8
  %.not148 = icmp eq i32 %i.lb, 0
  br i1 %.not148, label %evthread_notify_base.exit, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 424
  %i.ld = load i64, ptr %i.lc, align 8
  %i.le = call i64 %i.ky() #25
  %.not149 = icmp eq i64 %i.ld, %i.le
  br i1 %.not149, label %evthread_notify_base.exit, label %bb.cf

bb.cf:                                            ; preds = %bb.ce
  %i.lf = getelementptr inbounds nuw i8, ptr %i.b, i64 640
  %i.lg = load ptr, ptr %i.lf, align 8            ; 2 uses
  %.not.i166 = icmp eq ptr %i.lg, null
  br i1 %.not.i166, label %evthread_notify_base.exit, label %bb.cg

bb.cg:                                            ; preds = %bb.cf
  %i.lh = getelementptr inbounds nuw i8, ptr %i.b, i64 496 ; 2 uses
  %i.li = load i32, ptr %i.lh, align 8
  %.not7.i167 = icmp eq i32 %i.li, 0
  br i1 %.not7.i167, label %bb.ch, label %evthread_notify_base.exit

bb.ch:                                            ; preds = %bb.cg
  store i32 1, ptr %i.lh, align 8
  %i.lj = call i32 %i.lg(ptr noundef nonnull %i.b) #25, !inline_history !40 ; 0 uses
  br label %evthread_notify_base.exit

evthread_notify_base.exit:                        ; preds = %bb.z, %bb.ch, %bb.cg, %bb.cf, %bb.ce, %bb.cd, %bb.cc
  %.1186201 = phi i32 [ %.1, %bb.ch ], [ %.1, %bb.cc ], [ %.1, %bb.ce ], [ %.1, %bb.cd ], [ %.1, %bb.cf ], [ %.1, %bb.cg ], [ -1, %bb.z ]
  %i.lk = load i32, ptr @event_debug_mode_on_, align 4
  %.not.i169 = icmp eq i32 %i.lk, 0
  br i1 %.not.i169, label %event_debug_note_add_.exit, label %bb.ci

bb.ci:                                            ; preds = %evthread_notify_base.exit
  %i.ll = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not9.i170 = icmp eq ptr %i.ll, null
  br i1 %.not9.i170, label %bb.ck, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %i.lm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.ln = call i32 %i.lm(i32 noundef 0, ptr noundef nonnull %i.ll) #25, !inline_history !52 ; 0 uses
  br label %bb.ck

bb.ck:                                            ; preds = %bb.cj, %bb.ci
  %i.lo = load ptr, ptr @global_debug_map, align 8 ; 2 uses
  %.not.i.i.i171 = icmp eq ptr %i.lo, null
  br i1 %.not.i.i.i171, label %.loopexit.i177, label %bb.cl

bb.cl:                                            ; preds = %bb.ck
  %i.lp = ptrtoint ptr %0 to i64
  %i.lq = trunc i64 %i.lp to i32
  %i.lr = lshr i32 %i.lq, 6
  %i.ls = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_debug_map, i64 8), align 8
  %i.lt = urem i32 %i.lr, %i.ls
  %i.lu = zext nneg i32 %i.lt to i64
  %i.lv = getelementptr inbounds nuw [8 x i8], ptr %i.lo, i64 %i.lu
  br label %bb.cm

bb.cm:                                            ; preds = %bb.cn, %bb.cl
  %.0.i.i.i172 = phi ptr [ %i.lv, %bb.cl ], [ %i.lw, %bb.cn ]
  %i.lw = load ptr, ptr %.0.i.i.i172, align 8     ; 4 uses
  %.not14.i.i.i173 = icmp eq ptr %i.lw, null
  br i1 %.not14.i.i.i173, label %.loopexit.i177, label %bb.cn

bb.cn:                                            ; preds = %bb.cm
  %i.lx = getelementptr i8, ptr %i.lw, i64 8
  %.val16.i.i.i174 = load ptr, ptr %i.lx, align 8
  %.not1.i.i.i175 = icmp eq ptr %.val16.i.i.i174, %0
  br i1 %.not1.i.i.i175, label %event_debug_map_HT_FIND.exit.i176, label %bb.cm, !llvm.loop !42

event_debug_map_HT_FIND.exit.i176:                ; preds = %bb.cn
  %i.ly = getelementptr inbounds nuw i8, ptr %i.lw, i64 16 ; 2 uses
  %i.lz = load i8, ptr %i.ly, align 8
  %i.ma = or i8 %i.lz, 1
  store i8 %i.ma, ptr %i.ly, align 8
  %i.mb = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not11.i = icmp eq ptr %i.mb, null
  br i1 %.not11.i, label %event_debug_note_add_.exit, label %bb.co

.loopexit.i177:                                   ; preds = %bb.cm, %bb.ck
  %i.mc = load i16, ptr %i.cd, align 8
  %i.md = sext i16 %i.mc to i32
  %i.me = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.mf = load i32, ptr %i.me, align 8
  %i.mg = load i16, ptr %i.aq, align 8
  %i.mh = sext i16 %i.mg to i32
  call void (i32, ptr, ...) @event_errx(i32 noundef -559030611, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.event_debug_note_add_, ptr noundef %0, i32 noundef %i.md, i32 noundef %i.mf, i32 noundef %i.mh) #28
  unreachable

bb.co:                                            ; preds = %event_debug_map_HT_FIND.exit.i176
  %i.mi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.mj = call i32 %i.mi(i32 noundef 0, ptr noundef nonnull %i.mb) #25, !inline_history !52 ; 0 uses
  br label %event_debug_note_add_.exit

event_debug_note_add_.exit:                       ; preds = %evthread_notify_base.exit, %event_debug_map_HT_FIND.exit.i176, %bb.co
  store i1 true, ptr @event_debug_mode_too_late, align 4
  br label %min_heap_reserve_.exit

min_heap_reserve_.exit:                           ; preds = %event_mm_realloc_.exit.i, %bb.j, %event_debug_note_add_.exit
  %.0 = phi i32 [ -1, %bb.j ], [ %.1186201, %event_debug_note_add_.exit ], [ -1, %event_mm_realloc_.exit.i ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 2, 1) i32 @evthread_make_base_notifiable_nolock_(ptr noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 640 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %bb.o

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @evutil_eventfd_(i32 noundef 0, i32 noundef 526336) #25 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 500 ; 3 uses
  store i32 %i.c, ptr %i.d, align 4
  %i.e = icmp sgt i32 %i.c, -1
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 504
  store i32 -1, ptr %i.f, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = tail call i32 @evutil_make_internal_pipe_(ptr noundef nonnull %i.d) #25
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %._crit_edge, label %bb.o

._crit_edge:                                      ; preds = %bb.d
  %.pre = load i32, ptr %i.d, align 4
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.c
  %i.i = phi i32 [ %i.c, %bb.c ], [ %.pre, %._crit_edge ]
  %.015 = phi ptr [ @evthread_notify_drain_eventfd, %bb.c ], [ @evthread_notify_drain_default, %._crit_edge ]
  %.0 = phi ptr [ @evthread_notify_base_eventfd, %bb.c ], [ @evthread_notify_base_default, %._crit_edge ]
  store ptr %.0, ptr %i.a, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 5 uses
  %i.k = tail call i32 @event_assign(ptr noundef nonnull %i.j, ptr noundef nonnull %0, i32 noundef %i.i, i16 noundef signext 18, ptr noundef nonnull %.015, ptr noundef nonnull %0) ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 528 ; 4 uses
  %i.m = load i16, ptr %i.l, align 8
  %i.n = or i16 %i.m, 16
  store i16 %i.n, ptr %i.l, align 8
  %i.o = load i32, ptr @event_debug_mode_on_, align 4
  %.not.i.i = icmp eq i32 %i.o, 0
  br i1 %.not.i.i, label %event_debug_assert_is_setup_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.p, null
  br i1 %.not7.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.r = tail call i32 %i.q(i32 noundef 0, ptr noundef nonnull %i.p) #25, !inline_history !53 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.s = load ptr, ptr @global_debug_map, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.t = ptrtoint ptr %i.j to i64
  %i.u = trunc i64 %i.t to i32
  %i.v = lshr i32 %i.u, 6
  %i.w = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_debug_map, i64 8), align 8
  %i.x = urem i32 %i.v, %i.w
  %i.y = zext nneg i32 %i.x to i64
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.s, i64 %i.y
  br label %bb.j

bb.j:                                             ; preds = %bb.k, %bb.i
  %.0.i.i.i.i = phi ptr [ %i.z, %bb.i ], [ %i.aa, %bb.k ]
  %i.aa = load ptr, ptr %.0.i.i.i.i, align 8      ; 3 uses
  %.not14.i.i.i.i = icmp eq ptr %i.aa, null
  br i1 %.not14.i.i.i.i, label %.loopexit.i.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ab = getelementptr i8, ptr %i.aa, i64 8
  %.val16.i.i.i.i = load ptr, ptr %i.ab, align 8
  %.not1.i.i.i.i = icmp eq ptr %.val16.i.i.i.i, %i.j
  br i1 %.not1.i.i.i.i, label %event_debug_map_HT_FIND.exit.i.i, label %bb.j, !llvm.loop !42

.loopexit.i.i:                                    ; preds = %bb.j, %bb.h
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 616
  %i.ad = load i16, ptr %i.ac, align 8
  %i.ae = sext i16 %i.ad to i32
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 568
  %i.ag = load i32, ptr %i.af, align 8
  %i.ah = load i16, ptr %i.l, align 8
  %i.ai = sext i16 %i.ah to i32
  tail call void (i32, ptr, ...) @event_errx(i32 noundef -559030611, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.event_debug_assert_is_setup_, ptr noundef nonnull %i.j, i32 noundef %i.ae, i32 noundef %i.ag, i32 noundef %i.ai) #28
  unreachable

event_debug_map_HT_FIND.exit.i.i:                 ; preds = %bb.k
  %i.aj = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aj, null
  br i1 %.not9.i.i, label %event_debug_assert_is_setup_.exit.i, label %bb.l

bb.l:                                             ; preds = %event_debug_map_HT_FIND.exit.i.i
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.al = tail call i32 %i.ak(i32 noundef 0, ptr noundef nonnull %i.aj) #25, !inline_history !53 ; 0 uses
  br label %event_debug_assert_is_setup_.exit.i

event_debug_assert_is_setup_.exit.i:              ; preds = %bb.l, %event_debug_map_HT_FIND.exit.i.i, %bb.e
  %i.am = load i16, ptr %i.l, align 8
  %i.an = and i16 %i.am, 8
  %.not.i.not = icmp eq i16 %i.an, 0
  br i1 %.not.i.not, label %bb.m, label %event_priority_set.exit

bb.m:                                             ; preds = %event_debug_assert_is_setup_.exit.i
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.ap = load ptr, ptr %i.ao, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 256
  %i.ar = load i32, ptr %i.aq, align 8
  %.not8.i = icmp sgt i32 %i.ar, 0
  br i1 %.not8.i, label %bb.n, label %event_priority_set.exit

bb.n:                                             ; preds = %bb.m
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 530
  store i8 0, ptr %i.as, align 2
  br label %event_priority_set.exit

event_priority_set.exit:                          ; preds = %event_debug_assert_is_setup_.exit.i, %bb.m, %bb.n
  %i.at = tail call i32 @event_add_nolock_(ptr noundef nonnull %i.j, ptr noundef null, i32 noundef 0)
  br label %bb.o

bb.o:                                             ; preds = %bb.d, %bb.a, %event_priority_set.exit
end_hunk_2
