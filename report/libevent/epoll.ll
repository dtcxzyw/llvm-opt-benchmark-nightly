Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/epoll?download=true
inline.NumInlined: 9
inline.NumDeleted: 3
begin_hunk_0_@epoll_nochangelist_add:bb.a

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @epoll_nochangelist_del(ptr nofree noundef readonly captures(none) %0, i32 noundef %1, i16 noundef signext %2, i16 noundef signext %3, ptr nofree readnone captures(none) %4) #0 {
bb.a:
  %5 = alloca %struct.event_change, align 4       ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #7
  store i32 %1, ptr %5, align 4
  %i.a = getelementptr inbounds nuw i8, ptr %5, i64 4
  store i16 %2, ptr %i.a, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store i8 0, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %5, i64 7 ; 2 uses
  store i8 0, ptr %i.c, align 1
  %i.d = getelementptr inbounds nuw i8, ptr %5, i64 6 ; 2 uses
  store i8 0, ptr %i.d, align 2
  %i.e = and i16 %3, 4
  %.not = icmp eq i16 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = trunc i16 %3 to i8
  %i.g = and i8 %i.f, 32
  %i.h = or disjoint i8 %i.g, 2
  store i8 %i.h, ptr %i.c, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.i = and i16 %3, 2
  %.not9 = icmp eq i16 %i.i, 0
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = trunc i16 %3 to i8
  %i.k = and i8 %i.j, 34
  store i8 %i.k, ptr %i.d, align 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.l = and i16 %3, 128
  %.not10 = icmp eq i16 %i.l, 0
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = trunc i16 %3 to i8
  %i.n = and i8 %i.m, 32
  %i.o = or disjoint i8 %i.n, 2
  store i8 %i.o, ptr %i.b, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = call fastcc i32 @epoll_apply_one_change(ptr noundef %i.q, ptr noundef nonnull %5)
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #7
  ret i32 %i.r
}

; Function Attrs: nounwind uwtable
define internal range(i32 -1, 1) i32 @epoll_dispatch(ptr noundef %0, ptr noundef %1) #0 {
bb.a:
  %2 = alloca %struct.itimerspec, align 8         ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 6 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.e = load i32, ptr %i.d, align 8              ; 2 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.g = icmp eq ptr %1, null
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  br i1 %i.g, label %bb.c, label %._crit_edge93

bb.c:                                             ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  br label %bb.d

._crit_edge93:                                    ; preds = %bb.b
  %i.i = load i64, ptr %1, align 8                ; 2 uses
  %i.j = icmp ne i64 %i.i, 0
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i64, ptr %i.k, align 8              ; 2 uses
  %i.m = icmp ne i64 %i.l, 0
  %narrow = select i1 %i.j, i1 true, i1 %i.m
  %.060 = sext i1 %narrow to i64
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  store i64 %i.i, ptr %i.n, align 8
  %i.o = mul nsw i64 %i.l, 1000
  %i.p = getelementptr inbounds nuw i8, ptr %2, i64 24
  store i64 %i.o, ptr %i.p, align 8
  br label %bb.d

bb.d:                                             ; preds = %._crit_edge93, %bb.c
  %.161 = phi i64 [ -1, %bb.c ], [ %.060, %._crit_edge93 ]
  %i.q = call i32 @timerfd_settime(i32 noundef %i.e, i32 noundef 0, ptr noundef nonnull %2, ptr noundef null) #7
  %i.r = icmp slt i32 %i.q, 0
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.20) #7
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.s = tail call i64 @evutil_tv_to_msec_(ptr noundef nonnull %1) #7
  %spec.store.select = tail call i64 @llvm.umin.i64(i64 %i.s, i64 2100000)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f
  %.262 = phi i64 [ %.161, %bb.f ], [ %spec.store.select, %bb.h ], [ -1, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.u = load ptr, ptr %i.a, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load i32, ptr %i.v, align 8
  %i.x = icmp sgt i32 %i.w, 0
  br i1 %i.x, label %.lr.ph.i, label %epoll_apply_changes.exit

.lr.ph.i:                                         ; preds = %bb.i, %.lr.ph.i
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %.lr.ph.i ], [ 0, %bb.i ] ; 2 uses
  %i.y = load ptr, ptr %i.t, align 8
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %indvars.iv.i
  %i.aa = call fastcc i32 @epoll_apply_one_change(ptr noundef %i.u, ptr noundef %i.z) ; 0 uses
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %i.ab = load i32, ptr %i.v, align 8
  %i.ac = sext i32 %i.ab to i64
  %i.ad = icmp slt i64 %indvars.iv.next.i, %i.ac
  br i1 %i.ad, label %.lr.ph.i, label %epoll_apply_changes.exit, !llvm.loop !3

epoll_apply_changes.exit:                         ; preds = %.lr.ph.i, %bb.i
  call void @event_changelist_remove_all_(ptr noundef nonnull %i.t, ptr noundef nonnull %0) #7
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not72 = icmp eq ptr %i.af, null
  br i1 %.not72, label %bb.k, label %bb.j

bb.j:                                             ; preds = %epoll_apply_changes.exit
  %i.ag = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ah = call i32 %i.ag(i32 noundef 0, ptr noundef nonnull %i.af) #7 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %epoll_apply_changes.exit
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.aj = load i32, ptr %i.ai, align 4
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.al = load i32, ptr %i.ak, align 8
  %i.am = trunc nsw i64 %.262 to i32
  %i.an = call i32 @epoll_wait(i32 noundef %i.aj, ptr noundef %i.c, i32 noundef %i.al, i32 noundef %i.am) #7 ; 6 uses
  %i.ao = load ptr, ptr %i.ae, align 8            ; 2 uses
  %.not73 = icmp eq ptr %i.ao, null
  br i1 %.not73, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.aq = call i32 %i.ap(i32 noundef 0, ptr noundef nonnull %i.ao) #7 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ar = icmp eq i32 %i.an, -1
  br i1 %i.ar, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.as = tail call ptr @__errno_location() #8
  %i.at = load i32, ptr %i.as, align 4
  %.not83 = icmp eq i32 %i.at, 4
  br i1 %.not83, label %bb.y, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.21) #7
  br label %bb.y

bb.p:                                             ; preds = %bb.m
  %i.au = load i32, ptr @event_debug_logging_mask_, align 4
  %.not74 = icmp eq i32 %i.au, 0
  br i1 %.not74, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.22, ptr noundef nonnull @__func__.epoll_dispatch, i32 noundef %i.an) #7
  br label %bb.r

bb.r:                                             ; preds = %bb.p, %bb.q
  %i.av = icmp sgt i32 %i.an, 0
  br i1 %i.av, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.r
  %wide.trip.count = zext nneg i32 %i.an to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.v
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.v ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [12 x i8], ptr %i.c, i64 %indvars.iv ; 2 uses
  %i.ax = load i32, ptr %i.aw, align 1            ; 4 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 4
  %i.az = load i32, ptr %i.ay, align 1            ; 2 uses
  %i.ba = load i32, ptr %i.d, align 8
  %i.bb = icmp eq i32 %i.az, %i.ba
  br i1 %i.bb, label %bb.v, label %bb.s

bb.s:                                             ; preds = %.lr.ph
  %i.bc = and i32 %i.ax, 8
  %.not76 = icmp ne i32 %i.bc, 0
  %i.bd = and i32 %i.ax, 8208
  %or.cond = icmp eq i32 %i.bd, 16
  %or.cond90 = or i1 %.not76, %or.cond
  br i1 %or.cond90, label %.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.be = and i32 %i.ax, 8192
  %.not78.a = icmp eq i32 %i.be, 0
  %3 = trunc i32 %i.ax to i16                     ; 2 uses
  %4 = shl i16 %3, 1
  %spec.select84 = and i16 %4, 2
  %5 = and i16 %3, 4
  %.1 = or disjoint i16 %spec.select84, %5        ; 3 uses
  %i.bf = or disjoint i16 %.1, 128
  br i1 %.not78.a, label %bb.u, label %.thread

bb.u:                                             ; preds = %bb.t
  %.not82 = icmp eq i16 %.1, 0
  br i1 %.not82, label %bb.v, label %.thread

.thread:                                          ; preds = %bb.t, %bb.s, %bb.u
  %.289 = phi i16 [ %.1, %bb.u ], [ %i.bf, %bb.t ], [ 6, %bb.s ]
  %i.bg = or i16 %.289, 32
  call void @evmap_io_active_(ptr noundef nonnull %0, i32 noundef %i.az, i16 noundef signext %i.bg) #7
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %.lr.ph, %.thread
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !4

._crit_edge:                                      ; preds = %bb.v, %bb.r
  %i.bh = load i32, ptr %i.ak, align 8            ; 2 uses
  %i.bi = icmp eq i32 %i.an, %i.bh
  %i.bj = icmp slt i32 %i.bh, 4096
  %or.cond85 = and i1 %i.bi, %i.bj
  br i1 %or.cond85, label %bb.w, label %bb.y

bb.w:                                             ; preds = %._crit_edge
  %i.bk = shl nsw i32 %i.an, 1                    ; 2 uses
  %i.bl = load ptr, ptr %i.b, align 8
  %i.bm = sext i32 %i.bk to i64
  %i.bn = mul nsw i64 %i.bm, 12
  %i.bo = call ptr @event_mm_realloc_(ptr noundef %i.bl, i64 noundef %i.bn) #7 ; 2 uses
  %.not75 = icmp eq ptr %i.bo, null
  br i1 %.not75, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  store ptr %i.bo, ptr %i.b, align 8
  store i32 %i.bk, ptr %i.ak, align 8
  br label %bb.y

bb.y:                                             ; preds = %._crit_edge, %bb.x, %bb.w, %bb.n, %bb.o
  %.064 = phi i32 [ -1, %bb.o ], [ 0, %bb.n ], [ 0, %bb.w ], [ 0, %bb.x ], [ 0, %._crit_edge ]
  ret i32 %.064
}

; Function Attrs: nounwind uwtable
define internal void @epoll_dealloc(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8              ; 5 uses
  tail call void @evsig_dealloc_(ptr noundef %0) #7
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @event_mm_free_(ptr noundef nonnull %i.c) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.e = load i32, ptr %i.d, align 4              ; 2 uses
  %i.f = icmp sgt i32 %i.e, -1
  br i1 %i.f, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = tail call i32 @close(i32 noundef %i.e) #7 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.i = load i32, ptr %i.h, align 8              ; 2 uses
  %i.j = icmp sgt i32 %i.i, -1
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = tail call i32 @close(i32 noundef %i.i) #7 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i8 0, i64 24, i1 false)
  tail call void @event_mm_free_(ptr noundef nonnull %i.b) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @epoll_create1(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @epoll_create(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

declare void @event_warn(ptr noundef, ...) local_unnamed_addr #4

declare i32 @evutil_make_socket_closeonexec(i32 noundef) local_unnamed_addr #4

declare ptr @event_mm_calloc_(i64 noundef, i64 noundef) local_unnamed_addr #4

declare i32 @close(i32 noundef) local_unnamed_addr #4

declare void @event_mm_free_(ptr noundef) local_unnamed_addr #4

declare ptr @evutil_getenv_(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @timerfd_create(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nounwind
declare i32 @epoll_ctl(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare i32 @evsig_init_(ptr noundef) local_unnamed_addr #4

declare i32 @event_changelist_add_(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) #4

declare i32 @event_changelist_del_(ptr noundef, i32 noundef, i16 noundef signext, i16 noundef signext, ptr noundef) #4

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @epoll_apply_one_change(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) unnamed_addr #0 {
bb.a:
  %2 = alloca %struct.epoll_event, align 4        ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.b = load i8, ptr %i.a, align 4
  %i.c = zext i8 %i.b to i32                      ; 2 uses
  %i.d = and i32 %i.c, 3
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 6 ; 3 uses
  %i.f = load i8, ptr %i.e, align 2
  %i.g = zext i8 %i.f to i32                      ; 2 uses
  %i.h = shl nuw nsw i32 %i.g, 2
  %i.i = and i32 %i.h, 12
  %i.j = or disjoint i32 %i.i, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 7 ; 3 uses
  %i.l = load i8, ptr %i.k, align 1
  %i.m = zext i8 %i.l to i32                      ; 2 uses
  %i.n = shl nuw nsw i32 %i.m, 4
  %i.o = and i32 %i.n, 48
  %i.p = or disjoint i32 %i.j, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 3 uses
  %i.r = load i16, ptr %i.q, align 4
  %i.s = sext i16 %i.r to i32                     ; 2 uses
  %i.t = shl nsw i32 %i.s, 5
  %i.u = and i32 %i.t, 192
  %i.v = or disjoint i32 %i.p, %i.u
  %i.w = shl nsw i32 %i.s, 1
  %i.x = and i32 %i.w, 256
  %i.y = or disjoint i32 %i.v, %i.x
  %i.z = zext nneg i32 %i.y to i64
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr @epoll_op_table, i64 %i.z ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 4
  %i.ac = load i32, ptr %i.ab, align 4            ; 8 uses
  %i.ad = load i32, ptr %i.aa, align 8            ; 2 uses
  %.not = icmp eq i32 %i.ad, 0
  br i1 %.not, label %bb.r, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ae = or i32 %i.g, %i.c
  %i.af = or i32 %i.ae, %i.m
  %i.ag = shl i32 %i.af, 26
  %i.ah = and i32 %i.ag, -2147483648
  %spec.select = or i32 %i.ah, %i.ad
  %i.ai = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i32 0, ptr %i.ai, align 4
  %i.aj = load i32, ptr %1, align 4               ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %2, i64 4
  store i32 %i.aj, ptr %i.ak, align 4
  store i32 %spec.select, ptr %2, align 4
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 3 uses
  %i.am = load i32, ptr %i.al, align 4
  %i.an = call i32 @epoll_ctl(i32 noundef %i.am, i32 noundef %i.ac, i32 noundef %i.aj, ptr noundef nonnull %2) #7
  %i.ao = icmp eq i32 %i.an, 0
  br i1 %i.ao, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.ap = load i32, ptr @event_debug_logging_mask_, align 4
  %.not52 = icmp eq i32 %i.ap, 0
  br i1 %.not52, label %bb.r, label %switch.lookup

switch.lookup:                                    ; preds = %bb.c
  %i.aq = icmp eq i32 %i.ac, 1
  %i.ar = icmp eq i32 %i.ac, 2
  %i.as = icmp eq i32 %i.ac, 3
  %i.at = select i1 %i.as, ptr @.str.15, ptr @.str.16
  %i.au = select i1 %i.ar, ptr @.str.14, ptr %i.at
  %i.av = select i1 %i.aq, ptr @.str.13, ptr %i.au
  %i.aw = load i32, ptr %2, align 4
  %i.ax = load i32, ptr %1, align 4
  %i.ay = load i16, ptr %i.q, align 4
  %i.az = sext i16 %i.ay to i32
  %i.ba = load i8, ptr %i.e, align 2
  %i.bb = zext i8 %i.ba to i32                    ; 2 uses
  %i.bc = and i32 %i.bb, 3
  %i.bd = zext nneg i32 %i.bc to i64
  %switch.gep = getelementptr inbounds nuw [8 x i8], ptr @switch.table.epoll_apply_one_change.6, i64 %i.bd
  %switch.load = load ptr, ptr %switch.gep, align 8
  %i.be = load i8, ptr %i.k, align 1
end_hunk_0
