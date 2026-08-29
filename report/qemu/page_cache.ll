Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/qemu/original/page_cache?download=true
inline.NumInlined: 9
inline.NumDeleted: 6
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [26 x i8] c"../migration/page_cache.c\00", align 1
@__func__.cache_init = private unnamed_addr constant [11 x i8] c"cache_init\00", align 1
@.str.1 = private unnamed_addr constant [44 x i8] c"cache size is smaller than target page size\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"number of pages is not a power of two\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"Failed to allocate cache\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Failed to allocate page cache\00", align 1
@__func__.cache_fini = private unnamed_addr constant [11 x i8] c"cache_fini\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"cache\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"cache->page_cache\00", align 1
@trace_events_enabled_count = external local_unnamed_addr global i32, align 4
@_TRACE_MIGRATION_PAGECACHE_INIT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.7 = private unnamed_addr constant [55 x i8] c"migration_pagecache_init Setting cache buckets to %ld\0A\00", align 1
@qemu_loglevel = external local_unnamed_addr global i32, align 4
@__func__.cache_get_by_addr = private unnamed_addr constant [18 x i8] c"cache_get_by_addr\00", align 1
@__func__.cache_get_cache_pos = private unnamed_addr constant [20 x i8] c"cache_get_cache_pos\00", align 1
@.str.8 = private unnamed_addr constant [21 x i8] c"cache->max_num_items\00", align 1
@_TRACE_MIGRATION_PAGECACHE_INSERT_DSTATE = external local_unnamed_addr global i16, align 2
@.str.9 = private unnamed_addr constant [50 x i8] c"migration_pagecache_insert Error allocating page\0A\00", align 1

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef ptr @cache_init(i64 noundef %0, i64 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = udiv i64 %0, %1                          ; 6 uses
  %i.b = icmp ult i64 %0, %1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 48, ptr noundef nonnull @__func__.cache_init, ptr noundef nonnull @.str.1) #8
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.c = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.a)
  %.not4.i = icmp samesign ult i64 %i.c, 2
  br i1 %.not4.i, label %bb.d, label %is_power_of_2.exit.thread

is_power_of_2.exit.thread:                        ; preds = %bb.c
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 54, ptr noundef nonnull @__func__.cache_init, ptr noundef nonnull @.str.2) #8
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noalias dereferenceable_or_null(32) ptr @g_try_malloc(i64 noundef 32) #9 ; 9 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 61, ptr noundef nonnull @__func__.cache_init, ptr noundef nonnull @.str.3) #8
  br label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.a, ptr %i.g, align 8
  %i.h = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i34 = icmp eq i32 %i.h, 0
  br i1 %.not.i34, label %trace_migration_pagecache_init.exit, label %bb.g, !prof !7

bb.g:                                             ; preds = %bb.f
  %i.i = load i16, ptr @_TRACE_MIGRATION_PAGECACHE_INIT_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.i, 0
  br i1 %.not1.i, label %trace_migration_pagecache_init.exit, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = load i32, ptr @qemu_loglevel, align 4
  %i.k = and i32 %i.j, 32768
  %.not2.i = icmp eq i32 %i.k, 0
  br i1 %.not2.i, label %trace_migration_pagecache_init.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.7, i64 noundef %i.a) #8
  br label %trace_migration_pagecache_init.exit

trace_migration_pagecache_init.exit:              ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.l = mul i64 %i.a, 24
  %i.m = tail call noalias ptr @g_try_malloc(i64 noundef %i.l) #9 ; 7 uses
  store ptr %i.m, ptr %i.d, align 8
  %.not33 = icmp eq ptr %i.m, null
  br i1 %.not33, label %bb.j, label %.preheader

.preheader:                                       ; preds = %trace_migration_pagecache_init.exit
  %.not37 = icmp ugt i64 %1, %0
  br i1 %.not37, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.preheader
  %umax = tail call i64 @llvm.umax.i64(i64 %i.a, i64 1) ; 2 uses
  %xtraiter = and i64 %umax, 3                    ; 3 uses
  %i.n = icmp ult i64 %i.a, 4
  br i1 %i.n, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %umax, -4
  br label %.lr.ph

bb.j:                                             ; preds = %trace_migration_pagecache_init.exit
  tail call void (ptr, ptr, i32, ptr, ptr, ...) @error_setg_internal(ptr noundef %2, ptr noundef nonnull @.str, i32 noundef 74, ptr noundef nonnull @__func__.cache_init, ptr noundef nonnull @.str.4) #8
  tail call void @g_free(ptr noundef nonnull %i.d) #8
  br label %.loopexit

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %.036 = phi i64 [ 0, %.lr.ph.preheader.new ], [ %i.z, %.lr.ph ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.3, %.lr.ph ]
  %i.o = getelementptr inbounds [24 x i8], ptr %i.m, i64 %.036 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.p, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.o, align 8
  %i.q = getelementptr [24 x i8], ptr %i.m, i64 %.036 ; 2 uses
  %i.r = getelementptr i8, ptr %i.q, i64 24
  %i.s = getelementptr i8, ptr %i.q, i64 32
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.r, align 8
  %i.t = getelementptr [24 x i8], ptr %i.m, i64 %.036 ; 2 uses
  %i.u = getelementptr i8, ptr %i.t, i64 48
  %i.v = getelementptr i8, ptr %i.t, i64 56
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.u, align 8
  %i.w = getelementptr [24 x i8], ptr %i.m, i64 %.036 ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 72
  %i.y = getelementptr i8, ptr %i.w, i64 80
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.y, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.x, align 8
  %i.z = add nuw i64 %.036, 4                     ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3.not = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3.not, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !8

.loopexit.loopexit.unr-lcssa:                     ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %.036.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %i.z, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod41 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.epil

.lr.ph.epil:                                      ; preds = %.lr.ph.epil, %.lr.ph.epil.preheader
  %.036.epil = phi i64 [ %i.ac, %.lr.ph.epil ], [ %.036.epil.init, %.lr.ph.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.epil ], [ 0, %.lr.ph.epil.preheader ]
  %i.aa = getelementptr inbounds [24 x i8], ptr %i.m, i64 %.036.epil ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  store i64 -1, ptr %i.aa, align 8
  %i.ac = add nuw i64 %.036.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %.lr.ph.epil, !llvm.loop !10

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.epil, %.preheader, %bb.j, %bb.e, %is_power_of_2.exit.thread, %bb.b
  %.030 = phi ptr [ null, %bb.b ], [ null, %is_power_of_2.exit.thread ], [ null, %bb.j ], [ null, %bb.e ], [ %i.d, %.preheader ], [ %i.d, %.lr.ph.epil ], [ %i.d, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.030
}

declare void @error_setg_internal(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: allocsize(0)
declare noalias ptr @g_try_malloc(i64 noundef) local_unnamed_addr #2

declare void @g_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind sspstrong uwtable
define dso_local void @cache_fini(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 92, ptr noundef nonnull @__func__.cache_fini, ptr noundef nonnull @.str.5) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not16 = icmp eq ptr %i.a, null
  br i1 %.not16, label %bb.d, label %.preheader, !prof !12

.preheader:                                       ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %.not19 = icmp eq i64 %i.c, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 93, ptr noundef nonnull @__func__.cache_fini, ptr noundef nonnull @.str.6) #10
  unreachable

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.018 = phi i64 [ %i.h, %.lr.ph ], [ 0, %.preheader ] ; 2 uses
  %i.d = load ptr, ptr %0, align 8
  %i.e = getelementptr inbounds [24 x i8], ptr %i.d, i64 %.018
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.g = load ptr, ptr %i.f, align 8
  tail call void @g_free(ptr noundef %i.g) #8
  %i.h = add nuw i64 %.018, 1                     ; 2 uses
  %i.i = load i64, ptr %i.b, align 8
  %i.j = icmp ult i64 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge.loopexit, !llvm.loop !13

._crit_edge.loopexit:                             ; preds = %.lr.ph
  %.pre = load ptr, ptr %0, align 8
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.k = phi ptr [ %.pre, %._crit_edge.loopexit ], [ %i.a, %.preheader ]
  tail call void @g_free(ptr noundef %i.k) #8
  store ptr null, ptr %0, align 8
  tail call void @g_free(ptr noundef nonnull %0) #8
  ret void
}

; Function Attrs: noreturn
declare void @g_assertion_message_expr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind sspstrong uwtable
define dso_local ptr @get_cached_data(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull @__func__.cache_get_by_addr, ptr noundef nonnull @.str.5) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not11.i = icmp eq ptr %i.a, null
  br i1 %.not11.i, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 116, ptr noundef nonnull @__func__.cache_get_by_addr, ptr noundef nonnull @.str.6) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.f, label %cache_get_by_addr.exit, !prof !12

bb.f:                                             ; preds = %bb.e
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 107, ptr noundef nonnull @__func__.cache_get_cache_pos, ptr noundef nonnull @.str.8) #10
  unreachable

cache_get_by_addr.exit:                           ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = udiv i64 %1, %i.e
  %i.g = add i64 %i.c, -1
  %i.h = and i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.h
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8
  ret ptr %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local noundef zeroext i1 @cache_is_cached(ptr nofree noundef readonly captures(address_is_null) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull @__func__.cache_get_by_addr, ptr noundef nonnull @.str.5) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not11.i = icmp eq ptr %i.a, null
  br i1 %.not11.i, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 116, ptr noundef nonnull @__func__.cache_get_by_addr, ptr noundef nonnull @.str.6) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.f, label %cache_get_by_addr.exit, !prof !12

bb.f:                                             ; preds = %bb.e
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 107, ptr noundef nonnull @__func__.cache_get_cache_pos, ptr noundef nonnull @.str.8) #10
  unreachable

cache_get_by_addr.exit:                           ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load i64, ptr %i.d, align 8
  %i.f = udiv i64 %1, %i.e
  %i.g = add i64 %i.c, -1
  %i.h = and i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.h ; 2 uses
  %i.j = load i64, ptr %i.i, align 8
  %i.k = icmp eq i64 %i.j, %1                     ; 2 uses
  br i1 %i.k, label %bb.g, label %bb.h

bb.g:                                             ; preds = %cache_get_by_addr.exit
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %2, ptr %i.l, align 8
  br label %bb.h

bb.h:                                             ; preds = %cache_get_by_addr.exit, %bb.g
  ret i1 %i.k
}

; Function Attrs: nounwind sspstrong uwtable
define dso_local range(i32 -1, 1) i32 @cache_insert(ptr nofree noundef captures(address_is_null) %0, i64 noundef %1, ptr nofree noundef readonly captures(none) %2, i64 noundef %3) local_unnamed_addr #0 {
bb.a:
  %.not.i = icmp eq ptr %0, null
  br i1 %.not.i, label %bb.b, label %bb.c, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 115, ptr noundef nonnull @__func__.cache_get_by_addr, ptr noundef nonnull @.str.5) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not11.i = icmp eq ptr %i.a, null
  br i1 %.not11.i, label %bb.d, label %bb.e, !prof !12

bb.d:                                             ; preds = %bb.c
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 116, ptr noundef nonnull @__func__.cache_get_by_addr, ptr noundef nonnull @.str.6) #10
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8              ; 2 uses
  %.not.i.i = icmp eq i64 %i.c, 0
  br i1 %.not.i.i, label %bb.f, label %cache_get_by_addr.exit, !prof !12

bb.f:                                             ; preds = %bb.e
  tail call void @g_assertion_message_expr(ptr noundef null, ptr noundef nonnull @.str, i32 noundef 107, ptr noundef nonnull @__func__.cache_get_cache_pos, ptr noundef nonnull @.str.8) #10
  unreachable

cache_get_by_addr.exit:                           ; preds = %bb.e
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8              ; 4 uses
  %i.f = udiv i64 %1, %i.e
  %i.g = add i64 %i.c, -1
  %i.h = and i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %i.a, i64 %i.h ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8              ; 3 uses
  %.not = icmp eq ptr %i.k, null
  br i1 %.not, label %bb.i, label %bb.g

bb.g:                                             ; preds = %cache_get_by_addr.exit
  %i.l = load i64, ptr %i.i, align 8
  %.not19 = icmp eq i64 %i.l, %1
  br i1 %.not19, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.n = load i64, ptr %i.m, align 8
  %i.o = add i64 %i.n, 2
  %i.p = icmp ugt i64 %i.o, %3
  br i1 %i.p, label %trace_migration_pagecache_insert.exit, label %.thread

bb.i:                                             ; preds = %cache_get_by_addr.exit
  %i.q = tail call noalias ptr @g_try_malloc(i64 noundef %i.e) #9 ; 2 uses
  store ptr %i.q, ptr %i.j, align 8
  %.not21 = icmp eq ptr %i.q, null
  br i1 %.not21, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.r = load i32, ptr @trace_events_enabled_count, align 4
  %.not.i22 = icmp eq i32 %i.r, 0
  br i1 %.not.i22, label %trace_migration_pagecache_insert.exit, label %bb.k, !prof !7

bb.k:                                             ; preds = %bb.j
  %i.s = load i16, ptr @_TRACE_MIGRATION_PAGECACHE_INSERT_DSTATE, align 2
  %.not1.i = icmp eq i16 %i.s, 0
  br i1 %.not1.i, label %trace_migration_pagecache_insert.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.t = load i32, ptr @qemu_loglevel, align 4
  %i.u = and i32 %i.t, 32768
  %.not2.i = icmp eq i32 %i.u, 0
  br i1 %.not2.i, label %trace_migration_pagecache_insert.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @qemu_log(ptr noundef nonnull @.str.9) #8
  br label %trace_migration_pagecache_insert.exit

bb.n:                                             ; preds = %bb.i
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8
  %i.x = add i64 %i.w, 1
  store i64 %i.x, ptr %i.v, align 8
  %.pre = load ptr, ptr %i.j, align 8
  %.pre23 = load i64, ptr %i.d, align 8
  br label %.thread

.thread:                                          ; preds = %bb.g, %bb.h, %bb.n
  %i.y = phi i64 [ %i.e, %bb.g ], [ %i.e, %bb.h ], [ %.pre23, %bb.n ]
  %i.z = phi ptr [ %i.k, %bb.g ], [ %i.k, %bb.h ], [ %.pre, %bb.n ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 %i.z, ptr noundef nonnull align 1 %2, i64 noundef %i.y, i1 noundef false) #8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %3, ptr %i.aa, align 8
  store i64 %1, ptr %i.i, align 8
  br label %trace_migration_pagecache_insert.exit

trace_migration_pagecache_insert.exit:            ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %.thread
  %.0 = phi i32 [ -1, %bb.h ], [ 0, %.thread ], [ -1, %bb.j ], [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.m ]
  ret i32 %.0
}

declare void @qemu_log(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.ctpop.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #7

attributes #0 = { nounwind sspstrong uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #2 = { allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #3 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx16,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" "zero-call-used-regs"="used-gpr" }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nounwind }
attributes #9 = { nounwind allocsize(0) }
attributes #10 = { noreturn nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260815081758+83e1178daa12-1~exp1~20260815201912.1788)"}
!7 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!13 = distinct !{!13, !9}
end_hunk_0
