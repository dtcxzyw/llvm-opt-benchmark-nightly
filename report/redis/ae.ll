inline.NumInlined: 9
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.epoll_event = type <{ i32, %union.epoll_data }>
%union.epoll_data = type { ptr }
%struct.pollfd = type { i32, i16, i16 }

@getMonotonicUs = external local_unnamed_addr global ptr, align 8
@.str = private unnamed_addr constant [13 x i8] c"./ae_epoll.c\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"aeApiPoll: epoll_wait, %s\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"epoll\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noundef ptr @aeCreateEventLoop(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @monotonicInit() #17       ; 0 uses
  %i.b = tail call noalias dereferenceable_or_null(104) ptr @zmalloc(i64 noundef 104) #18 ; 16 uses
  %cond = icmp eq ptr %i.b, null
  br i1 %cond, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @llvm.smin.i32(i32 %0, i32 1024) ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i32 %i.c, ptr %i.d, align 8, !tbaa !13
  %i.e = sext i32 %i.c to i64                     ; 2 uses
  %i.f = shl nsw i64 %i.e, 5
  %i.g = tail call noalias ptr @zmalloc(i64 noundef %i.f) #18 ; 8 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.g, ptr %i.h, align 8, !tbaa !20
  %i.i = shl nsw i64 %i.e, 3
  %i.j = tail call noalias ptr @zmalloc(i64 noundef %i.i) #18 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.j, ptr %i.k, align 8, !tbaa !21
  %i.l = icmp eq ptr %i.g, null
  %i.m = icmp eq ptr %i.j, null
  %or.cond = select i1 %i.l, i1 true, i1 %i.m
  br i1 %or.cond, label %aeApiCreate.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i32 %0, ptr %i.n, align 4, !tbaa !22
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr null, ptr %i.o, align 8, !tbaa !23
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.p, align 8, !tbaa !24
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i32 0, ptr %i.q, align 8, !tbaa !25
  store i32 -1, ptr %i.b, align 8, !tbaa !26
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.r, i8 0, i64 20, i1 false)
  %i.t = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #18 ; 5 uses
  %.not.i = icmp eq ptr %i.t, null
  br i1 %.not.i, label %aeApiCreate.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = sext i32 %0 to i64
  %i.v = mul nsw i64 %i.u, 12
  %i.w = tail call noalias ptr @zmalloc(i64 noundef %i.v) #18 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.w, ptr %i.x, align 8, !tbaa !27
  %.not14.i = icmp eq ptr %i.w, null
  br i1 %.not14.i, label %aeApiCreate.exit.thread.sink.split, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = tail call i32 @epoll_create(i32 noundef 1024) #17 ; 3 uses
  store i32 %i.y, ptr %i.t, align 8, !tbaa !30
  %i.z = icmp eq i32 %i.y, -1
  br i1 %i.z, label %bb.f, label %aeApiCreate.exit

bb.f:                                             ; preds = %bb.e
  %i.aa = load ptr, ptr %i.x, align 8, !tbaa !27
  tail call void @zfree(ptr noundef %i.aa) #17
  br label %aeApiCreate.exit.thread.sink.split

aeApiCreate.exit:                                 ; preds = %bb.e
  %i.ab = tail call i32 @anetCloexec(i32 noundef %i.y) #17 ; 0 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %i.t, ptr %i.ac, align 8, !tbaa !31
  %i.ad = icmp sgt i32 %0, 0
  br i1 %i.ad, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %aeApiCreate.exit
  %wide.trip.count = zext nneg i32 %i.c to i64    ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 3         ; 3 uses
  %1 = icmp slt i32 %0, 4
  br i1 %1, label %.epil.preheader, label %.lr.ph.new

.lr.ph.new:                                       ; preds = %.lr.ph
  %unroll_iter = and i64 %wide.trip.count, 2044
  br label %bb.g

bb.g:                                             ; preds = %bb.g, %.lr.ph.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.new ], [ %indvars.iv.next.3, %bb.g ] ; 5 uses
  %niter = phi i64 [ 0, %.lr.ph.new ], [ %niter.next.3, %bb.g ]
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv
  store i32 0, ptr %i.ae, align 8, !tbaa !32
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  store i32 0, ptr %i.ag, align 8, !tbaa !32
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 64
  store i32 0, ptr %i.ai, align 8, !tbaa !32
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 96
  store i32 0, ptr %i.ak, align 8, !tbaa !32
  %indvars.iv.next.3 = add nuw nsw i64 %indvars.iv, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.loopexit.unr-lcssa, label %bb.g, !llvm.loop !34

aeApiCreate.exit.thread.sink.split:               ; preds = %bb.d, %bb.f
  tail call void @zfree(ptr noundef nonnull %i.t) #17
  br label %aeApiCreate.exit.thread

aeApiCreate.exit.thread:                          ; preds = %aeApiCreate.exit.thread.sink.split, %bb.c, %bb.b
  tail call void @zfree(ptr noundef %i.g) #17
  tail call void @zfree(ptr noundef %i.j) #17
  tail call void @zfree(ptr noundef nonnull %i.b) #17
  br label %.loopexit

.loopexit.loopexit.unr-lcssa:                     ; preds = %bb.g
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit, label %.epil.preheader

.epil.preheader:                                  ; preds = %.loopexit.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next.3, %.loopexit.loopexit.unr-lcssa ]
  %lcmp.mod39 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod39)
  br label %bb.h

bb.h:                                             ; preds = %bb.h, %.epil.preheader
  %indvars.iv.epil = phi i64 [ %indvars.iv.epil.init, %.epil.preheader ], [ %indvars.iv.next.epil, %bb.h ] ; 2 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.h ]
  %i.al = getelementptr inbounds nuw [32 x i8], ptr %i.g, i64 %indvars.iv.epil
  store i32 0, ptr %i.al, align 8, !tbaa !32
  %indvars.iv.next.epil = add nuw nsw i64 %indvars.iv.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.loopexit, label %bb.h, !llvm.loop !36

.loopexit:                                        ; preds = %.loopexit.loopexit.unr-lcssa, %bb.h, %aeApiCreate.exit, %bb.a, %aeApiCreate.exit.thread
  %.030 = phi ptr [ null, %aeApiCreate.exit.thread ], [ null, %bb.a ], [ %i.b, %aeApiCreate.exit ], [ %i.b, %bb.h ], [ %i.b, %.loopexit.loopexit.unr-lcssa ]
  ret ptr %.030
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @monotonicInit() local_unnamed_addr #2

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #4

declare void @zfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local i32 @aeGetSetSize(ptr noundef readonly captures(none) %0) local_unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @aeSetDontWait(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #6 {
bb.a:
  %.not = icmp eq i32 %1, 0
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !38
  %i.c = and i32 %i.b, -5
  %masksel = select i1 %.not, i32 0, i32 4
  %.sink = or disjoint i32 %i.c, %masksel
  store i32 %.sink, ptr %i.a, align 8, !tbaa !38
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @aeResizeSetSize(ptr noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22
  %i.c = icmp eq i32 %1, %i.b
  br i1 %i.c, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load i32, ptr %0, align 8, !tbaa !26
  %.not = icmp slt i32 %i.d, %1
  br i1 %.not, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.e, align 8, !tbaa !31
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !27
  %i.h = sext i32 %1 to i64                       ; 3 uses
  %i.i = mul nsw i64 %i.h, 12
  %i.j = tail call ptr @zrealloc(ptr noundef %i.g, i64 noundef %i.i) #19
  store ptr %i.j, ptr %i.f, align 8, !tbaa !27
  store i32 %1, ptr %i.a, align 4, !tbaa !22
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i32, ptr %i.k, align 8, !tbaa !13
  %i.m = icmp slt i32 %1, %i.l
  br i1 %i.m, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !20
  %i.p = shl nsw i64 %i.h, 5
  %i.q = tail call ptr @zrealloc(ptr noundef %i.o, i64 noundef %i.p) #19
  store ptr %i.q, ptr %i.n, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !tbaa !21
  %i.t = shl nsw i64 %i.h, 3
  %i.u = tail call ptr @zrealloc(ptr noundef %i.s, i64 noundef %i.t) #19
  store ptr %i.u, ptr %i.r, align 8, !tbaa !21
  store i32 %1, ptr %i.k, align 8, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b, %bb.a
  %.0 = phi i32 [ -1, %bb.b ], [ 0, %bb.a ], [ 0, %bb.d ], [ 0, %bb.c ]
  ret i32 %.0
}

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #7

; Function Attrs: nounwind uwtable
define dso_local void @aeDeleteEventLoop(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr i8, ptr %0, i64 56
  %.val = load ptr, ptr %i.a, align 8, !tbaa !31  ; 3 uses
  %i.b = load i32, ptr %.val, align 8, !tbaa !30
  %i.c = tail call i32 @close(i32 noundef %i.b) #17 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !27
  tail call void @zfree(ptr noundef %i.e) #17
  tail call void @zfree(ptr noundef nonnull %.val) #17
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !20
  tail call void @zfree(ptr noundef %i.g) #17
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !21
  tail call void @zfree(ptr noundef %i.i) #17
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !23   ; 2 uses
  %.not15 = icmp eq ptr %i.k, null
  br i1 %.not15, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %.016 = phi ptr [ %i.m, %bb.c ], [ %i.k, %bb.a ] ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.016, i64 48
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !39   ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.016, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !42   ; 2 uses
  %.not14 = icmp eq ptr %i.o, null
  br i1 %.not14, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.p = getelementptr inbounds nuw i8, ptr %.016, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !43
  tail call void %i.o(ptr noundef %0, ptr noundef %i.q) #17
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.lr.ph
  tail call void @zfree(ptr noundef nonnull %.016) #17
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !44

._crit_edge:                                      ; preds = %bb.c, %bb.a
  tail call void @zfree(ptr noundef %0) #17
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @aeStop(ptr noundef writeonly captures(none) initializes((48, 52)) %0) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 1, ptr %i.a, align 8, !tbaa !25
  ret void
}

; Function Attrs: nounwind uwtable
define dso_local range(i32 -1, 1) i32 @aeCreateFileEvent(ptr noundef captures(none) %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %5 = alloca %struct.epoll_event, align 4        ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !22   ; 2 uses
  %.not = icmp slt i32 %1, %i.b
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #20
  store i32 34, ptr %i.c, align 4, !tbaa !9
  br label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.e = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %.not52 = icmp slt i32 %1, %i.e
  br i1 %.not52, label %bb.e, label %bb.d, !prof !45

bb.d:                                             ; preds = %bb.c
  %i.f = shl nsw i32 %i.e, 1
  %i.g = add nsw i32 %1, 1
  %i.h = tail call i32 @llvm.smax.i32(i32 %i.f, i32 %i.g)
  %. = tail call i32 @llvm.smin.i32(i32 %i.h, i32 %i.b) ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !20
  %i.k = sext i32 %. to i64                       ; 5 uses
  %i.l = shl nsw i64 %i.k, 5
  %i.m = tail call ptr @zrealloc(ptr noundef %i.j, i64 noundef %i.l) #19
  store ptr %i.m, ptr %i.i, align 8, !tbaa !20
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !21
  %i.p = shl nsw i64 %i.k, 3
  %i.q = tail call ptr @zrealloc(ptr noundef %i.o, i64 noundef %i.p) #19
  store ptr %i.q, ptr %i.n, align 8, !tbaa !21
  %i.r = load i32, ptr %i.d, align 8, !tbaa !13   ; 2 uses
  %i.s = icmp slt i32 %i.r, %.
  br i1 %i.s, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.t = load ptr, ptr %i.i, align 8, !tbaa !20   ; 5 uses
  %i.u = sext i32 %i.r to i64                     ; 4 uses
  %i.v = sub nsw i64 %i.k, %i.u
  %xtraiter = and i64 %i.v, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.preheader
end_hunk_0
