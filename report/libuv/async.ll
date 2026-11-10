Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libuv/original/async?download=true
inline.NumInlined: 27
inline.NumDeleted: 11
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.uv__queue = type { ptr, ptr }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@uv__async_send.val = internal constant i64 1, align 8

; Function Attrs: nounwind uwtable
define i32 @uv_async_init(ptr noundef %0, ptr noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.c = load i32, ptr %i.b, align 8
  %.not.i = icmp eq i32 %i.c, -1
  br i1 %.not.i, label %bb.b, label %uv__async_start.exit.thread

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @eventfd(i32 noundef 0, i32 noundef 526336) #7 ; 3 uses
  %i.e = icmp slt i32 %i.d, 0
  br i1 %i.e, label %uv__async_start.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = tail call i32 @uv__io_init_start(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef %i.d, i32 noundef 1) #7 ; 2 uses
  %i.g = icmp slt i32 %i.f, 0
  br i1 %i.g, label %uv__async_start.exit.thread25, label %bb.d

uv__async_start.exit.thread25:                    ; preds = %bb.c
  %i.h = tail call i32 @uv__close(i32 noundef %i.d) #7 ; 0 uses
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 512
  store i32 -1, ptr %i.i, align 8
  br label %uv__async_start.exit.thread

uv__async_start.exit:                             ; preds = %bb.b
  %i.j = tail call ptr @__errno_location() #8
  %i.k = load i32, ptr %i.j, align 4              ; 2 uses
  %i.l = sub nsw i32 0, %i.k
  %.not = icmp eq i32 %i.k, 0
  br i1 %.not, label %uv__async_start.exit.thread, label %bb.g

uv__async_start.exit.thread:                      ; preds = %bb.a, %bb.d, %uv__async_start.exit
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store ptr %0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i32 1, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 3 uses
  store i32 8, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  store ptr %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8              ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 40
  store ptr %i.s, ptr %i.t, align 8
  store ptr %i.q, ptr %i.s, align 8
  store ptr %i.q, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr null, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 96
  store ptr %2, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 120
  store i32 0, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 48
  store i32 0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  store ptr %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8            ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 112
  store ptr %i.ab, ptr %i.ac, align 8
  store ptr %i.z, ptr %i.ab, align 8
  store ptr %i.z, ptr %i.aa, align 8
  %i.ad = load i32, ptr %i.o, align 8             ; 3 uses
  %i.ae = and i32 %i.ad, 4
  %.not21 = icmp eq i32 %i.ae, 0
  br i1 %.not21, label %bb.e, label %bb.g

bb.e:                                             ; preds = %uv__async_start.exit.thread
  %i.af = or disjoint i32 %i.ad, 4
  store i32 %i.af, ptr %i.o, align 8
  %i.ag = and i32 %i.ad, 8
  %.not22 = icmp eq i32 %i.ag, 0
  br i1 %.not22, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ah = load ptr, ptr %i.m, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  %i.aj = load i32, ptr %i.ai, align 8
  %i.ak = add i32 %i.aj, 1
  store i32 %i.ak, ptr %i.ai, align 8
  br label %bb.g

bb.g:                                             ; preds = %uv__async_start.exit.thread25, %uv__async_start.exit.thread, %bb.e, %bb.f, %uv__async_start.exit
  %.0 = phi i32 [ %i.l, %uv__async_start.exit ], [ 0, %bb.f ], [ 0, %bb.e ], [ 0, %uv__async_start.exit.thread ], [ %i.f, %uv__async_start.exit.thread25 ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define noundef i32 @uv_async_send(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.c = load atomic i32, ptr %i.a monotonic, align 4
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.b, label %bb.h

bb.b:                                             ; preds = %bb.a
  %i.d = atomicrmw add ptr %i.b, i32 1 seq_cst, align 4 ; 0 uses
  %i.e = atomicrmw xchg ptr %i.a, i32 1 seq_cst, align 4
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.c, label %uv__async_send.exit

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 512
  %i.j = load i32, ptr %i.i, align 8              ; 2 uses
  %i.k = icmp eq i32 %i.j, -1
  br i1 %i.k, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 504
  %i.m = load i32, ptr %i.l, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.010.i = phi ptr [ @uv__async_send.val, %bb.d ], [ @.str, %bb.c ]
  %.09.i = phi i64 [ 8, %bb.d ], [ 1, %bb.c ]     ; 2 uses
  %.0.i = phi i32 [ %i.m, %bb.d ], [ %i.j, %bb.c ]
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %bb.e
  %i.n = tail call i64 @write(i32 noundef %.0.i, ptr noundef nonnull %.010.i, i64 noundef %.09.i) #7 ; 2 uses
  %i.o = and i64 %i.n, 4294967295
  %i.p = icmp eq i64 %i.o, 4294967295
  br i1 %i.p, label %bb.g, label %.critedge.thread.i

bb.g:                                             ; preds = %bb.f
  %i.q = tail call ptr @__errno_location() #8
  %i.r = load i32, ptr %i.q, align 4
  switch i32 %i.r, label %.thread.i [
    i32 4, label %bb.f
    i32 11, label %uv__async_send.exit
  ]

.critedge.thread.i:                               ; preds = %bb.f
  %sext12.i = shl i64 %i.n, 32
  %i.s = ashr exact i64 %sext12.i, 32
  %i.t = icmp eq i64 %i.s, %.09.i
  br i1 %i.t, label %uv__async_send.exit, label %.thread.i

.thread.i:                                        ; preds = %bb.g, %.critedge.thread.i
  tail call void @abort() #9
  unreachable

uv__async_send.exit:                              ; preds = %bb.g, %.critedge.thread.i, %bb.b
  %i.u = atomicrmw add ptr %i.b, i32 -1 seq_cst, align 4 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.a, %uv__async_send.exit
  ret i32 0
}

; Function Attrs: nounwind uwtable
define hidden void @uv__async_close(ptr nofree noundef captures(none) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i32 1, ptr %i.a seq_cst, align 4
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.07.i = phi i32 [ 0, %bb.a ], [ %.07.i.be, %.backedge ]
  %i.c = load atomic i32, ptr %i.b seq_cst, align 4
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %uv__async_spin.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !4
  %i.e = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.e, 997
  br i1 %exitcond.not.i, label %bb.d, label %.backedge

.backedge:                                        ; preds = %bb.c, %bb.d
  %.07.i.be = phi i32 [ %i.e, %bb.c ], [ 0, %bb.d ]
  br label %bb.b, !llvm.loop !0

bb.d:                                             ; preds = %bb.c
  %i.f = tail call i32 @sched_yield() #7          ; 0 uses
  br label %.backedge

uv__async_spin.exit:                              ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8              ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8
  store ptr %i.h, ptr %i.j, align 8
  %i.k = load ptr, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  %i.n = load i32, ptr %i.m, align 8              ; 3 uses
  %i.o = and i32 %i.n, 4
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.e

bb.e:                                             ; preds = %uv__async_spin.exit
  %i.q = and i32 %i.n, -5
  store i32 %i.q, ptr %i.m, align 8
  %i.r = and i32 %i.n, 8
  %.not = icmp eq i32 %i.r, 0
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  %i.v = load i32, ptr %i.u, align 8
  %i.w = add i32 %i.v, -1
  store i32 %i.w, ptr %i.u, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %uv__async_spin.exit
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @uv__async_io(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [1024 x i8], align 16             ; 3 uses
  %3 = alloca %struct.uv__queue, align 8          ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  br label %.backedge17

.backedge17:                                      ; preds = %.backedge17.backedge, %bb.a
  %i.c = load i32, ptr %i.b, align 8
  %i.d = call i64 @read(i32 noundef %i.c, ptr noundef nonnull %i.a, i64 noundef 1024) #7
  switch i64 %i.d, label %bb.d [
    i64 1024, label %.backedge17.backedge
    i64 -1, label %bb.b
  ]

.backedge17.backedge:                             ; preds = %.backedge17, %bb.b
  br label %.backedge17

bb.b:                                             ; preds = %.backedge17
  %i.e = tail call ptr @__errno_location() #8
  %i.f = load i32, ptr %i.e, align 4
  switch i32 %i.f, label %bb.c [
    i32 11, label %bb.d
    i32 4, label %.backedge17.backedge
  ]

bb.c:                                             ; preds = %bb.b
  tail call void @abort() #9
  unreachable

bb.d:                                             ; preds = %bb.b, %.backedge17
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.g, %i.h
  br i1 %.not.i, label %._crit_edge, label %uv__queue_move.exit

uv__queue_move.exit:                              ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8              ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.j, ptr %i.k, align 8
  store ptr %3, ptr %i.j, align 8
  store ptr %i.h, ptr %3, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8              ; 2 uses
  store ptr %i.m, ptr %i.i, align 8
  store ptr %i.g, ptr %i.m, align 8
  store ptr %3, ptr %i.l, align 8
  %.pre = load ptr, ptr %3, align 8               ; 2 uses
  %.not18 = icmp eq ptr %3, %.pre
  br i1 %.not18, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %uv__queue_move.exit
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %.lr.ph, %.backedge
  %i.o = phi ptr [ %.pre, %.lr.ph ], [ %i.ac, %.backedge ] ; 8 uses
  %i.p = getelementptr inbounds i8, ptr %i.o, i64 -104
  %i.q = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.s = load ptr, ptr %i.r, align 8
  store ptr %i.q, ptr %i.s, align 8
  %i.t = load ptr, ptr %i.r, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %i.t, ptr %i.u, align 8
  store ptr %i.g, ptr %i.o, align 8
  %i.v = load ptr, ptr %i.n, align 8              ; 2 uses
  store ptr %i.v, ptr %i.r, align 8
  store ptr %i.o, ptr %i.v, align 8
  store ptr %i.o, ptr %i.n, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.x = atomicrmw xchg ptr %i.w, i32 0 seq_cst, align 4
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %.backedge, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8             ; 2 uses
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %.backedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void %i.aa(ptr noundef nonnull %i.p) #7
  br label %.backedge

.backedge:                                        ; preds = %bb.g, %bb.e, %bb.f
  %i.ac = load ptr, ptr %3, align 8               ; 2 uses
  %.not = icmp eq ptr %3, %i.ac
  br i1 %.not, label %._crit_edge, label %bb.e, !llvm.loop !6

._crit_edge:                                      ; preds = %.backedge, %bb.d, %uv__queue_move.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #7
  ret void
}

; Function Attrs: nofree
declare noundef i64 @read(i32 noundef, ptr noundef captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #3

; Function Attrs: cold nofree noreturn nounwind
declare void @abort() local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define hidden void @uv__async_stop(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.uv__queue, align 8          ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %bb.k, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %uv__queue_move.exit.thread, label %uv__queue_move.exit

uv__queue_move.exit.thread:                       ; preds = %bb.b
  store ptr %1, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %1, ptr %i.g, align 8
  br label %uv__async_spin.exit._crit_edge

uv__queue_move.exit:                              ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store ptr %1, ptr %i.i, align 8
  store ptr %i.f, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  store ptr %i.l, ptr %i.h, align 8
  store ptr %i.e, ptr %i.l, align 8
  store ptr %1, ptr %i.k, align 8
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  %.not18 = icmp eq ptr %1, %.pre
  br i1 %.not18, label %uv__async_spin.exit._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %uv__queue_move.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  br label %bb.c

uv__async_spin.exit.loopexit:                     ; preds = %bb.d
  %i.n = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %1, %i.n
  br i1 %.not, label %uv__async_spin.exit._crit_edge, label %bb.c, !llvm.loop !7

bb.c:                                             ; preds = %.lr.ph, %uv__async_spin.exit.loopexit
  %i.o = phi ptr [ %.pre, %.lr.ph ], [ %i.n, %uv__async_spin.exit.loopexit ] ; 7 uses
  %i.p = load ptr, ptr %i.o, align 8              ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 3 uses
  %i.r = load ptr, ptr %i.q, align 8
  store ptr %i.p, ptr %i.r, align 8
  %i.s = load ptr, ptr %i.q, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.s, ptr %i.t, align 8
  store ptr %i.e, ptr %i.o, align 8
  %i.u = load ptr, ptr %i.m, align 8              ; 2 uses
  store ptr %i.u, ptr %i.q, align 8
  store ptr %i.o, ptr %i.u, align 8
  store ptr %i.o, ptr %i.m, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.w = getelementptr inbounds i8, ptr %i.o, i64 -56
  store atomic i32 1, ptr %i.v seq_cst, align 8
  br label %bb.d

bb.d:                                             ; preds = %.backedge, %bb.c
  %.07.i = phi i32 [ 0, %bb.c ], [ %.07.i.be, %.backedge ]
  %i.x = load atomic i32, ptr %i.w seq_cst, align 8
  %i.y = icmp eq i32 %i.x, 0
  br i1 %i.y, label %uv__async_spin.exit.loopexit, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #7, !srcloc !4
  %i.z = add nuw nsw i32 %.07.i, 1                ; 2 uses
  %exitcond.not.i = icmp eq i32 %i.z, 997
  br i1 %exitcond.not.i, label %bb.f, label %.backedge

.backedge:                                        ; preds = %bb.e, %bb.f
  %.07.i.be = phi i32 [ %i.z, %bb.e ], [ 0, %bb.f ]
  br label %bb.d, !llvm.loop !0

bb.f:                                             ; preds = %bb.e
  %i.aa = call i32 @sched_yield() #7              ; 0 uses
  br label %.backedge

uv__async_spin.exit._crit_edge:                   ; preds = %uv__async_spin.exit.loopexit, %uv__queue_move.exit.thread, %uv__queue_move.exit
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 2 uses
  %i.ac = load i32, ptr %i.ab, align 8            ; 3 uses
  %.not16 = icmp eq i32 %i.ac, -1
  br i1 %.not16, label %bb.j, label %bb.g

bb.g:                                             ; preds = %uv__async_spin.exit._crit_edge
  %i.ad = load i32, ptr %i.b, align 8
  %.not17 = icmp eq i32 %i.ac, %i.ad
  br i1 %.not17, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = call i32 @uv__close(i32 noundef %i.ac) #7 ; 0 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  store i32 -1, ptr %i.ab, align 8
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %uv__async_spin.exit._crit_edge
  call void @uv__io_stop(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1) #7
  %i.af = load i32, ptr %i.b, align 8
  %i.ag = call i32 @uv__close(i32 noundef %i.af) #7 ; 0 uses
  store i32 -1, ptr %i.b, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret void
}

declare i32 @uv__close(i32 noundef) local_unnamed_addr #5

declare void @uv__io_stop(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind uwtable
define hidden i32 @uv__async_fork(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %1 = alloca %struct.uv__queue, align 8          ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 456 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 504 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8
  %i.d = icmp eq i32 %i.c, -1
  br i1 %i.d, label %uv__async_start.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 4 uses
  %i.f = load ptr, ptr %i.e, align 8              ; 3 uses
  %.not.i = icmp eq ptr %i.e, %i.f
  br i1 %.not.i, label %uv__queue_move.exit.thread, label %uv__queue_move.exit

uv__queue_move.exit.thread:                       ; preds = %bb.b
  store ptr %1, ptr %1, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %1, ptr %i.g, align 8
  br label %._crit_edge

uv__queue_move.exit:                              ; preds = %bb.b
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8              ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store ptr %1, ptr %i.i, align 8
  store ptr %i.f, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8              ; 2 uses
  store ptr %i.l, ptr %i.h, align 8
  store ptr %i.e, ptr %i.l, align 8
  store ptr %1, ptr %i.k, align 8
  %.pre = load ptr, ptr %1, align 8               ; 2 uses
  %.not22 = icmp eq ptr %1, %.pre
  br i1 %.not22, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %uv__queue_move.exit
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.w, %bb.c ] ; 7 uses
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 3 uses
  %i.q = load ptr, ptr %i.p, align 8
  store ptr %i.o, ptr %i.q, align 8
  %i.r = load ptr, ptr %i.p, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.r, ptr %i.s, align 8
  store ptr %i.e, ptr %i.n, align 8
  %i.t = load ptr, ptr %i.m, align 8              ; 2 uses
  store ptr %i.t, ptr %i.p, align 8
  store ptr %i.n, ptr %i.t, align 8
  store ptr %i.n, ptr %i.m, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds i8, ptr %i.n, i64 -56
  store i32 0, ptr %i.v, align 8
  %i.w = load ptr, ptr %1, align 8                ; 2 uses
  %.not = icmp eq ptr %1, %i.w
  br i1 %.not, label %._crit_edge, label %bb.c, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.c, %uv__queue_move.exit.thread, %uv__queue_move.exit
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 512 ; 3 uses
  %i.y = load i32, ptr %i.x, align 8              ; 3 uses
  %.not19 = icmp eq i32 %i.y, -1
  br i1 %.not19, label %bb.g, label %bb.d

bb.d:                                             ; preds = %._crit_edge
  %i.z = load i32, ptr %i.b, align 8
  %.not20 = icmp eq i32 %i.y, %i.z
  br i1 %.not20, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aa = call i32 @uv__close(i32 noundef %i.y) #7 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  store i32 -1, ptr %i.x, align 8
  br label %bb.g

bb.g:                                             ; preds = %._crit_edge, %bb.f
  call void @uv__io_stop(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 1) #7
  %i.ab = load i32, ptr %i.b, align 8
  %i.ac = call i32 @uv__close(i32 noundef %i.ab) #7 ; 0 uses
  store i32 -1, ptr %i.b, align 8
  %i.ad = call i32 @eventfd(i32 noundef 0, i32 noundef 526336) #7 ; 3 uses
  %i.ae = icmp slt i32 %i.ad, 0
  br i1 %i.ae, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.af = tail call ptr @__errno_location() #8
  %i.ag = load i32, ptr %i.af, align 4
  %i.ah = sub nsw i32 0, %i.ag
  br label %uv__async_start.exit

bb.i:                                             ; preds = %bb.g
  %i.ai = call i32 @uv__io_init_start(ptr noundef nonnull %0, ptr noundef nonnull %i.a, i32 noundef 2, i32 noundef %i.ad, i32 noundef 1) #7 ; 2 uses
  %i.aj = icmp slt i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ak = call i32 @uv__close(i32 noundef %i.ad) #7 ; 0 uses
  br label %uv__async_start.exit

bb.k:                                             ; preds = %bb.i
  store i32 -1, ptr %i.x, align 8
  br label %uv__async_start.exit

uv__async_start.exit:                             ; preds = %bb.k, %bb.j, %bb.h, %bb.a
  %.0 = phi i32 [ 0, %bb.a ], [ 0, %bb.k ], [ %i.ah, %bb.h ], [ %i.ai, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  ret i32 %.0
}

; Function Attrs: nounwind
declare i32 @sched_yield() local_unnamed_addr #6

; Function Attrs: nofree
declare noundef i64 @write(i32 noundef, ptr noundef readonly captures(none), i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @eventfd(i32 noundef, i32 noundef) local_unnamed_addr #6

declare i32 @uv__io_init_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nounwind }
attributes #8 = { nounwind willreturn memory(none) }
attributes #9 = { noreturn nounwind }

!llvm.module.flags = !{!1, !2}
!llvm.ident = !{!3}

!0 = distinct !{!0, !5}
!1 = !{i32 8, !"PIC Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{i64 11111}
!5 = !{!"llvm.loop.mustprogress"}
!6 = distinct !{!6, !5}
!7 = distinct !{!7, !5}
!8 = distinct !{!8, !5}
end_hunk_0
