Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/event?download=true
inline.NumInlined: 216
inline.NumDeleted: 66
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@event_config_new:bb.a

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
  br i1 %.not.i8, label %bb.f, label %event_debug_map_HT_NEXT_RMV.exit

bb.f:                                             ; preds = %.lr.ph
  %i.o = ptrtoint ptr %.val.i to i64
  %i.p = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_debug_map, i64 8), align 8 ; 3 uses
  %i.q = load ptr, ptr @global_debug_map, align 8 ; 2 uses
  %0 = lshr i64 %i.o, 6
  %i.r = zext i32 %i.p to i64
  %i.s = trunc i64 %0 to i32
  %.lhs.trunc.i = and i32 %i.s, 67108863
  %i.t = urem i32 %.lhs.trunc.i, %i.p
  %narrow = add nuw nsw i32 %i.t, 1               ; 2 uses
  %i.u = icmp ult i32 %narrow, %i.p
  br i1 %i.u, label %.lr.ph38, label %event_debug_map_HT_NEXT_RMV.exit

.lr.ph38:                                         ; preds = %bb.f
  %indvars.iv.next.i1035 = zext nneg i32 %narrow to i64
  br label %bb.h

bb.g:                                             ; preds = %bb.h
  %indvars.iv.next.i10 = add nuw nsw i64 %indvars.iv.next.i1036, 1 ; 2 uses
  %i.v = icmp samesign ult i64 %indvars.iv.next.i10, %i.r
  br i1 %i.v, label %bb.h, label %event_debug_map_HT_NEXT_RMV.exit, !llvm.loop !36

bb.h:                                             ; preds = %.lr.ph38, %bb.g
  %indvars.iv.next.i1036 = phi i64 [ %indvars.iv.next.i1035, %.lr.ph38 ], [ %indvars.iv.next.i10, %bb.g ] ; 3 uses
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i1036
  %i.x = load ptr, ptr %i.w, align 8
  %.not16.i = icmp eq ptr %i.x, null
  br i1 %.not16.i, label %bb.g, label %event_debug_map_HT_NEXT_RMV.exit.loopexit.split.loop.exit, !llvm.loop !36

event_debug_map_HT_NEXT_RMV.exit.loopexit.split.loop.exit: ; preds = %bb.h
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %indvars.iv.next.i1036
  br label %event_debug_map_HT_NEXT_RMV.exit

event_debug_map_HT_NEXT_RMV.exit:                 ; preds = %bb.g, %bb.f, %event_debug_map_HT_NEXT_RMV.exit.loopexit.split.loop.exit, %.lr.ph
  %.1.i = phi ptr [ %.018, %.lr.ph ], [ %i.y, %event_debug_map_HT_NEXT_RMV.exit.loopexit.split.loop.exit ], [ null, %bb.f ], [ null, %bb.g ] ; 2 uses
  %i.z = load ptr, ptr @mm_free_fn_, align 8      ; 2 uses
  %.not.i11 = icmp eq ptr %i.z, null
  br i1 %.not.i11, label %bb.j, label %bb.i

bb.i:                                             ; preds = %event_debug_map_HT_NEXT_RMV.exit
  tail call void %i.z(ptr noundef nonnull %i.i) #25, !inline_history !17
  br label %event_mm_free_.exit

bb.j:                                             ; preds = %event_debug_map_HT_NEXT_RMV.exit
  tail call void @free(ptr noundef %i.i) #25
  br label %event_mm_free_.exit

event_mm_free_.exit:                              ; preds = %bb.i, %bb.j
  %.not6 = icmp eq ptr %.1.i, null
  br i1 %.not6, label %._crit_edge, label %.lr.ph, !llvm.loop !37

._crit_edge:                                      ; preds = %bb.d, %event_mm_free_.exit, %bb.c
  %i.aa = load ptr, ptr @global_debug_map, align 8 ; 3 uses
  %.not.i12 = icmp eq ptr %i.aa, null
  br i1 %.not.i12, label %event_debug_map_HT_CLEAR.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge
  %i.ab = load ptr, ptr @mm_free_fn_, align 8     ; 2 uses
  %.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  tail call void %i.ab(ptr noundef nonnull %i.aa) #25, !inline_history !38
  br label %event_debug_map_HT_CLEAR.exit

bb.m:                                             ; preds = %bb.k
  tail call void @free(ptr noundef nonnull %i.aa) #25
  br label %event_debug_map_HT_CLEAR.exit

event_debug_map_HT_CLEAR.exit:                    ; preds = %._crit_edge, %bb.l, %bb.m
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) @global_debug_map, i8 0, i64 20, i1 false)
  store i32 -1, ptr getelementptr inbounds nuw (i8, ptr @global_debug_map, i64 20), align 4
  %i.ac = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not7 = icmp eq ptr %i.ac, null
  br i1 %.not7, label %bb.o, label %bb.n

bb.n:                                             ; preds = %event_debug_map_HT_CLEAR.exit
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ae = tail call i32 %i.ad(i32 noundef 0, ptr noundef nonnull %i.ac) #25 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %event_debug_map_HT_CLEAR.exit
  store i32 0, ptr @event_debug_mode_on_, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @event_mm_calloc_(i64 noundef %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %0, 0
  %i.b = icmp eq i64 %1, 0
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr @mm_malloc_fn_, align 8    ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = mul i64 %1, %0                           ; 2 uses
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %1, i64 %0)
  %mul.ov = extractvalue { i64, i1 } %mul, 1
  br i1 %mul.ov, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = tail call ptr %i.c(i64 noundef %i.d) #25 ; 3 uses
  %.not20 = icmp eq ptr %i.e, null
  br i1 %.not20, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.e, i8 0, i64 %i.d, i1 false)
  br label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.f = tail call noalias ptr @calloc(i64 noundef %0, i64 noundef %1) #30
  br label %bb.h

bb.g:                                             ; preds = %bb.c, %bb.d
  %i.g = tail call ptr @__errno_location() #29
  store i32 12, ptr %i.g, align 4
  br label %bb.h

bb.h:                                             ; preds = %bb.e, %bb.a, %bb.g, %bb.f
  %.1 = phi ptr [ %i.f, %bb.f ], [ %i.e, %bb.e ], [ null, %bb.g ], [ null, %bb.a ]
  ret ptr %.1
}

declare void @event_warn(ptr noundef, ...) local_unnamed_addr #7

declare ptr @evutil_getenv_(ptr noundef) local_unnamed_addr #7

declare i32 @evutil_configure_monotonic_time_(ptr noundef, i32 noundef) local_unnamed_addr #7

declare void @evmap_io_initmap_(ptr noundef) local_unnamed_addr #7

declare void @evmap_signal_initmap_(ptr noundef) local_unnamed_addr #7

declare void @event_changelist_init_(ptr noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #1

declare void @event_warnx(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define void @event_base_free(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  tail call fastcc void @event_base_free_(ptr noundef %0, i32 noundef 1)
  ret void
}

declare void @event_msgx(ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @event_base_priority_init(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.f = load i32, ptr %i.e, align 8
  %i.g = icmp ne i32 %i.f, 0
  %i.h = add i32 %1, -256
  %i.i = icmp ult i32 %i.h, -255
  %or.cond3 = or i1 %i.i, %i.g
  br i1 %or.cond3, label %.loopexit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 256 ; 4 uses
  %i.k = load i32, ptr %i.j, align 8              ; 2 uses
  %i.l = icmp eq i32 %1, %i.k
  br i1 %i.l, label %.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not34 = icmp eq i32 %i.k, 0
  br i1 %.not34, label %bb.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = load ptr, ptr @mm_free_fn_, align 8      ; 2 uses
  %.not.i = icmp eq ptr %i.o, null
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.o(ptr noundef %i.n) #25, !inline_history !17
  br label %event_mm_free_.exit

bb.h:                                             ; preds = %bb.f
  tail call void @free(ptr noundef %i.n) #25
  br label %event_mm_free_.exit

event_mm_free_.exit:                              ; preds = %bb.g, %bb.h
  store i32 0, ptr %i.j, align 8
  br label %bb.i

bb.i:                                             ; preds = %event_mm_free_.exit, %bb.e
  %i.p = zext nneg i32 %1 to i64                  ; 2 uses
  %i.q = load ptr, ptr @mm_malloc_fn_, align 8    ; 2 uses
  %.not.i36 = icmp eq ptr %i.q, null
end_hunk_0
begin_hunk_1_@event_add_nolock_:bb.a
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
  %spec.select = select i1 %i.da, i32 0, i32 %.0113181
  %spec.select150 = zext i1 %i.da to i32
  br label %bb.aa

bb.aa:                                            ; preds = %.thread, %bb.u, %bb.t
  %.1114 = phi i32 [ 0, %bb.u ], [ 0, %bb.t ], [ %spec.select, %.thread ] ; 6 uses
  %.0 = phi i32 [ 0, %bb.u ], [ 0, %bb.t ], [ %spec.select150, %.thread ] ; 7 uses
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
  %6 = lshr i64 %.val, 20
  %7 = trunc i64 %6 to i32
  %i.fk = and i32 %7, 255
  %i.fl = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.fm = load i32, ptr %i.fl, align 8
  %i.fn = icmp sge i32 %i.fk, %i.fm               ; 2 uses
  br i1 %i.de, label %bb.as, label %bb.at

is_common_timeout.exit.thread:                    ; preds = %gettime.exit
  br i1 %i.de, label %bb.as, label %is_common_timeout.exit.thread..thread191_crit_edge

is_common_timeout.exit.thread..thread191_crit_edge: ; preds = %is_common_timeout.exit.thread
  %.pre209 = load i64, ptr %5, align 16
  br label %.thread191

bb.as:                                            ; preds = %is_common_timeout.exit.thread, %is_common_timeout.exit
  %.0.i160190 = phi i1 [ true, %is_common_timeout.exit.thread ], [ %i.fn, %is_common_timeout.exit ]
  %i.fo = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.fo, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.ay

bb.at:                                            ; preds = %is_common_timeout.exit
  %.pre210 = load i64, ptr %5, align 16           ; 2 uses
  br i1 %i.fn, label %.thread191, label %bb.au

bb.au:                                            ; preds = %bb.at
  %.sroa.0.0.copyload = load i64, ptr %1, align 8
  %i.fp = and i64 %.val, 1048575
  %i.fq = add nsw i64 %.pre210, %.sroa.0.0.copyload ; 2 uses
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i64 %i.fq, ptr %i.fr, align 8
  %i.fs = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ft = load i64, ptr %i.fs, align 8
  %i.fu = add nsw i64 %i.ft, %i.fp                ; 4 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 3 uses
  store i64 %i.fu, ptr %i.fv, align 8
  %i.fw = icmp sgt i64 %i.fu, 999999
  br i1 %i.fw, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  %i.fx = add nsw i64 %i.fq, 1
  store i64 %i.fx, ptr %i.fr, align 8
  %i.fy = add nsw i64 %i.fu, -1000000             ; 2 uses
  store i64 %i.fy, ptr %i.fv, align 8
  br label %bb.aw

bb.aw:                                            ; preds = %bb.av, %bb.au
  %i.fz = phi i64 [ %i.fy, %bb.av ], [ %i.fu, %bb.au ]
  %i.ga = load i64, ptr %i.fi, align 8
  %i.gb = and i64 %i.ga, -1048576
  %i.gc = or i64 %i.fz, %i.gb
  store i64 %i.gc, ptr %i.fv, align 8
  br label %bb.ay

.thread191:                                       ; preds = %is_common_timeout.exit.thread..thread191_crit_edge, %bb.at
  %i.gd = phi i64 [ %.pre209, %is_common_timeout.exit.thread..thread191_crit_edge ], [ %.pre210, %bb.at ]
  %i.ge = load i64, ptr %1, align 8
  %i.gf = add nsw i64 %i.ge, %i.gd                ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  store i64 %i.gf, ptr %i.gg, align 8
  %i.gh = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.gi = load i64, ptr %i.gh, align 8
  %i.gj = load i64, ptr %i.fi, align 8
  %i.gk = add nsw i64 %i.gj, %i.gi                ; 3 uses
  %i.gl = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  store i64 %i.gk, ptr %i.gl, align 8
  %i.gm = icmp sgt i64 %i.gk, 999999
  br i1 %i.gm, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %.thread191
  %i.gn = add nsw i64 %i.gf, 1
  store i64 %i.gn, ptr %i.gg, align 8
  %i.go = add nsw i64 %i.gk, -1000000
  store i64 %i.go, ptr %i.gl, align 8
  br label %bb.ay

bb.ay:                                            ; preds = %bb.as, %.thread191, %bb.ax, %bb.aw
  %.0.i160188 = phi i1 [ %.0.i160190, %bb.as ], [ true, %.thread191 ], [ true, %bb.ax ], [ false, %bb.aw ]
  %i.gp = load i32, ptr @event_debug_logging_mask_, align 4
  %.not144 = icmp eq i32 %i.gp, 0
  br i1 %.not144, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.gq = load i64, ptr %1, align 8
  %i.gr = trunc i64 %i.gq to i32
  %i.gs = load i64, ptr %i.fi, align 8
  %i.gt = trunc i64 %i.gs to i32
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8
  call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.26, ptr noundef nonnull %0, i32 noundef %i.gr, i32 noundef %i.gt, ptr noundef %i.gv) #25
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gw = load i16, ptr %i.aq, align 8
  %i.gx = and i16 %i.gw, 16
  %.not.i161 = icmp eq i16 %i.gx, 0
  %i.gy = zext i1 %.not.i161 to i32
  %i.gz = getelementptr inbounds nuw i8, ptr %i.b, i64 208 ; 2 uses
  %i.ha = load i32, ptr %i.gz, align 8
  %i.hb = add nsw i32 %i.ha, %i.gy                ; 2 uses
  store i32 %i.hb, ptr %i.gz, align 8
  %i.hc = getelementptr inbounds nuw i8, ptr %i.b, i64 212 ; 2 uses
  %i.hd = load i32, ptr %i.hc, align 4
  %..i162 = call i32 @llvm.smax.i32(i32 %i.hd, i32 %i.hb)
  store i32 %..i162, ptr %i.hc, align 4
  %i.he = load i16, ptr %i.aq, align 8
  %i.hf = or i16 %i.he, 1
  store i16 %i.hf, ptr %i.aq, align 8
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.hh = getelementptr i8, ptr %0, i64 120       ; 3 uses
  %.val.i = load i64, ptr %i.hh, align 8          ; 3 uses
  %i.hi = and i64 %.val.i, 4026531840
  %.not.i.i163 = icmp eq i64 %i.hi, 1342177280
  br i1 %.not.i.i163, label %is_common_timeout.exit.i, label %is_common_timeout.exit.thread.i

is_common_timeout.exit.i:                         ; preds = %bb.ba
  %8 = lshr i64 %.val.i, 20                       ; 2 uses
  %9 = trunc i64 %8 to i32
  %i.hj = and i32 %9, 255
  %i.hk = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  %i.hl = load i32, ptr %i.hk, align 8
  %.not28.i = icmp slt i32 %i.hj, %i.hl
  br i1 %.not28.i, label %bb.bb, label %is_common_timeout.exit.thread.i

bb.bb:                                            ; preds = %is_common_timeout.exit.i
  %i.hm = getelementptr i8, ptr %i.b, i64 280
  %.val20.i = load ptr, ptr %i.hm, align 8
  %i.hn = and i64 %8, 255
  %i.ho = getelementptr inbounds nuw [8 x i8], ptr %.val20.i, i64 %i.hn
  %i.hp = load ptr, ptr %i.ho, align 8            ; 4 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 8 ; 3 uses
  %.pn37.i.i = load ptr, ptr %i.hq, align 8
  %.0.in.in38.i.i = getelementptr inbounds nuw i8, ptr %.pn37.i.i, i64 8
  %.0.in39.i.i = load ptr, ptr %.0.in.in38.i.i, align 8
  %.040.i.i = load ptr, ptr %.0.in39.i.i, align 8 ; 2 uses
  %.not41.i.i = icmp eq ptr %.040.i.i, null
  br i1 %.not41.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.bb
  %i.hr = load i64, ptr %i.hg, align 8            ; 2 uses
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bj, %.lr.ph.i.i
  %.042.i.i = phi ptr [ %.040.i.i, %.lr.ph.i.i ], [ %.0.i22.i, %bb.bj ] ; 4 uses
  %i.hs = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 112
  %i.ht = load i64, ptr %i.hs, align 8            ; 2 uses
  %i.hu = icmp eq i64 %i.hr, %i.ht
  br i1 %i.hu, label %bb.bd, label %bb.be

bb.bd:                                            ; preds = %bb.bc
  %i.hv = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 120
  %i.hw = load i64, ptr %i.hv, align 8
  %.not34.i.i = icmp slt i64 %.val.i, %i.hw
  br i1 %.not34.i.i, label %bb.bj, label %bb.bf

bb.be:                                            ; preds = %bb.bc
  %.not33.i.i = icmp slt i64 %i.hr, %i.ht
  br i1 %.not33.i.i, label %bb.bj, label %bb.bf

bb.bf:                                            ; preds = %bb.be, %bb.bd
  %i.hx = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 40 ; 3 uses
  %i.hy = load ptr, ptr %i.hx, align 8            ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.hy, ptr %i.hz, align 8
  %.not35.i.i = icmp eq ptr %i.hy, null
  br i1 %.not35.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hy, i64 48
  store ptr %i.hz, ptr %i.ia, align 8
  br label %bb.bi

bb.bh:                                            ; preds = %bb.bf
  store ptr %i.hz, ptr %i.hq, align 8
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %bb.bg
  store ptr %0, ptr %i.hx, align 8
  br label %insert_common_timeout_inorder.exit.i

bb.bj:                                            ; preds = %bb.be, %bb.bd
  %i.ib = getelementptr inbounds nuw i8, ptr %.042.i.i, i64 48
  %.pn.i.i = load ptr, ptr %i.ib, align 8
  %.0.in.in.i.i = getelementptr inbounds nuw i8, ptr %.pn.i.i, i64 8
  %.0.in.i.i = load ptr, ptr %.0.in.in.i.i, align 8
  %.0.i22.i = load ptr, ptr %.0.in.i.i, align 8   ; 2 uses
  %.not.i23.i = icmp eq ptr %.0.i22.i, null
  br i1 %.not.i23.i, label %._crit_edge.i.i, label %bb.bc, !llvm.loop !53

._crit_edge.i.i:                                  ; preds = %bb.bj, %bb.bb
  %i.ic = load ptr, ptr %i.hp, align 8            ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  store ptr %i.ic, ptr %i.id, align 8
  %.not32.i.i = icmp eq ptr %i.ic, null
  br i1 %.not32.i.i, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %._crit_edge.i.i
  %i.ie = getelementptr inbounds nuw i8, ptr %i.ic, i64 48
  store ptr %i.id, ptr %i.ie, align 8
  br label %bb.bm

bb.bl:                                            ; preds = %._crit_edge.i.i
  store ptr %i.id, ptr %i.hq, align 8
  br label %bb.bm

bb.bm:                                            ; preds = %bb.bl, %bb.bk
  store ptr %0, ptr %i.hp, align 8
  br label %insert_common_timeout_inorder.exit.i

insert_common_timeout_inorder.exit.i:             ; preds = %bb.bm, %bb.bi
  %.sink.i.i = phi ptr [ %i.hp, %bb.bm ], [ %i.hx, %bb.bi ]
  %i.if = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sink.i.i, ptr %i.if, align 8
  br label %event_queue_insert_timeout.exit

is_common_timeout.exit.thread.i:                  ; preds = %is_common_timeout.exit.i, %bb.ba
  %i.ig = getelementptr inbounds nuw i8, ptr %i.b, i64 328 ; 4 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.b, i64 336 ; 3 uses
  %i.ii = load i32, ptr %i.ih, align 8            ; 4 uses
  %i.ij = icmp eq i32 %i.ii, -1
  br i1 %i.ij, label %event_queue_insert_timeout.exit, label %bb.bn

bb.bn:                                            ; preds = %is_common_timeout.exit.thread.i
  %i.ik = getelementptr inbounds nuw i8, ptr %i.b, i64 340 ; 2 uses
  %i.il = load i32, ptr %i.ik, align 4            ; 3 uses
  %.not.i24.i = icmp ugt i32 %i.il, %i.ii
  br i1 %.not.i24.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.im = add nuw i32 %i.ii, 1
  %.not.i.i.i164 = icmp eq i32 %i.il, 0
  %i.in = shl i32 %i.il, 1
  %spec.select.i.i.i = select i1 %.not.i.i.i164, i32 8, i32 %i.in
  %.014.i.i.i = call i32 @llvm.umax.i32(i32 %spec.select.i.i.i, i32 %i.im) ; 2 uses
  %i.io = load ptr, ptr %i.ig, align 8            ; 2 uses
  %i.ip = zext i32 %.014.i.i.i to i64
  %i.iq = shl nuw nsw i64 %i.ip, 3                ; 2 uses
  %i.ir = load ptr, ptr @mm_realloc_fn_, align 8  ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ir, null
  br i1 %.not.i.i.i.i, label %bb.bq, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.is = call ptr %i.ir(ptr noundef %i.io, i64 noundef %i.iq) #25, !inline_history !54
  br label %event_mm_realloc_.exit.i.i.i

bb.bq:                                            ; preds = %bb.bo
  %i.it = call ptr @realloc(ptr noundef %i.io, i64 noundef %i.iq) #27
  br label %event_mm_realloc_.exit.i.i.i

event_mm_realloc_.exit.i.i.i:                     ; preds = %bb.bq, %bb.bp
  %.0.i.i.i.i = phi ptr [ %i.is, %bb.bp ], [ %i.it, %bb.bq ] ; 2 uses
  %.not20.i.i.i = icmp eq ptr %.0.i.i.i.i, null
  br i1 %.not20.i.i.i, label %event_queue_insert_timeout.exit, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %event_mm_realloc_.exit.i.i.i
  store ptr %.0.i.i.i.i, ptr %i.ig, align 8
  store i32 %.014.i.i.i, ptr %i.ik, align 4
  %.pre.i.i = load i32, ptr %i.ih, align 8
  br label %bb.br

bb.br:                                            ; preds = %.thread.i.i.i, %bb.bn
  %i.iu = phi i32 [ %.pre.i.i, %.thread.i.i.i ], [ %i.ii, %bb.bn ] ; 3 uses
  %i.iv = add i32 %i.iu, 1
  store i32 %i.iv, ptr %i.ih, align 8
  %.not26.i.i.i = icmp eq i32 %i.iu, 0
  br i1 %.not26.i.i.i, label %min_heap_shift_up_.exit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.br, %bb.bt
  %.02127.i.i.i = phi i32 [ %.028.i.i.i, %bb.bt ], [ %i.iu, %bb.br ] ; 5 uses
  %.028.in.i.i.i = add i32 %.02127.i.i.i, -1
  %.028.i.i.i = lshr i32 %.028.in.i.i.i, 1        ; 3 uses
  %i.iw = load ptr, ptr %i.ig, align 8            ; 2 uses
  %i.ix = zext nneg i32 %.028.i.i.i to i64
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.ix
  %i.iz = load ptr, ptr %i.iy, align 8            ; 4 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.iz, i64 112
  %i.jb = load i64, ptr %i.ja, align 8            ; 2 uses
  %i.jc = load i64, ptr %i.hg, align 8            ; 2 uses
  %i.jd = icmp eq i64 %i.jb, %i.jc
  br i1 %i.jd, label %.split.i.i.i, label %bb.bs

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.je = getelementptr inbounds nuw i8, ptr %i.iz, i64 120
  %i.jf = load i64, ptr %i.je, align 8
  %i.jg = load i64, ptr %i.hh, align 8
  %i.jh = icmp sgt i64 %i.jf, %i.jg
  br i1 %i.jh, label %bb.bt, label %min_heap_shift_up_.exit.i.i

bb.bs:                                            ; preds = %.lr.ph.i.i.i
  %i.ji = icmp sgt i64 %i.jb, %i.jc
  br i1 %i.ji, label %bb.bt, label %min_heap_shift_up_.exit.i.i

bb.bt:                                            ; preds = %bb.bs, %.split.i.i.i
  %i.jj = zext i32 %.02127.i.i.i to i64
  %i.jk = getelementptr inbounds nuw [8 x i8], ptr %i.iw, i64 %i.jj
  store ptr %i.iz, ptr %i.jk, align 8
  %i.jl = getelementptr inbounds nuw i8, ptr %i.iz, i64 40
  store i32 %.02127.i.i.i, ptr %i.jl, align 8
  %.not.i7.i.i = icmp eq i32 %.028.i.i.i, 0
  br i1 %.not.i7.i.i, label %min_heap_shift_up_.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !55

min_heap_shift_up_.exit.i.i:                      ; preds = %bb.bt, %bb.bs, %.split.i.i.i, %bb.br
  %.021.lcssa.i.i.i = phi i32 [ 0, %bb.br ], [ %.02127.i.i.i, %bb.bs ], [ 0, %bb.bt ], [ %.02127.i.i.i, %.split.i.i.i ] ; 2 uses
  %i.jm = load ptr, ptr %i.ig, align 8
  %i.jn = zext i32 %.021.lcssa.i.i.i to i64
  %i.jo = getelementptr inbounds nuw [8 x i8], ptr %i.jm, i64 %i.jn
  store ptr %0, ptr %i.jo, align 8
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.021.lcssa.i.i.i, ptr %i.jp, align 8
  br label %event_queue_insert_timeout.exit

event_queue_insert_timeout.exit:                  ; preds = %insert_common_timeout_inorder.exit.i, %is_common_timeout.exit.thread.i, %event_mm_realloc_.exit.i.i.i, %min_heap_shift_up_.exit.i.i
  br i1 %.0.i160188, label %bb.bw, label %bb.bu

bb.bu:                                            ; preds = %event_queue_insert_timeout.exit
  %i.jq = getelementptr i8, ptr %i.b, i64 280
  %.val151 = load ptr, ptr %i.jq, align 8
  %.val152 = load i64, ptr %i.hh, align 8
  %i.jr = lshr i64 %.val152, 20
  %i.js = and i64 %i.jr, 255
  %i.jt = getelementptr inbounds nuw [8 x i8], ptr %.val151, i64 %i.js
  %i.ju = load ptr, ptr %i.jt, align 8            ; 2 uses
  %i.jv = load ptr, ptr %i.ju, align 8
  %i.jw = icmp eq ptr %0, %i.jv
  br i1 %i.jw, label %bb.bv, label %min_heap_top_.exit.thread

bb.bv:                                            ; preds = %bb.bu
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
end_hunk_1
begin_hunk_2_@event_base_get_npriorities:bb.a

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.h = tail call i32 %i.g(i32 noundef 0, ptr noundef nonnull %i.d) #25 ; 0 uses
  %.pr = load ptr, ptr %i.c, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %spec.select, i64 256
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %.not9 = icmp eq ptr %.pr, null
  br i1 %.not9, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.l = tail call i32 %i.k(i32 noundef 0, ptr noundef nonnull %.pr) #25 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.m = phi i32 [ %i.f, %.thread ], [ %i.j, %bb.c ], [ %i.j, %bb.b ]
  ret i32 %i.m
}

; Function Attrs: nounwind uwtable
define i32 @event_base_get_num_events(ptr nofree noundef readonly captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = and i32 %1, 1
  %.not15 = icmp eq i32 %i.e, 0
  br i1 %.not15, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load i32, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.0 = phi i32 [ %i.g, %bb.d ], [ 0, %bb.c ]     ; 2 uses
  %i.h = and i32 %1, 2
  %.not16 = icmp eq i32 %i.h, 0
  br i1 %.not16, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.j = load i32, ptr %i.i, align 8
  %i.k = add nsw i32 %i.j, %.0
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.1 = phi i32 [ %i.k, %bb.f ], [ %.0, %bb.e ]   ; 2 uses
  %i.l = and i32 %1, 4
  %.not17 = icmp eq i32 %i.l, 0
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.n = load i32, ptr %i.m, align 8
  %i.o = add nsw i32 %i.n, %.1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.2 = phi i32 [ %i.o, %bb.h ], [ %.1, %bb.g ]
  %i.p = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.r = tail call i32 %i.q(i32 noundef 0, ptr noundef nonnull %i.p) #25 ; 0 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret i32 %.2
}

; Function Attrs: nounwind uwtable
define i32 @event_base_get_max_events(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = and i32 %1, 1
  %.not21 = icmp eq i32 %i.e, 0
  br i1 %.not21, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 220 ; 2 uses
  %i.g = load i32, ptr %i.f, align 4              ; 3 uses
  %.not22 = icmp eq i32 %2, 0
  br i1 %.not22, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  store i32 0, ptr %i.f, align 4
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.0 = phi i32 [ %i.g, %bb.e ], [ 0, %bb.c ]     ; 2 uses
  %i.h = and i32 %1, 2
  %.not23 = icmp eq i32 %i.h, 0
  br i1 %.not23, label %bb.i, label %bb.g

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
  %2 = lshr i64 %i.e, 20
  %3 = trunc i64 %2 to i32
  %i.h = and i32 %3, 255
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.j = load i32, ptr %i.i, align 8
  %.not99 = icmp slt i32 %i.h, %i.j
  %i.k = and i64 %i.e, 1048575
  %spec.select123 = select i1 %.not99, i64 %i.k, i64 %i.e
  br label %is_common_timeout.exit.thread

is_common_timeout.exit.thread:                    ; preds = %is_common_timeout.exit, %bb.d
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.69 = phi i64 [ %i.e, %bb.d ], [ %spec.select123, %is_common_timeout.exit ] ; 2 uses
  %i.l = udiv i64 %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.69, 1000000
  %i.m = add nsw i64 %i.l, %.sroa.0.0.copyload
  store i64 %i.m, ptr %.sroa.0, align 8
  %i.n = urem i64 %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.8.69, 1000000 ; 2 uses
  store i64 %i.n, ptr %.sroa.7, align 8
  br label %bb.e

bb.e:                                             ; preds = %is_common_timeout.exit.thread, %bb.c
  %i.o = phi i64 [ %i.n, %is_common_timeout.exit.thread ], [ %i.e, %bb.c ]
  %.057.sroa.phi63 = phi ptr [ %.sroa.0, %is_common_timeout.exit.thread ], [ %1, %bb.c ] ; 2 uses
  %.057.sroa.phi66 = phi ptr [ %.sroa.7, %is_common_timeout.exit.thread ], [ %.057.sroa.gep62, %bb.c ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 4 uses
  %i.q = load i32, ptr %i.p, align 8              ; 6 uses
  %i.r = icmp sgt i32 %i.q, 0
  br i1 %i.r, label %.lr.ph, label %._crit_edge.thread

.lr.ph:                                           ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = load i64, ptr %.057.sroa.phi63, align 8
  %wide.trip.count = zext nneg i32 %i.q to i64
  br label %bb.f

bb.f:                                             ; preds = %.lr.ph, %bb.h
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.h ] ; 2 uses
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv
  %i.w = load ptr, ptr %i.v, align 8              ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.y = load i64, ptr %i.x, align 8
  %i.z = icmp eq i64 %i.u, %i.y
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = and i64 %i.ab, 1048575
  %i.ad = icmp eq i64 %i.o, %i.ac
  br i1 %i.ad, label %.loopexit.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.f, !llvm.loop !59

._crit_edge:                                      ; preds = %bb.h
  %i.ae = icmp eq i32 %i.q, 256
  br i1 %i.ae, label %bb.i, label %._crit_edge.thread

bb.i:                                             ; preds = %._crit_edge
  tail call void (ptr, ...) @event_warnx(ptr noundef nonnull @.str.11, ptr noundef nonnull @__func__.event_base_init_common_timeout, i32 noundef 256) #25
  br label %.loopexit

._crit_edge.thread:                               ; preds = %bb.e, %._crit_edge
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 292 ; 2 uses
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = icmp eq i32 %i.ag, %i.q
  br i1 %i.ah, label %bb.j, label %bb.n

bb.j:                                             ; preds = %._crit_edge.thread
  %i.ai = icmp slt i32 %i.q, 16
  %i.aj = shl nuw nsw i32 %i.q, 1
  %spec.select = select i1 %i.ai, i32 16, i32 %i.aj ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.al = load ptr, ptr %i.ak, align 8            ; 2 uses
  %i.am = zext nneg i32 %spec.select to i64
  %i.an = shl nuw nsw i64 %i.am, 3                ; 2 uses
  %i.ao = load ptr, ptr @mm_realloc_fn_, align 8  ; 2 uses
  %.not.i81 = icmp eq ptr %i.ao, null
  br i1 %.not.i81, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ap = tail call ptr %i.ao(ptr noundef %i.al, i64 noundef %i.an) #25, !inline_history !18
  br label %event_mm_realloc_.exit

bb.l:                                             ; preds = %bb.j
  %i.aq = tail call ptr @realloc(ptr noundef %i.al, i64 noundef %i.an) #27
  br label %event_mm_realloc_.exit

event_mm_realloc_.exit:                           ; preds = %bb.k, %bb.l
  %.0.i82 = phi ptr [ %i.ap, %bb.k ], [ %i.aq, %bb.l ] ; 2 uses
  %.not77 = icmp eq ptr %.0.i82, null
  br i1 %.not77, label %bb.m, label %.thread91

.thread91:                                        ; preds = %event_mm_realloc_.exit
  store i32 %spec.select, ptr %i.af, align 4
  store ptr %.0.i82, ptr %i.ak, align 8
  br label %bb.n

bb.m:                                             ; preds = %event_mm_realloc_.exit
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.12, ptr noundef nonnull @__func__.event_base_init_common_timeout) #25
  br label %.loopexit

bb.n:                                             ; preds = %.thread91, %._crit_edge.thread
  %i.ar = load ptr, ptr @mm_malloc_fn_, align 8   ; 2 uses
  %.not.i83 = icmp eq ptr %i.ar, null
  br i1 %.not.i83, label %event_mm_calloc_.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.as = tail call ptr %i.ar(i64 noundef 168) #25, !inline_history !19 ; 3 uses
  %.not20.i = icmp eq ptr %i.as, null
  br i1 %.not20.i, label %event_mm_calloc_.exit.thread, label %event_mm_calloc_.exit.thread95

event_mm_calloc_.exit.thread95:                   ; preds = %bb.o
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(168) %i.as, i8 0, i64 168, i1 false)
  br label %bb.q

event_mm_calloc_.exit.thread:                     ; preds = %bb.o
  %i.at = tail call ptr @__errno_location() #29
  store i32 12, ptr %i.at, align 4
  br label %bb.p

event_mm_calloc_.exit:                            ; preds = %bb.n
  %i.au = tail call noalias dereferenceable_or_null(168) ptr @calloc(i64 noundef 1, i64 noundef 168) #30 ; 2 uses
  %.not78 = icmp eq ptr %i.au, null
  br i1 %.not78, label %bb.p, label %bb.q

bb.p:                                             ; preds = %event_mm_calloc_.exit.thread, %event_mm_calloc_.exit
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.event_base_init_common_timeout) #25
  br label %.loopexit

bb.q:                                             ; preds = %event_mm_calloc_.exit.thread95, %event_mm_calloc_.exit
  %.1.i98 = phi ptr [ %i.as, %event_mm_calloc_.exit.thread95 ], [ %i.au, %event_mm_calloc_.exit ] ; 14 uses
  store ptr null, ptr %.1.i98, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %.1.i98, i64 8
  store ptr %.1.i98, ptr %i.av, align 8
  %i.aw = load i64, ptr %.057.sroa.phi63, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %.1.i98, i64 16 ; 2 uses
  store i64 %i.aw, ptr %i.ax, align 8
  %i.ay = load i64, ptr %.057.sroa.phi66, align 8
  %i.az = load i32, ptr %i.p, align 8
  %i.ba = shl i32 %i.az, 20
  %i.bb = sext i32 %i.ba to i64
  %i.bc = or i64 %i.ay, %i.bb
  %i.bd = or i64 %i.bc, 1342177280
  %i.be = getelementptr inbounds nuw i8, ptr %.1.i98, i64 24
  store i64 %i.bd, ptr %i.be, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.1.i98, i64 32 ; 4 uses
  %i.bg = tail call i32 @event_assign(ptr noundef nonnull %i.bf, ptr noundef nonnull %0, i32 noundef -1, i16 noundef signext 0, ptr noundef nonnull @common_timeout_callback, ptr noundef nonnull %.1.i98) ; 0 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.1.i98, i64 48 ; 4 uses
  %i.bi = load i16, ptr %i.bh, align 8
  %i.bj = or i16 %i.bi, 16
  store i16 %i.bj, ptr %i.bh, align 8
  %i.bk = load i32, ptr @event_debug_mode_on_, align 4
  %.not.i.i = icmp eq i32 %i.bk, 0
  br i1 %.not.i.i, label %event_debug_assert_is_setup_.exit.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bl = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.bl, null
  br i1 %.not7.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bm = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.bn = tail call i32 %i.bm(i32 noundef 0, ptr noundef nonnull %i.bl) #25, !inline_history !8 ; 0 uses
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r
  %i.bo = load ptr, ptr @global_debug_map, align 8 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.bo, null
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.bp = ptrtoint ptr %i.bf to i64
  %i.bq = trunc i64 %i.bp to i32
  %i.br = lshr i32 %i.bq, 6
  %i.bs = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_debug_map, i64 8), align 8
  %i.bt = urem i32 %i.br, %i.bs
  %i.bu = zext nneg i32 %i.bt to i64
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %i.bu
  br label %bb.v

bb.v:                                             ; preds = %bb.w, %bb.u
  %.0.i.i.i.i = phi ptr [ %i.bv, %bb.u ], [ %i.bw, %bb.w ]
  %i.bw = load ptr, ptr %.0.i.i.i.i, align 8      ; 3 uses
  %.not14.i.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not14.i.i.i.i, label %.loopexit.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bx = getelementptr i8, ptr %i.bw, i64 8
  %.val16.i.i.i.i = load ptr, ptr %i.bx, align 8
  %.not1.i.i.i.i = icmp eq ptr %.val16.i.i.i.i, %i.bf
  br i1 %.not1.i.i.i.i, label %event_debug_map_HT_FIND.exit.i.i, label %bb.v, !llvm.loop !3

.loopexit.i.i:                                    ; preds = %bb.v, %bb.t
  %i.by = getelementptr inbounds nuw i8, ptr %.1.i98, i64 136
  %i.bz = load i16, ptr %i.by, align 8
  %i.ca = sext i16 %i.bz to i32
  %i.cb = getelementptr inbounds nuw i8, ptr %.1.i98, i64 88
  %i.cc = load i32, ptr %i.cb, align 8
  %i.cd = load i16, ptr %i.bh, align 8
end_hunk_2
begin_hunk_3_@event_get_priority:bb.a

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load ptr, ptr @global_debug_map, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.e, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = ptrtoint ptr %0 to i64
  %i.g = trunc i64 %i.f to i32
  %i.h = lshr i32 %i.g, 6
  %i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_debug_map, i64 8), align 8
  %i.j = urem i32 %i.h, %i.i
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.e, i64 %i.k
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.0.i.i.i = phi ptr [ %i.l, %bb.e ], [ %i.m, %bb.g ]
  %i.m = load ptr, ptr %.0.i.i.i, align 8         ; 3 uses
  %.not14.i.i.i = icmp eq ptr %i.m, null
  br i1 %.not14.i.i.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.n = getelementptr i8, ptr %i.m, i64 8
  %.val16.i.i.i = load ptr, ptr %i.n, align 8
  %.not1.i.i.i = icmp eq ptr %.val16.i.i.i, %0
  br i1 %.not1.i.i.i, label %event_debug_map_HT_FIND.exit.i, label %bb.f, !llvm.loop !3

.loopexit.i:                                      ; preds = %bb.f, %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.p = load i16, ptr %i.o, align 8
  %i.q = sext i16 %i.p to i32
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.s = load i32, ptr %i.r, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i16, ptr %i.t, align 8
  %i.v = sext i16 %i.u to i32
  tail call void (i32, ptr, ...) @event_errx(i32 noundef -559030611, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.event_debug_assert_is_setup_, ptr noundef %0, i32 noundef %i.q, i32 noundef %i.s, i32 noundef %i.v) #28
  unreachable

event_debug_map_HT_FIND.exit.i:                   ; preds = %bb.g
  %i.w = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not9.i = icmp eq ptr %i.w, null
  br i1 %.not9.i, label %event_debug_assert_is_setup_.exit, label %bb.h

bb.h:                                             ; preds = %event_debug_map_HT_FIND.exit.i
  %i.x = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.y = tail call i32 %i.x(i32 noundef 0, ptr noundef nonnull %i.w) #25, !inline_history !7 ; 0 uses
  br label %event_debug_assert_is_setup_.exit

event_debug_assert_is_setup_.exit:                ; preds = %bb.a, %event_debug_map_HT_FIND.exit.i, %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 18
  %i.aa = load i8, ptr %i.z, align 2
  %i.ab = zext i8 %i.aa to i32
  ret i32 %i.ab
}

; Function Attrs: nounwind uwtable
define range(i32 2, 1) i32 @event_add(ptr noundef %0, ptr nofree noundef readonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 432
  %i.d = load ptr, ptr %i.c, align 8              ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.f = tail call i32 %i.e(i32 noundef 0, ptr noundef nonnull %i.d) #25 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = tail call i32 @event_add_nolock_(ptr noundef nonnull %0, ptr noundef %1, i32 noundef 0)
  %i.h = load ptr, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 432
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.j, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.l = tail call i32 %i.k(i32 noundef 0, ptr noundef nonnull %i.j) #25 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %i.g
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @event_remove_timer_nolock_(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = load i32, ptr @event_debug_mode_on_, align 4
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %event_debug_assert_is_setup_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not7.i = icmp eq ptr %i.d, null
  br i1 %.not7.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.f = tail call i32 %i.e(i32 noundef 0, ptr noundef nonnull %i.d) #25, !inline_history !7 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.g = load ptr, ptr @global_debug_map, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.g, null
  br i1 %.not.i.i.i, label %.loopexit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = ptrtoint ptr %0 to i64
  %i.i = trunc i64 %i.h to i32
  %i.j = lshr i32 %i.i, 6
  %i.k = load i32, ptr getelementptr inbounds nuw (i8, ptr @global_debug_map, i64 8), align 8
  %i.l = urem i32 %i.j, %i.k
  %i.m = zext nneg i32 %i.l to i64
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.g, i64 %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %.0.i.i.i = phi ptr [ %i.n, %bb.e ], [ %i.o, %bb.g ]
  %i.o = load ptr, ptr %.0.i.i.i, align 8         ; 3 uses
  %.not14.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not14.i.i.i, label %.loopexit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = getelementptr i8, ptr %i.o, i64 8
  %.val16.i.i.i = load ptr, ptr %i.p, align 8
  %.not1.i.i.i = icmp eq ptr %.val16.i.i.i, %0
  br i1 %.not1.i.i.i, label %event_debug_map_HT_FIND.exit.i, label %bb.f, !llvm.loop !3

.loopexit.i:                                      ; preds = %bb.f, %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.r = load i16, ptr %i.q, align 8
  %i.s = sext i16 %i.r to i32
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.u = load i32, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.w = load i16, ptr %i.v, align 8
  %i.x = sext i16 %i.w to i32
  tail call void (i32, ptr, ...) @event_errx(i32 noundef -559030611, ptr noundef nonnull @.str.42, ptr noundef nonnull @__func__.event_debug_assert_is_setup_, ptr noundef %0, i32 noundef %i.s, i32 noundef %i.u, i32 noundef %i.x) #28
  unreachable

event_debug_map_HT_FIND.exit.i:                   ; preds = %bb.g
  %i.y = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not9.i = icmp eq ptr %i.y, null
  br i1 %.not9.i, label %event_debug_assert_is_setup_.exit, label %bb.h

bb.h:                                             ; preds = %event_debug_map_HT_FIND.exit.i
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.aa = tail call i32 %i.z(i32 noundef 0, ptr noundef nonnull %i.y) #25, !inline_history !7 ; 0 uses
  br label %event_debug_assert_is_setup_.exit

event_debug_assert_is_setup_.exit:                ; preds = %bb.a, %event_debug_map_HT_FIND.exit.i, %bb.h
  %i.ab = load i32, ptr @event_debug_logging_mask_, align 4
  %.not = icmp eq i32 %i.ab, 0
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %event_debug_assert_is_setup_.exit
  tail call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.19, ptr noundef %0) #25
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %event_debug_assert_is_setup_.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load i16, ptr %i.ac, align 8
  %i.ae = and i16 %i.ad, 1
  %.not10 = icmp eq i16 %i.ae, 0
  br i1 %.not10, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call fastcc void @event_queue_remove_timeout(ptr noundef %i.b, ptr noundef nonnull %0)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.af, i8 0, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @event_queue_remove_timeout(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1) unnamed_addr #12 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i16, ptr %i.a, align 8
  %i.c = lshr i16 %i.b, 4
  %i.d = and i16 %i.c, 1
  %sext = add nsw i16 %i.d, -1
  %.neg = sext i16 %sext to i32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8
  %i.g = add i32 %i.f, %.neg
  store i32 %i.g, ptr %i.e, align 8
  %i.h = load i16, ptr %i.a, align 8
  %i.i = and i16 %i.h, -2
  store i16 %i.i, ptr %i.a, align 8
  %i.j = getelementptr i8, ptr %1, i64 120
  %.val = load i64, ptr %i.j, align 8             ; 2 uses
  %i.k = and i64 %.val, 4026531840
  %.not.i = icmp eq i64 %i.k, 1342177280
  br i1 %.not.i, label %is_common_timeout.exit, label %is_common_timeout.exit.thread

is_common_timeout.exit:                           ; preds = %bb.a
  %2 = lshr i64 %.val, 20                         ; 2 uses
  %3 = trunc i64 %2 to i32
  %i.l = and i32 %3, 255
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.n = load i32, ptr %i.m, align 8
  %.not = icmp slt i32 %i.l, %i.n
  br i1 %.not, label %bb.b, label %is_common_timeout.exit.thread

bb.b:                                             ; preds = %is_common_timeout.exit
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %.not18 = icmp eq ptr %i.p, null
  br i1 %.not18, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.r = load ptr, ptr %i.q, align 8              ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.t = getelementptr i8, ptr %0, i64 280
  %.val19 = load ptr, ptr %i.t, align 8
  %i.u = and i64 %2, 255
  %i.v = getelementptr inbounds nuw [8 x i8], ptr %.val19, i64 %i.u
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store ptr %i.y, ptr %i.z, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.aa = phi ptr [ %i.y, %bb.d ], [ %i.r, %bb.c ]
  %i.ab = load ptr, ptr %i.o, align 8
  store ptr %i.ab, ptr %i.aa, align 8
  br label %min_heap_erase_.exit

is_common_timeout.exit.thread:                    ; preds = %bb.a, %is_common_timeout.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 5 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.ae = load i32, ptr %i.ad, align 8
  %.not.i21 = icmp eq i32 %i.ae, -1
  br i1 %.not.i21, label %min_heap_erase_.exit, label %bb.f

bb.f:                                             ; preds = %is_common_timeout.exit.thread
  %i.af = load ptr, ptr %i.ac, align 8            ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 336 ; 3 uses
  %i.ah = load i32, ptr %i.ag, align 8
  %i.ai = add i32 %i.ah, -1                       ; 4 uses
  store i32 %i.ai, ptr %i.ag, align 8
  %i.aj = zext i32 %i.ai to i64
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.aj
  %i.al = load ptr, ptr %i.ak, align 8            ; 8 uses
  %i.am = load i32, ptr %i.ad, align 8            ; 7 uses
  %i.an = icmp sgt i32 %i.am, 0
  br i1 %i.an, label %bb.g, label %bb.m

bb.g:                                             ; preds = %bb.f
  %i.ao = add nsw i32 %i.am, -1
  %i.ap = lshr i32 %i.ao, 1                       ; 3 uses
  %i.aq = zext nneg i32 %i.ap to i64              ; 2 uses
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.aq
  %i.as = load ptr, ptr %i.ar, align 8            ; 4 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 112
  %i.au = load i64, ptr %i.at, align 8            ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 112 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8            ; 2 uses
  %i.ax = icmp eq i64 %i.au, %i.aw
  br i1 %i.ax, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ay = getelementptr inbounds nuw i8, ptr %i.as, i64 120
  %i.az = load i64, ptr %i.ay, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %i.bb = load i64, ptr %i.ba, align 8
  %i.bc = icmp sgt i64 %i.az, %i.bb
  br i1 %i.bc, label %bb.j, label %bb.m

bb.i:                                             ; preds = %bb.g
  %i.bd = icmp sgt i64 %i.au, %i.aw
  br i1 %i.bd, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.be = zext nneg i32 %i.am to i64
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.be
  store ptr %i.as, ptr %i.bf, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.as, i64 40
  store i32 %i.am, ptr %i.bg, align 8
  %.not24.i.i = icmp eq i32 %i.ap, 0
  br i1 %.not24.i.i, label %min_heap_shift_up_unconditional_.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  br label %bb.k

bb.k:                                             ; preds = %.backedge.i.i, %.lr.ph.i.i
  %i.bi = phi i64 [ %i.aq, %.lr.ph.i.i ], [ %i.bl, %.backedge.i.i ] ; 2 uses
  %.025.i.i = phi i32 [ %i.ap, %.lr.ph.i.i ], [ %i.bj, %.backedge.i.i ] ; 5 uses
  %.in.i.i = add nsw i32 %.025.i.i, -1
  %i.bj = lshr i32 %.in.i.i, 1                    ; 3 uses
  %i.bk = load ptr, ptr %i.ac, align 8            ; 2 uses
  %i.bl = zext nneg i32 %i.bj to i64              ; 2 uses
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bl
  %i.bn = load ptr, ptr %i.bm, align 8            ; 4 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 112
  %i.bp = load i64, ptr %i.bo, align 8            ; 2 uses
  %i.bq = load i64, ptr %i.av, align 8            ; 2 uses
  %i.br = icmp eq i64 %i.bp, %i.bq
  br i1 %i.br, label %.split.i.i, label %bb.l

.split.i.i:                                       ; preds = %bb.k
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bn, i64 120
  %i.bt = load i64, ptr %i.bs, align 8
  %i.bu = load i64, ptr %i.bh, align 8
  %i.bv = icmp sgt i64 %i.bt, %i.bu
  br i1 %i.bv, label %.backedge.i.i, label %min_heap_shift_up_unconditional_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.bw = icmp sgt i64 %i.bp, %i.bq
  br i1 %i.bw, label %.backedge.i.i, label %min_heap_shift_up_unconditional_.exit.i

.backedge.i.i:                                    ; preds = %bb.l, %.split.i.i
  %i.bx = zext nneg i32 %.025.i.i to i64
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bx
  store ptr %i.bn, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bn, i64 40
  store i32 %.025.i.i, ptr %i.bz, align 8
  %.not.i.i = icmp eq i32 %i.bj, 0
  br i1 %.not.i.i, label %min_heap_shift_up_unconditional_.exit.i, label %bb.k, !llvm.loop !70

min_heap_shift_up_unconditional_.exit.i:          ; preds = %.backedge.i.i, %bb.l, %.split.i.i, %bb.j
  %.0.lcssa.i.i = phi i32 [ 0, %bb.j ], [ %.025.i.i, %.split.i.i ], [ 0, %.backedge.i.i ], [ %.025.i.i, %bb.l ]
  %.lcssa.i.i = phi i64 [ 0, %bb.j ], [ %i.bi, %.split.i.i ], [ 0, %.backedge.i.i ], [ %i.bi, %bb.l ]
  %i.ca = load ptr, ptr %i.ac, align 8
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.lcssa.i.i
  store ptr %i.al, ptr %i.cb, align 8
  br label %bb.w

bb.m:                                             ; preds = %bb.i, %bb.h, %bb.f
  %i.cc = getelementptr inbounds nuw i8, ptr %i.al, i64 120
  %.0.in44.i.i = shl i32 %i.am, 1                 ; 2 uses
  %.045.i.i = add i32 %.0.in44.i.i, 2             ; 2 uses
  %.not46.i.i = icmp ugt i32 %.045.i.i, %i.ai
  br i1 %.not46.i.i, label %min_heap_shift_down_.exit.i, label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %bb.m
  %i.cd = getelementptr inbounds nuw i8, ptr %i.al, i64 112
  br label %bb.n

bb.n:                                             ; preds = %bb.v, %.lr.ph.i23.i
  %i.ce = phi i32 [ %i.ai, %.lr.ph.i23.i ], [ %i.do, %bb.v ]
  %.049.i.i = phi i32 [ %.045.i.i, %.lr.ph.i23.i ], [ %.0.i.i, %bb.v ] ; 3 uses
  %.0.in48.i.i = phi i32 [ %.0.in44.i.i, %.lr.ph.i23.i ], [ %.0.in.i.i, %bb.v ]
  %.03747.i.i = phi i32 [ %i.am, %.lr.ph.i23.i ], [ %i.cy, %bb.v ] ; 4 uses
  %i.cf = icmp eq i32 %.049.i.i, %i.ce
  %.pre.i.i = load ptr, ptr %i.ac, align 8        ; 6 uses
  br i1 %i.cf, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cg = zext i32 %.049.i.i to i64
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.cg
  %i.ci = load ptr, ptr %i.ch, align 8            ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 112
  %i.ck = load i64, ptr %i.cj, align 8            ; 2 uses
  %i.cl = or disjoint i32 %.0.in48.i.i, 1
  %i.cm = zext i32 %i.cl to i64
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.cm
  %i.co = load ptr, ptr %i.cn, align 8            ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 112
  %i.cq = load i64, ptr %i.cp, align 8            ; 2 uses
  %i.cr = icmp eq i64 %i.ck, %i.cq
  br i1 %i.cr, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.cs = getelementptr inbounds nuw i8, ptr %i.ci, i64 120
  %i.ct = load i64, ptr %i.cs, align 8
  %i.cu = getelementptr inbounds nuw i8, ptr %i.co, i64 120
  %i.cv = load i64, ptr %i.cu, align 8
  %i.cw = icmp sgt i64 %i.ct, %i.cv
  br label %bb.r

bb.q:                                             ; preds = %bb.o
  %i.cx = icmp sgt i64 %i.ck, %i.cq
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %.in.i24.i = phi i1 [ %i.cw, %bb.p ], [ %i.cx, %bb.q ]
  %.neg.i.i = sext i1 %.in.i24.i to i32
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.n
  %.neg43.i.i = phi i32 [ -1, %bb.n ], [ %.neg.i.i, %bb.r ]
  %i.cy = add i32 %.neg43.i.i, %.049.i.i          ; 4 uses
  %i.cz = load i64, ptr %i.cd, align 8            ; 2 uses
  %i.da = zext i32 %i.cy to i64
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.da
  %i.dc = load ptr, ptr %i.db, align 8            ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 112
  %i.de = load i64, ptr %i.dd, align 8            ; 2 uses
  %i.df = icmp eq i64 %i.cz, %i.de
  br i1 %i.df, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.dg = load i64, ptr %i.cc, align 8
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 120
  %i.di = load i64, ptr %i.dh, align 8
  %i.dj = icmp sgt i64 %i.dg, %i.di
  br i1 %i.dj, label %bb.v, label %min_heap_shift_down_.exit.i

bb.u:                                             ; preds = %bb.s
  %i.dk = icmp sgt i64 %i.cz, %i.de
  br i1 %i.dk, label %bb.v, label %min_heap_shift_down_.exit.i

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.dl = zext i32 %.03747.i.i to i64
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %.pre.i.i, i64 %i.dl
  store ptr %i.dc, ptr %i.dm, align 8
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dc, i64 40
  store i32 %.03747.i.i, ptr %i.dn, align 8
  %.0.in.i.i = shl i32 %i.cy, 1                   ; 2 uses
  %.0.i.i = add i32 %.0.in.i.i, 2                 ; 2 uses
  %i.do = load i32, ptr %i.ag, align 8            ; 2 uses
  %.not.i25.i = icmp ugt i32 %.0.i.i, %i.do
end_hunk_3
begin_hunk_4_@event_process_active_single_queue:bb.a
  %i.bv = zext i8 %i.bu to i64
  %i.bw = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bv
  br label %event_queue_remove_active.exit127

event_queue_remove_active.exit127:                ; preds = %bb.j, %bb.k
  %.sink14.i126 = phi ptr [ %i.bw, %bb.k ], [ %i.bp, %bb.j ]
  %i.bx = getelementptr inbounds nuw i8, ptr %.sink14.i126, i64 8
  store ptr %i.br, ptr %i.bx, align 8
  %i.by = load ptr, ptr %.089, align 8
  store ptr %i.by, ptr %i.br, align 8
  %i.bz = load i32, ptr @event_debug_logging_mask_, align 4
  %.not103 = icmp eq i32 %i.bz, 0
  br i1 %.not103, label %bb.m, label %bb.l

bb.l:                                             ; preds = %event_queue_remove_active.exit127
  %i.ca = getelementptr inbounds nuw i8, ptr %.089, i64 19
  %i.cb = load i8, ptr %i.ca, align 1
  %i.cc = zext i8 %i.cb to i32
  %i.cd = getelementptr inbounds nuw i8, ptr %.089, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8
  call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.39, ptr noundef nonnull %.089, i32 noundef %i.cc, ptr noundef %i.ce) #25
  br label %bb.m

bb.m:                                             ; preds = %event_queue_remove_active.exit127, %bb.l, %bb.h, %bb.i
  %.086 = phi ptr [ %.089, %bb.i ], [ %.089, %bb.h ], [ null, %bb.l ], [ null, %event_queue_remove_active.exit127 ] ; 31 uses
  %i.cf = load i16, ptr %i.v, align 8
  %i.cg = and i16 %i.cf, 16
  %.not110 = icmp eq i16 %i.cg, 0
  %i.ch = zext i1 %.not110 to i32
  %spec.select = add nuw nsw i32 %.087, %i.ch     ; 6 uses
  store ptr %.089, ptr %i.e, align 8
  store i32 0, ptr %i.f, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %.089, i64 19
  %i.cj = load i8, ptr %i.ci, align 1             ; 2 uses
  switch i8 %i.cj, label %event_mm_free_.exit [
    i8 1, label %bb.n
    i8 2, label %bb.ab
    i8 0, label %bb.av
    i8 3, label %bb.ay
    i8 5, label %bb.bb
    i8 6, label %bb.bb
    i8 4, label %bb.br
  ]

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #25
  %i.ck = getelementptr inbounds nuw i8, ptr %.086, i64 88 ; 2 uses
  %i.cl = load i16, ptr %i.ck, align 8            ; 2 uses
  store i16 %i.cl, ptr %i.a, align 2
  %.not.i128 = icmp eq i16 %i.cl, 0
  br i1 %.not.i128, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cm = getelementptr inbounds nuw i8, ptr %.086, i64 96
  store ptr %i.a, ptr %i.cm, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.cn = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not19.i = icmp eq ptr %i.cn, null
  br i1 %.not19.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.co = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.cp = call i32 %i.co(i32 noundef 0, ptr noundef nonnull %i.cn) #25, !inline_history !87 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.p
  %i.cq = getelementptr inbounds nuw i8, ptr %.086, i64 96 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.086, i64 24
  %i.cs = getelementptr inbounds nuw i8, ptr %.086, i64 56
  %i.ct = getelementptr inbounds nuw i8, ptr %.086, i64 106
  %i.cu = getelementptr inbounds nuw i8, ptr %.086, i64 32
  br label %bb.s

bb.s:                                             ; preds = %bb.y, %bb.r
  %i.cv = load i16, ptr %i.a, align 2             ; 2 uses
  %.not20.i = icmp eq i16 %i.cv, 0
  br i1 %.not20.i, label %event_signal_closure.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.cw = add i16 %i.cv, -1                       ; 3 uses
  store i16 %i.cw, ptr %i.a, align 2
  store i16 %i.cw, ptr %i.ck, align 8
  %i.cx = icmp eq i16 %i.cw, 0
  br i1 %i.cx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  store ptr null, ptr %i.cq, align 8
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %i.cy = load ptr, ptr %i.cr, align 8
  %i.cz = load i32, ptr %i.cs, align 8
  %i.da = load i16, ptr %i.ct, align 2
  %i.db = load ptr, ptr %i.cu, align 8
  call void %i.cy(i32 noundef %i.cz, i16 noundef signext %i.da, ptr noundef %i.db) #25, !inline_history !87
  %i.dc = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not21.i = icmp eq ptr %i.dc, null
  br i1 %.not21.i, label %.thread.i, label %bb.w

.thread.i:                                        ; preds = %bb.v
  %i.dd = load i32, ptr %i.o, align 4
  br label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.de = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.df = call i32 %i.de(i32 noundef 0, ptr noundef nonnull %i.dc) #25, !inline_history !87 ; 0 uses
  %.pr.i = load ptr, ptr %i.g, align 8            ; 2 uses
  %i.dg = load i32, ptr %i.o, align 4             ; 2 uses
  %.not22.i = icmp eq ptr %.pr.i, null
  br i1 %.not22.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dh = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.di = call i32 %i.dh(i32 noundef 0, ptr noundef nonnull %.pr.i) #25, !inline_history !87 ; 0 uses
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.w, %.thread.i
  %i.dj = phi i32 [ %i.dd, %.thread.i ], [ %i.dg, %bb.x ], [ %i.dg, %bb.w ]
  %.not23.i = icmp eq i32 %i.dj, 0
  br i1 %.not23.i, label %bb.s, label %bb.z, !llvm.loop !88

bb.z:                                             ; preds = %bb.y
  %i.dk = load i16, ptr %i.a, align 2
  %.not24.i = icmp eq i16 %i.dk, 0
  br i1 %.not24.i, label %event_signal_closure.exit, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  store ptr null, ptr %i.cq, align 8
  br label %event_signal_closure.exit

event_signal_closure.exit:                        ; preds = %bb.s, %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #25
  br label %event_mm_free_.exit

bb.ab:                                            ; preds = %bb.m
  %i.dl = getelementptr inbounds nuw i8, ptr %.086, i64 88 ; 3 uses
  %i.dm = load i64, ptr %i.dl, align 8
  %.not.i129 = icmp eq i64 %i.dm, 0
  br i1 %.not.i129, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  %i.dn = getelementptr inbounds nuw i8, ptr %.086, i64 96
  %i.do = load i64, ptr %i.dn, align 8
  %.not43.i = icmp eq i64 %i.do, 0
  br i1 %.not43.i, label %bb.at, label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  %i.dp = load i64, ptr %i.h, align 8
  %.not.i.i = icmp eq i64 %i.dp, 0
  br i1 %.not.i.i, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %8, ptr noundef nonnull align 8 dereferenceable(16) %i.h, i64 16, i1 false)
  br label %gettime.exit.i

bb.af:                                            ; preds = %bb.ad
  %i.dq = call i32 @evutil_gettime_monotonic_(ptr noundef nonnull %i.i, ptr noundef nonnull %8) #25
  %i.dr = icmp eq i32 %i.dq, -1
  br i1 %i.dr, label %gettime.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ds = load i64, ptr %i.j, align 8
  %i.dt = add nsw i64 %i.ds, 5
  %i.du = load i64, ptr %8, align 16
  %i.dv = icmp slt i64 %i.dt, %i.du
  br i1 %i.dv, label %bb.ah, label %gettime.exit.i

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  %i.dw = call i32 @gettimeofday(ptr noundef nonnull %6, ptr noundef null) #25 ; 0 uses
  %i.dx = load <2 x i64>, ptr %6, align 16
  %i.dy = load <2 x i64>, ptr %8, align 16
  %i.dz = load i64, ptr %8, align 16
  %i.ea = sub nsw <2 x i64> %i.dx, %i.dy          ; 3 uses
  %i.eb = extractelement <2 x i64> %i.ea, i64 1
  %i.ec = icmp slt i64 %i.eb, 0
  %i.ed = add nsw <2 x i64> %i.ea, <i64 -1, i64 1000000>
  %storemerge = select i1 %i.ec, <2 x i64> %i.ed, <2 x i64> %i.ea
  store <2 x i64> %storemerge, ptr %i.k, align 8
  store i64 %i.dz, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #25
  br label %gettime.exit.i

gettime.exit.i:                                   ; preds = %bb.ah, %bb.ag, %bb.af, %bb.ae
  %i.ee = getelementptr inbounds nuw i8, ptr %.086, i64 112 ; 2 uses
  %i.ef = getelementptr i8, ptr %.086, i64 120
  %.val.i = load i64, ptr %i.ef, align 8          ; 4 uses
  %i.eg = and i64 %.val.i, 4026531840
  %.not.i48.i = icmp eq i64 %i.eg, 1342177280
  br i1 %.not.i48.i, label %is_common_timeout.exit.i, label %gettime.exit.is_common_timeout.exit.thread_crit_edge.i

gettime.exit.is_common_timeout.exit.thread_crit_edge.i: ; preds = %gettime.exit.i
  %.sroa.0.0.copyload2.pre.i = load i64, ptr %i.dl, align 8
  br label %is_common_timeout.exit.thread.i

is_common_timeout.exit.i:                         ; preds = %gettime.exit.i
  %10 = lshr i64 %.val.i, 20
  %11 = trunc i64 %10 to i32
  %i.eh = and i32 %11, 255
  %i.ei = load i32, ptr %i.m, align 8
  %.not52.i = icmp slt i32 %i.eh, %i.ei
  %.sroa.0.0.copyload2.pre53.i = load i64, ptr %i.dl, align 8 ; 3 uses
  br i1 %.not52.i, label %bb.ai, label %is_common_timeout.exit.thread.i

bb.ai:                                            ; preds = %is_common_timeout.exit.i
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.086, i64 96
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8 ; 2 uses
  %i.ej = trunc i64 %.sroa.6.0.copyload.i to i32
  %i.ek = and i32 %i.ej, -1048576                 ; 2 uses
  %i.el = and i64 %.sroa.6.0.copyload.i, 1048575  ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %.086, i64 106
  %i.en = load i16, ptr %i.em, align 2
  %i.eo = and i16 %i.en, 1
  %.not46.i = icmp eq i16 %i.eo, 0
  br i1 %.not46.i, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.ep = and i64 %.val.i, 1048575
  br label %bb.al

bb.ak:                                            ; preds = %bb.ai
  %.sroa.7.0.copyload13.i = load i64, ptr %i.l, align 8
  br label %bb.al

is_common_timeout.exit.thread.i:                  ; preds = %is_common_timeout.exit.i, %gettime.exit.is_common_timeout.exit.thread_crit_edge.i
  %.sroa.0.0.copyload2.i = phi i64 [ %.sroa.0.0.copyload2.pre.i, %gettime.exit.is_common_timeout.exit.thread_crit_edge.i ], [ %.sroa.0.0.copyload2.pre53.i, %is_common_timeout.exit.i ]
  %.sroa.6.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %.086, i64 96
  %.sroa.6.0.copyload4.i = load i64, ptr %.sroa.6.0..sroa_idx3.i, align 8
  %i.eq = getelementptr inbounds nuw i8, ptr %.086, i64 106
  %i.er = load i16, ptr %i.eq, align 2
  %i.es = and i16 %i.er, 1
  %.not45.i = icmp eq i16 %i.es, 0                ; 2 uses
  %.sroa.7.0.copyload17.i = load i64, ptr %i.l, align 8
  %spec.select150 = select i1 %.not45.i, i64 %.sroa.7.0.copyload17.i, i64 %.val.i
  %spec.select151 = select i1 %.not45.i, ptr %8, ptr %i.ee
  br label %bb.al

bb.al:                                            ; preds = %is_common_timeout.exit.thread.i, %bb.ak, %bb.aj
  %.sroa.7.0.i = phi i64 [ %i.ep, %bb.aj ], [ %.sroa.7.0.copyload13.i, %bb.ak ], [ %spec.select150, %is_common_timeout.exit.thread.i ]
  %.sroa.08.0.in.i = phi ptr [ %i.ee, %bb.aj ], [ %8, %bb.ak ], [ %spec.select151, %is_common_timeout.exit.thread.i ]
  %.sroa.6.0.i = phi i64 [ %i.el, %bb.aj ], [ %i.el, %bb.ak ], [ %.sroa.6.0.copyload4.i, %is_common_timeout.exit.thread.i ] ; 2 uses
  %.sroa.0.0.i = phi i64 [ %.sroa.0.0.copyload2.pre53.i, %bb.aj ], [ %.sroa.0.0.copyload2.pre53.i, %bb.ak ], [ %.sroa.0.0.copyload2.i, %is_common_timeout.exit.thread.i ] ; 2 uses
  %.0.i = phi i32 [ %i.ek, %bb.aj ], [ %i.ek, %bb.ak ], [ 0, %is_common_timeout.exit.thread.i ]
  %.sroa.08.0.i = load i64, ptr %.sroa.08.0.in.i, align 8
  %i.et = add nsw i64 %.sroa.08.0.i, %.sroa.0.0.i ; 3 uses
  store i64 %i.et, ptr %7, align 8
  %i.eu = add nsw i64 %.sroa.6.0.i, %.sroa.7.0.i  ; 3 uses
  %i.ev = icmp sgt i64 %i.eu, 999999
  br i1 %i.ev, label %bb.am, label %bb.an

bb.am:                                            ; preds = %bb.al
  %i.ew = add nsw i64 %i.et, 1                    ; 2 uses
  store i64 %i.ew, ptr %7, align 8
  %i.ex = add nsw i64 %i.eu, -1000000
  br label %bb.an

bb.an:                                            ; preds = %bb.am, %bb.al
  %i.ey = phi i64 [ %i.ex, %bb.am ], [ %i.eu, %bb.al ] ; 3 uses
  %i.ez = phi i64 [ %i.ew, %bb.am ], [ %i.et, %bb.al ] ; 2 uses
  %i.fa = load i64, ptr %8, align 16              ; 3 uses
  %i.fb = icmp eq i64 %i.ez, %i.fa
  br i1 %i.fb, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.fc = load i64, ptr %i.l, align 8             ; 2 uses
  %i.fd = icmp slt i64 %i.ey, %i.fc
  br i1 %i.fd, label %bb.aq, label %bb.as

bb.ap:                                            ; preds = %bb.an
  %i.fe = icmp slt i64 %i.ez, %i.fa
  br i1 %i.fe, label %._crit_edge.i, label %bb.as

._crit_edge.i:                                    ; preds = %bb.ap
  %.pre.i = load i64, ptr %i.l, align 8
  br label %bb.aq

bb.aq:                                            ; preds = %._crit_edge.i, %bb.ao
  %i.ff = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.fc, %bb.ao ]
  %i.fg = add nsw i64 %i.fa, %.sroa.0.0.i         ; 2 uses
  store i64 %i.fg, ptr %7, align 8
  %i.fh = add nsw i64 %i.ff, %.sroa.6.0.i         ; 3 uses
  %i.fi = icmp sgt i64 %i.fh, 999999
  br i1 %i.fi, label %bb.ar, label %bb.as

bb.ar:                                            ; preds = %bb.aq
  %i.fj = add nsw i64 %i.fg, 1
  store i64 %i.fj, ptr %7, align 8
  %i.fk = add nsw i64 %i.fh, -1000000
  br label %bb.as

bb.as:                                            ; preds = %bb.ar, %bb.aq, %bb.ap, %bb.ao
  %i.fl = phi i64 [ %i.fh, %bb.aq ], [ %i.fk, %bb.ar ], [ %i.ey, %bb.ap ], [ %i.ey, %bb.ao ]
  %i.fm = zext i32 %.0.i to i64
  %i.fn = or i64 %i.fl, %i.fm
  store i64 %i.fn, ptr %i.n, align 8
  %i.fo = call i32 @event_add_nolock_(ptr noundef nonnull %.086, ptr noundef nonnull %7, i32 noundef 1) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #25
  br label %bb.at

bb.at:                                            ; preds = %bb.as, %bb.ac
  %i.fp = getelementptr inbounds nuw i8, ptr %.086, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8
  %i.fr = getelementptr inbounds nuw i8, ptr %.086, i64 56
  %i.fs = load i32, ptr %i.fr, align 8
  %i.ft = getelementptr inbounds nuw i8, ptr %.086, i64 106
  %i.fu = load i16, ptr %i.ft, align 2
  %i.fv = getelementptr inbounds nuw i8, ptr %.086, i64 32
  %i.fw = load ptr, ptr %i.fv, align 8
  %i.fx = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not47.i = icmp eq ptr %i.fx, null
  br i1 %.not47.i, label %event_persist_closure.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fy = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.fz = call i32 %i.fy(i32 noundef 0, ptr noundef nonnull %i.fx) #25, !inline_history !89 ; 0 uses
  br label %event_persist_closure.exit

event_persist_closure.exit:                       ; preds = %bb.at, %bb.au
  call void %i.fq(i32 noundef %i.fs, i16 noundef signext %i.fu, ptr noundef %i.fw) #25, !inline_history !89
  br label %event_mm_free_.exit

bb.av:                                            ; preds = %bb.m
  %i.ga = getelementptr inbounds nuw i8, ptr %.086, i64 24
  %i.gb = load ptr, ptr %i.ga, align 8
  %i.gc = getelementptr inbounds nuw i8, ptr %.086, i64 106
  %i.gd = load i16, ptr %i.gc, align 2
  %i.ge = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not114 = icmp eq ptr %i.ge, null
  br i1 %.not114, label %bb.ax, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.gf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.gg = call i32 %i.gf(i32 noundef 0, ptr noundef nonnull %i.ge) #25 ; 0 uses
  br label %bb.ax

bb.ax:                                            ; preds = %bb.aw, %bb.av
  %i.gh = getelementptr inbounds nuw i8, ptr %.086, i64 56
  %i.gi = load i32, ptr %i.gh, align 8
  %i.gj = getelementptr inbounds nuw i8, ptr %.086, i64 32
  %i.gk = load ptr, ptr %i.gj, align 8
  call void %i.gb(i32 noundef %i.gi, i16 noundef signext %i.gd, ptr noundef %i.gk) #25
  br label %event_mm_free_.exit

bb.ay:                                            ; preds = %bb.m
  %i.gl = getelementptr inbounds nuw i8, ptr %.089, i64 24
  %i.gm = load ptr, ptr %i.gl, align 8
  %i.gn = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not113 = icmp eq ptr %i.gn, null
  br i1 %.not113, label %bb.ba, label %bb.az

bb.az:                                            ; preds = %bb.ay
  %i.go = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.gp = call i32 %i.go(i32 noundef 0, ptr noundef nonnull %i.gn) #25 ; 0 uses
  br label %bb.ba

bb.ba:                                            ; preds = %bb.az, %bb.ay
  %i.gq = getelementptr inbounds nuw i8, ptr %.089, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8
  call void %i.gm(ptr noundef nonnull %.089, ptr noundef %i.gr) #25
  br label %event_mm_free_.exit

bb.bb:                                            ; preds = %bb.m, %bb.m
  store ptr null, ptr %i.e, align 8
  %i.gs = getelementptr inbounds nuw i8, ptr %.086, i64 24
  %i.gt = load ptr, ptr %i.gs, align 8
  %i.gu = load ptr, ptr %i.g, align 8             ; 2 uses
  %.not112 = icmp eq ptr %i.gu, null
  br i1 %.not112, label %bb.bd, label %bb.bc

bb.bc:                                            ; preds = %bb.bb
  %i.gv = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.gw = call i32 %i.gv(i32 noundef 0, ptr noundef nonnull %i.gu) #25 ; 0 uses
  br label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %bb.bb
  %i.gx = load i32, ptr @event_debug_mode_on_, align 4
  %.not.i130 = icmp eq i32 %i.gx, 0
  br i1 %.not.i130, label %event_debug_note_teardown_.exit, label %bb.be

bb.be:                                            ; preds = %bb.bd
  %i.gy = load ptr, ptr @event_debug_map_lock_, align 8 ; 2 uses
  %.not5.i = icmp eq ptr %i.gy, null
  br i1 %.not5.i, label %bb.bg, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.ha = call i32 %i.gz(i32 noundef 0, ptr noundef nonnull %i.gy) #25, !inline_history !5 ; 0 uses
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.be
  %i.hb = load ptr, ptr @global_debug_map, align 8 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.hb, null
  br i1 %.not.i.i.i, label %event_mm_free_.exit.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.hc = ptrtoint ptr %.086 to i64
  %i.hd = trunc i64 %i.hc to i32
end_hunk_4
