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
  %6 = shl i32 %3, 11
  %7 = and i32 %6, 2048
  %i.m = shl i32 %3, 17
  %i.n = and i32 %i.m, 524288
  %i.o = or disjoint i32 %7, %i.n
  %spec.select36 = xor i32 %i.o, 2048
  store i32 %spec.select36, ptr %i.l, align 8
  %i.p = and i32 %3, 16
  %.not33 = icmp eq i32 %i.p, 0
  br i1 %.not33, label %bb.j, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 8), align 8 ; 2 uses
  %.not34 = icmp eq ptr %i.q, null
  br i1 %.not34, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = tail call ptr %i.q(i32 noundef 1) #6
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.s = phi ptr [ %i.r, %bb.h ], [ null, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.s, ptr %i.t, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.v = tail call i32 @event_assign(ptr noundef nonnull %i.u, ptr noundef %0, i32 noundef %5, i16 noundef signext 18, ptr noundef nonnull @listener_read_cb, ptr noundef nonnull %i.g) #6 ; 0 uses
  %i.w = and i32 %3, 32
  %.not35 = icmp eq i32 %i.w, 0
  br i1 %.not35, label %bb.k, label %evconnlistener_enable.exit

bb.k:                                             ; preds = %bb.j
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.y = load ptr, ptr %i.x, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.z = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.aa = tail call i32 %i.z(i32 noundef 0, ptr noundef nonnull %i.y) #6, !inline_history !4 ; 0 uses
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 52 ; 2 uses
  %i.ac = load i8, ptr %i.ab, align 4
  %i.ad = or i8 %i.ac, 1
  store i8 %i.ad, ptr %i.ab, align 4
  %i.ae = load ptr, ptr %i.h, align 8
  %.not10.i = icmp eq ptr %i.ae, null
  br i1 %.not10.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = load ptr, ptr %i.g, align 8
  %i.ag = load ptr, ptr %i.af, align 8
  %i.ah = tail call i32 %i.ag(ptr noundef nonnull %i.g) #6, !inline_history !4 ; 0 uses
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %i.ai = load ptr, ptr %i.x, align 8             ; 2 uses
  %.not11.i = icmp eq ptr %i.ai, null
  br i1 %.not11.i, label %evconnlistener_enable.exit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.aj = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ak = tail call i32 %i.aj(i32 noundef 0, ptr noundef nonnull %i.ai) #6, !inline_history !4 ; 0 uses
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
  %i.n = phi i32 [ %i.h, %.lr.ph ], [ %i.ay, %bb.t ] ; 3 uses
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
  %4 = and i8 %i.at, 1
  %.not63 = icmp eq i8 %4, 0
  br i1 %.not63, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.au = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not64 = icmp eq ptr %i.au, null
  br i1 %.not64, label %.thread, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.av = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.aw = call i32 %i.av(i32 noundef 0, ptr noundef nonnull %i.au) #6 ; 0 uses
  br label %.thread

.thread:                                          ; preds = %bb.g, %listener_decref_and_unlock.exit, %bb.r, %bb.h, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  br label %listener_decref_and_unlock.exit77

bb.t:                                             ; preds = %bb.q, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 128, ptr %i.a, align 4
  %i.ax = load i32, ptr %i.f, align 8
  %i.ay = call i32 @evutil_accept4_(i32 noundef %0, ptr noundef nonnull %3, ptr noundef nonnull %i.a, i32 noundef %i.ax) #6 ; 2 uses
  %i.az = icmp slt i32 %i.ay, 0
  br i1 %i.az, label %._crit_edge, label %bb.d

._crit_edge:                                      ; preds = %bb.t, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #6
  %i.ba = tail call ptr @__errno_location() #7
  %i.bb = load i32, ptr %i.ba, align 4
  switch i32 %i.bb, label %bb.w [
    i32 103, label %bb.u
    i32 11, label %bb.u
    i32 4, label %bb.u
  ]

bb.u:                                             ; preds = %._crit_edge, %._crit_edge, %._crit_edge
  %i.bc = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not70 = icmp eq ptr %i.bc, null
  br i1 %.not70, label %listener_decref_and_unlock.exit77, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bd = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.be = call i32 %i.bd(i32 noundef 0, ptr noundef nonnull %i.bc) #6 ; 0 uses
  br label %listener_decref_and_unlock.exit77

bb.w:                                             ; preds = %._crit_edge
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8            ; 2 uses
  %.not66 = icmp eq ptr %i.bg, null
  br i1 %.not66, label %bb.ah, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bh = getelementptr inbounds nuw i8, ptr %2, i64 44 ; 4 uses
  %i.bi = load i16, ptr %i.bh, align 4
  %i.bj = add i16 %i.bi, 1
  store i16 %i.bj, ptr %i.bh, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bl = load ptr, ptr %i.bk, align 8
  %i.bm = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not68 = icmp eq ptr %i.bm, null
  br i1 %.not68, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bn = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.bo = call i32 %i.bn(i32 noundef 0, ptr noundef nonnull %i.bm) #6 ; 0 uses
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x
  call void %i.bg(ptr noundef nonnull %2, ptr noundef %i.bl) #6
  %i.bp = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not69 = icmp eq ptr %i.bp, null
  br i1 %.not69, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bq = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.br = call i32 %i.bq(i32 noundef 0, ptr noundef nonnull %i.bp) #6 ; 0 uses
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %bb.z
  %i.bs = load i16, ptr %i.bh, align 4
  %i.bt = add i16 %i.bs, -1                       ; 2 uses
  store i16 %i.bt, ptr %i.bh, align 4
  %i.bu = icmp eq i16 %i.bt, 0
  br i1 %i.bu, label %bb.ac, label %bb.af

bb.ac:                                            ; preds = %bb.ab
  %i.bv = load ptr, ptr %2, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 16
  %i.bx = load ptr, ptr %i.bw, align 8
  call void %i.bx(ptr noundef nonnull %2) #6, !inline_history !0
  %i.by = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not17.i73 = icmp eq ptr %i.by, null
  br i1 %.not17.i73, label %.thread.i76, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.bz = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.ca = call i32 %i.bz(i32 noundef 0, ptr noundef nonnull %i.by) #6, !inline_history !0 ; 0 uses
  %.pre.i74 = load ptr, ptr %i.b, align 8         ; 2 uses
  %i.cb = icmp ne ptr %.pre.i74, null
  %i.cc = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 16), align 8 ; 2 uses
  %i.cd = icmp ne ptr %i.cc, null
  %or.cond.i75 = select i1 %i.cb, i1 %i.cd, i1 false
  br i1 %or.cond.i75, label %bb.ae, label %.thread.i76

bb.ae:                                            ; preds = %bb.ad
  call void %i.cc(ptr noundef nonnull %.pre.i74, i32 noundef 1) #6, !inline_history !0
  br label %.thread.i76

.thread.i76:                                      ; preds = %bb.ae, %bb.ad, %bb.ac
  call void @event_mm_free_(ptr noundef nonnull %2) #6
  br label %listener_decref_and_unlock.exit77

bb.af:                                            ; preds = %bb.ab
  %i.ce = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not.i71 = icmp eq ptr %i.ce, null
  br i1 %.not.i71, label %listener_decref_and_unlock.exit77, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cf = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.cg = call i32 %i.cf(i32 noundef 0, ptr noundef nonnull %i.ce) #6, !inline_history !0 ; 0 uses
  br label %listener_decref_and_unlock.exit77

bb.ah:                                            ; preds = %bb.w
  call void (i32, ptr, ...) @event_sock_warn(i32 noundef %0, ptr noundef nonnull @.str) #6
  %i.ch = load ptr, ptr %i.b, align 8             ; 2 uses
  %.not67 = icmp eq ptr %i.ch, null
  br i1 %.not67, label %listener_decref_and_unlock.exit77, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ci = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.cj = call i32 %i.ci(i32 noundef 0, ptr noundef nonnull %i.ch) #6 ; 0 uses
  br label %listener_decref_and_unlock.exit77

listener_decref_and_unlock.exit77:                ; preds = %bb.ag, %bb.af, %.thread.i76, %.thread, %bb.ai, %bb.ah, %bb.u, %bb.v
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @evconnlistener_enable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = or i8 %i.f, 1
  store i8 %i.g, ptr %i.e, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8
  %.not10 = icmp eq ptr %i.i, null
  br i1 %.not10, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr %0, align 8
  %i.k = load ptr, ptr %i.j, align 8
  %i.l = tail call i32 %i.k(ptr noundef nonnull %0) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d
  %.0 = phi i32 [ %i.l, %bb.d ], [ 0, %bb.c ]
  %i.m = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not11 = icmp eq ptr %i.m, null
  br i1 %.not11, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.n = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.o = tail call i32 %i.n(i32 noundef 0, ptr noundef nonnull %i.m) #6 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define ptr @evconnlistener_new_bind(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, i32 noundef %6) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #6
  store i32 1, ptr %i.a, align 4
  %.not = icmp eq ptr %5, null                    ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i16, ptr %5, align 2
  %i.c = zext i16 %i.b to i32
  br label %bb.c
end_hunk_0
begin_hunk_1_@evutil_make_listen_socket_reuseable

declare i32 @evutil_make_listen_socket_reuseable_port(i32 noundef) local_unnamed_addr #3

declare i32 @evutil_make_tcp_listen_socket_deferred(i32 noundef) local_unnamed_addr #3

declare i32 @evutil_make_listen_socket_ipv6only(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @bind(i32 noundef, ptr, i32 noundef) local_unnamed_addr #2

declare i32 @evutil_closesocket(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define void @evconnlistener_free(ptr noundef initializes((16, 32)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.e, i8 0, i64 16, i1 false)
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %.not9 = icmp eq ptr %i.h, null
  br i1 %.not9, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void %i.h(ptr noundef nonnull %0) #6
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 44 ; 2 uses
  %i.j = load i16, ptr %i.i, align 4
  %i.k = add i16 %i.j, -1                         ; 2 uses
  store i16 %i.k, ptr %i.i, align 4
  %i.l = icmp eq i16 %i.k, 0
  br i1 %i.l, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.m = load ptr, ptr %0, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  tail call void %i.o(ptr noundef nonnull %0) #6, !inline_history !0
  %i.p = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not17.i = icmp eq ptr %i.p, null
  br i1 %.not17.i, label %.thread.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.r = tail call i32 %i.q(i32 noundef 0, ptr noundef nonnull %i.p) #6, !inline_history !0 ; 0 uses
  %.pre.i = load ptr, ptr %i.a, align 8           ; 2 uses
  %i.s = icmp ne ptr %.pre.i, null
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 16), align 8 ; 2 uses
  %i.u = icmp ne ptr %i.t, null
  %or.cond.i = select i1 %i.s, i1 %i.u, i1 false
  br i1 %or.cond.i, label %bb.h, label %.thread.i

bb.h:                                             ; preds = %bb.g
  tail call void %i.t(ptr noundef nonnull %.pre.i, i32 noundef 1) #6, !inline_history !0
  br label %.thread.i

.thread.i:                                        ; preds = %bb.h, %bb.g, %bb.f
  tail call void @event_mm_free_(ptr noundef nonnull %0) #6
  br label %listener_decref_and_unlock.exit

bb.i:                                             ; preds = %bb.e
  %i.v = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.v, null
  br i1 %.not.i, label %listener_decref_and_unlock.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.x = tail call i32 %i.w(i32 noundef 0, ptr noundef nonnull %i.v) #6, !inline_history !0 ; 0 uses
  br label %listener_decref_and_unlock.exit

listener_decref_and_unlock.exit:                  ; preds = %.thread.i, %bb.i, %bb.j
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @evconnlistener_disable(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 2 uses
  %i.f = load i8, ptr %i.e, align 4
  %i.g = and i8 %i.f, -2
  store i8 %i.g, ptr %i.e, align 4
  %i.h = load ptr, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = tail call i32 %i.j(ptr noundef nonnull %0) #6
  %i.l = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.l, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.n = tail call i32 %i.m(i32 noundef 0, ptr noundef nonnull %i.l) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %i.k
}

; Function Attrs: nounwind uwtable
define i32 @evconnlistener_get_fd(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call i32 %i.g(ptr noundef nonnull %0) #6
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not7 = icmp eq ptr %i.i, null
  br i1 %.not7, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.k = tail call i32 %i.j(i32 noundef 0, ptr noundef nonnull %i.i) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret i32 %i.h
}

; Function Attrs: nounwind uwtable
define ptr @evconnlistener_get_base(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load ptr, ptr %0, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call ptr %i.g(ptr noundef nonnull %0) #6
  %i.i = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not8 = icmp eq ptr %i.i, null
  br i1 %.not8, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.k = tail call i32 %i.j(i32 noundef 0, ptr noundef nonnull %i.i) #6 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret ptr %i.h
}

; Function Attrs: nounwind uwtable
define void @evconnlistener_set_cb(ptr noundef initializes((32, 40)) %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.d = tail call i32 %i.c(i32 noundef 0, ptr noundef nonnull %i.b) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 52 ; 3 uses
  %i.f = load i8, ptr %i.e, align 4               ; 2 uses
  %3 = and i8 %i.f, 1
  %.not13 = icmp eq i8 %3, 0
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 4 uses
  br i1 %.not13, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = load ptr, ptr %i.g, align 8
  %.not14.not = icmp eq ptr %i.h, null
  store ptr %1, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.i, align 8
  br i1 %.not14.not, label %bb.e, label %evconnlistener_enable.exit

bb.e:                                             ; preds = %bb.d
  %i.j = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.l = tail call i32 %i.k(i32 noundef 0, ptr noundef nonnull %i.j) #6, !inline_history !4 ; 0 uses
  %.pre = load i8, ptr %i.e, align 4
  %.pre18 = load ptr, ptr %i.g, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.m = phi ptr [ %.pre18, %bb.f ], [ %1, %bb.e ]
  %i.n = phi i8 [ %.pre, %bb.f ], [ %i.f, %bb.e ]
  %i.o = or i8 %i.n, 1
  store i8 %i.o, ptr %i.e, align 4
  %.not10.i = icmp eq ptr %i.m, null
  br i1 %.not10.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = load ptr, ptr %0, align 8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call i32 %i.q(ptr noundef nonnull %0) #6, !inline_history !4 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.s = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not11.i = icmp eq ptr %i.s, null
  br i1 %.not11.i, label %evconnlistener_enable.exit.thread, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.u = tail call i32 %i.t(i32 noundef 0, ptr noundef nonnull %i.s) #6, !inline_history !4 ; 0 uses
  br label %evconnlistener_enable.exit

.critedge:                                        ; preds = %bb.c
  store ptr %1, ptr %i.g, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %2, ptr %i.v, align 8
  br label %evconnlistener_enable.exit

evconnlistener_enable.exit:                       ; preds = %bb.j, %.critedge, %bb.d
  %.pr = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not16 = icmp eq ptr %.pr, null
  br i1 %.not16, label %evconnlistener_enable.exit.thread, label %bb.k

bb.k:                                             ; preds = %evconnlistener_enable.exit
  %i.w = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.x = tail call i32 %i.w(i32 noundef 0, ptr noundef nonnull %.pr) #6 ; 0 uses
  br label %evconnlistener_enable.exit.thread

evconnlistener_enable.exit.thread:                ; preds = %bb.i, %bb.k, %evconnlistener_enable.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @evconnlistener_set_error_cb(ptr nofree noundef captures(none) initializes((24, 32)) %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8              ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.c, align 8
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.d = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 24), align 8
  %i.e = tail call i32 %i.d(i32 noundef 0, ptr noundef nonnull %i.b) #6 ; 0 uses
  %.pr = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.f, align 8
  %.not7 = icmp eq ptr %.pr, null
  br i1 %.not7, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr getelementptr inbounds nuw (i8, ptr @evthread_lock_fns_, i64 32), align 8
  %i.h = tail call i32 %i.g(i32 noundef 0, ptr noundef nonnull %.pr) #6 ; 0 uses
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b, %bb.c
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @event_listener_enable(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call i32 @event_add(ptr noundef nonnull %i.a, ptr noundef null) #6
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal i32 @event_listener_disable(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call i32 @event_del(ptr noundef nonnull %i.a) #6
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal void @event_listener_destroy(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.b = tail call i32 @event_del(ptr noundef nonnull %i.a) #6 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = load i32, ptr %i.c, align 8
  %i.e = and i32 %i.d, 2
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = tail call i32 @event_get_fd(ptr noundef nonnull %i.a) #6
  %i.g = tail call i32 @evutil_closesocket(i32 noundef %i.f) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  tail call void @event_debug_unassign(ptr noundef nonnull %i.a) #6
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @event_listener_getfd(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call i32 @event_get_fd(ptr noundef nonnull %i.a) #6
  ret i32 %i.b
}

; Function Attrs: nounwind uwtable
define internal ptr @event_listener_getbase(ptr noundef %0) #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.b = tail call ptr @event_get_base(ptr noundef nonnull %i.a) #6
  ret ptr %i.b
}

declare i32 @event_add(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @event_del(ptr noundef) local_unnamed_addr #3

declare i32 @event_get_fd(ptr noundef) local_unnamed_addr #3

declare void @event_debug_unassign(ptr noundef) local_unnamed_addr #3

declare ptr @event_get_base(ptr noundef) local_unnamed_addr #3

declare void @event_mm_free_(ptr noundef) local_unnamed_addr #3

declare i32 @evutil_accept4_(i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare void @event_sock_warn(i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { nounwind }
attributes #7 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{null}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!4 = !{ptr @evconnlistener_enable}
end_hunk_1
