Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/signal?download=true
inline.NumInlined: 3
inline.NumDeleted: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.evthread_lock_callbacks = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.eventop = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i64 }
%struct.sigaction = type { %union.anon.7, %struct.__sigset_t, i32, ptr }
%union.anon.7 = type { ptr }
%struct.__sigset_t = type { [16 x i64] }

@evsig_base_lock = internal unnamed_addr global ptr null, align 8
@evthread_lock_fns_ = external local_unnamed_addr global %struct.evthread_lock_callbacks, align 8
@evsig_base = internal unnamed_addr global ptr null, align 8
@evsig_base_n_signals_added = internal unnamed_addr global i32 0, align 4
@evsig_base_fd = internal unnamed_addr global i32 -1, align 4
@.str = private unnamed_addr constant [15 x i8] c"%s: socketpair\00", align 1
@__func__.evsig_init_ = private unnamed_addr constant [12 x i8] c"evsig_init_\00", align 1
@evsigops = internal constant %struct.eventop { ptr @.str.8, ptr null, ptr @evsig_add, ptr @evsig_del, ptr null, ptr null, i32 0, i32 0, i64 0 }, align 8
@event_debug_logging_mask_ = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"%s: evsignal (%d) >= sh_old_max (%d), resizing\00", align 1
@__func__.evsig_set_handler_ = private unnamed_addr constant [19 x i8] c"evsig_set_handler_\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"realloc\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"malloc\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"sigaction\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Couldn't allocate %s\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"evsig_base_lock\00", align 1
@evsig_cb.signals = internal global [1024 x i8] zeroinitializer, align 16
@.str.7 = private unnamed_addr constant [9 x i8] c"%s: recv\00", align 1
@__func__.evsig_cb = private unnamed_addr constant [9 x i8] c"evsig_cb\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"signal\00", align 1
@.str.9 = private unnamed_addr constant [298 x i8] c"Added a signal to event base %p with signals already added to event_base %p.  Only one can have signals at a time with the %s backend.  The base with the most recently added signal or the most recent event_base_loop() call gets preference; do not rely on this behavior in future Libevent versions.\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"%s: %d: changing signal handler\00", align 1
@__func__.evsig_add = private unnamed_addr constant [10 x i8] c"evsig_add\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"%s: received signal %d, but have no base configured\00", align 1
@__func__.evsig_handler = private unnamed_addr constant [14 x i8] c"evsig_handler\00", align 1
@.str.12 = private unnamed_addr constant [33 x i8] c"%s: %d: restoring signal handler\00", align 1
@__func__.evsig_del = private unnamed_addr constant [10 x i8] c"evsig_del\00", align 1

; Function Attrs: nounwind uwtable
define hidden void @evsig_set_base_(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr @evsig_base_lock, align 8  ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store ptr %0, ptr @evsig_base, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.c = load i32, ptr %i.b, align 4
  store i32 %i.c, ptr @evsig_base_n_signals_added, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.e = load i32, ptr %i.d, align 4
  store i32 %i.e, ptr @evsig_base_fd, align 4
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.g = tail call i32 %i.f(i32 noundef 0, ptr noundef nonnull %i.a) #9 ; 0 uses
  %.pre = load ptr, ptr @evsig_base_lock, align 8 ; 2 uses
  store ptr %0, ptr @evsig_base, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 180
  %i.i = load i32, ptr %i.h, align 4
  store i32 %i.i, ptr @evsig_base_n_signals_added, align 4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.k = load i32, ptr %i.j, align 4
  store i32 %i.k, ptr @evsig_base_fd, align 4
  %.not4 = icmp eq ptr %.pre, null
  br i1 %.not4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.m = tail call i32 %i.l(i32 noundef 0, ptr noundef nonnull %.pre) #9 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define hidden noundef i32 @evsig_init_(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.b = tail call i32 @evutil_make_internal_pipe_(ptr noundef nonnull %i.a) #9
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void (i32, i32, ptr, ...) @event_sock_err(i32 noundef 1, i32 noundef -1, ptr noundef nonnull @.str, ptr noundef nonnull @__func__.evsig_init_) #10
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8              ; 2 uses
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @event_mm_free_(ptr noundef nonnull %i.e) #9
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  store ptr null, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  store i32 0, ptr %i.g, align 8
  %i.h = load i32, ptr %i.a, align 8
  %i.i = tail call i32 @event_assign(ptr noundef nonnull %i.f, ptr noundef nonnull %0, i32 noundef %i.h, i16 noundef signext 18, ptr noundef nonnull @evsig_cb, ptr noundef nonnull %0) #9 ; 0 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.k = load i16, ptr %i.j, align 8
  %i.l = or i16 %i.k, 16
  store i16 %i.l, ptr %i.j, align 8
  %i.m = tail call i32 @event_priority_set(ptr noundef nonnull %i.f, i32 noundef 0) #9 ; 0 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr @evsigops, ptr %i.n, align 8
  ret i32 0
}

declare i32 @evutil_make_internal_pipe_(ptr noundef) local_unnamed_addr #1

; Function Attrs: noreturn
declare void @event_sock_err(i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare void @event_mm_free_(ptr noundef) local_unnamed_addr #1

declare i32 @event_assign(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal void @evsig_cb(i32 noundef %0, i16 signext %1, ptr noundef %2) #0 {
bb.a:
  %i.a = alloca [65 x i32], align 16              ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #9
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(260) %i.a, i8 0, i64 260, i1 false)
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.backedge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod43 = trunc i64 %i.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod43)
  %i.b = getelementptr inbounds nuw i8, ptr @evsig_cb.signals, i64 %indvars.iv.epil.init
  %i.c = load i8, ptr %i.b, align 1               ; 2 uses
  %i.d = icmp ult i8 %i.c, 65
  br i1 %i.d, label %bb.b, label %.loopexit.backedge

bb.b:                                             ; preds = %.lr.ph.epil.preheader
  %i.e = zext nneg i8 %i.c to i64
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.e ; 2 uses
  %i.g = load i32, ptr %i.f, align 4
  %i.h = add nsw i32 %i.g, 1
  store i32 %i.h, ptr %i.f, align 4
  br label %.loopexit.backedge

.loopexit:                                        ; preds = %.loopexit.backedge, %bb.a
  %i.i = tail call i64 @read(i32 noundef %0, ptr noundef nonnull @evsig_cb.signals, i64 noundef 1024) #9 ; 6 uses
  switch i64 %i.i, label %.preheader [
    i64 -1, label %bb.c
    i64 0, label %.loopexit30
  ]

.preheader:                                       ; preds = %.loopexit
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %.lr.ph.preheader, label %.loopexit.backedge

.loopexit.backedge:                               ; preds = %.loopexit.loopexit.unr-lcssa, %bb.b, %.lr.ph.epil.preheader, %.preheader
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %.preheader
  %xtraiter = and i64 %i.i, 1
  %i.k = icmp eq i64 %i.i, 1
  br i1 %i.k, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %i.i, 9223372036854775806
  br label %.lr.ph

bb.c:                                             ; preds = %.loopexit
  %i.l = tail call ptr @__errno_location() #11
  %i.m = load i32, ptr %i.l, align 4
  switch i32 %i.m, label %bb.d [
    i32 11, label %.loopexit30
    i32 4, label %.loopexit30
  ]

bb.d:                                             ; preds = %bb.c
  tail call void (i32, i32, ptr, ...) @event_sock_err(i32 noundef 1, i32 noundef %0, ptr noundef nonnull @.str.7, ptr noundef nonnull @__func__.evsig_cb) #10
  unreachable

.lr.ph:                                           ; preds = %bb.g, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %bb.g ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %bb.g ]
  %i.n = getelementptr inbounds nuw i8, ptr @evsig_cb.signals, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 2               ; 2 uses
  %i.p = icmp ult i8 %i.o, 65
  br i1 %i.p, label %bb.e, label %.lr.ph.1

bb.e:                                             ; preds = %.lr.ph
  %i.q = zext nneg i8 %i.o to i64
  %i.r = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.q ; 2 uses
  %i.s = load i32, ptr %i.r, align 4
  %i.t = add nsw i32 %i.s, 1
  store i32 %i.t, ptr %i.r, align 4
  br label %.lr.ph.1

.lr.ph.1:                                         ; preds = %bb.e, %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr @evsig_cb.signals, i64 %indvars.iv
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1
  %i.w = load i8, ptr %i.v, align 1               ; 2 uses
  %i.x = icmp ult i8 %i.w, 65
  br i1 %i.x, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.lr.ph.1
  %i.y = zext nneg i8 %i.w to i64
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.y ; 2 uses
  %i.aa = load i32, ptr %i.z, align 4
  %i.ab = add nsw i32 %i.aa, 1
  store i32 %i.ab, ptr %i.z, align 4
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.1
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %.loopexit.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !4

.loopexit30:                                      ; preds = %.loopexit, %bb.c, %bb.c
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 432 ; 2 uses
  %i.ad = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not = icmp eq ptr %i.ad, null
  br i1 %.not, label %.preheader42, label %bb.h

bb.h:                                             ; preds = %.loopexit30
  %i.ae = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.af = tail call i32 %i.ae(i32 noundef 0, ptr noundef nonnull %i.ad) #9 ; 0 uses
  br label %.preheader42

.preheader42:                                     ; preds = %bb.h, %.loopexit30
  br label %bb.i

bb.i:                                             ; preds = %.preheader42, %bb.k
  %indvars.iv34 = phi i64 [ %indvars.iv.next35, %bb.k ], [ 0, %.preheader42 ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %indvars.iv34
  %i.ah = load i32, ptr %i.ag, align 4            ; 2 uses
  %.not29 = icmp eq i32 %i.ah, 0
  br i1 %.not29, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = trunc nuw nsw i64 %indvars.iv34 to i32
  tail call void @evmap_signal_active_(ptr noundef %2, i32 noundef %i.ai, i32 noundef %i.ah) #9
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 2 uses
  %exitcond37.not = icmp eq i64 %indvars.iv.next35, 65
  br i1 %exitcond37.not, label %bb.l, label %bb.i, !llvm.loop !5

bb.l:                                             ; preds = %bb.k
  %i.aj = load ptr, ptr %i.ac, align 8            ; 2 uses
  %.not28 = icmp eq ptr %i.aj, null
  br i1 %.not28, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ak = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.al = tail call i32 %i.ak(i32 noundef 0, ptr noundef nonnull %i.aj) #9 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #9
  ret void
}

declare i32 @event_priority_set(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define hidden range(i32 -1, 1) i32 @evsig_set_handler_(ptr nofree noundef captures(none) %0, i32 noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %3 = alloca %struct.sigaction, align 8          ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #9
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8              ; 2 uses
  %.not = icmp slt i32 %1, %i.b
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = add nsw i32 %1, 1                        ; 3 uses
  %i.d = load i32, ptr @event_debug_logging_mask_, align 4
  %.not34 = icmp eq i32 %i.d, 0
  br i1 %.not34, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void (ptr, ...) @event_debugx_(ptr noundef nonnull @.str.1, ptr noundef nonnull @__func__.evsig_set_handler_, i32 noundef %1, i32 noundef %i.b) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = sext i32 %i.c to i64
  %i.h = shl nsw i64 %i.g, 3
  %i.i = tail call ptr @event_mm_realloc_(ptr noundef %i.f, i64 noundef %i.h) #9 ; 3 uses
  %.not35 = icmp eq ptr %i.i, null
  br i1 %.not35, label %.thread, label %bb.e

.thread:                                          ; preds = %bb.d
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.2) #9
  br label %bb.j

bb.e:                                             ; preds = %bb.d
  %i.j = load i32, ptr %i.a, align 8              ; 2 uses
  %i.k = sext i32 %i.j to i64
  %i.l = shl nsw i64 %i.k, 3
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  %i.n = sub nsw i32 %i.c, %i.j
  %i.o = sext i32 %i.n to i64
  %i.p = shl nsw i64 %i.o, 3
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.m, i8 0, i64 %i.p, i1 false)
  store i32 %i.c, ptr %i.a, align 8
  store ptr %i.i, ptr %i.e, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.a
  %i.q = tail call ptr @event_mm_malloc_(i64 noundef 152) #9
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 5 uses
  %i.s = load ptr, ptr %i.r, align 8
  %i.t = sext i32 %1 to i64                       ; 5 uses
  %i.u = getelementptr inbounds [8 x i8], ptr %i.s, i64 %i.t
  store ptr %i.q, ptr %i.u, align 8
  %i.v = load ptr, ptr %i.r, align 8
  %i.w = getelementptr inbounds [8 x i8], ptr %i.v, i64 %i.t
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.3) #9
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.z, i8 0, i64 144, i1 false)
  store ptr %2, ptr %3, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 136
  store i32 268435456, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.ac = call i32 @sigfillset(ptr noundef nonnull %i.ab) #9 ; 0 uses
  %i.ad = load ptr, ptr %i.r, align 8
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.ad, i64 %i.t
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = call i32 @sigaction(i32 noundef %1, ptr noundef nonnull %3, ptr noundef %i.af) #9
  %i.ah = icmp eq i32 %i.ag, -1
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.4) #9
  %i.ai = load ptr, ptr %i.r, align 8
  %i.aj = getelementptr inbounds [8 x i8], ptr %i.ai, i64 %i.t
  %i.ak = load ptr, ptr %i.aj, align 8
  call void @event_mm_free_(ptr noundef %i.ak) #9
  %i.al = load ptr, ptr %i.r, align 8
  %i.am = getelementptr inbounds [8 x i8], ptr %i.al, i64 %i.t
  store ptr null, ptr %i.am, align 8
  br label %bb.j

bb.j:                                             ; preds = %.thread, %bb.h, %bb.i, %bb.g
  %.1 = phi i32 [ -1, %bb.g ], [ -1, %bb.i ], [ -1, %.thread ], [ 0, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #9
  ret i32 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
end_hunk_0
