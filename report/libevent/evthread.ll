Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evthread?download=true
inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0_@evthread_set_lock_callbacks:bb.a
bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  %.not29 = icmp eq ptr %i.an, null
  br i1 %.not29, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ap = load ptr, ptr %i.ao, align 8
  %.not30 = icmp eq ptr %i.ap, null
  br i1 %.not30, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.aq = tail call i32 @event_global_setup_locks_(i32 noundef 1) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.m, %bb.s, %bb.n, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -1, %bb.n ], [ %i.aq, %bb.s ], [ 0, %bb.m ], [ -1, %bb.r ], [ -1, %bb.q ], [ -1, %bb.p ], [ -1, %bb.o ]
  ret i32 %.0
}

; Function Attrs: noreturn
declare void @event_errx(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

declare void @event_warnx(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

declare i32 @event_global_setup_locks_(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evthread_set_condition_callbacks(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @evthread_lock_debugging_enabled_, align 4
  %.not.i = icmp eq i32 %i.a, 0                   ; 2 uses
  %i.b = select i1 %.not.i, ptr @evthread_cond_fns_, ptr @original_cond_fns_ ; 7 uses
  %i.c = load i32, ptr @event_debug_mode_on_, align 4
  %i.d = icmp ne i32 %i.c, 0
  %i.e = load i32, ptr @event_debug_created_threadable_ctx_, align 4
  %i.f = icmp ne i32 %i.e, 0
  %or.cond = select i1 %i.d, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, ...) @event_errx(i32 noundef 1, ptr noundef nonnull @.str) #9
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq ptr %0, null
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not26 = icmp eq ptr %i.h, null                ; 2 uses
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not26, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @event_warnx(ptr noundef nonnull @.str.3) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  br label %bb.u

bb.g:                                             ; preds = %bb.c
  br i1 %.not26, label %bb.n, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = load i32, ptr %i.b, align 8
  %i.j = load i32, ptr %0, align 8
  %i.k = icmp eq i32 %i.i, %i.j
  br i1 %i.k, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = icmp eq ptr %i.h, %i.m
  br i1 %i.n, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.p, %i.r
  br i1 %i.s, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %i.u, %i.w
  br i1 %i.x, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = load ptr, ptr %i.aa, align 8
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  tail call void (ptr, ...) @event_warnx(ptr noundef nonnull @.str.4) #10
  br label %bb.u

bb.n:                                             ; preds = %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.ae = load ptr, ptr %i.ad, align 8
  %.not28 = icmp eq ptr %i.ae, null
  br i1 %.not28, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8
  %.not29 = icmp eq ptr %i.ag, null
  br i1 %.not29, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8
  %.not30 = icmp eq ptr %i.ai, null
  br i1 %.not30, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8
  %.not31 = icmp eq ptr %i.ak, null
  br i1 %.not31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.al = load <2 x ptr>, ptr %i.ad, align 8
  store <2 x ptr> %i.al, ptr getelementptr inbounds nuw (i8, ptr @evthread_cond_fns_, i64 8), align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  store ptr %i.an, ptr getelementptr inbounds nuw (i8, ptr @evthread_cond_fns_, i64 24), align 8
  br label %bb.u

bb.u:                                             ; preds = %bb.s, %bb.t, %bb.l, %bb.m, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -1, %bb.m ], [ 0, %bb.l ], [ 0, %bb.t ], [ 0, %bb.s ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @evthread_enable_lock_debuging() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @evthread_lock_debugging_enabled_, align 4
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %bb.b, label %evthread_enable_lock_debugging.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @original_lock_fns_, ptr noundef nonnull align 8 dereferenceable(40) @evthread_lock_fns_, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @evthread_lock_fns_, ptr noundef nonnull align 8 dereferenceable(40) @__const.evthread_enable_lock_debugging.cbs, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @original_cond_fns_, ptr noundef nonnull align 8 dereferenceable(40) @evthread_cond_fns_, i64 40, i1 false)
  store ptr @debug_cond_wait, ptr getelementptr inbounds nuw (i8, ptr @evthread_cond_fns_, i64 32), align 8
  store i32 1, ptr @evthread_lock_debugging_enabled_, align 4
  %i.b = tail call i32 @event_global_setup_locks_(i32 noundef 0) #10 ; 0 uses
  br label %evthread_enable_lock_debugging.exit

evthread_enable_lock_debugging.exit:              ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define void @evthread_enable_lock_debugging() local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @evthread_lock_debugging_enabled_, align 4
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @original_lock_fns_, ptr noundef nonnull align 8 dereferenceable(40) @evthread_lock_fns_, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @evthread_lock_fns_, ptr noundef nonnull align 8 dereferenceable(40) @__const.evthread_enable_lock_debugging.cbs, i64 40, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @original_cond_fns_, ptr noundef nonnull align 8 dereferenceable(40) @evthread_cond_fns_, i64 40, i1 false)
  store ptr @debug_cond_wait, ptr getelementptr inbounds nuw (i8, ptr @evthread_cond_fns_, i64 32), align 8
  store i32 1, ptr @evthread_lock_debugging_enabled_, align 4
  %i.b = tail call i32 @event_global_setup_locks_(i32 noundef 0) #10 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define internal ptr @debug_lock_alloc(i32 noundef %0) #2 {
bb.a:
  %i.a = tail call ptr @event_mm_malloc_(i64 noundef 32) #10 ; 8 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 8), align 8 ; 2 uses
  %.not13 = icmp eq ptr %i.b, null
  br i1 %.not13, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = or i32 %0, 1
  %i.d = tail call ptr %i.b(i32 noundef %i.c) #10 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  %.not14 = icmp eq ptr %i.d, null
  br i1 %.not14, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  tail call void @event_mm_free_(ptr noundef nonnull %i.a) #10
  br label %bb.g

bb.e:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr null, ptr %i.f, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e
  %1 = zext i32 %0 to i64
  %2 = shl nuw i64 %1, 32
  %3 = or disjoint i64 %2, 3736121612
  store i64 %3, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.h, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %bb.f, %bb.d
  %.0 = phi ptr [ %i.a, %bb.f ], [ null, %bb.d ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind uwtable
define internal void @debug_lock_free(ptr noundef initializes((0, 4), (16, 20)) %0, i32 %1) #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 16), align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4
  %i.f = or i32 %i.e, 1
  tail call void %i.a(ptr noundef %i.c, i32 noundef %i.f) #10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr null, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 -100, ptr %i.h, align 8
  store i32 305139674, ptr %0, align 8
  tail call void @event_mm_free_(ptr noundef nonnull %0) #10
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @debug_lock_lock(i32 noundef %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 24), align 8 ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call i32 %i.a(i32 noundef %0, ptr noundef %i.c) #10 ; 2 uses
  %.not8 = icmp eq i32 %i.d, 0
  br i1 %.not8, label %.thread, label %evthread_debug_lock_mark_locked.exit

.thread:                                          ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add nsw i32 %i.f, 1
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load ptr, ptr @evthread_id_fn_, align 8  ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %evthread_debug_lock_mark_locked.exit, label %bb.c

bb.c:                                             ; preds = %.thread
  %i.i = tail call i64 %i.h() #10, !inline_history !0
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.i, ptr %i.j, align 8
  br label %evthread_debug_lock_mark_locked.exit

evthread_debug_lock_mark_locked.exit:             ; preds = %bb.c, %.thread, %bb.b
  %.011 = phi i32 [ %i.d, %bb.b ], [ 0, %.thread ], [ 0, %bb.c ]
  ret i32 %.011
}

; Function Attrs: nounwind uwtable
define internal i32 @debug_lock_unlock(i32 noundef %0, ptr nofree noundef captures(none) %1) #2 {
bb.a:
  %i.a = load ptr, ptr @evthread_id_fn_, align 8  ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %evthread_debug_lock_mark_unlocked.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 %i.a() #10, !inline_history !1 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %evthread_debug_lock_mark_unlocked.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.f, align 8
  br label %evthread_debug_lock_mark_unlocked.exit

evthread_debug_lock_mark_unlocked.exit:           ; preds = %._crit_edge.i, %bb.b, %bb.c
  %i.g = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.d, %bb.b ], [ 1, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.h, align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 32), align 8 ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %evthread_debug_lock_mark_unlocked.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.j(i32 noundef %0, ptr noundef %i.l) #10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %evthread_debug_lock_mark_unlocked.exit
  %.0 = phi i32 [ %i.m, %bb.d ], [ 0, %evthread_debug_lock_mark_unlocked.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define internal i32 @debug_cond_wait(ptr noundef %0, ptr nofree noundef captures(none) %1, ptr noundef %2) #2 {
bb.a:
  %i.a = load ptr, ptr @evthread_id_fn_, align 8  ; 2 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %._crit_edge.i, label %bb.b

._crit_edge.i:                                    ; preds = %bb.a
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre.i = load i32, ptr %.phi.trans.insert.i, align 8
  br label %evthread_debug_lock_mark_unlocked.exit

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 %i.a() #10, !inline_history !1 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i32, ptr %i.c, align 8              ; 2 uses
  %i.e = icmp eq i32 %i.d, 1
  br i1 %i.e, label %bb.c, label %evthread_debug_lock_mark_unlocked.exit

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.f, align 8
  br label %evthread_debug_lock_mark_unlocked.exit

evthread_debug_lock_mark_unlocked.exit:           ; preds = %._crit_edge.i, %bb.b, %bb.c
  %i.g = phi i32 [ %.pre.i, %._crit_edge.i ], [ %i.d, %bb.b ], [ 1, %bb.c ]
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.i = add nsw i32 %i.g, -1
  store i32 %i.i, ptr %i.h, align 8
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_cond_fns_, i64 32), align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call i32 %i.j(ptr noundef %0, ptr noundef %i.l, ptr noundef %2) #10
  %i.n = load i32, ptr %i.h, align 8
  %i.o = add nsw i32 %i.n, 1
  store i32 %i.o, ptr %i.h, align 8
  %i.p = load ptr, ptr @evthread_id_fn_, align 8  ; 2 uses
  %.not.i8 = icmp eq ptr %i.p, null
  br i1 %.not.i8, label %evthread_debug_lock_mark_locked.exit, label %bb.d

bb.d:                                             ; preds = %evthread_debug_lock_mark_unlocked.exit
  %i.q = tail call i64 %i.p() #10, !inline_history !0
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.q, ptr %i.r, align 8
  br label %evthread_debug_lock_mark_locked.exit

evthread_debug_lock_mark_locked.exit:             ; preds = %evthread_debug_lock_mark_unlocked.exit, %bb.d
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define range(i32 0, 2) i32 @evthread_is_debug_lock_held_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i32, ptr %i.a, align 8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @evthread_id_fn_, align 8  ; 2 uses
  %.not7 = icmp eq ptr %i.c, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call i64 %i.c() #10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load i64, ptr %i.e, align 8
  %.not8 = icmp eq i64 %i.f, %i.d
  br i1 %.not8, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.c, %bb.d
  %.1 = phi i32 [ 1, %bb.d ], [ 0, %bb.c ], [ 0, %bb.a ]
  ret i32 %.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define hidden ptr @evthread_debug_get_real_lock_(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8
  ret ptr %i.b
}

; Function Attrs: nounwind uwtable
define hidden ptr @evthread_setup_global_lock_(ptr noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #2 {
bb.a:
  %i.a = icmp eq i32 %2, 0                        ; 3 uses
  %i.b = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 8), align 8
  %i.c = icmp eq ptr %i.b, null                   ; 2 uses
  %or.cond = select i1 %i.a, i1 %i.c, i1 false
  br i1 %or.cond, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @event_mm_malloc_(i64 noundef 32) #10 ; 8 uses
  %.not.i = icmp eq ptr %i.d, null
  br i1 %.not.i, label %debug_lock_alloc.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 8), align 8 ; 2 uses
  %.not13.i = icmp eq ptr %i.e, null
  br i1 %.not13.i, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = or i32 %1, 1
  %i.g = tail call ptr %i.e(i32 noundef %i.f) #10, !inline_history !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr %i.g, ptr %i.h, align 8
  %.not14.i = icmp eq ptr %i.g, null
  br i1 %.not14.i, label %bb.e, label %bb.g

bb.e:                                             ; preds = %bb.d
  tail call void @event_mm_free_(ptr noundef nonnull %i.d) #10
  br label %debug_lock_alloc.exit

bb.f:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr null, ptr %i.i, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.d
  %3 = zext i32 %1 to i64
  %4 = shl nuw i64 %3, 32
  %5 = or disjoint i64 %4, 3736121612
  store i64 %5, ptr %i.d, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i32 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.k, align 8
  br label %debug_lock_alloc.exit

bb.h:                                             ; preds = %bb.a
  %not. = xor i1 %i.a, true
  %i.l = select i1 %not., i1 true, i1 %i.c
  br i1 %i.l, label %bb.s, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.m = and i32 %1, 1
  %.not38 = icmp eq i32 %i.m, 0
  br i1 %.not38, label %bb.j, label %bb.p

bb.j:                                             ; preds = %bb.i
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 16), align 8
  tail call void %i.n(ptr noundef %0, i32 noundef %1) #10
  %i.o = tail call ptr @event_mm_malloc_(i64 noundef 32) #10 ; 8 uses
  %.not.i40 = icmp eq ptr %i.o, null
  br i1 %.not.i40, label %debug_lock_alloc.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 8), align 8 ; 2 uses
  %.not13.i41 = icmp eq ptr %i.p, null
  br i1 %.not13.i41, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.q = or disjoint i32 %1, 1
  %i.r = tail call ptr %i.p(i32 noundef %i.q) #10, !inline_history !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr %i.r, ptr %i.s, align 8
  %.not14.i42 = icmp eq ptr %i.r, null
  br i1 %.not14.i42, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  tail call void @event_mm_free_(ptr noundef nonnull %i.o) #10
  br label %debug_lock_alloc.exit

bb.n:                                             ; preds = %bb.k
  %i.t = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr null, ptr %i.t, align 8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.l
  %6 = zext i32 %1 to i64
  %7 = shl nuw i64 %6, 32
  %8 = or disjoint i64 %7, 3736121612
  store i64 %8, ptr %i.o, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store i64 0, ptr %i.v, align 8
  br label %debug_lock_alloc.exit

bb.p:                                             ; preds = %bb.i
  %i.w = tail call ptr @event_mm_malloc_(i64 noundef 32) #10 ; 6 uses
  %.not39 = icmp eq ptr %i.w, null
  br i1 %.not39, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 16), align 8
  tail call void %i.x(ptr noundef %0, i32 noundef %1) #10
  br label %debug_lock_alloc.exit

bb.r:                                             ; preds = %bb.p
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store ptr %0, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i32 %1, ptr %i.z, align 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store i32 0, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 0, ptr %i.ab, align 8
  br label %debug_lock_alloc.exit

bb.s:                                             ; preds = %bb.h
  %i.ac = load i32, ptr @evthread_lock_debugging_enabled_, align 4
  %i.ad = icmp ne i32 %i.ac, 0
  %or.cond5 = select i1 %i.a, i1 true, i1 %i.ad
  br i1 %or.cond5, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 8), align 8
  %i.af = tail call ptr %i.ae(i32 noundef %1) #10
  br label %debug_lock_alloc.exit

bb.u:                                             ; preds = %bb.s
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.v, label %debug_lock_alloc.exit49

bb.v:                                             ; preds = %bb.u
  %i.ag = tail call ptr @event_mm_malloc_(i64 noundef 32) #10 ; 8 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 8), align 8 ; 2 uses
  %.not13.i46 = icmp eq ptr %i.ah, null
  br i1 %.not13.i46, label %bb.y, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ai = or i32 %1, 1
  %i.aj = tail call ptr %i.ah(i32 noundef %i.ai) #10, !inline_history !5 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr %i.aj, ptr %i.ak, align 8
  %.not14.i47 = icmp eq ptr %i.aj, null
  br i1 %.not14.i47, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  tail call void @event_mm_free_(ptr noundef nonnull %i.ag) #10
  unreachable

bb.y:                                             ; preds = %bb.v
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store ptr null, ptr %i.al, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %9 = zext i32 %1 to i64
  %10 = shl nuw i64 %9, 32
  %11 = or disjoint i64 %10, 3736121612
  store i64 %11, ptr %i.ag, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i32 0, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 0, ptr %i.an, align 8
  br label %debug_lock_alloc.exit49

debug_lock_alloc.exit49:                          ; preds = %bb.z, %bb.u
  %i.ao = phi ptr [ %0, %bb.u ], [ %i.ag, %bb.z ] ; 5 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8
  %.not36 = icmp eq ptr %i.aq, null
  br i1 %.not36, label %bb.aa, label %debug_lock_alloc.exit

bb.aa:                                            ; preds = %debug_lock_alloc.exit49
  %i.ar = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 8), align 8
  %i.as = or i32 %1, 1
  %i.at = tail call ptr %i.ar(i32 noundef %i.as) #10 ; 2 uses
  store ptr %i.at, ptr %i.ap, align 8
  %.not37 = icmp eq ptr %i.at, null
  br i1 %.not37, label %bb.ab, label %debug_lock_alloc.exit

bb.ab:                                            ; preds = %bb.aa
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store i32 -200, ptr %i.au, align 8
  tail call void @event_mm_free_(ptr noundef nonnull %i.ao) #10
  br label %debug_lock_alloc.exit

debug_lock_alloc.exit:                            ; preds = %bb.o, %bb.m, %bb.j, %bb.g, %bb.e, %bb.b, %bb.ab, %bb.aa, %debug_lock_alloc.exit49, %bb.q, %bb.r, %bb.t
  %.2 = phi ptr [ %i.ao, %debug_lock_alloc.exit49 ], [ %i.af, %bb.t ], [ null, %bb.b ], [ %i.w, %bb.r ], [ null, %bb.q ], [ null, %bb.ab ], [ %i.ao, %bb.aa ], [ %i.d, %bb.g ], [ null, %bb.e ], [ %i.o, %bb.o ], [ null, %bb.m ], [ null, %bb.j ]
  ret ptr %.2
}

declare ptr @event_mm_malloc_(i64 noundef) local_unnamed_addr #4

declare void @event_mm_free_(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #9 = { noreturn nounwind }
attributes #10 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = distinct !{null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!5 = !{ptr @debug_lock_alloc}
end_hunk_0
