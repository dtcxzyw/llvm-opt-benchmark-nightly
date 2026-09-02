Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/buffer?download=true
inline.NumInlined: 79
inline.NumDeleted: 28
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.evthread_lock_callbacks = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.evbuffer_cb_info = type { i64, i64, i64 }
%struct.evbuffer_ptr = type { i64, %struct.anon.0 }
%struct.anon.0 = type { ptr, i64 }
%struct.iovec = type { ptr, i64 }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@evthread_lock_fns_ = external local_unnamed_addr global %struct.evthread_lock_callbacks, align 8
@.str = private unnamed_addr constant [18 x i8] c"%s: out of memory\00", align 1
@__func__.evbuffer_pullup = private unnamed_addr constant [16 x i8] c"evbuffer_pullup\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"\0D\0A\00", align 1
@__func__.evbuffer_readln = private unnamed_addr constant [16 x i8] c"evbuffer_readln\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"%s: munmap failed\00", align 1
@__func__.evbuffer_file_segment_free = private unnamed_addr constant [27 x i8] c"evbuffer_file_segment_free\00", align 1
@__func__.APPEND_CHAIN_MULTICAST = private unnamed_addr constant [23 x i8] c"APPEND_CHAIN_MULTICAST\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"%s: mmap(%d, %d, %zu) failed\00", align 1
@__func__.evbuffer_file_segment_materialize = private unnamed_addr constant [34 x i8] c"evbuffer_file_segment_materialize\00", align 1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define hidden void @evbuffer_chain_pin_(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8
  %i.c = or i32 %i.b, %1
  store i32 %i.c, ptr %i.a, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @evbuffer_chain_unpin_(ptr noundef %0, i32 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = xor i32 %1, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = and i32 %i.c, %i.a                       ; 2 uses
  store i32 %i.d, ptr %i.b, align 8
  %i.e = and i32 %i.d, 64
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint nounwind uwtable
define internal fastcc void @evbuffer_chain_free(ptr noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 36 ; 3 uses
  %i.b = load i32, ptr %i.a, align 4              ; 3 uses
  %i.c = add nsw i32 %i.b, -1
  store i32 %i.c, ptr %i.a, align 4
  %i.d = icmp sgt i32 %i.b, 1
  br i1 %i.d, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.f = load i32, ptr %i.e, align 8              ; 5 uses
  %i.g = and i32 %i.f, 48
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 %i.b, ptr %i.a, align 4
  %i.h = or i32 %i.f, 64
  store i32 %i.h, ptr %i.e, align 8
  br label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.i = and i32 %i.f, 4
  %.not24 = icmp eq i32 %i.i, 0
  br i1 %.not24, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.k = load ptr, ptr %i.j, align 8              ; 2 uses
  %.not25 = icmp eq ptr %i.k, null
  br i1 %.not25, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.k(ptr noundef %i.m, i64 noundef %i.o, ptr noundef %i.q) #16
  %.pre = load i32, ptr %i.e, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %i.r = phi i32 [ %i.f, %bb.e ], [ %.pre, %bb.f ], [ %i.f, %bb.d ] ; 3 uses
  %1 = trunc i32 %i.r to i1
  br i1 %1, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not27 = icmp eq ptr %i.t, null
  br i1 %.not27, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @evbuffer_file_segment_free(ptr noundef nonnull %i.t)
  %.pre30 = load i32, ptr %i.e, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.h, %bb.i, %bb.g
  %i.u = phi i32 [ %i.r, %bb.h ], [ %.pre30, %bb.i ], [ %i.r, %bb.g ]
  %i.v = and i32 %i.u, 128
  %.not28 = icmp eq i32 %i.v, 0
  br i1 %.not28, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %i.z = load ptr, ptr %i.y, align 8              ; 2 uses
  %.not29 = icmp eq ptr %i.z, null
  br i1 %.not29, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aa = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.ab = tail call i32 %i.aa(i32 noundef 0, ptr noundef nonnull %i.z) #16 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ad = load ptr, ptr %i.ac, align 8
  tail call fastcc void @evbuffer_chain_free(ptr noundef %i.ad)
  %i.ae = load ptr, ptr %i.w, align 8
  tail call void @evbuffer_decref_and_unlock_(ptr noundef %i.ae)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.j
  tail call void @event_mm_free_(ptr noundef nonnull %0) #16
  br label %bb.o

bb.o:                                             ; preds = %bb.a, %bb.n, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define ptr @evbuffer_new() local_unnamed_addr #1 {
bb.a:
  %i.a = tail call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef 136) #16 ; 6 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i32 1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.a, ptr %i.e, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #3

declare ptr @event_mm_calloc_(i64 noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #3

; Function Attrs: nounwind uwtable
define noundef i32 @evbuffer_set_flags(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = trunc i64 %1 to i32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.e = load i32, ptr %i.d, align 4
  %i.f = or i32 %i.e, %i.c
  store i32 %i.f, ptr %i.d, align 4
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.h = tail call i32 %i.g(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  %.pr = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.i = trunc i64 %1 to i32
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.k = load i32, ptr %i.j, align 4
  %i.l = or i32 %i.k, %i.i
  store i32 %i.l, ptr %i.j, align 4
  %.not6 = icmp eq ptr %.pr, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.n = tail call i32 %i.m(i32 noundef 0, ptr noundef nonnull %.pr) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define noundef i32 @evbuffer_clear_flags(ptr nofree noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = trunc i64 %1 to i32
  %i.d = xor i32 %i.c, -1
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4
  %i.g = and i32 %i.f, %i.d
  store i32 %i.g, ptr %i.e, align 4
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.i = tail call i32 %i.h(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  %.pr = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.j = trunc i64 %1 to i32
  %i.k = xor i32 %i.j, -1
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 60 ; 2 uses
  %i.m = load i32, ptr %i.l, align 4
  %i.n = and i32 %i.m, %i.k
  store i32 %i.n, ptr %i.l, align 4
  %.not6 = icmp eq ptr %.pr, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.p = tail call i32 %i.o(i32 noundef 0, ptr noundef nonnull %.pr) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden void @evbuffer_incref_(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.d = load i32, ptr %i.c, align 8
  %i.e = add nsw i32 %i.d, 1
  store i32 %i.e, ptr %i.c, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.g = tail call i32 %i.f(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  %.pr = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8
  %i.j = add nsw i32 %i.i, 1
  store i32 %i.j, ptr %i.h, align 8
  %.not6 = icmp eq ptr %.pr, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.l = tail call i32 %i.k(i32 noundef 0, ptr noundef nonnull %.pr) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @evbuffer_incref_and_lock_(ptr nofree noundef captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
end_hunk_0
begin_hunk_1_@evbuffer_invoke_callbacks_:bb.a

evbuffer_incref_and_lock_.exit:                   ; preds = %bb.e, %bb.f
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.q = load i32, ptr %i.p, align 8
  %i.r = add nsw i32 %i.q, 1
  store i32 %i.r, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.t = load ptr, ptr %i.s, align 8              ; 2 uses
  %.not14 = icmp eq ptr %i.t, null
  br i1 %.not14, label %bb.h, label %bb.g

bb.g:                                             ; preds = %evbuffer_incref_and_lock_.exit
  tail call void @bufferevent_incref(ptr noundef nonnull %i.t) #16
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %evbuffer_incref_and_lock_.exit
  %i.u = load ptr, ptr %i.l, align 8              ; 2 uses
  %.not15 = icmp eq ptr %i.u, null
  br i1 %.not15, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.w = tail call i32 %i.v(i32 noundef 0, ptr noundef nonnull %i.u) #16 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.d, %bb.i, %bb.h, %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #16
  %i.x = load i8, ptr %i.e, align 8
  %i.y = and i8 %i.x, 8
  %.not35.i.not = icmp eq i8 %i.y, 0
  %i.z = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  br i1 %i.aa, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  br label %evbuffer_run_callbacks.exit

bb.l:                                             ; preds = %bb.j
  %i.ac = load i64, ptr %i.ab, align 8            ; 3 uses
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.af = load i64, ptr %i.ae, align 8            ; 3 uses
  %i.ag = icmp eq i64 %i.af, 0
  %or.cond.i = select i1 %i.ad, i1 %i.ag, i1 false
  br i1 %or.cond.i, label %evbuffer_run_callbacks.exit, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ai = load i64, ptr %i.ah, align 8            ; 2 uses
  %i.aj = sub i64 %i.af, %i.ac
  %i.ak = add i64 %i.aj, %i.ai
  store i64 %i.ak, ptr %1, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 %i.ac, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i64 %i.af, ptr %i.am, align 8
  br i1 %.not35.i.not, label %bb.m, label %bb.n

bb.m:                                             ; preds = %._crit_edge.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ab, i8 0, i64 16, i1 false)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %._crit_edge.i
  %i.an = phi i32 [ -2, %bb.m ], [ -4, %._crit_edge.i ]
  br label %bb.o

bb.o:                                             ; preds = %bb.s, %bb.n
  %.03441.i = phi ptr [ %i.z, %bb.n ], [ %i.ao, %bb.s ] ; 5 uses
  %i.ao = load ptr, ptr %.03441.i, align 8        ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.03441.i, i64 32
  %i.aq = load i32, ptr %i.ap, align 8            ; 2 uses
  %i.ar = or i32 %i.aq, %i.an
  %.not38.i.a = icmp eq i32 %i.ar, -1
  br i1 %.not38.i.a, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  %i.as = and i32 %i.aq, 262144
  %.not39.i = icmp eq i32 %i.as, 0
  %i.at = getelementptr inbounds nuw i8, ptr %.03441.i, i64 16
  %i.au = load ptr, ptr %i.at, align 8            ; 2 uses
  br i1 %.not39.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.av = load i64, ptr %1, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.03441.i, i64 24
  %i.ax = load ptr, ptr %i.aw, align 8
  call void %i.au(ptr noundef %0, i64 noundef %i.av, i64 noundef %i.ai, ptr noundef %i.ax) #16, !inline_history !0
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.ay = getelementptr inbounds nuw i8, ptr %.03441.i, i64 24
  %i.az = load ptr, ptr %i.ay, align 8
  call void %i.au(ptr noundef %0, ptr noundef nonnull %1, ptr noundef %i.az) #16, !inline_history !0
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q, %bb.o
  %.not37.i = icmp eq ptr %i.ao, null
  br i1 %.not37.i, label %evbuffer_run_callbacks.exit, label %bb.o, !llvm.loop !1

evbuffer_run_callbacks.exit:                      ; preds = %bb.s, %bb.k, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #16
  br label %bb.t

bb.t:                                             ; preds = %evbuffer_run_callbacks.exit, %bb.b
  ret void
}

declare i32 @event_deferred_cb_schedule_(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @bufferevent_incref(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @evbuffer_decref_and_unlock_(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr %i.b, align 8
  %i.e = icmp sgt i32 %i.c, 1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not30 = icmp eq ptr %i.f, null
  br i1 %.not30, label %bb.m, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.h = tail call i32 %i.g(i32 noundef 0, ptr noundef nonnull %i.f) #16 ; 0 uses
  br label %bb.m

bb.d:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %0, align 8                ; 2 uses
  %.not31 = icmp eq ptr %i.i, null
  br i1 %.not31, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d, %.lr.ph
  %.032 = phi ptr [ %i.j, %.lr.ph ], [ %i.i, %bb.d ] ; 2 uses
  %i.j = load ptr, ptr %.032, align 8             ; 2 uses
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %.032)
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !17

._crit_edge:                                      ; preds = %.lr.ph, %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not9.i = icmp eq ptr %i.l, null
  br i1 %.not9.i, label %evbuffer_remove_all_callbacks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %._crit_edge, %.lr.ph._crit_edge.i
  %i.m = phi ptr [ %i.q, %.lr.ph._crit_edge.i ], [ %i.l, %._crit_edge ] ; 4 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %.not8.i = icmp eq ptr %i.n, null
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.pre10.i = load ptr, ptr %.phi.trans.insert.i, align 8 ; 2 uses
  br i1 %.not8.i, label %.lr.ph._crit_edge.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr %.pre10.i, ptr %i.o, align 8
  %.pre.i = load ptr, ptr %i.m, align 8
  br label %.lr.ph._crit_edge.i

.lr.ph._crit_edge.i:                              ; preds = %bb.e, %.lr.ph.i
  %i.p = phi ptr [ %.pre.i, %bb.e ], [ null, %.lr.ph.i ]
  store ptr %i.p, ptr %.pre10.i, align 8
  tail call void @event_mm_free_(ptr noundef nonnull %i.m) #16
  %i.q = load ptr, ptr %i.k, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %evbuffer_remove_all_callbacks.exit, label %.lr.ph.i, !llvm.loop !2

evbuffer_remove_all_callbacks.exit:               ; preds = %.lr.ph._crit_edge.i, %._crit_edge
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.s = load i8, ptr %i.r, align 8
  %i.t = and i8 %i.s, 8
  %.not27 = icmp eq i8 %i.t, 0
  br i1 %.not27, label %bb.g, label %bb.f

bb.f:                                             ; preds = %evbuffer_remove_all_callbacks.exit
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @event_deferred_cb_cancel_(ptr noundef %i.v, ptr noundef nonnull %i.w) #16
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %evbuffer_remove_all_callbacks.exit
  %i.x = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not28 = icmp eq ptr %i.x, null
  br i1 %.not28, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.z = tail call i32 %i.y(i32 noundef 0, ptr noundef nonnull %i.x) #16 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aa = load i8, ptr %i.r, align 8
  %1 = trunc i8 %i.aa to i1
  br i1 %1, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.ac = icmp ne ptr %i.ab, null
  %i.ad = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 16), align 8 ; 2 uses
  %i.ae = icmp ne ptr %i.ad, null
  %or.cond3 = select i1 %i.ac, i1 %i.ae, i1 false
  br i1 %or.cond3, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  tail call void %i.ad(ptr noundef nonnull %i.ab, i32 noundef 1) #16
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  tail call void @event_mm_free_(ptr noundef nonnull %0) #16
  br label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.c, %bb.l
  ret void
}

declare void @event_deferred_cb_cancel_(ptr noundef, ptr noundef) local_unnamed_addr #4

declare void @event_mm_free_(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @evbuffer_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @evbuffer_decref_and_unlock_(ptr noundef nonnull %0)
  ret void
}

; Function Attrs: nounwind uwtable
define void @evbuffer_lock(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define void @evbuffer_unlock(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nounwind uwtable
define i64 @evbuffer_get_length(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.f = tail call i32 %i.e(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  %.pr = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8              ; 2 uses
  %.not6 = icmp eq ptr %.pr, null
  br i1 %.not6, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.j = tail call i32 %i.i(i32 noundef 0, ptr noundef nonnull %.pr) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.k = phi i64 [ %i.d, %.thread ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  ret i64 %i.k
}

; Function Attrs: nounwind uwtable
define i64 @evbuffer_get_contiguous_space(ptr nofree noundef readonly captures(none) %0) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8                ; 2 uses
  %.not9 = icmp eq ptr %i.e, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load i64, ptr %i.f, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %i.h = phi i64 [ %i.g, %bb.d ], [ 0, %bb.c ]
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not10 = icmp eq ptr %i.i, null
  br i1 %.not10, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.k = tail call i32 %i.j(i32 noundef 0, ptr noundef nonnull %i.i) #16 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret i64 %i.h
}

; Function Attrs: nounwind uwtable
define i64 @evbuffer_add_iovec(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = icmp sgt i32 %2, 0
  br i1 %i.e, label %.lr.ph.preheader, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.c
  %i.f = tail call i32 @evbuffer_expand_fast_(ptr noundef nonnull %0, i64 noundef 0, i32 noundef 2) ; 0 uses
  br label %.loopexit

.lr.ph.preheader:                                 ; preds = %bb.c
  %wide.trip.count = zext nneg i32 %2 to i64      ; 3 uses
  %min.iters.check = icmp ult i32 %2, 5
  br i1 %min.iters.check, label %.lr.ph.preheader52, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.preheader
  %i.g = and i64 %wide.trip.count, 3              ; 2 uses
  %i.h = icmp eq i64 %i.g, 0
  %i.i = select i1 %i.h, i64 4, i64 %i.g
  %n.vec = sub nsw i64 %wide.trip.count, %i.i     ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.n, %vector.body ]
  %vec.phi49 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.o, %vector.body ]
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.k = getelementptr inbounds nuw [16 x i8], ptr %1, i64 %index
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %wide.vec = load <4 x i64>, ptr %i.l, align 8
  %strided.vec = shufflevector <4 x i64> %wide.vec, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %wide.vec50 = load <4 x i64>, ptr %i.m, align 8
  %strided.vec51 = shufflevector <4 x i64> %wide.vec50, <4 x i64> poison, <2 x i32> <i32 0, i32 2>
  %i.n = add <2 x i64> %strided.vec, %vec.phi     ; 2 uses
  %i.o = add <2 x i64> %strided.vec51, %vec.phi49 ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !18

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.o, %i.n
end_hunk_1
begin_hunk_2_@evbuffer_file_segment_materialize:bb.a
  %i.j = load i32, ptr %i.i, align 4
  %i.k = and i32 %i.j, 2
  %.not75 = icmp eq i32 %i.k, 0
  br i1 %.not75, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %.not76 = icmp eq i64 %i.f, 0
  br i1 %.not76, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = tail call i64 @sysconf(i32 noundef 30) #16 ; 2 uses
  %.not77 = icmp eq i64 %i.l, -1
  br i1 %.not77, label %.thread89, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = srem i64 %i.f, %i.l                      ; 2 uses
  %i.n = sub nsw i64 %i.f, %i.m
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.163 = phi i64 [ %i.n, %bb.e ], [ 0, %bb.c ]
  %.161 = phi i64 [ %i.m, %bb.e ], [ 0, %bb.c ]   ; 2 uses
  %i.o = add nsw i64 %.161, %i.d
  %i.p = tail call ptr @mmap(ptr noundef null, i64 noundef %i.o, i32 noundef 1, i32 noundef 2, i32 noundef %i.b, i64 noundef %.163) #16 ; 3 uses
  %i.q = icmp eq ptr %i.p, inttoptr (i64 -1 to ptr)
  br i1 %i.q, label %.thread85, label %.thread87

.thread85:                                        ; preds = %bb.f
  %i.r = add nsw i64 %i.f, %i.d
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.evbuffer_file_segment_materialize, i32 noundef %i.b, i32 noundef 0, i64 noundef %i.r) #16
  br label %bb.g

.thread87:                                        ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.p, ptr %i.s, align 8
  %i.t = getelementptr inbounds i8, ptr %i.p, i64 %.161
  store ptr %i.t, ptr %i.g, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = load i8, ptr %i.v, align 8
  %i.x = or i8 %i.w, 2
  store i8 %i.x, ptr %i.v, align 8
  br label %.thread89

bb.g:                                             ; preds = %.thread85, %bb.b
  %i.y = tail call i64 @lseek(i32 noundef %i.b, i64 noundef 0, i32 noundef 1) #16 ; 2 uses
  %i.z = tail call ptr @event_mm_malloc_(i64 noundef %i.d) #16 ; 7 uses
  %.not78 = icmp eq ptr %i.z, null
  br i1 %.not78, label %.thread89, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.aa = icmp slt i64 %i.y, 0
  br i1 %i.aa, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  tail call void @event_mm_free_(ptr noundef nonnull %i.z) #16
  br label %.thread89

bb.j:                                             ; preds = %bb.h
  %i.ab = tail call i64 @lseek(i32 noundef %i.b, i64 noundef %i.f, i32 noundef 0) #16
  %i.ac = icmp slt i64 %i.ab, 0
  br i1 %i.ac, label %bb.k, label %.preheader

.preheader:                                       ; preds = %bb.j
  %i.ad = icmp slt i64 %i.d, 1
  br i1 %i.ad, label %._crit_edge, label %.lr.ph

bb.k:                                             ; preds = %bb.j
  tail call void @event_mm_free_(ptr noundef nonnull %i.z) #16
  br label %.thread89

.lr.ph:                                           ; preds = %.preheader, %.lr.ph
  %.05991 = phi i64 [ %i.ai, %.lr.ph ], [ 0, %.preheader ] ; 3 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.z, i64 %.05991
  %i.af = sub nsw i64 %i.d, %.05991
  %i.ag = tail call i64 @read(i32 noundef %i.b, ptr noundef nonnull %i.ae, i64 noundef %i.af) #16 ; 3 uses
  %i.ah = icmp sgt i64 %i.ag, 0                   ; 2 uses
  %i.ai = add nuw nsw i64 %i.ag, %.05991          ; 2 uses
  %.not96 = icmp slt i64 %i.ai, %i.d
  %or.cond107 = select i1 %i.ah, i1 %.not96, i1 false
  br i1 %or.cond107, label %.lr.ph, label %._crit_edge, !llvm.loop !43

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  %.lcssa = phi i1 [ true, %.preheader ], [ %i.ah, %.lr.ph ]
  %.1 = phi i64 [ 0, %.preheader ], [ %i.ag, %.lr.ph ] ; 2 uses
  %i.aj = tail call ptr @__errno_location() #18   ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4
  %i.al = tail call i64 @lseek(i32 noundef %i.b, i64 noundef %i.y, i32 noundef 0) #16
  %i.am = icmp sgt i64 %.1, -1
  %i.an = icmp ne i64 %.1, 0
  %brmerge = or i1 %.lcssa, %i.an
  %or.cond = and i1 %i.am, %brmerge
  br i1 %or.cond, label %bb.m, label %bb.l

bb.l:                                             ; preds = %._crit_edge
  tail call void @event_mm_free_(ptr noundef nonnull %i.z) #16
  store i32 %i.ak, ptr %i.aj, align 4
  br label %.thread89

bb.m:                                             ; preds = %._crit_edge
  %i.ao = icmp slt i64 %i.al, 0
  br i1 %i.ao, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  tail call void @event_mm_free_(ptr noundef nonnull %i.z) #16
  br label %.thread89

bb.o:                                             ; preds = %bb.m
  store ptr %i.z, ptr %i.g, align 8
  br label %.thread89

.thread89:                                        ; preds = %bb.g, %bb.n, %bb.l, %bb.k, %bb.i, %bb.d, %bb.o, %.thread87, %bb.a
  %.066 = phi i32 [ 0, %bb.a ], [ 0, %.thread87 ], [ 0, %bb.o ], [ -1, %bb.d ], [ -1, %bb.i ], [ -1, %bb.k ], [ -1, %bb.l ], [ -1, %bb.n ], [ -1, %bb.g ]
  ret i32 %.066
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @evbuffer_file_segment_add_cleanup_cb(ptr nofree noundef writeonly captures(none) initializes((64, 80)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %1, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %2, ptr %i.b, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define void @evbuffer_file_segment_free(ptr noundef %0) local_unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8                ; 2 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %i.d = add nsw i32 %i.c, -1
  store i32 %i.d, ptr %i.b, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.f = tail call i32 %i.e(i32 noundef 0, ptr noundef nonnull %i.a) #16 ; 0 uses
  %.pr = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.h = load i32, ptr %i.g, align 8              ; 3 uses
  %i.i = add nsw i32 %i.h, -1
  store i32 %i.i, ptr %i.g, align 8
  %.not33 = icmp eq ptr %.pr, null
  br i1 %.not33, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.k = tail call i32 %i.j(i32 noundef 0, ptr noundef nonnull %.pr) #16 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.c, %bb.b
  %i.l = phi i32 [ %i.c, %.thread ], [ %i.h, %bb.c ], [ %i.h, %bb.b ]
  %i.m = icmp sgt i32 %i.l, 1
  br i1 %i.m, label %bb.r, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load i8, ptr %i.n, align 8
  %i.p = and i8 %i.o, 2
  %.not34 = icmp eq i8 %i.p, 0
  br i1 %.not34, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.r = load i64, ptr %i.q, align 8
  %i.s = tail call i64 @sysconf(i32 noundef 30) #16
  %i.t = srem i64 %i.r, %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load i64, ptr %i.w, align 8
  %i.y = add nsw i64 %i.x, %i.t
  %i.z = tail call i32 @munmap(ptr noundef %i.v, i64 noundef %i.y) #16
  %i.aa = icmp eq i32 %i.z, -1
  br i1 %i.aa, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  tail call void (ptr, ...) @event_warn(ptr noundef nonnull @.str.2, ptr noundef nonnull @__func__.evbuffer_file_segment_free) #16
  br label %bb.j

bb.h:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8            ; 2 uses
  %.not35 = icmp eq ptr %i.ac, null
  br i1 %.not35, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @event_mm_free_(ptr noundef nonnull %i.ac) #16
  br label %bb.j

bb.j:                                             ; preds = %bb.f, %bb.g, %bb.h, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.ae = load i32, ptr %i.ad, align 4
  %1 = trunc i32 %i.ae to i1
  br i1 %1, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ag = load i32, ptr %i.af, align 4            ; 2 uses
  %i.ah = icmp sgt i32 %i.ag, -1
  br i1 %i.ah, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ai = tail call i32 @close(i32 noundef %i.ag) #16 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8            ; 2 uses
  %.not37 = icmp eq ptr %i.ak, null
  br i1 %.not37, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.al = load i32, ptr %i.ad, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.an = load ptr, ptr %i.am, align 8
  tail call void %i.ak(ptr noundef nonnull %0, i32 noundef %i.al, ptr noundef %i.an) #16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.aj, i8 0, i64 16, i1 false)
  br label %bb.o

bb.o:                                             ; preds = %bb.m, %bb.n
  %i.ao = load ptr, ptr %0, align 8               ; 2 uses
  %i.ap = icmp ne ptr %i.ao, null
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 16), align 8 ; 2 uses
  %i.ar = icmp ne ptr %i.aq, null
  %or.cond = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %or.cond, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  tail call void %i.aq(ptr noundef nonnull %i.ao, i32 noundef 0) #16
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  tail call void @event_mm_free_(ptr noundef nonnull %0) #16
  br label %bb.r

bb.r:                                             ; preds = %bb.d, %bb.q
  ret void
}

; Function Attrs: nounwind
declare i32 @munmap(ptr noundef, i64 noundef) local_unnamed_addr #10

declare i32 @close(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evbuffer_add_file_segment(ptr noundef %0, ptr noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #16 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = load ptr, ptr %1, align 8                ; 2 uses
  %.not83 = icmp eq ptr %i.e, null
  br i1 %.not83, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.f = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.g = tail call i32 %i.f(i32 noundef 0, ptr noundef nonnull %i.e) #16 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.i = load i32, ptr %i.h, align 4
  %4 = trunc i32 %i.i to i1                       ; 2 uses
  br i1 %4, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = load ptr, ptr %i.j, align 8
  %.not85 = icmp eq ptr %i.k, null
  br i1 %.not85, label %bb.g, label %bb.l

bb.g:                                             ; preds = %bb.f
  %i.l = tail call fastcc i32 @evbuffer_file_segment_materialize(ptr noundef nonnull %1)
  %i.m = icmp slt i32 %i.l, 0
  br i1 %i.m, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %.not86 = icmp eq ptr %i.n, null
  br i1 %.not86, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.o = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.p = tail call i32 %i.o(i32 noundef 0, ptr noundef nonnull %i.n) #16 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.q = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not87 = icmp eq ptr %i.q, null
  br i1 %.not87, label %bb.ae, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.s = tail call i32 %i.r(i32 noundef 0, ptr noundef nonnull %i.q) #16 ; 0 uses
  br label %bb.ae

bb.l:                                             ; preds = %bb.e, %bb.g, %bb.f
  %i.t = load ptr, ptr %1, align 8                ; 2 uses
  %.not88 = icmp eq ptr %i.t, null
  br i1 %.not88, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.u = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.v = tail call i32 %i.u(i32 noundef 0, ptr noundef nonnull %i.t) #16 ; 0 uses
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.x = load i8, ptr %i.w, align 8
  %i.y = and i8 %i.x, 4
  %.not89 = icmp eq i8 %i.y, 0
  br i1 %.not89, label %bb.o, label %evbuffer_chain_new.exit.thread

bb.o:                                             ; preds = %bb.n
  %i.z = icmp slt i64 %3, 0
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ab = load i64, ptr %i.aa, align 8            ; 3 uses
  br i1 %i.z, label %bb.p, label %._crit_edge

bb.p:                                             ; preds = %bb.o
  %i.ac = icmp sgt i64 %2, %i.ab
  br i1 %i.ac, label %evbuffer_chain_new.exit.thread, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ad = sub nsw i64 %i.ab, %2
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.o, %bb.q
  %.068 = phi i64 [ %i.ad, %bb.q ], [ %3, %bb.o ] ; 6 uses
  %i.ae = add nsw i64 %.068, %2
  %i.af = icmp sgt i64 %i.ae, %i.ab
  br i1 %i.af, label %evbuffer_chain_new.exit.thread, label %.loopexit.i

.loopexit.i:                                      ; preds = %._crit_edge
  %i.ag = tail call ptr @event_mm_malloc_(i64 noundef 1024) #16 ; 16 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %evbuffer_chain_new.exit.thread, label %bb.r

bb.r:                                             ; preds = %.loopexit.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.ag, i8 0, i64 32, i1 false)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 3 uses
  store i64 976, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 48 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ag, i64 40 ; 2 uses
  store ptr %i.aj, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 36
  store i32 1, ptr %i.al, align 4
  %i.am = getelementptr inbounds nuw i8, ptr %i.ag, i64 32 ; 2 uses
  store i32 9, ptr %i.am, align 8
  %.phi.trans.insert106 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre107 = load i8, ptr %.phi.trans.insert106, align 8
  %5 = trunc i8 %.pre107 to i1
  %or.cond = select i1 %4, i1 %5, i1 false
  br i1 %or.cond, label %bb.s, label %._crit_edge105

bb.s:                                             ; preds = %bb.r
  store i32 11, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ao = load i64, ptr %i.an, align 8
  %i.ap = add nsw i64 %i.ao, %2                   ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  store i64 %i.ap, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %.068, ptr %i.ar, align 8
  %i.as = add nsw i64 %i.ap, %.068
  store i64 %i.as, ptr %i.ai, align 8
  br label %bb.t

._crit_edge105:                                   ; preds = %bb.r
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.au = load ptr, ptr %i.at, align 8
  %i.av = getelementptr inbounds i8, ptr %i.au, i64 %2
  store ptr %i.av, ptr %i.ak, align 8
  store i64 %.068, ptr %i.ai, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  store i64 %.068, ptr %i.aw, align 8
  br label %bb.t

bb.t:                                             ; preds = %._crit_edge105, %bb.s
  %i.ax = load ptr, ptr %1, align 8               ; 2 uses
  %.not94 = icmp eq ptr %i.ax, null
  br i1 %.not94, label %.thread, label %bb.u

.thread:                                          ; preds = %bb.t
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.az = load i32, ptr %i.ay, align 8
  %i.ba = add nsw i32 %i.az, 1
  store i32 %i.ba, ptr %i.ay, align 8
  br label %bb.w

bb.u:                                             ; preds = %bb.t
  %i.bb = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.bc = tail call i32 %i.bb(i32 noundef 0, ptr noundef nonnull %i.ax) #16 ; 0 uses
  %.pr = load ptr, ptr %1, align 8                ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.be = load i32, ptr %i.bd, align 8
  %i.bf = add nsw i32 %i.be, 1
  store i32 %i.bf, ptr %i.bd, align 8
  %.not95 = icmp eq ptr %.pr, null
  br i1 %.not95, label %bb.w, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.bh = tail call i32 %i.bg(i32 noundef 0, ptr noundef nonnull %.pr) #16 ; 0 uses
  br label %bb.w

bb.w:                                             ; preds = %.thread, %bb.v, %bb.u
  store ptr %1, ptr %i.aj, align 8
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.bj = load i64, ptr %i.bi, align 8
  %i.bk = add i64 %i.bj, %.068
  store i64 %i.bk, ptr %i.bi, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.bm = load ptr, ptr %i.bl, align 8            ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8            ; 2 uses
  %i.bo = icmp eq ptr %i.bn, null
  br i1 %i.bo, label %bb.x, label %.lr.ph.i.i

bb.x:                                             ; preds = %bb.w
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.bp, align 8
  store ptr %i.ag, ptr %0, align 8
  br label %evbuffer_chain_insert.exit

.lr.ph.i.i:                                       ; preds = %bb.w, %.critedge2.i.i
  %.0.i.i = phi ptr [ %i.bv, %.critedge2.i.i ], [ %i.bn, %bb.w ] ; 6 uses
  %.021.i.i = phi ptr [ %.0.i.i, %.critedge2.i.i ], [ %i.bm, %bb.w ] ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 24
  %i.br = load i64, ptr %i.bq, align 8
  %.not13.i.i = icmp eq i64 %i.br, 0
  br i1 %.not13.i.i, label %bb.y, label %.critedge2.i.i

bb.y:                                             ; preds = %.lr.ph.i.i
  %i.bs = getelementptr inbounds nuw i8, ptr %.0.i.i, i64 32
  %i.bt = load i32, ptr %i.bs, align 8
  %i.bu = and i32 %i.bt, 48
  %.not14.i.i = icmp eq i32 %i.bu, 0
  br i1 %.not14.i.i, label %.lr.ph.i.i.i, label %.critedge2.i.i

.critedge2.i.i:                                   ; preds = %bb.y, %.lr.ph.i.i
  %i.bv = load ptr, ptr %.0.i.i, align 8          ; 2 uses
  %.not.i.i = icmp eq ptr %i.bv, null
  br i1 %.not.i.i, label %evbuffer_free_trailing_empty_chains.exit.i, label %.lr.ph.i.i, !llvm.loop !4

.lr.ph.i.i.i:                                     ; preds = %bb.y, %.lr.ph.i.i.i
  %.05.i.i.i = phi ptr [ %i.bw, %.lr.ph.i.i.i ], [ %.0.i.i, %bb.y ] ; 2 uses
  %i.bw = load ptr, ptr %.05.i.i.i, align 8       ; 2 uses
  tail call fastcc void @evbuffer_chain_free(ptr noundef nonnull %.05.i.i.i)
  %.not.i.i.i = icmp eq ptr %i.bw, null
  br i1 %.not.i.i.i, label %evbuffer_free_all_chains.exit.i.i, label %.lr.ph.i.i.i, !llvm.loop !5

evbuffer_free_all_chains.exit.i.i:                ; preds = %.lr.ph.i.i.i
  store ptr null, ptr %.021.i.i, align 8
  br label %evbuffer_free_trailing_empty_chains.exit.i

evbuffer_free_trailing_empty_chains.exit.i:       ; preds = %.critedge2.i.i, %evbuffer_free_all_chains.exit.i.i
  %.018.i.i = phi ptr [ %.021.i.i, %evbuffer_free_all_chains.exit.i.i ], [ %.0.i.i, %.critedge2.i.i ] ; 2 uses
  store ptr %i.ag, ptr %.018.i.i, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.by = load i64, ptr %i.bx, align 8
  %.not.i = icmp eq i64 %i.by, 0
  br i1 %.not.i, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %evbuffer_free_trailing_empty_chains.exit.i
  store ptr %.018.i.i, ptr %i.bl, align 8
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %evbuffer_free_trailing_empty_chains.exit.i
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ag, ptr %i.bz, align 8
  br label %evbuffer_chain_insert.exit

evbuffer_chain_insert.exit:                       ; preds = %bb.x, %bb.aa
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.cb = load i64, ptr %i.ca, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.cd = load i64, ptr %i.cc, align 8
  %i.ce = add i64 %i.cd, %i.cb
  store i64 %i.ce, ptr %i.cc, align 8
  tail call void @evbuffer_invoke_callbacks_(ptr noundef nonnull %0)
  %i.cf = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not96 = icmp eq ptr %i.cf, null
  br i1 %.not96, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %evbuffer_chain_insert.exit
  %i.cg = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ch = tail call i32 %i.cg(i32 noundef 0, ptr noundef nonnull %i.cf) #16 ; 0 uses
  br label %bb.ae

evbuffer_chain_new.exit.thread:                   ; preds = %.loopexit.i, %._crit_edge, %bb.p, %bb.n
  %i.ci = load ptr, ptr %i.a, align 8             ; 2 uses
  %.not97 = icmp eq ptr %i.ci, null
  br i1 %.not97, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %evbuffer_chain_new.exit.thread
  %i.cj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ck = tail call i32 %i.cj(i32 noundef 0, ptr noundef nonnull %i.ci) #16 ; 0 uses
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %evbuffer_chain_new.exit.thread
  tail call void @evbuffer_file_segment_free(ptr noundef nonnull %1)
  br label %bb.ae

bb.ae:                                            ; preds = %evbuffer_chain_insert.exit, %bb.ab, %bb.j, %bb.k, %bb.ad
  %.069 = phi i32 [ -1, %bb.ad ], [ -1, %bb.j ], [ -1, %bb.k ], [ 0, %bb.ab ], [ 0, %evbuffer_chain_insert.exit ]
  ret i32 %.069
}

; Function Attrs: nounwind uwtable
define range(i32 -1, 1) i32 @evbuffer_add_file(ptr noundef %0, i32 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #1 {
bb.a:
  %4 = alloca %struct.stat, align 8               ; 4 uses
  %i.a = tail call ptr @event_mm_calloc_(i64 noundef 80, i64 noundef 1) #16 ; 12 uses
  %.not.i = icmp eq ptr %i.a, null
  br i1 %.not.i, label %evbuffer_file_segment_new.exit.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i32 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  store i32 %1, ptr %i.c, align 4
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  store i32 1, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %2, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.g = icmp eq i64 %3, -1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.f, i8 0, i64 16, i1 false)
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #16
  %i.h = call i32 @fstat(i32 noundef %1, ptr noundef nonnull %4) #16
  %i.i = icmp slt i32 %i.h, 0
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 48
  %i.k = load i64, ptr %i.j, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #16
  br i1 %i.i, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.1.i = phi i64 [ %i.k, %bb.c ], [ %3, %bb.b ]  ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.1.i, ptr %i.l, align 8
  %i.m = icmp slt i64 %2, 0
  %i.n = icmp slt i64 %.1.i, 0
  %or.cond3.i = select i1 %i.m, i1 true, i1 %i.n
  %i.o = sub nuw nsw i64 9223372036854775807, %.1.i
  %i.p = icmp ugt i64 %2, %i.o
  %or.cond.i = select i1 %or.cond3.i, i1 true, i1 %i.p
  br i1 %or.cond.i, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.r = load i8, ptr %i.q, align 8
end_hunk_2
