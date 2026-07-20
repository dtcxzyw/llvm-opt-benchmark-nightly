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
  %6 = and i32 %5, 1
  %i.i = and i32 %5, 2
  %.not = icmp eq i32 %i.i, 0                     ; 4 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = fadd double %i.e, 1.000000e+00
  %i.k = tail call double @log(double noundef %i.j) #9, !tbaa !9
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.l = fcmp oeq double %i.e, 0.000000e+00
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.068 = phi double [ %i.k, %bb.b ], [ 1.000000e+00, %bb.d ], [ %i.e, %bb.c ]
  %i.m = icmp sgt i32 %4, 0
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.p = xor i32 %2, -1
  %i.q = sitofp i32 %i.f to double
  %i.r = add nsw i32 %i.f, -1
  %.not87 = trunc i32 %5 to i1
  %.not88 = icmp eq i32 %6, 0
  %.in.in.v = select i1 %.not88, ptr @charset, ptr @charset_fill
  br i1 %i.m, label %.lr.ph.us.preheader, label %.split

.lr.ph.us.preheader:                              ; preds = %bb.e
  %i.s = sext i32 %3 to i64                       ; 2 uses
  %wide.trip.count = zext nneg i32 %4 to i64
  %wide.trip.count125 = zext nneg i32 %4 to i64
  %wide.trip.count130 = zext nneg i32 %4 to i64
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %._crit_edge.us.thread, %.lr.ph.us.preheader
  %.0109.us = phi ptr [ %i.ah, %._crit_edge.us.thread ], [ %0, %.lr.ph.us.preheader ] ; 2 uses
  %.071108.us = phi i32 [ %i.af, %._crit_edge.us.thread ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 32, i64 %i.g, i1 false)
  %i.t = load ptr, ptr %i.n, align 8, !tbaa !21   ; 2 uses
  %i.u = load double, ptr %i.c, align 8, !tbaa !20 ; 3 uses
  %i.v = icmp slt i32 %.071108.us, %2
  %i.w = add i32 %.071108.us, %i.p                ; 3 uses
  %i.x = sext i32 %i.w to i64                     ; 2 uses
  %i.y = xor i32 %.071108.us, -1
  %i.z = add i32 %2, %i.y
  %.neg.us = mul i32 %i.z, -3
  br i1 %i.v, label %.lr.ph.split.us.us.preheader, label %.lr.ph.split.us113

.lr.ph.split.us.us.preheader:                     ; preds = %.lr.ph.us
  %invariant.gep147 = getelementptr [16 x i8], ptr %i.t, i64 %i.s
  br label %.lr.ph.split.us.us

.lr.ph.split.split.us114:                         ; preds = %.lr.ph.split.us113, %bb.k
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.k ], [ 0, %.lr.ph.split.us113 ] ; 3 uses
  %.174101.us = phi i32 [ %.4.ph.us, %bb.k ], [ 0, %.lr.ph.split.us113 ] ; 2 uses
  %gep = getelementptr [16 x i8], ptr %invariant.gep145, i64 %indvars.iv ; 2 uses
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %.lr.ph.split.split.us114
  %i.aa = load double, ptr %gep, align 8, !tbaa !22
  %i.ab = fsub double %i.aa, %i.u
  %i.ac = fadd double %i.ab, 1.000000e+00
  %i.ad = tail call double @log(double noundef %i.ac) #9, !tbaa !9 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.lr.ph.split.split.us114
  %i.ae = load i32, ptr %i.o, align 4, !tbaa !26
  %.not84.us = icmp eq i32 %i.ae, 0
  br i1 %.not84.us, label %bb.h, label %._crit_edge.us.thread

._crit_edge.us.thread:                            ; preds = %bb.g, %bb.p, %._crit_edge.us
  %i.af = add i32 %.071108.us, 1
  %i.ag = tail call ptr @sdscatlen(ptr noundef %.0109.us, ptr noundef %i.h, i64 noundef %i.g) #9
  %i.ah = tail call ptr @sdscatlen(ptr noundef %i.ag, ptr noundef nonnull @.str, i64 noundef 1) #9
  br label %.lr.ph.us, !llvm.loop !29

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %gep, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !25 ; 3 uses
  %.not86.us111 = icmp eq ptr %i.aj, null
  br i1 %.not86.us111, label %bb.k, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ak = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.aj) #11
  %i.al = trunc i64 %i.ak to i32
  %i.am = icmp slt i32 %i.w, %i.al
  br i1 %i.am, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.an = getelementptr inbounds i8, ptr %i.aj, i64 %i.x
  %i.ao = load i8, ptr %i.an, align 1, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv
  store i8 %i.ao, ptr %i.ap, align 1, !tbaa !13
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h
  %.4.ph.us = phi i32 [ %.174101.us, %bb.i ], [ 1, %bb.j ], [ %.174101.us, %bb.h ] ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge.us, label %.lr.ph.split.split.us114, !llvm.loop !30

.lr.ph.split.us113:                               ; preds = %.lr.ph.us
  %.not85.us = icmp sgt i32 %.071108.us, %2
  %invariant.gep145 = getelementptr [16 x i8], ptr %i.t, i64 %i.s ; 2 uses
  br i1 %.not85.us, label %.lr.ph.split.split.us.us, label %.lr.ph.split.split.us114

._crit_edge.us:                                   ; preds = %bb.k, %bb.u
  %.us-phi.us = phi i32 [ %.4.ph.us105.us, %bb.u ], [ %.4.ph.us, %bb.k ]
  %.not89.us = icmp eq i32 %.us-phi.us, 0
  br i1 %.not89.us, label %.split117.us, label %._crit_edge.us.thread

.lr.ph.split.us.us:                               ; preds = %.lr.ph.split.us.us.preheader, %bb.p
  %indvars.iv127 = phi i64 [ 0, %.lr.ph.split.us.us.preheader ], [ %indvars.iv.next128, %bb.p ] ; 3 uses
  %gep148 = getelementptr [16 x i8], ptr %invariant.gep147, i64 %indvars.iv127
  %i.aq = load double, ptr %gep148, align 8, !tbaa !22
  %i.ar = fsub double %i.aq, %i.u                 ; 2 uses
  br i1 %.not, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.lr.ph.split.us.us
  %i.as = fadd double %i.ar, 1.000000e+00
  %i.at = tail call double @log(double noundef %i.as) #9, !tbaa !9
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %.lr.ph.split.us.us
  %.070.us.us = phi double [ %i.at, %bb.l ], [ %i.ar, %.lr.ph.split.us.us ]
  %i.au = fmul double %.070.us.us, %i.q
  %i.av = fptosi double %i.au to i32
  %i.aw = sitofp i32 %i.av to double
  %i.ax = fdiv double %i.aw, %.068
  %i.ay = fptosi double %i.ax to i32
  %spec.store.select.us.us = tail call i32 @llvm.smax.i32(i32 %i.ay, i32 0)
  %spec.select.us.us = tail call i32 @llvm.smin.i32(i32 %spec.store.select.us.us, i32 %i.r)
  %i.az = add i32 %spec.select.us.us, %.neg.us    ; 3 uses
  %or.cond.us.us = icmp ult i32 %i.az, 3
  br i1 %or.cond.us.us, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ba = icmp sgt i32 %i.az, 2
  %or.cond90.us.us = and i1 %i.ba, %.not87
  br i1 %or.cond90.us.us, label %.sink.split, label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bb = zext nneg i32 %i.az to i64
  %.in.in.us.us = getelementptr inbounds nuw i8, ptr %.in.in.v, i64 %i.bb
  %.in.us.us = load i8, ptr %.in.in.us.us, align 1, !tbaa !13
  br label %.sink.split

.sink.split:                                      ; preds = %bb.n, %bb.o
  %.in.us.us.sink = phi i8 [ %.in.us.us, %bb.o ], [ 124, %bb.n ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv127
  store i8 %.in.us.us.sink, ptr %i.bc, align 1, !tbaa !13
  br label %bb.p

bb.p:                                             ; preds = %.sink.split, %bb.n
  %indvars.iv.next128 = add nuw nsw i64 %indvars.iv127, 1 ; 2 uses
  %exitcond131.not = icmp eq i64 %indvars.iv.next128, %wide.trip.count130
  br i1 %exitcond131.not, label %._crit_edge.us.thread, label %.lr.ph.split.us.us, !llvm.loop !30

.lr.ph.split.split.us.us:                         ; preds = %.lr.ph.split.us113, %bb.u
  %indvars.iv122 = phi i64 [ %indvars.iv.next123, %bb.u ], [ 0, %.lr.ph.split.us113 ] ; 3 uses
  %.174101.us104.us = phi i32 [ %.4.ph.us105.us, %bb.u ], [ 0, %.lr.ph.split.us113 ] ; 2 uses
  %gep146 = getelementptr [16 x i8], ptr %invariant.gep145, i64 %indvars.iv122 ; 2 uses
  br i1 %.not, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.lr.ph.split.split.us.us
  %i.bd = load double, ptr %gep146, align 8, !tbaa !22
  %i.be = fsub double %i.bd, %i.u
  %i.bf = fadd double %i.be, 1.000000e+00
  %i.bg = tail call double @log(double noundef %i.bf) #9, !tbaa !9 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %.lr.ph.split.split.us.us
  %i.bh = getelementptr inbounds nuw i8, ptr %gep146, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !25 ; 3 uses
  %.not86.us.us = icmp eq ptr %i.bi, null
  br i1 %.not86.us.us, label %bb.u, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %i.bi) #11
  %i.bk = trunc i64 %i.bj to i32
  %i.bl = icmp slt i32 %i.w, %i.bk
  br i1 %i.bl, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  %i.bm = getelementptr inbounds i8, ptr %i.bi, i64 %i.x
  %i.bn = load i8, ptr %i.bm, align 1, !tbaa !13
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 %indvars.iv122
  store i8 %i.bn, ptr %i.bo, align 1, !tbaa !13
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r
  %.4.ph.us105.us = phi i32 [ %.174101.us104.us, %bb.s ], [ 1, %bb.t ], [ %.174101.us104.us, %bb.r ] ; 2 uses
  %indvars.iv.next123 = add nuw nsw i64 %indvars.iv122, 1 ; 2 uses
  %exitcond126.not = icmp eq i64 %indvars.iv.next123, %wide.trip.count125
  br i1 %exitcond126.not, label %._crit_edge.us, label %.lr.ph.split.split.us.us, !llvm.loop !30

.split:                                           ; preds = %bb.e
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.h, i8 32, i64 %i.g, i1 false)
  br label %.split117.us

.split117.us:                                     ; preds = %._crit_edge.us, %.split
  %.us-phi118 = phi ptr [ %0, %.split ], [ %.0109.us, %._crit_edge.us ]
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
end_hunk_0
