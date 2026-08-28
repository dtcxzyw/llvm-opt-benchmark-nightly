Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/redis/original/sparkline?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@charset_fill = internal unnamed_addr constant [4 x i8] c"_o#\00", align 1
@charset = internal unnamed_addr constant [4 x i8] c"_-`\00", align 1
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @createSparklineSequence() local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(32) ptr @zmalloc(i64 noundef 32) #8 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  ret ptr %i.a
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define dso_local void @sparklineSequenceAddSample(ptr nofree noundef captures(none) %0, double noundef %1, ptr noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i8, ptr %2, align 1, !tbaa !13
  %i.c = icmp eq i8 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = tail call noalias ptr @zstrdup(ptr noundef nonnull %2) #9
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %i.e = phi ptr [ %i.d, %bb.c ], [ null, %bb.b ], [ null, %bb.a ] ; 2 uses
  %i.f = load i32, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.g = icmp eq i32 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %1, ptr %i.h, align 8, !tbaa !19
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store double %1, ptr %i.i, align 8, !tbaa !20
  br label %bb.j

bb.f:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.k = load double, ptr %i.j, align 8, !tbaa !20
  %i.l = fcmp olt double %1, %i.k
  br i1 %i.l, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  store double %1, ptr %i.j, align 8, !tbaa !20
  br label %bb.j

bb.h:                                             ; preds = %bb.f
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !19
  %i.o = fcmp ogt double %1, %i.n
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  store double %1, ptr %i.m, align 8, !tbaa !19
  br label %bb.j

bb.j:                                             ; preds = %bb.g, %bb.i, %bb.h, %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !21
  %i.r = add nsw i32 %i.f, 1
  %i.s = sext i32 %i.r to i64
  %i.t = shl nsw i64 %i.s, 4
  %i.u = tail call ptr @zrealloc(ptr noundef %i.q, i64 noundef %i.t) #10 ; 2 uses
  store ptr %i.u, ptr %i.p, align 8, !tbaa !21
  %i.v = load i32, ptr %0, align 8, !tbaa !14     ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.w ; 2 uses
  store double %1, ptr %i.x, align 8, !tbaa !22
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.e, ptr %i.y, align 8, !tbaa !25
  %i.z = add nsw i32 %i.v, 1
  store i32 %i.z, ptr %0, align 8, !tbaa !14
  %.not = icmp eq ptr %i.e, null
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !26
  %i.ac = add nsw i32 %i.ab, 1
  store i32 %i.ac, ptr %i.aa, align 4, !tbaa !26
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  ret void
}

declare noalias ptr @zstrdup(ptr noundef) local_unnamed_addr #2

; Function Attrs: allocsize(1)
declare ptr @zrealloc(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: nounwind uwtable
define dso_local void @freeSparklineSequence(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 8, !tbaa !14
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !21
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.d, i64 %indvars.iv
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !25
  tail call void @zfree(ptr noundef %i.g) #9
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.h = load i32, ptr %0, align 8, !tbaa !14
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !27

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !21
  tail call void @zfree(ptr noundef %i.l) #9
  tail call void @zfree(ptr noundef nonnull %0) #9
  ret void
}

declare void @zfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @sparklineRenderRange(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.b = load double, ptr %i.a, align 8, !tbaa !19
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.d = load double, ptr %i.c, align 8, !tbaa !20
  %i.e = fsub double %i.b, %i.d                   ; 3 uses
  %i.f = mul nsw i32 %2, 3                        ; 2 uses
  %i.g = sext i32 %4 to i64                       ; 4 uses
  %i.h = tail call noalias ptr @zmalloc(i64 noundef %i.g) #8 ; 7 uses
  %i.i = and i32 %5, 1
  %i.j = and i32 %5, 2
  %.not = icmp eq i32 %i.j, 0                     ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = fadd double %i.e, 1.000000e+00
  %i.l = tail call double @log(double noundef %i.k) #9, !tbaa !9
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = fcmp oeq double %i.e, 0.000000e+00
  br i1 %i.m, label %6, label %bb.d

6:                                                ; preds = %bb.c
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %6, %bb.b
  %.071 = phi double [ %i.l, %bb.b ], [ 1.000000e+00, %6 ], [ %i.e, %bb.c ]
  %i.n = icmp sgt i32 %4, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.q = xor i32 %2, -1
  %i.r = sitofp i32 %i.f to double
  %i.s = add nsw i32 %i.f, -1
  %.not87 = trunc i32 %5 to i1
  %.not88 = icmp eq i32 %i.i, 0
  %.in.in.v = select i1 %.not88, ptr @charset, ptr @charset_fill
  br i1 %i.n, label %.lr.ph.us.preheader, label %.split

.lr.ph.us.preheader:                              ; preds = %bb.d
  %i.t = sext i32 %3 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %4 to i64
  %wide.trip.count125 = zext nneg i32 %4 to i64
  %wide.trip.count130 = zext nneg i32 %4 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us.thread, %.lr.ph.us.preheader
  %.069109.us = phi i32 [ %i.ao, %._crit_edge.us.thread ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.073108.us = phi ptr [ %i.aq, %._crit_edge.us.thread ], [ %0, %.lr.ph.us.preheader ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 32, i64 %i.g, i1 false)
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.v = load double, ptr %i.c, align 8, !tbaa !20 ; 3 uses
  %i.w = icmp slt i32 %.069109.us, %2
  %i.x = add i32 %.069109.us, %i.q                ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = xor i32 %.069109.us, -1
  %i.aa = add i32 %2, %i.z
  %.neg.us = mul i32 %i.aa, -3
  br i1 %i.w, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us113

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %invariant.gep147 = getelementptr [16 x i8], ptr %i.u, i64 %i.t
  br label %.lr.ph.split.us.us

.lr.ph.split.split.us114:                         ; preds = %.lr.ph.split.us113, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph.split.us113 ] ; 3 uses
  %.1102.us = phi i32 [ %.4.ph.us, %bb.j ], [ 0, %.lr.ph.split.us113 ] ; 2 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep145, i64 %indvars.iv ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.split.us114
  %i.ab = load double, ptr %gep, align 8, !tbaa !22
  %i.ac = fsub double %i.ab, %i.v
  %i.ad = fadd double %i.ac, 1.000000e+00
  %i.ae = tail call double @log(double noundef %i.ad) #9, !tbaa !9 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.split.us114
  %i.af = load i32, ptr %i.p, align 4, !tbaa !26
  %.not84.us = icmp eq i32 %i.af, 0
  br i1 %.not84.us, label %bb.g, label %._crit_edge.us.thread

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 3 uses
  %.not86.us111 = icmp eq ptr %i.ah, null
  br i1 %.not86.us111, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ai = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.ah) #11
  %i.aj = trunc i64 %i.ai to i32
  %i.ak = icmp slt i32 %i.x, %i.aj
  br i1 %i.ak, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.al = getelementptr inbounds i8, ptr %i.ah, i64 %i.y
  %i.am = load i8, ptr %i.al, align 1, !tbaa !13
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  store i8 %i.am, ptr %i.an, align 1, !tbaa !13
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %.4.ph.us = phi i32 [ %.1102.us, %bb.h ], [ 1, %bb.i ], [ %.1102.us, %bb.g ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.split.split.us114, !llvm.loop !29

._crit_edge.us.thread:                            ; preds = %bb.f, %bb.o, %._crit_edge.us
  %i.ao = add i32 %.069109.us, 1
  %i.ap = tail call ptr @sdscatlen(ptr noundef %.073108.us, ptr noundef %i.h, i64 noundef %i.g) #9
  %i.aq = tail call ptr @sdscatlen(ptr noundef %i.ap, ptr noundef nonnull @.str, i64 noundef 1) #9
  br label %.lr.ph.us, !llvm.loop !30

.lr.ph.split.us113:                               ; preds = %.lr.ph.us
  %.not85.us = icmp sgt i32 %.069109.us, %2
  %invariant.gep145 = getelementptr [16 x i8], ptr %i.u, i64 %i.t ; 2 uses
  br i1 %.not85.us, label %.lr.ph.split.split.us.us, label %.lr.ph.split.split.us114

._crit_edge.us:                                   ; preds = %bb.j, %bb.t
  %.us-phi.us = phi i32 [ %.4.ph.us105.us, %bb.t ], [ %.4.ph.us, %bb.j ]
  %.not89.us = icmp eq i32 %.us-phi.us, 0
  br i1 %.not89.us, label %.split117.us, label %._crit_edge.us.thread

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.o
  %indvars.iv127 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next128, %bb.o ] ; 3 uses
  %gep148 = getelementptr [16 x i8], ptr %invariant.gep147, i64 %indvars.iv127
  %i.ar = load double, ptr %gep148, align 8, !tbaa !22
  %i.as = fsub double %i.ar, %i.v                 ; 2 uses
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.us.us
  %i.at = fadd double %i.as, 1.000000e+00
  %i.au = tail call double @log(double noundef %i.at) #9, !tbaa !9
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.split.us.us
  %.067.us.us = phi double [ %i.au, %bb.k ], [ %i.as, %.lr.ph.split.us.us ]
  %i.av = fmul double %.067.us.us, %i.r
  %i.aw = fptosi double %i.av to i32
  %i.ax = sitofp i32 %i.aw to double
  %i.ay = fdiv double %i.ax, %.071
  %i.az = fptosi double %i.ay to i32
  %spec.store.select.us.us = tail call i32 @llvm.smax.i32(i32 %i.az, i32 0)
  %spec.select.us.us = tail call i32 @llvm.smin.i32(i32 %spec.store.select.us.us, i32 %i.s)
  %i.ba = add i32 %spec.select.us.us, %.neg.us    ; 3 uses
  %or.cond.us.us = icmp ult i32 %i.ba, 3
  br i1 %or.cond.us.us, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = icmp sgt i32 %i.ba, 2
  %or.cond90.us.us = and i1 %i.bb, %.not87
  br i1 %or.cond90.us.us, label %.sink.split, label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.bc = zext nneg i32 %i.ba to i64
  %.in.in.us.us = getelementptr inbounds nuw i8, ptr %.in.in.v, i64 %i.bc
  %.in.us.us = load i8, ptr %.in.in.us.us, align 1, !tbaa !13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.m, %bb.n
  %.in.us.us.sink = phi i8 [ %.in.us.us, %bb.n ], [ 124, %bb.m ]
  %i.bd = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv127
  store i8 %.in.us.us.sink, ptr %i.bd, align 1, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %.sink.split, %bb.m
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge.us.thread, label %.lr.ph.split.us.us, !llvm.loop !29

.lr.ph.split.split.us.us:                         ; preds = %.lr.ph.split.us113, %bb.t
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %bb.t ], [ 0, %.lr.ph.split.us113 ] ; 3 uses
  %.1102.us103.us = phi i32 [ %.4.ph.us105.us, %bb.t ], [ 0, %.lr.ph.split.us113 ] ; 2 uses
  %gep146 = getelementptr [16 x i8], ptr %invariant.gep145, i64 %indvars.iv122 ; 2 uses
  br i1 %.not, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.lr.ph.split.split.us.us
  %i.be = load double, ptr %gep146, align 8, !tbaa !22
  %i.bf = fsub double %i.be, %i.v
  %i.bg = fadd double %i.bf, 1.000000e+00
  %i.bh = tail call double @log(double noundef %i.bg) #9, !tbaa !9 ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.lr.ph.split.split.us.us
  %i.bi = getelementptr inbounds nuw i8, ptr %gep146, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !tbaa !25 ; 3 uses
  %.not86.us.us = icmp eq ptr %i.bj, null
  br i1 %.not86.us.us, label %bb.t, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.bk = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bj) #11
  %i.bl = trunc i64 %i.bk to i32
  %i.bm = icmp slt i32 %i.x, %i.bl
  br i1 %i.bm, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bn = getelementptr inbounds i8, ptr %i.bj, i64 %i.y
  %i.bo = load i8, ptr %i.bn, align 1, !tbaa !13
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv122
  store i8 %i.bo, ptr %i.bp, align 1, !tbaa !13
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %.4.ph.us105.us = phi i32 [ %.1102.us103.us, %bb.r ], [ 1, %bb.s ], [ %.1102.us103.us, %bb.q ] ; 2 uses
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge.us, label %.lr.ph.split.split.us.us, !llvm.loop !29

.split:                                           ; preds = %bb.d
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 32, i64 %i.g, i1 false)
  br label %.split117.us

.split117.us:                                     ; preds = %._crit_edge.us, %.split
  %.us-phi118 = phi ptr [ %0, %.split ], [ %.073108.us, %._crit_edge.us ]
  tail call void @zfree(ptr noundef %i.h) #9
  ret ptr %.us-phi118
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @log(double noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #6

declare ptr @sdscatlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local ptr @sparklineRender(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.b = icmp sgt i32 %i.a, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.c = phi i32 [ %i.i, %bb.b ], [ %i.a, %bb.a ]
  %.025 = phi i32 [ %i.h, %bb.b ], [ 0, %bb.a ]   ; 4 uses
  %.01824 = phi ptr [ %phi.call, %bb.b ], [ %0, %bb.a ] ; 2 uses
  %i.d = sub nsw i32 %i.c, %.025
  %. = tail call i32 @llvm.smin.i32(i32 %i.d, i32 %2) ; 2 uses
  %.not = icmp eq i32 %.025, 0
  br i1 %.not, label %.split, label %.split20

.split:                                           ; preds = %.lr.ph
  %i.e = tail call ptr @sparklineRenderRange(ptr noundef %.01824, ptr noundef nonnull %1, i32 noundef %3, i32 noundef 0, i32 noundef %., i32 noundef %4)
  br label %bb.b

.split20:                                         ; preds = %.lr.ph
  %i.f = tail call ptr @sdscatlen(ptr noundef %.01824, ptr noundef nonnull @.str, i64 noundef 1) #9
  %i.g = tail call ptr @sparklineRenderRange(ptr noundef %i.f, ptr noundef nonnull %1, i32 noundef %3, i32 noundef %.025, i32 noundef %., i32 noundef %4)
  br label %bb.b

bb.b:                                             ; preds = %.split, %.split20
  %phi.call = phi ptr [ %i.e, %.split ], [ %i.g, %.split20 ] ; 2 uses
  %i.h = add nsw i32 %.025, %2                    ; 2 uses
  %i.i = load i32, ptr %1, align 8, !tbaa !14     ; 2 uses
  %i.j = icmp slt i32 %i.h, %i.i
  br i1 %i.j, label %.lr.ph, label %._crit_edge, !llvm.loop !31

._crit_edge:                                      ; preds = %bb.b, %bb.a
  %.018.lcssa = phi ptr [ %0, %bb.a ], [ %phi.call, %bb.b ]
  ret ptr %.018.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { allocsize(1) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nounwind allocsize(0) }
attributes #9 = { nounwind }
attributes #10 = { nounwind allocsize(1) }
attributes #11 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!9}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"frame-pointer", i32 2}
!6 = !{i32 1, !"ThinLTO", i32 0}
!7 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!8 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!9 = !{!10, !10, i64 0}
!10 = !{!"int", !11, i64 0}
!11 = !{!"omnipotent char", !12, i64 0}
!12 = !{!"Simple C/C++ TBAA"}
!13 = !{!11, !11, i64 0}
!14 = !{!15, !10, i64 0}
!15 = !{!"sequence", !10, i64 0, !10, i64 4, !16, i64 8, !18, i64 16, !18, i64 24}
!16 = !{!"p1 _ZTS6sample", !17, i64 0}
!17 = !{!"any pointer", !11, i64 0}
!18 = !{!"double", !11, i64 0}
!19 = !{!15, !18, i64 24}
!20 = !{!15, !18, i64 16}
!21 = !{!15, !16, i64 8}
!22 = !{!23, !18, i64 0}
!23 = !{!"sample", !18, i64 0, !24, i64 8}
!24 = !{!"p1 omnipotent char", !17, i64 0}
!25 = !{!23, !24, i64 8}
!26 = !{!15, !10, i64 4}
!27 = distinct !{!27, !28}
!28 = !{!"llvm.loop.mustprogress"}
!29 = distinct !{!29, !28}
!30 = distinct !{!30, !28}
!31 = distinct !{!31, !28}
end_hunk_0
