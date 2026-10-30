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
  %i.f = load i32, ptr %0, align 8, !tbaa !18     ; 2 uses
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
  %i.v = load i32, ptr %0, align 8, !tbaa !18     ; 2 uses
  %i.w = sext i32 %i.v to i64
  %i.x = getelementptr inbounds [16 x i8], ptr %i.u, i64 %i.w ; 2 uses
  store double %1, ptr %i.x, align 8, !tbaa !24
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.e, ptr %i.y, align 8, !tbaa !25
  %i.z = add nsw i32 %i.v, 1
  store i32 %i.z, ptr %0, align 8, !tbaa !18
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
  %i.a = load i32, ptr %0, align 8, !tbaa !18
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
  %i.h = load i32, ptr %0, align 8, !tbaa !18
  %i.i = sext i32 %i.h to i64
  %i.j = icmp slt i64 %indvars.iv.next, %i.i
  br i1 %i.j, label %bb.b, label %._crit_edge, !llvm.loop !28

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
  %i.l = tail call double @log(double noundef %i.k) #9, !tbaa !12
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = fcmp oeq double %i.e, 0.000000e+00
  %spec.store.select = select i1 %i.m, double 1.000000e+00, double %i.e
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.072 = phi double [ %i.l, %bb.b ], [ %spec.store.select, %bb.c ]
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
  %.070109.us = phi i32 [ %i.bn, %._crit_edge.us.thread ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.074108.us = phi ptr [ %i.bp, %._crit_edge.us.thread ], [ %0, %.lr.ph.us.preheader ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 32, i64 %i.g, i1 false)
  %i.u = load ptr, ptr %i.o, align 8, !tbaa !21   ; 2 uses
  %i.v = load double, ptr %i.c, align 8, !tbaa !20 ; 3 uses
  %i.w = icmp slt i32 %.070109.us, %2
  %i.x = add i32 %.070109.us, %i.q                ; 3 uses
  %i.y = sext i32 %i.x to i64                     ; 2 uses
  %i.z = xor i32 %.070109.us, -1
  %i.aa = add i32 %2, %i.z
  %.neg.us = mul i32 %i.aa, -3
  br i1 %i.w, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us110

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %invariant.gep146 = getelementptr [16 x i8], ptr %i.u, i64 %i.t
  br label %.lr.ph.split.us.us

.lr.ph.split.us110:                               ; preds = %.lr.ph.us
  %.not85.us = icmp sgt i32 %.070109.us, %2
  %invariant.gep144 = getelementptr [16 x i8], ptr %i.u, i64 %i.t ; 2 uses
  br i1 %.not85.us, label %.lr.ph.split.split.us.us, label %.lr.ph.split.split.us111

.lr.ph.split.split.us111:                         ; preds = %.lr.ph.split.us110, %bb.j
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.j ], [ 0, %.lr.ph.split.us110 ] ; 3 uses
  %.1102.us = phi i32 [ %.4.ph.us, %bb.j ], [ 0, %.lr.ph.split.us110 ] ; 2 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep144, i64 %indvars.iv ; 2 uses
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %.lr.ph.split.split.us111
  %i.ab = load double, ptr %gep, align 8, !tbaa !24
  %i.ac = fsub double %i.ab, %i.v
  %i.ad = fadd double %i.ac, 1.000000e+00
  %i.ae = tail call double @log(double noundef %i.ad) #9, !tbaa !12 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.lr.ph.split.split.us111
  %i.af = load i32, ptr %i.p, align 4, !tbaa !26
  %.not84.us = icmp eq i32 %i.af, 0
  br i1 %.not84.us, label %bb.g, label %._crit_edge.us.thread

bb.g:                                             ; preds = %bb.f
  %i.ag = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !25 ; 3 uses
  %.not86.us113 = icmp eq ptr %i.ah, null
  br i1 %.not86.us113, label %bb.j, label %bb.h

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
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.split.split.us111, !llvm.loop !29

.lr.ph.split.split.us.us:                         ; preds = %.lr.ph.split.us110, %bb.o
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %bb.o ], [ 0, %.lr.ph.split.us110 ] ; 3 uses
  %.1102.us103.us = phi i32 [ %.4.ph.us105.us, %bb.o ], [ 0, %.lr.ph.split.us110 ] ; 2 uses
  %gep145 = getelementptr [16 x i8], ptr %invariant.gep144, i64 %indvars.iv122 ; 2 uses
  br i1 %.not, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.lr.ph.split.split.us.us
  %i.ao = load double, ptr %gep145, align 8, !tbaa !24
  %i.ap = fsub double %i.ao, %i.v
  %i.aq = fadd double %i.ap, 1.000000e+00
  %i.ar = tail call double @log(double noundef %i.aq) #9, !tbaa !12 ; 0 uses
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.lr.ph.split.split.us.us
  %i.as = getelementptr inbounds nuw i8, ptr %gep145, i64 8
  %i.at = load ptr, ptr %i.as, align 8, !tbaa !25 ; 3 uses
  %.not86.us.us = icmp eq ptr %i.at, null
  br i1 %.not86.us.us, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.au = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.at) #11
  %i.av = trunc i64 %i.au to i32
  %i.aw = icmp slt i32 %i.x, %i.av
  br i1 %i.aw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ax = getelementptr inbounds i8, ptr %i.at, i64 %i.y
  %i.ay = load i8, ptr %i.ax, align 1, !tbaa !13
  %i.az = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv122
  store i8 %i.ay, ptr %i.az, align 1, !tbaa !13
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m, %bb.l
  %.4.ph.us105.us = phi i32 [ %.1102.us103.us, %bb.m ], [ 1, %bb.n ], [ %.1102.us103.us, %bb.l ] ; 2 uses
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
end_hunk_0
