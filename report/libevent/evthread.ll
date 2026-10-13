Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/evthread?download=true
inline.NumInlined: 10
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.evthread_lock_callbacks = type { i32, i32, ptr, ptr, ptr, ptr }

@evthread_lock_debugging_enabled_ = local_unnamed_addr global i32 0, align 4
@evthread_lock_fns_ = global %struct.evthread_lock_callbacks zeroinitializer, align 8
@evthread_id_fn_ = hidden local_unnamed_addr global ptr null, align 8
@evthread_cond_fns_ = global { i32, [4 x i8], ptr, ptr, ptr, ptr } zeroinitializer, align 8
@original_lock_fns_ = internal global %struct.evthread_lock_callbacks zeroinitializer, align 8
@event_debug_mode_on_ = external local_unnamed_addr global i32, align 4
@event_debug_created_threadable_ctx_ = external local_unnamed_addr global i32, align 4
@.str = private unnamed_addr constant [61 x i8] c"evthread initialization must be called BEFORE anything else!\00", align 1
@.str.1 = private unnamed_addr constant [84 x i8] c"Trying to disable lock functions after they have been set up will probaby not work.\00", align 1
@.str.2 = private unnamed_addr constant [61 x i8] c"Can't change lock callbacks once they have been initialized.\00", align 1
@.str.3 = private unnamed_addr constant [89 x i8] c"Trying to disable condition functions after they have been set up will probaby not work.\00", align 1
@.str.4 = private unnamed_addr constant [66 x i8] c"Can't change condition callbacks once they have been initialized.\00", align 1
@__const.evthread_enable_lock_debugging.cbs = private unnamed_addr constant %struct.evthread_lock_callbacks { i32 1, i32 1, ptr @debug_lock_alloc, ptr @debug_lock_free, ptr @debug_lock_lock, ptr @debug_lock_unlock }, align 8
@original_cond_fns_ = internal global { i32, [4 x i8], ptr, ptr, ptr, ptr } zeroinitializer, align 8

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @evthread_set_id_callback(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  store ptr %0, ptr @evthread_id_fn_, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define nonnull ptr @evthread_get_lock_callbacks() local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @evthread_lock_debugging_enabled_, align 4
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, ptr @evthread_lock_fns_, ptr @original_lock_fns_
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden nonnull ptr @evthread_get_condition_callbacks() local_unnamed_addr #1 {
bb.a:
  %i.a = load i32, ptr @evthread_lock_debugging_enabled_, align 4
  %.not = icmp eq i32 %i.a, 0
  %i.b = select i1 %.not, ptr @evthread_cond_fns_, ptr @original_cond_fns_
  ret ptr %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define hidden void @evthreadimpl_disable_lock_debugging_() local_unnamed_addr #0 {
bb.a:
  store i32 0, ptr @evthread_lock_debugging_enabled_, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @evthread_set_lock_callbacks(ptr nofree noundef readonly captures(address_is_null) %0) local_unnamed_addr #2 {
bb.a:
  %i.a = load i32, ptr @evthread_lock_debugging_enabled_, align 4
  %.not.i = icmp eq i32 %i.a, 0                   ; 6 uses
  %i.b = select i1 %.not.i, ptr @evthread_lock_fns_, ptr @original_lock_fns_ ; 3 uses
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
  %.val40 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 8), align 8
  %.val41 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 8), align 8
  %1 = select i1 %.not.i, ptr %.val40, ptr %.val41 ; 2 uses
  %.not25 = icmp eq ptr %1, null                  ; 2 uses
  br i1 %.not, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  br i1 %.not25, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @event_warnx(ptr noundef nonnull @.str.1) #10
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, i8 0, i64 40, i1 false)
  br label %bb.t

bb.g:                                             ; preds = %bb.c
  br i1 %.not25, label %bb.o, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.g = load i32, ptr %i.b, align 8
  %i.h = load i32, ptr %0, align 8
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.i, label %bb.n

bb.i:                                             ; preds = %bb.h
  %.val32 = load i32, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 4), align 4
  %.val33 = load i32, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 4), align 4
  %2 = select i1 %.not.i, i32 %.val32, i32 %.val33
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = load i32, ptr %i.j, align 4
  %i.l = icmp eq i32 %2, %i.k
  br i1 %i.l, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %1, %i.n
  br i1 %i.o, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  %.val34 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 16), align 8
  %.val35 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 16), align 8
  %3 = select i1 %.not.i, ptr %.val34, ptr %.val35
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %3, %i.q
  br i1 %i.r, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  %.val36 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %.val37 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 24), align 8
  %4 = select i1 %.not.i, ptr %.val36, ptr %.val37
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %4, %i.t
  br i1 %i.u, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.val38 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %.val39 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_lock_fns_, i64 32), align 8
  %5 = select i1 %.not.i, ptr %.val38, ptr %.val39
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.w = load ptr, ptr %i.v, align 8
  %i.x = icmp eq ptr %5, %i.w
  br i1 %i.x, label %bb.t, label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  tail call void (ptr, ...) @event_warnx(ptr noundef nonnull @.str.2) #10
  br label %bb.t

bb.o:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %.not27 = icmp eq ptr %i.z, null
  br i1 %.not27, label %bb.t, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8
  %.not28 = icmp eq ptr %i.ab, null
  br i1 %.not28, label %bb.t, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ad = load ptr, ptr %i.ac, align 8
  %.not29 = icmp eq ptr %i.ad, null
  br i1 %.not29, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.af = load ptr, ptr %i.ae, align 8
  %.not30 = icmp eq ptr %i.af, null
  br i1 %.not30, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  %i.ag = tail call i32 @event_global_setup_locks_(i32 noundef 1) #10
  br label %bb.t

bb.t:                                             ; preds = %bb.o, %bb.p, %bb.q, %bb.r, %bb.m, %bb.s, %bb.n, %bb.f
  %.0 = phi i32 [ 0, %bb.f ], [ -1, %bb.n ], [ %i.ag, %bb.s ], [ 0, %bb.m ], [ -1, %bb.r ], [ -1, %bb.q ], [ -1, %bb.p ], [ -1, %bb.o ]
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
  %.not.i = icmp eq i32 %i.a, 0                   ; 6 uses
  %i.b = select i1 %.not.i, ptr @evthread_cond_fns_, ptr @original_cond_fns_ ; 3 uses
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
  %.val40 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_cond_fns_, i64 8), align 8
  %.val41 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_cond_fns_, i64 8), align 8
  %1 = select i1 %.not.i, ptr %.val40, ptr %.val41 ; 2 uses
  %.not26 = icmp eq ptr %1, null                  ; 2 uses
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
  %i.g = load i32, ptr %i.b, align 8
  %i.h = load i32, ptr %0, align 8
  %i.i = icmp eq i32 %i.g, %i.h
  br i1 %i.i, label %bb.i, label %bb.m

bb.i:                                             ; preds = %bb.h
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = icmp eq ptr %1, %i.k
  br i1 %i.l, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %.val34 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_cond_fns_, i64 16), align 8
  %.val35 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_cond_fns_, i64 16), align 8
  %2 = select i1 %.not.i, ptr %.val34, ptr %.val35
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.n = load ptr, ptr %i.m, align 8
  %i.o = icmp eq ptr %2, %i.n
  br i1 %i.o, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %.val36 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_cond_fns_, i64 24), align 8
  %.val37 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_cond_fns_, i64 24), align 8
  %3 = select i1 %.not.i, ptr %.val36, ptr %.val37
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = icmp eq ptr %3, %i.q
  br i1 %i.r, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %.val38 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_cond_fns_, i64 32), align 8
  %.val39 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @original_cond_fns_, i64 32), align 8
  %4 = select i1 %.not.i, ptr %.val38, ptr %.val39
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = icmp eq ptr %4, %i.t
  br i1 %i.u, label %bb.u, label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j, %bb.i, %bb.h
  tail call void (ptr, ...) @event_warnx(ptr noundef nonnull @.str.4) #10
  br label %bb.u

bb.n:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not28 = icmp eq ptr %i.w, null
  br i1 %.not28, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load ptr, ptr %i.x, align 8
  %.not29 = icmp eq ptr %i.y, null
  br i1 %.not29, label %bb.s, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aa = load ptr, ptr %i.z, align 8
  %.not30 = icmp eq ptr %i.aa, null
  br i1 %.not30, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8
  %.not31 = icmp eq ptr %i.ac, null
  br i1 %.not31, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.p, %bb.o, %bb.n
  br i1 %.not.i, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ad = load <2 x ptr>, ptr %i.v, align 8
  store <2 x ptr> %i.ad, ptr getelementptr inbounds nuw (i8, ptr @evthread_cond_fns_, i64 8), align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.af = load ptr, ptr %i.ae, align 8
  store ptr %i.af, ptr getelementptr inbounds nuw (i8, ptr @evthread_cond_fns_, i64 24), align 8
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
  %i.a = tail call ptr @event_mm_malloc_(i64 noundef 32) #10 ; 9 uses
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
  store i32 -558845684, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %0, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i32 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 0, ptr %i.i, align 8
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
end_hunk_0
