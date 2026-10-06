Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/event?download=true
inline.NumInlined: 216
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@event_base_new_with_config:bb.a
  store ptr @pollops, ptr %.1.i109, align 8
  %i.fv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @pollops, i64 8), align 8
  %i.fw = call ptr %i.fv(ptr noundef nonnull %.1.i109) #25 ; 2 uses
  store ptr %i.fw, ptr %i.ax, align 8
  br label %event_config_is_avoided_method.exit.1

event_config_is_avoided_method.exit.1:            ; preds = %event_is_method_disabled.exit.1.event_config_is_avoided_method.exit.1_crit_edge, %bb.ak
  %i.fx = phi ptr [ %.pre133, %event_is_method_disabled.exit.1.event_config_is_avoided_method.exit.1_crit_edge ], [ %i.fw, %bb.ak ]
  %.not85.2 = icmp eq ptr %i.fx, null
  br i1 %.not85.2, label %event_config_is_avoided_method.exit.1.thread, label %.critedge.thread

event_config_is_avoided_method.exit.1.thread:     ; preds = %bb.ah, %.loopexit.1, %event_config_is_avoided_method.exit.1
  %i.fy = load ptr, ptr @selectops, align 8       ; 2 uses
  %.09.i.2 = load ptr, ptr %0, align 8            ; 2 uses
  %.not10.i.2 = icmp eq ptr %.09.i.2, null
  br i1 %.not10.i.2, label %.loopexit.2, label %.lr.ph.i.2

.lr.ph.i.2:                                       ; preds = %event_config_is_avoided_method.exit.1.thread, %bb.am
  %.011.i.2 = phi ptr [ %.0.i99.2, %bb.am ], [ %.09.i.2, %event_config_is_avoided_method.exit.1.thread ] ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.011.i.2, i64 16
  %i.ga = load ptr, ptr %i.fz, align 8            ; 2 uses
  %.not8.i.2 = icmp eq ptr %i.ga, null
  br i1 %.not8.i.2, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.lr.ph.i.2
  %i.gb = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %i.ga, ptr noundef nonnull readonly dereferenceable(1) %i.fy) #31
  %i.gc = icmp eq i32 %i.gb, 0
  br i1 %i.gc, label %.critedgethread-pre-split, label %bb.am

bb.am:                                            ; preds = %bb.al, %.lr.ph.i.2
  %.0.i99.2 = load ptr, ptr %.011.i.2, align 8    ; 2 uses
  %.not.i100.2 = icmp eq ptr %.0.i99.2, null
  br i1 %.not.i100.2, label %.loopexit.2, label %.lr.ph.i.2, !llvm.loop !29

.loopexit.2:                                      ; preds = %bb.am, %event_config_is_avoided_method.exit.1.thread
  %i.gd = load i32, ptr getelementptr inbounds nuw (i8, ptr @selectops, i64 52), align 4
  %i.ge = load i32, ptr %i.dg, align 8            ; 2 uses
  %i.gf = and i32 %i.ge, %i.gd
  %.not92.2 = icmp eq i32 %i.gf, %i.ge
  br i1 %.not92.2, label %bb.an, label %.critedgethread-pre-split

bb.an:                                            ; preds = %.loopexit.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.gg = call i32 (ptr, i64, ptr, ...) @evutil_snprintf(ptr noundef nonnull %i.a, i64 noundef 64, ptr noundef nonnull @.str.34, ptr noundef %i.fy) #25 ; 0 uses
  %i.gh = load i8, ptr %i.df, align 1             ; 2 uses
  %.not4.i.2 = icmp eq i8 %i.gh, 0
  br i1 %.not4.i.2, label %event_is_method_disabled.exit.2, label %.lr.ph.i101.2

.lr.ph.i101.2:                                    ; preds = %bb.an, %.lr.ph.i101.2
  %indvars.iv.i.2 = phi i64 [ %indvars.iv.next.i.2, %.lr.ph.i101.2 ], [ 8, %bb.an ]
  %i.gi = phi i8 [ %i.gm, %.lr.ph.i101.2 ], [ %i.gh, %bb.an ]
  %i.gj = phi ptr [ %i.gl, %.lr.ph.i101.2 ], [ %i.df, %bb.an ]
  %i.gk = call signext i8 @EVUTIL_TOUPPER_(i8 noundef signext %i.gi) #25
  store i8 %i.gk, ptr %i.gj, align 1
  %indvars.iv.next.i.2 = add nuw nsw i64 %indvars.iv.i.2, 1 ; 2 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %i.a, i64 %indvars.iv.next.i.2 ; 2 uses
  %i.gm = load i8, ptr %i.gl, align 1             ; 2 uses
  %.not.i102.2 = icmp eq i8 %i.gm, 0
  br i1 %.not.i102.2, label %event_is_method_disabled.exit.2, label %.lr.ph.i101.2, !llvm.loop !28

event_is_method_disabled.exit.2:                  ; preds = %.lr.ph.i101.2, %bb.an
  %i.gn = call ptr @evutil_getenv_(ptr noundef nonnull %i.a) #25
  %.not114.2 = icmp eq ptr %i.gn, null
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br i1 %.not114.2, label %bb.ao, label %.critedgethread-pre-split

bb.ao:                                            ; preds = %event_is_method_disabled.exit.2
  store ptr @selectops, ptr %.1.i109, align 8
  %i.go = load ptr, ptr getelementptr inbounds nuw (i8, ptr @selectops, i64 8), align 8
  %i.gp = call ptr %i.go(ptr noundef nonnull %.1.i109) #25 ; 2 uses
  store ptr %i.gp, ptr %i.ax, align 8
  br label %.critedge

.critedgethread-pre-split:                        ; preds = %bb.al, %bb.aa, %event_is_method_disabled.exit.us.2, %.loopexit.us.2, %event_is_method_disabled.exit.2, %.loopexit.2
  %.pr.pr = load ptr, ptr %i.ax, align 8
  br label %.critedge

.critedge:                                        ; preds = %.critedgethread-pre-split, %bb.ao, %bb.ac, %bb.v, %event_config_is_avoided_method.exit.us.us.2
  %.pr = phi ptr [ %.pr.pr, %.critedgethread-pre-split ], [ %i.gp, %bb.ao ], [ %i.em, %bb.ac ], [ %i.de, %bb.v ], [ %i.bv, %event_config_is_avoided_method.exit.us.us.2 ]
  %i.gq = icmp eq ptr %.pr, null
  br i1 %i.gq, label %bb.ap, label %.critedge.thread

bb.ap:                                            ; preds = %.critedge
  call void (ptr, ...) @event_warnx(ptr noundef nonnull @.str.5, ptr noundef nonnull @__func__.event_base_new_with_config) #25
  store ptr null, ptr %.1.i109, align 8
  call fastcc void @event_base_free_(ptr noundef nonnull %.1.i109, i32 noundef 1)
  br label %.critedge97

.critedge.thread:                                 ; preds = %event_config_is_avoided_method.exit, %event_config_is_avoided_method.exit.1, %event_config_is_avoided_method.exit.us118, %event_config_is_avoided_method.exit.us118.1, %event_config_is_avoided_method.exit.us, %event_config_is_avoided_method.exit.us.1, %event_config_is_avoided_method.exit.us.us, %event_config_is_avoided_method.exit.us.us.1, %.critedge
  %i.gr = call ptr @evutil_getenv_(ptr noundef nonnull @.str.6) #25
  %.not86 = icmp eq ptr %i.gr, null
  br i1 %.not86, label %bb.ar, label %bb.aq

bb.aq:                                            ; preds = %.critedge.thread
  %i.gs = load ptr, ptr %.1.i109, align 8
  %i.gt = load ptr, ptr %i.gs, align 8
  call void (ptr, ...) @event_msgx(ptr noundef nonnull @.str.7, ptr noundef %i.gt) #25
  br label %bb.ar

bb.ar:                                            ; preds = %bb.aq, %.critedge.thread
  %i.gu = call i32 @event_base_priority_init(ptr noundef nonnull %.1.i109, i32 noundef 1)
  %i.gv = icmp slt i32 %i.gu, 0
  br i1 %i.gv, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  call fastcc void @event_base_free_(ptr noundef nonnull %.1.i109, i32 noundef 1)
  br label %.critedge97

bb.at:                                            ; preds = %bb.ar
  store i32 1, ptr @event_debug_created_threadable_ctx_, align 4
  %i.gw = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %.not87 = icmp eq ptr %i.gw, null
  br i1 %.not87, label %.critedge97, label %bb.au

bb.au:                                            ; preds = %bb.at
  br i1 %.not, label %bb.aw, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.gy = load i32, ptr %i.gx, align 4
  %i.gz = and i32 %i.gy, 1
  %.not88 = icmp eq i32 %i.gz, 0
  br i1 %.not88, label %bb.aw, label %.critedge97

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.ha = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 8), align 8 ; 2 uses
  %.not89 = icmp eq ptr %i.ha, null
  br i1 %.not89, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.hb = call ptr %i.ha(i32 noundef 0) #25
  br label %bb.ay

bb.ay:                                            ; preds = %bb.aw, %bb.ax
  %i.hc = phi ptr [ %i.hb, %bb.ax ], [ null, %bb.aw ] ; 2 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %.1.i109, i64 432 ; 3 uses
  store ptr %i.hc, ptr %i.hd, align 8
  %i.he = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_cond_fns_, i64 8), align 8 ; 2 uses
  %.not90 = icmp eq ptr %i.he, null
  br i1 %.not90, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.hf = call ptr %i.he(i32 noundef 0) #25
  %.pr112 = load ptr, ptr %i.hd, align 8
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.hg = phi ptr [ %.pr112, %bb.az ], [ %i.hc, %bb.ay ] ; 2 uses
  %i.hh = phi ptr [ %i.hf, %bb.az ], [ null, %bb.ay ]
  %i.hi = getelementptr inbounds nuw i8, ptr %.1.i109, i64 440
  store ptr %i.hh, ptr %i.hi, align 8
  %.not10.i104 = icmp eq ptr %i.hg, null
  br i1 %.not10.i104, label %bb.bc, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.hj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.hk = call i32 %i.hj(i32 noundef 0, ptr noundef nonnull %i.hg) #25, !inline_history !30 ; 0 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bb, %bb.ba
  %i.hl = call fastcc i32 @evthread_make_base_notifiable_nolock_(ptr noundef nonnull %.1.i109)
  %i.hm = load ptr, ptr %i.hd, align 8            ; 2 uses
  %.not11.i = icmp eq ptr %i.hm, null
  br i1 %.not11.i, label %evthread_make_base_notifiable.exit, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.hn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ho = call i32 %i.hn(i32 noundef 0, ptr noundef nonnull %i.hm) #25, !inline_history !30 ; 0 uses
  br label %evthread_make_base_notifiable.exit

evthread_make_base_notifiable.exit:               ; preds = %bb.bc, %bb.bd
  %i.hp = icmp sgt i32 %i.hl, -1
  br i1 %i.hp, label %.critedge97, label %bb.be

bb.be:                                            ; preds = %evthread_make_base_notifiable.exit
  call void (ptr, ...) @event_warnx(ptr noundef nonnull @.str.8, ptr noundef nonnull @__func__.event_base_new_with_config) #25
  call fastcc void @event_base_free_(ptr noundef nonnull %.1.i109, i32 noundef 1)
  br label %.critedge97

.critedge97:                                      ; preds = %bb.at, %bb.av, %evthread_make_base_notifiable.exit, %bb.be, %bb.as, %bb.ap, %bb.c
  %.1 = phi ptr [ null, %bb.c ], [ null, %bb.ap ], [ null, %bb.as ], [ null, %bb.be ], [ %.1.i109, %evthread_make_base_notifiable.exit ], [ %.1.i109, %bb.av ], [ %.1.i109, %bb.at ]
  ret ptr %.1
}

; Function Attrs: noreturn
declare void @event_errx(i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define ptr @event_base_new() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @mm_malloc_fn_, align 8    ; 2 uses
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %event_mm_calloc_.exit.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr %i.a(i64 noundef 56) #25, !inline_history !32 ; 3 uses
  %.not20.i.i = icmp eq ptr %i.b, null
  br i1 %.not20.i.i, label %event_mm_calloc_.exit.thread.i, label %event_mm_calloc_.exit.thread11.i

event_mm_calloc_.exit.thread11.i:                 ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  br label %bb.c

event_mm_calloc_.exit.thread.i:                   ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #29
  store i32 12, ptr %i.c, align 4
  br label %event_config_free.exit

event_mm_calloc_.exit.i:                          ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %event_config_free.exit, label %bb.c

bb.c:                                             ; preds = %event_mm_calloc_.exit.i, %event_mm_calloc_.exit.thread11.i
  %.1.i13.i = phi ptr [ %i.b, %event_mm_calloc_.exit.thread11.i ], [ %i.d, %event_mm_calloc_.exit.i ] ; 11 uses
  store ptr null, ptr %.1.i13.i, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.1.i13.i, i64 8 ; 2 uses
  store ptr %.1.i13.i, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.1.i13.i, i64 24
  store i64 -1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.1.i13.i, i64 40
  store i32 2147483647, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.1.i13.i, i64 44
  store i32 1, ptr %i.i, align 4
  %i.j = tail call ptr @event_base_new_with_config(ptr noundef nonnull %.1.i13.i) ; 2 uses
  %i.k = load ptr, ptr %.1.i13.i, align 8         ; 2 uses
  %.not13.i = icmp eq ptr %i.k, null
  br i1 %.not13.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %event_config_entry_free.exit.i
  %i.l = phi ptr [ %i.t, %event_config_entry_free.exit.i ], [ %i.k, %bb.c ] ; 6 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.m, null
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.o = load ptr, ptr %i.n, align 8              ; 3 uses
  br i1 %.not11.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.o, ptr %i.p, align 8
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph.i
  store ptr %i.o, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.q = load ptr, ptr %i.l, align 8
  store ptr %i.q, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.s = load ptr, ptr %i.r, align 8              ; 3 uses
  %.not.i.i5 = icmp eq ptr %i.s, null
  %.pr.i.pre14.i = load ptr, ptr @mm_free_fn_, align 8 ; 3 uses
  br i1 %.not.i.i5, label %event_mm_free_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.i.i.i = icmp eq ptr %.pr.i.pre14.i, null
  br i1 %.not.i.i.i, label %event_mm_free_.exit.thread.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void %.pr.i.pre14.i(ptr noundef nonnull %i.s) #25, !inline_history !31
  %.pr.i.pre.i = load ptr, ptr @mm_free_fn_, align 8
  br label %event_mm_free_.exit.i.i

event_mm_free_.exit.thread.i.i:                   ; preds = %bb.g
  tail call void @free(ptr noundef nonnull %i.s) #25
  br label %bb.j

event_mm_free_.exit.i.i:                          ; preds = %bb.h, %bb.f
  %.pr.i.i = phi ptr [ %.pr.i.pre.i, %bb.h ], [ %.pr.i.pre14.i, %bb.f ] ; 2 uses
  %.not.i3.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %.not.i3.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %event_mm_free_.exit.i.i
  tail call void %.pr.i.i(ptr noundef nonnull %i.l) #25, !inline_history !31
  br label %event_config_entry_free.exit.i

bb.j:                                             ; preds = %event_mm_free_.exit.i.i, %event_mm_free_.exit.thread.i.i
  tail call void @free(ptr noundef nonnull %i.l) #25
  br label %event_config_entry_free.exit.i

event_config_entry_free.exit.i:                   ; preds = %bb.j, %bb.i
  %i.t = load ptr, ptr %.1.i13.i, align 8         ; 2 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %event_config_entry_free.exit.i, %bb.c
  %i.u = load ptr, ptr @mm_free_fn_, align 8      ; 2 uses
  %.not.i12.i = icmp eq ptr %i.u, null
  br i1 %.not.i12.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i
  tail call void %i.u(ptr noundef nonnull %.1.i13.i) #25, !inline_history !33
  br label %event_config_free.exit

bb.l:                                             ; preds = %._crit_edge.i
  tail call void @free(ptr noundef nonnull %.1.i13.i) #25
  br label %event_config_free.exit

event_config_free.exit:                           ; preds = %event_mm_calloc_.exit.thread.i, %event_mm_calloc_.exit.i, %bb.l, %bb.k
  %.0 = phi ptr [ %i.j, %bb.l ], [ %i.j, %bb.k ], [ null, %event_mm_calloc_.exit.i ], [ null, %event_mm_calloc_.exit.thread.i ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define noundef ptr @event_config_new() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @mm_malloc_fn_, align 8    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %event_mm_calloc_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr %i.a(i64 noundef 56) #25, !inline_history !19 ; 3 uses
  %.not20.i = icmp eq ptr %i.b, null
  br i1 %.not20.i, label %event_mm_calloc_.exit.thread, label %event_mm_calloc_.exit.thread11

event_mm_calloc_.exit.thread11:                   ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  br label %bb.c

event_mm_calloc_.exit.thread:                     ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #29
  store i32 12, ptr %i.c, align 4
  br label %bb.d

event_mm_calloc_.exit:                            ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(56) ptr @calloc(i64 noundef 1, i64 noundef 56) #30 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %event_mm_calloc_.exit.thread11, %event_mm_calloc_.exit
  %.1.i13 = phi ptr [ %i.b, %event_mm_calloc_.exit.thread11 ], [ %i.d, %event_mm_calloc_.exit ] ; 7 uses
  store ptr null, ptr %.1.i13, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %.1.i13, i64 8
  store ptr %.1.i13, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %.1.i13, i64 24
  store i64 -1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.1.i13, i64 40
  store i32 2147483647, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.1.i13, i64 44
  store i32 1, ptr %i.i, align 4
  br label %bb.d

bb.d:                                             ; preds = %event_mm_calloc_.exit.thread, %event_mm_calloc_.exit, %bb.c
  %.0 = phi ptr [ %.1.i13, %bb.c ], [ null, %event_mm_calloc_.exit ], [ null, %event_mm_calloc_.exit.thread ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define void @event_config_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not13 = icmp eq ptr %i.a, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %event_config_entry_free.exit
  %i.c = phi ptr [ %i.a, %.lr.ph ], [ %i.k, %event_config_entry_free.exit ] ; 6 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.d, null
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  br i1 %.not11, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.f, ptr %i.g, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  store ptr %i.f, ptr %i.b, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = load ptr, ptr %i.c, align 8
  store ptr %i.h, ptr %i.f, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.j = load ptr, ptr %i.i, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.j, null
  %.pr.i.pre14 = load ptr, ptr @mm_free_fn_, align 8 ; 3 uses
  br i1 %.not.i, label %event_mm_free_.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %.not.i.i = icmp eq ptr %.pr.i.pre14, null
  br i1 %.not.i.i, label %event_mm_free_.exit.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %.pr.i.pre14(ptr noundef nonnull %i.j) #25, !inline_history !34
  %.pr.i.pre = load ptr, ptr @mm_free_fn_, align 8
  br label %event_mm_free_.exit.i

event_mm_free_.exit.thread.i:                     ; preds = %bb.f
  tail call void @free(ptr noundef nonnull %i.j) #25
  br label %bb.i

event_mm_free_.exit.i:                            ; preds = %bb.g, %bb.e
  %.pr.i = phi ptr [ %.pr.i.pre, %bb.g ], [ %.pr.i.pre14, %bb.e ] ; 2 uses
  %.not.i3.i = icmp eq ptr %.pr.i, null
  br i1 %.not.i3.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %event_mm_free_.exit.i
  tail call void %.pr.i(ptr noundef nonnull %i.c) #25, !inline_history !34
  br label %event_config_entry_free.exit

bb.i:                                             ; preds = %event_mm_free_.exit.i, %event_mm_free_.exit.thread.i
  tail call void @free(ptr noundef nonnull %i.c) #25
  br label %event_config_entry_free.exit

event_config_entry_free.exit:                     ; preds = %bb.h, %bb.i
  %i.k = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %._crit_edge, label %bb.b, !llvm.loop !0

._crit_edge:                                      ; preds = %event_config_entry_free.exit, %bb.a
  %i.l = load ptr, ptr @mm_free_fn_, align 8      ; 2 uses
  %.not.i12 = icmp eq ptr %i.l, null
  br i1 %.not.i12, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  tail call void %i.l(ptr noundef nonnull %0) #25, !inline_history !17
  br label %event_mm_free_.exit

bb.k:                                             ; preds = %._crit_edge
  tail call void @free(ptr noundef nonnull %0) #25
  br label %event_mm_free_.exit

event_mm_free_.exit:                              ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define i32 @event_base_get_features(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 52
  %i.c = load i32, ptr %i.b, align 4
  ret i32 %i.c
}

; Function Attrs: nounwind uwtable
define void @event_enable_debug_mode() local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @event_debug_mode_on_, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @event_errx(i32 noundef 1, ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.event_enable_debug_mode) #28
  unreachable

bb.c:                                             ; preds = %bb.a
  %.b = load i1, ptr @event_debug_mode_too_late, align 4
  br i1 %.b, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, ...) @event_errx(i32 noundef 1, ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.event_enable_debug_mode) #28
  unreachable

bb.e:                                             ; preds = %bb.c
  store i32 1, ptr @event_debug_mode_on_, align 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) @global_debug_map, i8 0, i64 20, i1 false)
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @global_debug_map, i64 20), align 4
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @event_disable_debug_mode() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.c = tail call i32 %i.b(i32 noundef 0, ptr noundef nonnull %i.a) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_debug_map, i64 8), align 8 ; 2 uses
  %.not5.i = icmp eq i32 %i.d, 0
  br i1 %.not5.i, label %._crit_edge, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c
  %i.e = load ptr, ptr @global_debug_map, align 8 ; 2 uses
  %wide.trip.count.i = zext i32 %i.d to i64
  br label %bb.e

bb.d:                                             ; preds = %bb.e
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge, label %bb.e, !llvm.loop !35

bb.e:                                             ; preds = %bb.d, %.lr.ph.i
  %indvars.iv.i = phi i64 [ 0, %.lr.ph.i ], [ %indvars.iv.next.i, %bb.d ] ; 3 uses
  %i.f = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  %i.g = load ptr, ptr %i.f, align 8
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %bb.d, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.e
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %indvars.iv.i
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %event_mm_free_.exit
  %.018 = phi ptr [ %.1.i, %event_mm_free_.exit ], [ %i.h, %.lr.ph.preheader ] ; 4 uses
  %i.i = load ptr, ptr %.018, align 8             ; 4 uses
  %i.j = getelementptr i8, ptr %i.i, i64 8
  %.val.i = load ptr, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.i, align 8
  store ptr %i.k, ptr %.018, align 8
  %i.l = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_debug_map, i64 12), align 4
  %i.m = add i32 %i.l, -1
  store i32 %i.m, ptr getelementptr inbounds nuw (i8, ptr @global_debug_map, i64 12), align 4
  %i.n = load ptr, ptr %.018, align 8
  %.not.i8 = icmp eq ptr %i.n, null
end_hunk_0
begin_hunk_1_@event_add_nolock_:bb.a
  %i.mg = load i16, ptr %i.aq, align 8
  %i.mh = sext i16 %i.mg to i32
  call void (i32, ptr, ...) @event_errx(i32 noundef -559030611, ptr noundef nonnull @.str.43, ptr noundef nonnull @__func__.event_debug_note_add_, ptr noundef %0, i32 noundef %i.md, i32 noundef %i.mf, i32 noundef %i.mh) #28
  unreachable

bb.co:                                            ; preds = %event_debug_map_HT_FIND.exit.i176
  %i.mi = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.mj = call i32 %i.mi(i32 noundef 0, ptr noundef nonnull %i.mb) #25, !inline_history !57 ; 0 uses
  br label %event_debug_note_add_.exit

event_debug_note_add_.exit:                       ; preds = %evthread_notify_base.exit, %event_debug_map_HT_FIND.exit.i176, %bb.co
  store i1 true, ptr @event_debug_mode_too_late, align 4
  br label %min_heap_reserve_.exit

min_heap_reserve_.exit:                           ; preds = %event_mm_realloc_.exit.i, %bb.j, %event_debug_note_add_.exit
  %.0115 = phi i32 [ -1, %bb.j ], [ %.1114186201, %event_debug_note_add_.exit ], [ -1, %event_mm_realloc_.exit.i ]
  ret i32 %.0115
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
  %i.r = tail call i32 %i.q(i32 noundef 0, ptr noundef nonnull %i.p) #25, !inline_history !8 ; 0 uses
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
  br i1 %.not1.i.i.i.i, label %event_debug_map_HT_FIND.exit.i.i, label %bb.j, !llvm.loop !3

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
  %i.al = tail call i32 %i.ak(i32 noundef 0, ptr noundef nonnull %i.aj) #25, !inline_history !8 ; 0 uses
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
  %.016 = phi i32 [ 0, %bb.a ], [ %i.at, %event_priority_set.exit ], [ -1, %bb.d ]
  ret i32 %.016
}

; Function Attrs: nounwind uwtable
define i32 @event_gettime_monotonic(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.f = tail call i32 %i.e(i32 noundef 0, ptr noundef nonnull %i.d) #25 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.h = tail call i32 @evutil_gettime_monotonic_(ptr noundef nonnull %i.g, ptr noundef nonnull %1) #25 ; 2 uses
  %i.i = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not13 = icmp eq ptr %i.i, null
  br i1 %.not13, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.k = tail call i32 %i.j(i32 noundef 0, ptr noundef nonnull %i.i) #25 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.a
  %.0 = phi i32 [ %i.h, %bb.e ], [ %i.h, %bb.d ], [ -1, %bb.a ]
  ret i32 %.0
}

declare i32 @evutil_gettime_monotonic_(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define noundef ptr @event_get_supported_methods() local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @mm_malloc_fn_, align 8    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %event_mm_calloc_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr %i.a(i64 noundef 32) #25, !inline_history !19 ; 3 uses
  %.not20.i = icmp eq ptr %i.b, null
  br i1 %.not20.i, label %event_mm_calloc_.exit.thread, label %event_mm_calloc_.exit.thread34

event_mm_calloc_.exit.thread34:                   ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(32) %i.b, i8 0, i64 32, i1 false)
  br label %.preheader.preheader

event_mm_calloc_.exit.thread:                     ; preds = %bb.b
  %i.c = tail call ptr @__errno_location() #29
  store i32 12, ptr %i.c, align 4
  br label %bb.f

event_mm_calloc_.exit:                            ; preds = %bb.a
  %i.d = tail call noalias dereferenceable_or_null(32) ptr @calloc(i64 noundef 4, i64 noundef 8) #30 ; 2 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.f, label %.preheader.preheader

.preheader.preheader:                             ; preds = %event_mm_calloc_.exit.thread34, %event_mm_calloc_.exit
  %.1.i36 = phi ptr [ %i.b, %event_mm_calloc_.exit.thread34 ], [ %i.d, %event_mm_calloc_.exit ] ; 6 uses
  %i.f = load ptr, ptr @epollops, align 8
  store ptr %i.f, ptr %.1.i36, align 8
  %i.g = load ptr, ptr @pollops, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %.1.i36, i64 8
  store ptr %i.g, ptr %i.h, align 8
  %i.i = load ptr, ptr @selectops, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %.1.i36, i64 16
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.1.i36, i64 24
  store ptr null, ptr %i.k, align 8
  %i.l = load ptr, ptr @event_get_supported_methods.methods, align 8 ; 3 uses
  %.not20 = icmp eq ptr %i.l, null
  br i1 %.not20, label %event_mm_free_.exit, label %bb.c

bb.c:                                             ; preds = %.preheader.preheader
  %i.m = load ptr, ptr @mm_free_fn_, align 8      ; 2 uses
  %.not.i21 = icmp eq ptr %i.m, null
  br i1 %.not.i21, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.m(ptr noundef nonnull %i.l) #25, !inline_history !17
  br label %event_mm_free_.exit

bb.e:                                             ; preds = %bb.c
  tail call void @free(ptr noundef nonnull %i.l) #25
  br label %event_mm_free_.exit

event_mm_free_.exit:                              ; preds = %bb.e, %bb.d, %.preheader.preheader
  store ptr %.1.i36, ptr @event_get_supported_methods.methods, align 8
  br label %bb.f

bb.f:                                             ; preds = %event_mm_calloc_.exit.thread, %event_mm_calloc_.exit, %event_mm_free_.exit
  %.015 = phi ptr [ %.1.i36, %event_mm_free_.exit ], [ null, %event_mm_calloc_.exit ], [ null, %event_mm_calloc_.exit.thread ]
  ret ptr %.015
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define range(i32 -1, 1) i32 @event_config_set_flag(ptr nofree noundef captures(address_is_null) %0, i32 noundef %1) local_unnamed_addr #9 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4
  %i.c = or i32 %i.b, %1
  store i32 %i.c, ptr %i.a, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i32 [ 0, %bb.b ], [ -1, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @event_config_avoid_method(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @mm_malloc_fn_, align 8    ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr %i.a(i64 noundef 24) #25, !inline_history !16
  br label %event_mm_malloc_.exit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #26
  br label %event_mm_malloc_.exit

event_mm_malloc_.exit:                            ; preds = %bb.b, %bb.c
  %.0.i = phi ptr [ %i.c, %bb.c ], [ %i.b, %bb.b ] ; 10 uses
  %i.d = icmp eq ptr %.0.i, null
  br i1 %i.d, label %event_mm_free_.exit, label %bb.d

bb.d:                                             ; preds = %event_mm_malloc_.exit
  %.not.i12 = icmp eq ptr %1, null
  br i1 %.not.i12, label %event_mm_strdup_.exit.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = load ptr, ptr @mm_malloc_fn_, align 8    ; 2 uses
  %.not15.i = icmp eq ptr %i.e, null
  br i1 %.not15.i, label %event_mm_strdup_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #31 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %event_mm_strdup_.exit.thread, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.h = add nuw i64 %i.f, 1                      ; 2 uses
  %i.i = tail call ptr %i.e(i64 noundef %i.h) #25, !inline_history !58 ; 3 uses
  %.not16.i = icmp eq ptr %i.i, null
  br i1 %.not16.i, label %event_mm_strdup_.exit.thread, label %event_mm_strdup_.exit.thread15

event_mm_strdup_.exit.thread15:                   ; preds = %bb.g
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.i, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 %i.h, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.i, ptr %i.j, align 8
  br label %bb.k

event_mm_strdup_.exit.thread:                     ; preds = %bb.f, %bb.g, %bb.d
  %.sink = phi i32 [ 22, %bb.d ], [ 12, %bb.g ], [ 12, %bb.f ]
  %i.k = tail call ptr @__errno_location() #29
  store i32 %.sink, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr null, ptr %i.l, align 8
  br label %bb.h

event_mm_strdup_.exit:                            ; preds = %bb.e
  %i.m = tail call noalias ptr @strdup(ptr noundef nonnull readonly %1) #25 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  store ptr %i.m, ptr %i.n, align 8
  %i.o = icmp eq ptr %i.m, null
  br i1 %i.o, label %bb.h, label %bb.k

bb.h:                                             ; preds = %event_mm_strdup_.exit.thread, %event_mm_strdup_.exit
  %i.p = load ptr, ptr @mm_free_fn_, align 8      ; 2 uses
  %.not.i13 = icmp eq ptr %i.p, null
  br i1 %.not.i13, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void %i.p(ptr noundef nonnull %.0.i) #25, !inline_history !17
  br label %event_mm_free_.exit

bb.j:                                             ; preds = %bb.h
  tail call void @free(ptr noundef nonnull %.0.i) #25
  br label %event_mm_free_.exit

bb.k:                                             ; preds = %event_mm_strdup_.exit.thread15, %event_mm_strdup_.exit
  store ptr null, ptr %.0.i, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.r, ptr %i.s, align 8
  store ptr %.0.i, ptr %i.r, align 8
  store ptr %.0.i, ptr %i.q, align 8
  br label %event_mm_free_.exit

event_mm_free_.exit:                              ; preds = %bb.j, %bb.i, %event_mm_malloc_.exit, %bb.k
  %.0 = phi i32 [ 0, %bb.k ], [ -1, %event_mm_malloc_.exit ], [ -1, %bb.i ], [ -1, %bb.j ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define ptr @event_mm_strdup_(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.a = tail call ptr @__errno_location() #29
  store i32 22, ptr %i.a, align 4
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = load ptr, ptr @mm_malloc_fn_, align 8    ; 2 uses
  %.not15 = icmp eq ptr %i.b, null
  br i1 %.not15, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.c = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #31 ; 2 uses
  %i.d = icmp eq i64 %i.c, -1
  br i1 %i.d, label %bb.h, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = add nuw i64 %i.c, 1                      ; 2 uses
  %i.f = tail call ptr %i.b(i64 noundef %i.e) #25 ; 3 uses
  %.not16 = icmp eq ptr %i.f, null
  br i1 %.not16, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.f, ptr noundef nonnull align 1 dereferenceable(1) %0, i64 %i.e, i1 false)
  br label %bb.i

bb.g:                                             ; preds = %bb.c
  %i.g = tail call noalias ptr @strdup(ptr noundef nonnull %0) #25
  br label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.e
  %i.h = tail call ptr @__errno_location() #29
  store i32 12, ptr %i.h, align 4
  br label %bb.i

bb.i:                                             ; preds = %bb.f, %bb.h, %bb.g, %bb.b
  %.1 = phi ptr [ %i.f, %bb.f ], [ null, %bb.h ], [ %i.g, %bb.g ], [ null, %bb.b ]
  ret ptr %.1
end_hunk_1
begin_hunk_2_@event_base_get_max_events:bb.a

.thread:                                          ; preds = %bb.d
  %i.i = and i32 %1, 2
  %.not2329 = icmp eq i32 %i.i, 0
  br i1 %.not2329, label %bb.i, label %.thread31

.thread31:                                        ; preds = %.thread
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.k = load i32, ptr %i.j, align 4
  %i.l = add nsw i32 %i.k, %i.g
  br label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 204 ; 2 uses
  %i.n = load i32, ptr %i.m, align 4
  %i.o = add nsw i32 %i.n, %.0                    ; 2 uses
  %.not24 = icmp eq i32 %2, 0
  br i1 %.not24, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.m, align 4
  br label %bb.i

bb.i:                                             ; preds = %.thread31, %.thread, %bb.g, %bb.h, %bb.f
  %.1 = phi i32 [ %i.o, %bb.h ], [ %i.o, %bb.g ], [ %.0, %bb.f ], [ %i.g, %.thread ], [ %i.l, %.thread31 ] ; 2 uses
  %i.p = and i32 %1, 4
  %.not25 = icmp eq i32 %i.p, 0
  br i1 %.not25, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 212 ; 2 uses
  %i.r = load i32, ptr %i.q, align 4
  %i.s = add nsw i32 %i.r, %.1                    ; 2 uses
  %.not26 = icmp eq i32 %2, 0
  br i1 %.not26, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  store i32 0, ptr %i.q, align 4
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.2 = phi i32 [ %i.s, %bb.k ], [ %i.s, %bb.j ], [ %.1, %bb.i ]
  %i.t = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.t, null
  br i1 %.not27, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.v = tail call i32 %i.u(i32 noundef 0, ptr noundef nonnull %i.t) #25 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define ptr @event_base_init_common_timeout(ptr noundef %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %.sroa.0 = alloca i64, align 8                  ; 4 uses
  %.sroa.7 = alloca i64, align 8                  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  %.057.sroa.gep62 = getelementptr i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i64, ptr %.057.sroa.gep62, align 8  ; 7 uses
  %i.f = icmp sgt i64 %i.e, 1000000
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %i.g = and i64 %i.e, 4026531840
  %.not.i = icmp eq i64 %i.g, 1342177280
  br i1 %.not.i, label %is_common_timeout.exit, label %is_common_timeout.exit.thread

is_common_timeout.exit:                           ; preds = %bb.d
  %i.h = trunc i64 %i.e to i32
  %i.i = lshr i32 %i.h, 20
  %i.j = and i32 %i.i, 255
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.l = load i32, ptr %i.k, align 8
  %.not99 = icmp slt i32 %i.j, %i.l
  %i.m = and i64 %i.e, 1048575
  %spec.select123 = select i1 %.not99, i64 %i.m, i64 %i.e
  br label %is_common_timeout.exit.thread

is_common_timeout.exit.thread:                    ; preds = %is_common_timeout.exit, %bb.d
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.69 = phi i64 [ %i.e, %bb.d ], [ %spec.select123, %is_common_timeout.exit ] ; 2 uses
  %i.n = udiv i64 %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.69, 1000000
  %i.o = add nsw i64 %i.n, %.sroa.0.0.copyload
  store i64 %i.o, ptr %.sroa.0, align 8
  %i.p = urem i64 %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.69, 1000000 ; 2 uses
  store i64 %i.p, ptr %.sroa.7, align 8
  br label %bb.e

bb.e:                                             ; preds = %is_common_timeout.exit.thread, %bb.c
  %i.q = phi i64 [ %i.p, %is_common_timeout.exit.thread ], [ %i.e, %bb.c ]
  %.057.sroa.phi63 = phi ptr [ %.sroa.0, %is_common_timeout.exit.thread ], [ %1, %bb.c ] ; 2 uses
  %.057.sroa.phi66 = phi ptr [ %.sroa.7, %is_common_timeout.exit.thread ], [ %.057.sroa.gep62, %bb.c ]
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.s = load i32, ptr %i.r, align 8              ; 6 uses
  %i.t = icmp sgt i32 %i.s, 0
  br i1 %i.t, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = load i64, ptr %.057.sroa.phi63, align 8
  %wide.trip.count = zext nneg i32 %i.s to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.v, i64 %indvars.iv
  %i.y = load ptr, ptr %i.x, align 8              ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.aa = load i64, ptr %i.z, align 8
  %i.ab = icmp eq i64 %i.w, %i.aa
  br i1 %i.ab, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = and i64 %i.ad, 1048575
  %i.af = icmp eq i64 %i.q, %i.ae
  br i1 %i.af, label %.loopexit.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.h
  %i.ag = icmp eq i32 %i.s, 256
  br i1 %i.ag, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @event_warnx(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.event_base_init_common_timeout, i32 noundef 256) #25
  br label %.loopexit

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.ai = load i32, ptr %i.ah, align 4
  %i.aj = icmp eq i32 %i.ai, %i.s
  br i1 %i.aj, label %bb.j, label %bb.n

bb.j:                                             ; preds = %._crit_edge.thread
  %i.ak = icmp slt i32 %i.s, 16
  %i.al = shl nuw nsw i32 %i.s, 1
  %spec.select = select i1 %i.ak, i32 16, i32 %i.al ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8            ; 2 uses
  %i.ao = zext nneg i32 %spec.select to i64
  %i.ap = shl nuw nsw i64 %i.ao, 3                ; 2 uses
  %i.aq = load ptr, ptr @mm_realloc_fn_, align 8  ; 2 uses
  %.not.i81 = icmp eq ptr %i.aq, null
  br i1 %.not.i81, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = tail call ptr %i.aq(ptr noundef %i.an, i64 noundef %i.ap) #25, !inline_history !18
  br label %event_mm_realloc_.exit

bb.l:                                             ; preds = %bb.j
  %i.as = tail call ptr @realloc(ptr noundef %i.an, i64 noundef %i.ap) #27
  br label %event_mm_realloc_.exit

event_mm_realloc_.exit:                           ; preds = %bb.k, %bb.l
  %.0.i82 = phi ptr [ %i.ar, %bb.k ], [ %i.as, %bb.l ] ; 2 uses
  %.not77 = icmp eq ptr %.0.i82, null
  br i1 %.not77, label %bb.m, label %.thread91

.thread91:                                        ; preds = %event_mm_realloc_.exit
  store i32 %spec.select, ptr %i.ah, align 4
  store ptr %.0.i82, ptr %i.am, align 8
  br label %bb.n

bb.m:                                             ; preds = %event_mm_realloc_.exit
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.event_base_init_common_timeout) #25
  br label %.loopexit

bb.n:                                             ; preds = %.thread91, %._crit_edge.thread
  %i.at = load ptr, ptr @mm_malloc_fn_, align 8   ; 2 uses
  %.not.i83 = icmp eq ptr %i.at, null
  br i1 %.not.i83, label %event_mm_calloc_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.au = tail call ptr %i.at(i64 noundef 168) #25, !inline_history !19 ; 3 uses
  %.not20.i = icmp eq ptr %i.au, null
  br i1 %.not20.i, label %event_mm_calloc_.exit.thread, label %event_mm_calloc_.exit.thread95

event_mm_calloc_.exit.thread95:                   ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(168) %i.au, i8 0, i64 168, i1 false)
  br label %bb.q

event_mm_calloc_.exit.thread:                     ; preds = %bb.o
  %i.av = tail call ptr @__errno_location() #29
  store i32 12, ptr %i.av, align 4
  br label %bb.p

event_mm_calloc_.exit:                            ; preds = %bb.n
  %i.aw = tail call noalias dereferenceable_or_null(168) ptr @calloc(i64 noundef 1, i64 noundef 168) #30 ; 2 uses
  %.not78 = icmp eq ptr %i.aw, null
  br i1 %.not78, label %bb.p, label %bb.q

bb.p:                                             ; preds = %event_mm_calloc_.exit.thread, %event_mm_calloc_.exit
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.event_base_init_common_timeout) #25
  br label %.loopexit

bb.q:                                             ; preds = %event_mm_calloc_.exit.thread95, %event_mm_calloc_.exit
  %.1.i98 = phi ptr [ %i.au, %event_mm_calloc_.exit.thread95 ], [ %i.aw, %event_mm_calloc_.exit ] ; 14 uses
  store ptr null, ptr %.1.i98, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i98, i64 8
  store ptr %.1.i98, ptr %i.ax, align 8
  %i.ay = load i64, ptr %.057.sroa.phi63, align 8
  %i.az = getelementptr inbounds nuw i8, ptr %.1.i98, i64 16 ; 2 uses
  store i64 %i.ay, ptr %i.az, align 8
  %i.ba = load i64, ptr %.057.sroa.phi66, align 8
  %i.bb = load i32, ptr %i.r, align 8
  %i.bc = shl i32 %i.bb, 20
  %i.bd = sext i32 %i.bc to i64
  %i.be = or i64 %i.ba, %i.bd
  %i.bf = or i64 %i.be, 1342177280
  %i.bg = getelementptr inbounds nuw i8, ptr %.1.i98, i64 24
  store i64 %i.bf, ptr %i.bg, align 8
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i98, i64 32 ; 4 uses
  %i.bi = tail call i32 @event_assign(ptr noundef nonnull %i.bh, ptr noundef nonnull %0, i32 noundef -1, i16 noundef signext 0, ptr noundef nonnull @common_timeout_callback, ptr noundef nonnull %.1.i98) ; 0 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.1.i98, i64 48 ; 4 uses
  %i.bk = load i16, ptr %i.bj, align 8
  %i.bl = or i16 %i.bk, 16
  store i16 %i.bl, ptr %i.bj, align 8
  %i.bm = load i32, ptr @event_debug_mode_on_, align 4
  %.not.i.i = icmp eq i32 %i.bm, 0
  br i1 %.not.i.i, label %event_debug_assert_is_setup_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bn = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.bn, null
  br i1 %.not7.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bo = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.bp = tail call i32 %i.bo(i32 noundef 0, ptr noundef nonnull %i.bn) #25, !inline_history !8 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bq = load ptr, ptr @global_debug_map, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bq, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.br = ptrtoint ptr %i.bh to i64
  %i.bs = trunc i64 %i.br to i32
  %i.bt = lshr i32 %i.bs, 6
  %i.bu = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_debug_map, i64 8), align 8
  %i.bv = urem i32 %i.bt, %i.bu
  %i.bw = zext nneg i32 %i.bv to i64
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.bw
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.0.i.i.i.i = phi ptr [ %i.bx, %bb.u ], [ %i.by, %bb.w ]
  %i.by = load ptr, ptr %.0.i.i.i.i, align 8      ; 3 uses
  %.not14.i.i.i.i = icmp eq ptr %i.by, null
  br i1 %.not14.i.i.i.i, label %.loopexit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bz = getelementptr i8, ptr %i.by, i64 8
  %.val16.i.i.i.i = load ptr, ptr %i.bz, align 8
  %.not1.i.i.i.i = icmp eq ptr %.val16.i.i.i.i, %i.bh
  br i1 %.not1.i.i.i.i, label %event_debug_map_HT_FIND.exit.i.i, label %bb.v, !llvm.loop !3

.loopexit.i.i:                                    ; preds = %bb.v, %bb.t
  %i.ca = getelementptr inbounds nuw i8, ptr %.1.i98, i64 136
  %i.cb = load i16, ptr %i.ca, align 8
  %i.cc = sext i16 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %.1.i98, i64 88
  %i.ce = load i32, ptr %i.cd, align 8
  %i.cf = load i16, ptr %i.bj, align 8
  %i.cg = sext i16 %i.cf to i32
  tail call void (i32, ptr, ...) @event_errx(i32 noundef -559030611, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.event_debug_assert_is_setup_, ptr noundef nonnull %i.bh, i32 noundef %i.cc, i32 noundef %i.ce, i32 noundef %i.cg) #28
  unreachable

event_debug_map_HT_FIND.exit.i.i:                 ; preds = %bb.w
  %i.ch = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.ch, null
  br i1 %.not9.i.i, label %event_debug_assert_is_setup_.exit.i, label %bb.x

bb.x:                                             ; preds = %event_debug_map_HT_FIND.exit.i.i
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.cj = tail call i32 %i.ci(i32 noundef 0, ptr noundef nonnull %i.ch) #25, !inline_history !8 ; 0 uses
  br label %event_debug_assert_is_setup_.exit.i

event_debug_assert_is_setup_.exit.i:              ; preds = %bb.x, %event_debug_map_HT_FIND.exit.i.i, %bb.q
  %i.ck = load i16, ptr %i.bj, align 8
  %i.cl = and i16 %i.ck, 8
  %.not.i84.not = icmp eq i16 %i.cl, 0
  br i1 %.not.i84.not, label %bb.y, label %event_priority_set.exit

bb.y:                                             ; preds = %event_debug_assert_is_setup_.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %.1.i98, i64 96
  %i.cn = load ptr, ptr %i.cm, align 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 256
  %i.cp = load i32, ptr %i.co, align 8
  %.not8.i = icmp sgt i32 %i.cp, 0
  br i1 %.not8.i, label %bb.z, label %event_priority_set.exit

bb.z:                                             ; preds = %bb.y
  %i.cq = getelementptr inbounds nuw i8, ptr %.1.i98, i64 50
  store i8 0, ptr %i.cq, align 2
  br label %event_priority_set.exit

event_priority_set.exit:                          ; preds = %event_debug_assert_is_setup_.exit.i, %bb.y, %bb.z
  %i.cr = getelementptr inbounds nuw i8, ptr %.1.i98, i64 160
  store ptr %0, ptr %i.cr, align 8
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.ct = load ptr, ptr %i.cs, align 8
  %i.cu = load i32, ptr %i.r, align 8             ; 2 uses
  %i.cv = add nsw i32 %i.cu, 1
  store i32 %i.cv, ptr %i.r, align 8
  %i.cw = sext i32 %i.cu to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %i.cw
  store ptr %.1.i98, ptr %i.cx, align 8
  br label %.loopexit

.loopexit.loopexit:                               ; preds = %bb.g
  %i.cy = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.m, %event_priority_set.exit, %bb.p, %bb.i
  %.2 = phi ptr [ null, %bb.m ], [ null, %bb.i ], [ %i.az, %event_priority_set.exit ], [ null, %bb.p ], [ %i.cy, %.loopexit.loopexit ]
  %i.cz = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not79 = icmp eq ptr %i.cz, null
  br i1 %.not79, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.loopexit
  %i.da = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.db = tail call i32 %i.da(i32 noundef 0, ptr noundef nonnull %i.cz) #25 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  ret ptr %.2
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @event_assign(ptr noundef %0, ptr noundef %1, i32 noundef %2, i16 noundef signext %3, ptr noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %1, null
  %i.a = load ptr, ptr @event_global_current_base_, align 8
  %spec.select = select i1 %.not, ptr %i.a, ptr %1 ; 3 uses
  %i.b = icmp eq ptr %5, @event_self_cbarg_ptr_
  %.0 = select i1 %i.b, ptr %0, ptr %5
  %i.c = and i16 %3, 8
  %.not37 = icmp eq i16 %i.c, 0                   ; 2 uses
  br i1 %.not37, label %bb.b, label %event_debug_assert_socket_nonblocking_.exitthread-pre-split

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr @event_debug_mode_on_, align 4 ; 2 uses
  %i.e = icmp eq i32 %i.d, 0
  %i.f = icmp slt i32 %2, 0
  %or.cond.i = or i1 %i.f, %i.e
  br i1 %or.cond.i, label %event_debug_assert_socket_nonblocking_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call i32 (i32, i32, ...) @fcntl(i32 noundef %2, i32 noundef 3, ptr noundef null) #25 ; 0 uses
  br label %event_debug_assert_socket_nonblocking_.exitthread-pre-split

event_debug_assert_socket_nonblocking_.exitthread-pre-split: ; preds = %bb.a, %bb.c
  %.pr = load i32, ptr @event_debug_mode_on_, align 4
  br label %event_debug_assert_socket_nonblocking_.exit

event_debug_assert_socket_nonblocking_.exit:      ; preds = %event_debug_assert_socket_nonblocking_.exitthread-pre-split, %bb.b
  %i.h = phi i32 [ %.pr, %event_debug_assert_socket_nonblocking_.exitthread-pre-split ], [ %i.d, %bb.b ]
  %.not.i = icmp eq i32 %i.h, 0
  br i1 %.not.i, label %event_debug_assert_not_added_.exit, label %bb.d

bb.d:                                             ; preds = %event_debug_assert_socket_nonblocking_.exit
  %i.i = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not9.i = icmp eq ptr %i.i, null
  br i1 %.not9.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.k = tail call i32 %i.j(i32 noundef 0, ptr noundef nonnull %i.i) #25, !inline_history !4 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.l = load ptr, ptr @global_debug_map, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.l, null
  br i1 %.not.i.i.i, label %event_debug_map_HT_FIND.exit.thread.i, label %bb.g

end_hunk_2
