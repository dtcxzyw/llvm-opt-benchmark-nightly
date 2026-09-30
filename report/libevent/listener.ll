Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libevent/original/listener?download=true
inline.NumInlined: 5
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.evconnlistener_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.evthread_lock_callbacks = type { i32, i32, ptr, ptr, ptr, ptr }
%struct.sockaddr_storage = type { i16, [118 x i8], i64 }

@evconnlistener_event_ops = internal constant %struct.evconnlistener_ops { ptr @event_listener_enable, ptr @event_listener_disable, ptr @event_listener_destroy, ptr null, ptr @event_listener_getfd, ptr @event_listener_getbase }, align 8
@evthread_lock_fns_ = external local_unnamed_addr global %struct.evthread_lock_callbacks, align 8
@.str = private unnamed_addr constant [25 x i8] c"Error from accept() call\00", align 1

; Function Attrs: nounwind uwtable
define ptr @evconnlistener_new(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %4, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @listen(i32 noundef %5, i32 noundef %4) #6
  %i.c = icmp slt i32 %i.b, 0
  br i1 %i.c, label %evconnlistener_enable.exit, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = icmp slt i32 %4, 0
  br i1 %i.d, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.e = tail call i32 @listen(i32 noundef %5, i32 noundef 128) #6
  %i.f = icmp slt i32 %i.e, 0
  br i1 %i.f, label %evconnlistener_enable.exit, label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %i.g = tail call ptr @event_mm_calloc_(i64 noundef 1, i64 noundef 184) #6 ; 17 uses
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %evconnlistener_enable.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr @evconnlistener_event_ops, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr %2, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i32 %3, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 44
  store i16 1, ptr %i.k, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.m = shl i32 %3, 11
  %i.n = and i32 %i.m, 2048
  %6 = and i32 %3, 4
  %.not32 = icmp eq i32 %6, 0
  %spec.select36.v = select i1 %.not32, i32 2048, i32 526336
  %spec.select36 = xor i32 %i.n, %spec.select36.v
  store i32 %spec.select36, ptr %i.l, align 8
  %i.o = and i32 %3, 16
  %.not33 = icmp eq i32 %i.o, 0
  br i1 %.not33, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 8), align 8 ; 2 uses
  %.not34 = icmp eq ptr %i.p, null
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.q = tail call ptr %i.p(i32 noundef 1) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.r = phi ptr [ %i.q, %bb.h ], [ null, %bb.g ]
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.r, ptr %i.s, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.u = tail call i32 @event_assign(ptr noundef nonnull %i.t, ptr noundef %0, i32 noundef %5, i16 noundef signext 18, ptr noundef nonnull @listener_read_cb, ptr noundef nonnull %i.g) #6 ; 0 uses
  %i.v = and i32 %3, 32
  %.not35 = icmp eq i32 %i.v, 0
  br i1 %.not35, label %bb.k, label %evconnlistener_enable.exit

bb.k:                                             ; preds = %bb.j
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.x = load ptr, ptr %i.w, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.x, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.y = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.z = tail call i32 %i.y(i32 noundef 0, ptr noundef nonnull %i.x) #6, !inline_history !4 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 2 uses
  %i.ab = load i8, ptr %i.aa, align 4
  %i.ac = or i8 %i.ab, 1
  store i8 %i.ac, ptr %i.aa, align 4
  %i.ad = load ptr, ptr %i.h, align 8
  %.not10.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ae = load ptr, ptr %i.g, align 8
  %i.af = load ptr, ptr %i.ae, align 8
  %i.ag = tail call i32 %i.af(ptr noundef nonnull %i.g) #6, !inline_history !4 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ah = load ptr, ptr %i.w, align 8             ; 2 uses
  %.not11.i = icmp eq ptr %i.ah, null
  br i1 %.not11.i, label %evconnlistener_enable.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ai = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.aj = tail call i32 %i.ai(i32 noundef 0, ptr noundef nonnull %i.ah) #6, !inline_history !4 ; 0 uses
  br label %evconnlistener_enable.exit

evconnlistener_enable.exit:                       ; preds = %bb.p, %bb.o, %bb.j, %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ null, %bb.b ], [ null, %bb.e ], [ null, %bb.d ], [ %i.g, %bb.j ], [ %i.g, %bb.o ], [ %i.g, %bb.p ]
  ret ptr %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @listen(i32 noundef, i32 noundef) local_unnamed_addr #2

declare ptr @event_mm_calloc_(i64 noundef, i64 noundef) local_unnamed_addr #3

declare i32 @event_assign(ptr noundef, ptr noundef, i32 noundef, i16 noundef signext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define internal void @listener_read_cb(i32 noundef %0, i16 signext %1, ptr noundef %2) #0 {
bb.a:
  %3 = alloca %struct.sockaddr_storage, align 8   ; 8 uses
  %i.a = alloca i32, align 4                      ; 11 uses
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 14 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.e = tail call i32 %i.d(i32 noundef 0, ptr noundef nonnull %i.c) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 128, ptr %i.a, align 4
  %i.g = load i32, ptr %i.f, align 8
  %i.h = call i32 @evutil_accept4_(i32 noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %i.a, i32 noundef %i.g) #6 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 5 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 52
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.t
  %i.n = phi i32 [ %i.h, %.lr.ph ], [ %i.az, %bb.t ] ; 3 uses
  %i.o = load i32, ptr %i.a, align 4              ; 2 uses
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.q = call i32 @evutil_closesocket(i32 noundef %i.n) #6 ; 0 uses
  br label %bb.t

bb.f:                                             ; preds = %bb.d
  %i.r = load ptr, ptr %i.j, align 8              ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.t = call i32 @evutil_closesocket(i32 noundef %i.n) #6 ; 0 uses
  %i.u = load ptr, ptr %i.b, align 8              ; 2 uses
  %.not65 = icmp eq ptr %i.u, null
  br i1 %.not65, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.v = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.w = call i32 %i.v(i32 noundef 0, ptr noundef nonnull %i.u) #6 ; 0 uses
  br label %.thread

bb.i:                                             ; preds = %bb.f
  %i.x = load i16, ptr %i.k, align 4
  %i.y = add i16 %i.x, 1
  store i16 %i.y, ptr %i.k, align 4
  %i.z = load ptr, ptr %i.l, align 8
  %i.aa = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not61 = icmp eq ptr %i.aa, null
  br i1 %.not61, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ab = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ac = call i32 %i.ab(i32 noundef 0, ptr noundef nonnull %i.aa) #6 ; 0 uses
  %.pre = load i32, ptr %i.a, align 4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ad = phi i32 [ %.pre, %bb.j ], [ %i.o, %bb.i ]
  call void %i.r(ptr noundef nonnull %2, i32 noundef %i.n, ptr noundef nonnull %3, i32 noundef %i.ad, ptr noundef %i.z) #6
  %i.ae = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not62 = icmp eq ptr %i.ae, null
  br i1 %.not62, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.af = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.ag = call i32 %i.af(i32 noundef 0, ptr noundef nonnull %i.ae) #6 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ah = load i16, ptr %i.k, align 4             ; 2 uses
  %i.ai = icmp eq i16 %i.ah, 1
  br i1 %i.ai, label %bb.n, label %bb.q

bb.n:                                             ; preds = %bb.m
  store i16 0, ptr %i.k, align 4
  %i.aj = load ptr, ptr %2, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.al = load ptr, ptr %i.ak, align 8
  call void %i.al(ptr noundef nonnull %2) #6, !inline_history !0
  %i.am = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not17.i = icmp eq ptr %i.am, null
  br i1 %.not17.i, label %listener_decref_and_unlock.exit, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.an = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ao = call i32 %i.an(i32 noundef 0, ptr noundef nonnull %i.am) #6, !inline_history !0 ; 0 uses
  %.pre.i = load ptr, ptr %i.b, align 8           ; 2 uses
  %i.ap = icmp ne ptr %.pre.i, null
  %i.aq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 16), align 8 ; 2 uses
  %i.ar = icmp ne ptr %i.aq, null
  %or.cond.i = select i1 %i.ap, i1 %i.ar, i1 false
  br i1 %or.cond.i, label %bb.p, label %listener_decref_and_unlock.exit

bb.p:                                             ; preds = %bb.o
  call void %i.aq(ptr noundef nonnull %.pre.i, i32 noundef 1) #6, !inline_history !0
  br label %listener_decref_and_unlock.exit

listener_decref_and_unlock.exit:                  ; preds = %bb.n, %bb.o, %bb.p
  call void @event_mm_free_(ptr noundef nonnull %2) #6
  br label %.thread

bb.q:                                             ; preds = %bb.m
  %i.as = add i16 %i.ah, -1
  store i16 %i.as, ptr %i.k, align 4
  %i.at = load i8, ptr %i.m, align 4
end_hunk_0
