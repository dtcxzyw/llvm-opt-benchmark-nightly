Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evdns?download=true
inline.NumInlined: 196
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@evdns_base_search_clear:bb.a
  br i1 %.not6, label %bb.h, label %bb.g

bb.g:                                             ; preds = %search_postfix_clear.exit
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.r = tail call i32 %i.q(i32 noundef 0, ptr noundef nonnull %i.p) #19 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %search_postfix_clear.exit, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @evdns_search_clear() local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @current_base, align 8     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.e = tail call i32 %i.d(i32 noundef 0, ptr noundef nonnull %i.c) #19, !inline_history !31 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 5 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %search_state_decref.exit.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load i32, ptr %i.g, align 8
  %i.i = add nsw i32 %i.h, -1                     ; 2 uses
  store i32 %i.i, ptr %i.g, align 8
  %.not10.i.i.i = icmp eq i32 %i.i, 0
  br i1 %.not10.i.i.i, label %bb.e, label %search_state_decref.exit.i.i

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not1112.i.i.i = icmp eq ptr %i.k, null
  br i1 %.not1112.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.e, %.lr.ph.i.i.i
  %.013.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i ], [ %i.k, %bb.e ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.013.i.i.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  tail call void @event_mm_free_(ptr noundef nonnull %.013.i.i.i) #19
  %.not11.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not11.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i, !llvm.loop !5

._crit_edge.i.i.i:                                ; preds = %.lr.ph.i.i.i, %bb.e
  tail call void @event_mm_free_(ptr noundef nonnull %i.g) #19
  br label %search_state_decref.exit.i.i

search_state_decref.exit.i.i:                     ; preds = %._crit_edge.i.i.i, %bb.d, %bb.c
  %i.n = tail call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 5 uses
  %.not.i2.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i2.i.i, label %search_postfix_clear.exit.i, label %bb.f

bb.f:                                             ; preds = %search_state_decref.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  store i32 1, ptr %i.p, align 4
  br label %search_postfix_clear.exit.i

search_postfix_clear.exit.i:                      ; preds = %bb.f, %search_state_decref.exit.i.i
  store ptr %i.n, ptr %i.f, align 8
  %i.q = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not6.i = icmp eq ptr %i.q, null
  br i1 %.not6.i, label %evdns_base_search_clear.exit, label %bb.g

bb.g:                                             ; preds = %search_postfix_clear.exit.i
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.s = tail call i32 %i.r(i32 noundef 0, ptr noundef nonnull %i.q) #19, !inline_history !31 ; 0 uses
  br label %evdns_base_search_clear.exit

evdns_base_search_clear.exit:                     ; preds = %search_postfix_clear.exit.i, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @evdns_base_search_add(ptr nofree noundef captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #19 ; 0 uses
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.b
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.c
  %.0.i = phi ptr [ %i.g, %bb.c ], [ %1, %.preheader ] ; 4 uses
  %i.e = load i8, ptr %.0.i, align 1
  %i.f = icmp eq i8 %i.e, 46
  %i.g = getelementptr inbounds nuw i8, ptr %.0.i, i64 1
  br i1 %i.f, label %bb.c, label %bb.d, !llvm.loop !7

bb.d:                                             ; preds = %bb.c
  %i.h = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %.0.i) #21 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 5 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.e, label %.thread.i

bb.e:                                             ; preds = %bb.d
  %i.k = tail call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 6 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %.thread24.i, label %bb.f

.thread24.i:                                      ; preds = %bb.e
  store ptr null, ptr %i.i, align 8
  br label %search_postfix_add.exit

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  store i32 1, ptr %i.m, align 4
  store ptr %i.k, ptr %i.i, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.f, %bb.d
  %i.n = phi ptr [ %i.k, %bb.f ], [ %i.j, %bb.d ]
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  %i.p = load i32, ptr %i.o, align 8
  %i.q = add nsw i32 %i.p, 1
  store i32 %i.q, ptr %i.o, align 8
  %i.r = add i64 %i.h, 16
  %i.s = tail call ptr @event_mm_malloc_(i64 noundef %i.r) #19 ; 5 uses
  %.not22.i = icmp eq ptr %i.s, null
  br i1 %.not22.i, label %search_postfix_add.exit, label %bb.g

bb.g:                                             ; preds = %.thread.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.t, ptr nonnull align 1 %.0.i, i64 %i.h, i1 false)
  %i.u = load ptr, ptr %i.i, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.w, ptr %i.x, align 8
  %i.y = trunc i64 %i.h to i32
  store i32 %i.y, ptr %i.s, align 8
  %i.z = load ptr, ptr %i.i, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store ptr %i.s, ptr %i.aa, align 8
  br label %search_postfix_add.exit

search_postfix_add.exit:                          ; preds = %.thread24.i, %.thread.i, %bb.g
  %i.ab = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not7 = icmp eq ptr %i.ab, null
  br i1 %.not7, label %bb.i, label %bb.h

bb.h:                                             ; preds = %search_postfix_add.exit
  %i.ac = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ad = tail call i32 %i.ac(i32 noundef 0, ptr noundef nonnull %i.ab) #19 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %search_postfix_add.exit, %bb.h
  ret void
}

; Function Attrs: nounwind uwtable
define void @evdns_search_add(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @current_base, align 8
  tail call void @evdns_base_search_add(ptr noundef %i.a, ptr noundef %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @evdns_base_search_ndots_set(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.f, null
  br i1 %.not10, label %bb.d, label %.thread

bb.d:                                             ; preds = %bb.c
  %i.g = tail call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 5 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %.thread14, label %bb.e

.thread14:                                        ; preds = %bb.d
  store ptr null, ptr %i.e, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.g, align 8
  store ptr %i.g, ptr %i.e, align 8
  br label %.thread

.thread:                                          ; preds = %bb.c, %bb.e
  %i.i = phi ptr [ %i.g, %bb.e ], [ %i.f, %bb.c ]
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %1, ptr %i.j, align 4
  br label %bb.f

bb.f:                                             ; preds = %.thread14, %.thread
  %i.k = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not12 = icmp eq ptr %i.k, null
  br i1 %.not12, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.m = tail call i32 %i.l(i32 noundef 0, ptr noundef nonnull %i.k) #19 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define void @evdns_search_ndots_set(i32 noundef %0) local_unnamed_addr #3 {
bb.a:
  %i.a = load ptr, ptr @current_base, align 8     ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 304 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.e = tail call i32 %i.d(i32 noundef 0, ptr noundef nonnull %i.c) #19, !inline_history !32 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 280 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8              ; 2 uses
  %.not10.i = icmp eq ptr %i.g, null
  br i1 %.not10.i, label %bb.d, label %.thread.i

bb.d:                                             ; preds = %bb.c
  %i.h = tail call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 5 uses
  %.not.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i, label %.thread14.i, label %bb.e

.thread14.i:                                      ; preds = %bb.d
  store ptr null, ptr %i.f, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.i, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.h, align 8
  store ptr %i.h, ptr %i.f, align 8
  br label %.thread.i

.thread.i:                                        ; preds = %bb.e, %bb.c
  %i.j = phi ptr [ %i.h, %bb.e ], [ %i.g, %bb.c ]
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 4
  store i32 %0, ptr %i.k, align 4
  br label %bb.f

bb.f:                                             ; preds = %.thread.i, %.thread14.i
  %i.l = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not12.i = icmp eq ptr %i.l, null
  br i1 %.not12.i, label %evdns_base_search_ndots_set.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.n = tail call i32 %i.m(i32 noundef 0, ptr noundef nonnull %i.l) #19, !inline_history !32 ; 0 uses
  br label %evdns_base_search_ndots_set.exit

evdns_base_search_ndots_set.exit:                 ; preds = %bb.f, %bb.g
  ret void
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evdns_base_set_option(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2) local_unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 304 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #19 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = tail call fastcc i32 @evdns_base_set_option_impl(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef 15)
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.f, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.h = tail call i32 %i.g(i32 noundef 0, ptr noundef nonnull %i.f) #19 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %i.e
}

; Function Attrs: nounwind uwtable
define internal fastcc range(i32 -1, 1) i32 @evdns_base_set_option_impl(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr noundef %2, i32 noundef %3) unnamed_addr #3 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 4 uses
  %i.b = alloca ptr, align 8                      ; 4 uses
  %i.c = alloca ptr, align 8                      ; 4 uses
  %i.d = alloca ptr, align 8                      ; 4 uses
  %i.e = alloca ptr, align 8                      ; 4 uses
  %i.f = alloca ptr, align 8                      ; 5 uses
  %i.g = alloca ptr, align 8                      ; 5 uses
  %i.h = alloca ptr, align 8                      ; 4 uses
  %i.i = alloca i32, align 4                      ; 6 uses
  %4 = alloca %struct.timeval, align 8            ; 7 uses
  %i.j = tail call i64 @strlen(ptr noundef nonnull readonly dereferenceable(1) %1) #21 ; 11 uses
  %i.k = add i64 %i.j, -5
  %or.cond.i = icmp ult i64 %i.k, 2
  br i1 %or.cond.i, label %str_matches_option.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.l = icmp ugt i64 %i.j, 6
  br i1 %i.l, label %str_matches_option.exit, label %str_matches_option.exit135.thread

str_matches_option.exit:                          ; preds = %bb.a, %bb.b
  %.sink20.i = phi i64 [ %i.j, %bb.a ], [ 6, %bb.b ]
  %i.m = tail call i32 @strncmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.55, i64 noundef %.sink20.i) #21
  %.not.i.not = icmp eq i32 %i.m, 0
  br i1 %.not.i.not, label %bb.c, label %str_matches_option.exit.thread

bb.c:                                             ; preds = %str_matches_option.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h) #19
  %i.n = call i64 @__isoc23_strtol(ptr noundef %2, ptr noundef nonnull %i.h, i32 noundef 10) #19
  %i.o = load ptr, ptr %i.h, align 8
  %i.p = load i8, ptr %i.o, align 1
  %.not.i128 = icmp ne i8 %i.p, 0
  %i.q = trunc i64 %i.n to i32                    ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h) #19
  %i.r = icmp eq i32 %i.q, -1
  %i.s = select i1 %.not.i128, i1 true, i1 %i.r
  br i1 %i.s, label %.thread173, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.t = and i32 %3, 1
  %.not125 = icmp eq i32 %i.t, 0
  br i1 %.not125, label %.thread173, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.56, i32 noundef %i.q)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 3 uses
  %i.v = load ptr, ptr %i.u, align 8              ; 2 uses
  %.not126 = icmp eq ptr %i.v, null
  br i1 %.not126, label %bb.f, label %.thread

bb.f:                                             ; preds = %bb.e
  %i.w = call ptr @event_mm_malloc_(i64 noundef 24) #19 ; 5 uses
  %.not.i129 = icmp eq ptr %i.w, null
  br i1 %.not.i129, label %.thread171, label %bb.g

.thread171:                                       ; preds = %bb.f
  store ptr null, ptr %i.u, align 8
  br label %.thread173

bb.g:                                             ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.x, i8 0, i64 16, i1 false)
  store i32 1, ptr %i.w, align 8
  store ptr %i.w, ptr %i.u, align 8
  br label %.thread

.thread:                                          ; preds = %bb.e, %bb.g
  %i.y = phi ptr [ %i.w, %bb.g ], [ %i.v, %bb.e ]
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 4
  store i32 %i.q, ptr %i.z, align 4
  br label %.thread173

str_matches_option.exit.thread:                   ; preds = %str_matches_option.exit
  %i.aa = add i64 %i.j, -7
  %or.cond.i130 = icmp ult i64 %i.aa, 2
  br i1 %or.cond.i130, label %str_matches_option.exit135, label %bb.h

bb.h:                                             ; preds = %str_matches_option.exit.thread
  %i.ab = icmp ugt i64 %i.j, 8
  br i1 %i.ab, label %str_matches_option.exit135, label %str_matches_option.exit135.thread

str_matches_option.exit135:                       ; preds = %str_matches_option.exit.thread, %bb.h
  %.sink20.i133 = phi i64 [ %i.j, %str_matches_option.exit.thread ], [ 8, %bb.h ]
  %i.ac = tail call i32 @strncmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.57, i64 noundef %.sink20.i133) #21
  %.not.i134.not = icmp eq i32 %i.ac, 0
  br i1 %.not.i134.not, label %bb.i, label %str_matches_option.exit135.thread

bb.i:                                             ; preds = %str_matches_option.exit135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g) #19
  %i.ad = call double @strtod(ptr noundef %2, ptr noundef nonnull %i.g) #19 ; 3 uses
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = load i8, ptr %i.ae, align 1
  %.not.i136 = icmp ne i8 %i.af, 0
  %i.ag = fcmp olt double %i.ad, 0.000000e+00
  %or.cond10.i = select i1 %.not.i136, i1 true, i1 %i.ag
  br i1 %or.cond10.i, label %evdns_strtotimeval.exit.thread, label %evdns_strtotimeval.exit

evdns_strtotimeval.exit.thread:                   ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br label %.thread173

evdns_strtotimeval.exit:                          ; preds = %bb.i
  %i.ah = fptosi double %i.ad to i32              ; 3 uses
  %i.ai = zext nneg i32 %i.ah to i64
  %i.aj = sitofp i32 %i.ah to double
  %i.ak = fsub double %i.ad, %i.aj
  %i.al = fmul double %i.ak, 1.000000e+06
  %i.am = fptosi double %i.al to i32              ; 2 uses
  %i.an = sext i32 %i.am to i64
  %i.ao = icmp eq i32 %i.ah, 0
  %i.ap = icmp slt i32 %i.am, 1000
  %or.cond.i137 = select i1 %i.ao, i1 %i.ap, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g) #19
  br i1 %or.cond.i137, label %.thread173, label %bb.j

bb.j:                                             ; preds = %evdns_strtotimeval.exit
  %i.aq = and i32 %3, 4
  %.not124 = icmp eq i32 %i.aq, 0
  br i1 %.not124, label %.thread173, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.58, ptr noundef %2)
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.ai, ptr %i.ar, align 8
  %.sroa.4167.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %i.an, ptr %.sroa.4167.0..sroa_idx, align 8
  br label %.thread173

str_matches_option.exit135.thread:                ; preds = %bb.b, %bb.h, %str_matches_option.exit135
  %i.as = and i64 %i.j, -2                        ; 2 uses
  %or.cond.i139 = icmp eq i64 %i.as, 22
  br i1 %or.cond.i139, label %str_matches_option.exit144, label %bb.l

bb.l:                                             ; preds = %str_matches_option.exit135.thread
  %i.at = icmp ugt i64 %i.j, 23
  br i1 %i.at, label %str_matches_option.exit144, label %str_matches_option.exit144.thread

str_matches_option.exit144:                       ; preds = %str_matches_option.exit135.thread, %bb.l
  %.sink20.i142 = phi i64 [ %i.j, %str_matches_option.exit135.thread ], [ 23, %bb.l ]
  %i.au = tail call i32 @strncmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.59, i64 noundef %.sink20.i142) #21
  %.not.i143.not = icmp eq i32 %i.au, 0
  br i1 %.not.i143.not, label %bb.m, label %str_matches_option.exit144.thread

bb.m:                                             ; preds = %str_matches_option.exit144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f) #19
  %i.av = call double @strtod(ptr noundef %2, ptr noundef nonnull %i.f) #19 ; 3 uses
  %i.aw = load ptr, ptr %i.f, align 8
  %i.ax = load i8, ptr %i.aw, align 1
  %.not.i145 = icmp ne i8 %i.ax, 0
  %i.ay = fcmp olt double %i.av, 0.000000e+00
  %or.cond10.i146 = select i1 %.not.i145, i1 true, i1 %i.ay
  br i1 %or.cond10.i146, label %evdns_strtotimeval.exit150.thread, label %evdns_strtotimeval.exit150

evdns_strtotimeval.exit150.thread:                ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br label %.thread173

evdns_strtotimeval.exit150:                       ; preds = %bb.m
  %i.az = fptosi double %i.av to i32              ; 3 uses
  %i.ba = zext nneg i32 %i.az to i64
  %i.bb = sitofp i32 %i.az to double
  %i.bc = fsub double %i.av, %i.bb
  %i.bd = fmul double %i.bc, 1.000000e+06
  %i.be = fptosi double %i.bd to i32              ; 2 uses
  %i.bf = sext i32 %i.be to i64
  %i.bg = icmp eq i32 %i.az, 0
  %i.bh = icmp slt i32 %i.be, 1000
  %or.cond.i147 = select i1 %i.bg, i1 %i.bh, i1 false
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f) #19
  br i1 %or.cond.i147, label %.thread173, label %bb.n

bb.n:                                             ; preds = %evdns_strtotimeval.exit150
  %i.bi = and i32 %3, 4
  %.not123 = icmp eq i32 %i.bi, 0
  br i1 %.not123, label %.thread173, label %bb.o

bb.o:                                             ; preds = %bb.n
  tail call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.60, ptr noundef %2)
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i64 %i.ba, ptr %i.bj, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 248
  store i64 %i.bf, ptr %.sroa.4.0..sroa_idx, align 8
  br label %.thread173

str_matches_option.exit144.thread:                ; preds = %bb.l, %str_matches_option.exit144
  %or.cond.i151 = icmp eq i64 %i.as, 12
  br i1 %or.cond.i151, label %str_matches_option.exit156, label %bb.p

bb.p:                                             ; preds = %str_matches_option.exit144.thread
  %i.bk = icmp ugt i64 %i.j, 13
  br i1 %i.bk, label %str_matches_option.exit156, label %str_matches_option.exit156.thread

str_matches_option.exit156:                       ; preds = %str_matches_option.exit144.thread, %bb.p
  %.sink20.i154 = phi i64 [ %i.j, %str_matches_option.exit144.thread ], [ 13, %bb.p ]
  %i.bl = tail call i32 @strncmp(ptr noundef nonnull readonly %1, ptr noundef nonnull @.str.61, i64 noundef %.sink20.i154) #21
  %.not.i155.not = icmp eq i32 %i.bl, 0
  br i1 %.not.i155.not, label %bb.q, label %str_matches_option.exit156.thread

bb.q:                                             ; preds = %str_matches_option.exit156
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #19
  %i.bm = call i64 @__isoc23_strtol(ptr noundef %2, ptr noundef nonnull %i.e, i32 noundef 10) #19
  %i.bn = load ptr, ptr %i.e, align 8
  %i.bo = load i8, ptr %i.bn, align 1
  %.not.i.i = icmp ne i8 %i.bo, 0
  %i.bp = trunc i64 %i.bm to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #19
  %i.bq = icmp eq i32 %i.bp, -1
  %i.br = select i1 %.not.i.i, i1 true, i1 %i.bq
  br i1 %i.br, label %.thread173, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bs = and i32 %3, 4
  %.not122 = icmp eq i32 %i.bs, 0
  br i1 %.not122, label %.thread173, label %strtoint_clipped.exit

strtoint_clipped.exit:                            ; preds = %bb.r
  %i.bt = call i32 @llvm.smax.i32(i32 %i.bp, i32 1)
  %.0.i157.ph = call i32 @llvm.umin.i32(i32 %i.bt, i32 255) ; 2 uses
  call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.62, i32 noundef %.0.i157.ph)
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i32 %.0.i157.ph, ptr %i.bu, align 8
  br label %.thread173

str_matches_option.exit156.thread:                ; preds = %bb.p, %str_matches_option.exit156
  %i.bv = tail call fastcc i32 @str_matches_option(ptr noundef nonnull %1, ptr noundef nonnull @.str.63)
  %.not107 = icmp eq i32 %i.bv, 0
  br i1 %.not107, label %bb.v, label %bb.s

bb.s:                                             ; preds = %str_matches_option.exit156.thread
  %i.bw = tail call fastcc i32 @strtoint_clipped(ptr noundef %2, i32 noundef 65000) ; 3 uses
  %i.bx = icmp eq i32 %i.bw, -1
  br i1 %i.bx, label %.thread173, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.by = and i32 %3, 4
  %.not121 = icmp eq i32 %i.by, 0
  br i1 %.not121, label %.thread173, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (i32, ptr, ...) @evdns_log_(i32 noundef 0, ptr noundef nonnull @.str.64, i32 noundef %i.bw)
  tail call fastcc void @evdns_base_set_max_requests_inflight(ptr noundef %0, i32 noundef %i.bw)
  br label %.thread173

bb.v:                                             ; preds = %str_matches_option.exit156.thread
  %i.bz = tail call fastcc i32 @str_matches_option(ptr noundef nonnull %1, ptr noundef nonnull @.str.65)
  %.not108 = icmp eq i32 %i.bz, 0
  br i1 %.not108, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d) #19
  %i.ca = call i64 @__isoc23_strtol(ptr noundef %2, ptr noundef nonnull %i.d, i32 noundef 10) #19
  %i.cb = load ptr, ptr %i.d, align 8
  %i.cc = load i8, ptr %i.cb, align 1
  %.not.i158 = icmp ne i8 %i.cc, 0
  %i.cd = trunc i64 %i.ca to i32                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d) #19
  %i.ce = icmp eq i32 %i.cd, -1
  %i.cf = select i1 %.not.i158, i1 true, i1 %i.ce
  br i1 %i.cf, label %.thread173, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.cg = and i32 %3, 4
  %.not120 = icmp eq i32 %i.cg, 0
end_hunk_0
