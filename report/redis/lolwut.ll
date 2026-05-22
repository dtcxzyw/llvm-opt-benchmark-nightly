inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"Redis ver. \00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"8.6.1\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"txt\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"version\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"%u.0.0\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @lolwutUnstableCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @sdsnew(ptr noundef nonnull @.str) #14
  %i.b = tail call ptr @sdscat(ptr noundef %i.a, ptr noundef nonnull @.str.1) #14
  %i.c = tail call ptr @sdscatlen(ptr noundef %i.b, ptr noundef nonnull @.str.2, i64 noundef 1) #14 ; 7 uses
  %i.d = getelementptr i8, ptr %i.c, i64 -1
  %.val.i = load i8, ptr %i.d, align 1, !tbaa !13 ; 2 uses
  %i.e = and i8 %.val.i, 7
  switch i8 %i.e, label %sdslen.exit [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

bb.b:                                             ; preds = %bb.a
  %i.f = lshr i8 %.val.i, 3
  %i.g = zext nneg i8 %i.f to i64
  br label %sdslen.exit

bb.c:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds i8, ptr %i.c, i64 -3
  %i.i = load i8, ptr %i.h, align 1, !tbaa !13
  %i.j = zext i8 %i.i to i64
  br label %sdslen.exit

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds i8, ptr %i.c, i64 -5
  %i.l = load i16, ptr %i.k, align 1, !tbaa !14
  %i.m = zext i16 %i.l to i64
  br label %sdslen.exit

bb.e:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds i8, ptr %i.c, i64 -9
  %i.o = load i32, ptr %i.n, align 1, !tbaa !9
  %i.p = zext i32 %i.o to i64
  br label %sdslen.exit

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds i8, ptr %i.c, i64 -17
  %i.r = load i64, ptr %i.q, align 1, !tbaa !16
  br label %sdslen.exit

sdslen.exit:                                      ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f
  %.0.i = phi i64 [ %i.r, %bb.f ], [ %i.g, %bb.b ], [ %i.j, %bb.c ], [ %i.m, %bb.d ], [ %i.p, %bb.e ], [ 0, %bb.a ]
  tail call void @addReplyVerbatim(ptr noundef %0, ptr noundef nonnull %i.c, i64 noundef %.0.i, ptr noundef nonnull @.str.3) #14
  tail call void @sdsfree(ptr noundef nonnull %i.c) #14
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare ptr @sdsnew(ptr noundef) local_unnamed_addr #2

declare ptr @sdscat(ptr noundef, ptr noundef) local_unnamed_addr #2

declare ptr @sdscatlen(ptr noundef, ptr noundef, i64 noundef) local_unnamed_addr #2

declare void @addReplyVerbatim(ptr noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #2

declare void @sdsfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind uwtable
define dso_local void @lolwutCommand(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 7 uses
  %i.b = alloca i64, align 8                      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #14
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 5 uses
  %i.d = load i32, ptr %i.c, align 8, !tbaa !18
  %i.e = icmp sgt i32 %i.d, 2
  %.1.sroa.gep = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.1.sroa.gep51 = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !43   ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !44
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !45
  %i.l = tail call i32 @strcasecmp(ptr noundef %i.k, ptr noundef nonnull @.str.4) #15
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #14
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !44
  %i.o = call i32 @getLongFromObjectOrReply(ptr noundef nonnull %0, ptr noundef %i.n, ptr noundef nonnull %i.b, ptr noundef null) #14
  %.not32 = icmp eq i32 %i.o, 0
  br i1 %.not32, label %.thread, label %.critedge

.thread:                                          ; preds = %bb.c
  %i.p = load i64, ptr %i.b, align 8, !tbaa !16
  %i.q = trunc i64 %i.p to i32
  %i.r = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull dereferenceable(1) %i.a, i64 noundef 64, ptr noundef nonnull @.str.5, i32 noundef %i.q) #14 ; 0 uses
  %i.s = load ptr, ptr %i.f, align 8, !tbaa !43
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr %i.t, ptr %i.f, align 8, !tbaa !43
  %i.u = load i32, ptr %i.c, align 8, !tbaa !18
  %i.v = add nsw i32 %i.u, -2
  store i32 %i.v, ptr %i.c, align 8, !tbaa !18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.d

bb.d:                                             ; preds = %.thread, %bb.b, %bb.a
  %.1.sroa.phi = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.1, i64 1), %bb.b ], [ %.1.sroa.gep, %.thread ], [ getelementptr inbounds nuw (i8, ptr @.str.1, i64 1), %bb.a ] ; 5 uses
  %.1.sroa.phi50 = phi ptr [ getelementptr inbounds nuw (i8, ptr @.str.1, i64 2), %bb.b ], [ %.1.sroa.gep51, %.thread ], [ getelementptr inbounds nuw (i8, ptr @.str.1, i64 2), %bb.a ] ; 5 uses
  %.1 = phi ptr [ @.str.1, %bb.b ], [ %i.a, %.thread ], [ @.str.1, %bb.a ] ; 2 uses
  %i.w = load i8, ptr %.1, align 1, !tbaa !13
  switch i8 %i.w, label %.thread49 [
    i8 53, label %bb.e
    i8 52, label %bb.g
    i8 54, label %bb.j
    i8 56, label %bb.m
    i8 55, label %bb.o
  ]

bb.e:                                             ; preds = %bb.d
  %i.x = load i8, ptr %.1.sroa.phi, align 1, !tbaa !13
  %i.y = icmp eq i8 %i.x, 46
  br i1 %i.y, label %bb.f, label %.thread49

bb.f:                                             ; preds = %bb.e
  %i.z = load i8, ptr %.1.sroa.phi50, align 1, !tbaa !13
  %.not33 = icmp eq i8 %i.z, 57
  br i1 %.not33, label %bb.l, label %bb.i

bb.g:                                             ; preds = %bb.d
  %i.aa = load i8, ptr %.1.sroa.phi, align 1, !tbaa !13
  %i.ab = icmp eq i8 %i.aa, 46
  br i1 %i.ab, label %bb.h, label %.thread49

bb.h:                                             ; preds = %bb.g
  %i.ac = load i8, ptr %.1.sroa.phi50, align 1, !tbaa !13
  %i.ad = icmp eq i8 %i.ac, 57
  br i1 %i.ad, label %bb.i, label %.thread49

bb.i:                                             ; preds = %bb.h, %bb.f
  call void @lolwut5Command(ptr noundef nonnull %0) #14
  br label %bb.r

bb.j:                                             ; preds = %bb.d
  %i.ae = load i8, ptr %.1.sroa.phi, align 1, !tbaa !13
  %.not34.a = icmp eq i8 %i.ae, 46
  br i1 %.not34.a, label %bb.k, label %.thread49

bb.k:                                             ; preds = %bb.j
  %i.af = load i8, ptr %.1.sroa.phi50, align 1, !tbaa !13
  %i.ag = icmp eq i8 %i.af, 57
  br i1 %i.ag, label %.thread49, label %bb.l

bb.l:                                             ; preds = %bb.f, %bb.k
  call void @lolwut6Command(ptr noundef nonnull %0) #14
  br label %bb.r

bb.m:                                             ; preds = %bb.d
  %i.ah = load i8, ptr %.1.sroa.phi, align 1, !tbaa !13
  %i.ai = icmp eq i8 %i.ah, 46
  br i1 %i.ai, label %bb.n, label %.thread49

bb.n:                                             ; preds = %bb.m
  %i.aj = load i8, ptr %.1.sroa.phi50, align 1, !tbaa !13
  %.not35 = icmp eq i8 %i.aj, 57
  br i1 %.not35, label %.thread49, label %bb.q

bb.o:                                             ; preds = %bb.d
  %i.ak = load i8, ptr %.1.sroa.phi, align 1, !tbaa !13
  %i.al = icmp eq i8 %i.ak, 46
  br i1 %i.al, label %bb.p, label %.thread49

bb.p:                                             ; preds = %bb.o
  %i.am = load i8, ptr %.1.sroa.phi50, align 1, !tbaa !13
  %i.an = icmp eq i8 %i.am, 57
  br i1 %i.an, label %bb.q, label %.thread49

bb.q:                                             ; preds = %bb.p, %bb.n
  call void @lolwut8Command(ptr noundef nonnull %0) #14
  br label %bb.r

.thread49:                                        ; preds = %bb.d, %bb.j, %bb.k, %bb.g, %bb.h, %bb.e, %bb.m, %bb.n, %bb.p, %bb.o
  call void @lolwutUnstableCommand(ptr noundef nonnull %0)
  br label %bb.r

bb.r:                                             ; preds = %bb.l, %.thread49, %bb.q, %bb.i
  %i.ao = icmp eq ptr %.1, %i.a
  br i1 %i.ao, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !43
  %i.ar = getelementptr inbounds i8, ptr %i.aq, i64 -16
  store ptr %i.ar, ptr %i.ap, align 8, !tbaa !43
  %i.as = load i32, ptr %i.c, align 8, !tbaa !18
  %i.at = add nsw i32 %i.as, 2
  store i32 %i.at, ptr %i.c, align 8, !tbaa !18
  br label %bb.t

.critedge:                                        ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #14
  br label %bb.t

bb.t:                                             ; preds = %bb.r, %bb.s, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #14
  ret void
}

; Function Attrs: mustprogress nocallback nofree nounwind willreturn memory(read)
declare i32 @strcasecmp(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #3

declare i32 @getLongFromObjectOrReply(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @snprintf(ptr noalias noundef writeonly captures(none), i64 noundef, ptr noundef readonly captures(none), ...) local_unnamed_addr #4

declare void @lolwut5Command(ptr noundef) local_unnamed_addr #2

declare void @lolwut6Command(ptr noundef) local_unnamed_addr #2

declare void @lolwut8Command(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind uwtable
define dso_local noalias noundef ptr @lwCreateCanvas(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(16) ptr @zmalloc(i64 noundef 16) #16 ; 4 uses
  store i32 %0, ptr %i.a, align 8, !tbaa !47
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  store i32 %1, ptr %i.b, align 4, !tbaa !49
  %i.c = sext i32 %0 to i64
  %i.d = sext i32 %1 to i64
  %i.e = mul nsw i64 %i.d, %i.c                   ; 2 uses
  %i.f = tail call noalias ptr @zmalloc(i64 noundef %i.e) #16 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !tbaa !50
  %i.h = trunc i32 %2 to i8
  tail call void @llvm.memset.p0.i64(ptr align 1 %i.f, i8 %i.h, i64 %i.e, i1 false)
  ret ptr %i.a
}

; Function Attrs: allocsize(0)
declare noalias ptr @zmalloc(i64 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #6

; Function Attrs: nounwind uwtable
define dso_local void @lwFreeCanvas(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !50
  tail call void @zfree(ptr noundef %i.b) #14
  tail call void @zfree(ptr noundef %0) #14
  ret void
}

declare void @zfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lwDrawPixel(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #7 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.c = icmp sge i32 %1, %i.b
  %i.d = icmp slt i32 %2, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49
  %.not = icmp slt i32 %2, %i.f
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = trunc i32 %3 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !50
  %i.j = mul nsw i32 %i.b, %2
  %i.k = add nuw nsw i32 %i.j, %1
  %i.l = zext nneg i32 %i.k to i64
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.l
  store i8 %i.g, ptr %i.m, align 1, !tbaa !13
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 -128, 128) i32 @lwGetPixel(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #8 {
bb.a:
  %i.a = icmp slt i32 %1, 0
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = load i32, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.c = icmp sge i32 %1, %i.b
  %i.d = icmp slt i32 %2, 0
  %or.cond = or i1 %i.d, %i.c
  br i1 %or.cond, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.f = load i32, ptr %i.e, align 4, !tbaa !49
  %.not = icmp slt i32 %2, %i.f
  br i1 %.not, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !50
  %i.i = mul nsw i32 %i.b, %2
  %i.j = add nuw nsw i32 %i.i, %1
  %i.k = zext nneg i32 %i.j to i64
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.k
  %i.m = load i8, ptr %i.l, align 1, !tbaa !13
  %i.n = sext i8 %i.m to i32
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.0 = phi i32 [ %i.n, %bb.d ], [ 0, %bb.c ], [ 0, %bb.b ], [ 0, %bb.a ]
  ret i32 %.0
}

; Function Attrs: nofree norecurse nosync nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lwDrawLine(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) local_unnamed_addr #9 {
bb.a:
  %i.a = sub nsw i32 %3, %1
  %i.b = tail call i32 @llvm.abs.i32(i32 %i.a, i1 true) ; 3 uses
  %i.c = sub nsw i32 %4, %2
  %i.d = tail call i32 @llvm.abs.i32(i32 %i.c, i1 true) ; 3 uses
  %i.e = icmp slt i32 %1, %3
  %i.f = select i1 %i.e, i32 1, i32 -1
  %i.g = icmp slt i32 %2, %4
  %i.h = select i1 %i.g, i32 1, i32 -1
  %i.i = sub nsw i32 %i.b, %i.d
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.k = trunc i32 %5 to i8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = sub nsw i32 0, %i.d
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %.032 = phi i32 [ %2, %bb.a ], [ %.133, %bb.f ] ; 5 uses
  %.030 = phi i32 [ %i.i, %bb.a ], [ %.2, %bb.f ] ; 2 uses
  %.0 = phi i32 [ %1, %bb.a ], [ %.1, %bb.f ]     ; 5 uses
  %i.n = icmp slt i32 %.0, 0
  br i1 %i.n, label %lwDrawPixel.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = load i32, ptr %0, align 8, !tbaa !47     ; 2 uses
  %i.p = icmp sge i32 %.0, %i.o
  %i.q = icmp slt i32 %.032, 0
  %or.cond.i = or i1 %i.q, %i.p
  br i1 %or.cond.i, label %lwDrawPixel.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = load i32, ptr %i.j, align 4, !tbaa !49
  %.not.i = icmp slt i32 %.032, %i.r
  br i1 %.not.i, label %bb.e, label %lwDrawPixel.exit

bb.e:                                             ; preds = %bb.d
  %i.s = load ptr, ptr %i.l, align 8, !tbaa !50
  %i.t = mul nsw i32 %i.o, %.032
  %i.u = add nuw nsw i32 %i.t, %.0
  %i.v = zext nneg i32 %i.u to i64
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.v
  store i8 %i.k, ptr %i.w, align 1, !tbaa !13
  br label %lwDrawPixel.exit

lwDrawPixel.exit:                                 ; preds = %bb.b, %bb.c, %bb.d, %bb.e
  %i.x = icmp eq i32 %.0, %3
  %i.y = icmp eq i32 %.032, %4
  %or.cond = and i1 %i.y, %i.x
  br i1 %or.cond, label %bb.g, label %bb.f

bb.f:                                             ; preds = %lwDrawPixel.exit
  %i.z = shl nsw i32 %.030, 1                     ; 2 uses
  %i.aa = icmp sgt i32 %i.z, %i.m                 ; 2 uses
  %i.ab = select i1 %i.aa, i32 %i.d, i32 0
  %.131 = sub i32 %.030, %i.ab
  %i.ac = select i1 %i.aa, i32 %i.f, i32 0
  %.1 = add nsw i32 %i.ac, %.0
  %i.ad = icmp slt i32 %i.z, %i.b                 ; 2 uses
  %i.ae = select i1 %i.ad, i32 %i.h, i32 0
  %.133 = add nsw i32 %i.ae, %.032
  %i.af = select i1 %i.ad, i32 %i.b, i32 0
  %.2 = add nsw i32 %.131, %i.af
  br label %bb.b

bb.g:                                             ; preds = %lwDrawPixel.exit
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #10

; Function Attrs: nofree norecurse nounwind memory(write, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @lwDrawSquare(ptr noundef readonly captures(none) %0, i32 noundef %1, i32 noundef %2, float noundef %3, float noundef %4, i32 noundef %5) local_unnamed_addr #11 {
lwDrawLine.exit.preheader:
  %i.a = fpext float %3 to double
end_hunk_0
