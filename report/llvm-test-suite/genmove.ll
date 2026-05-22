begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@umove = external local_unnamed_addr global i32, align 4
@rd = external global i32, align 4
@lib = external local_unnamed_addr global i32, align 4
@mymove = external local_unnamed_addr global i32, align 4
@p = external local_unnamed_addr global [19 x [19 x i8]], align 16
@pass = external local_unnamed_addr global i32, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"my move: \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"%1d\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"%2d\0A\00", align 1
@str = private unnamed_addr constant [8 x i8] c"I pass.\00", align 1

; Function Attrs: nounwind uwtable
define dso_local void @genmove(ptr noundef captures(none) initializes((0, 4)) %0, ptr noundef captures(none) initializes((0, 4)) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca i32, align 4                      ; 8 uses
  %i.b = alloca i32, align 4                      ; 8 uses
  %i.c = alloca i32, align 4                      ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c) #5
  store i32 -1, ptr %0, align 4, !tbaa !4
  store i32 -1, ptr %1, align 4, !tbaa !4
  %i.d = load i32, ptr @umove, align 4, !tbaa !4
  tail call void @eval(i32 noundef %i.d) #5
  %i.e = call i32 @findwinner(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %.not = icmp eq i32 %i.e, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.g = icmp sgt i32 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.h = load i32, ptr %i.a, align 4, !tbaa !4
  store i32 %i.h, ptr %0, align 4, !tbaa !4
  %i.i = load i32, ptr %i.b, align 4, !tbaa !4
  store i32 %i.i, ptr %1, align 4, !tbaa !4
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.049 = phi i32 [ %i.f, %bb.c ], [ -1, %bb.b ], [ -1, %bb.a ] ; 3 uses
  %i.j = call i32 @findsaver(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %.not65 = icmp eq i32 %i.j, 0
  br i1 %.not65, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.k = load i32, ptr %i.c, align 4, !tbaa !4    ; 2 uses
  %i.l = icmp sgt i32 %i.k, %.049
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.m = load i32, ptr %i.a, align 4, !tbaa !4
  store i32 %i.m, ptr %0, align 4, !tbaa !4
  %i.n = load i32, ptr %i.b, align 4, !tbaa !4
  store i32 %i.n, ptr %1, align 4, !tbaa !4
  br label %bb.g

bb.g:                                             ; preds = %bb.e, %bb.f, %bb.d
  %.150 = phi i32 [ %i.k, %bb.f ], [ %.049, %bb.e ], [ %.049, %bb.d ] ; 2 uses
  %i.o = call i32 @findpatn(ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef nonnull %i.c) #5
  %.not66 = icmp ne i32 %i.o, 0
  %i.p = load i32, ptr %i.c, align 4
  %i.q = icmp sgt i32 %i.p, %.150
  %or.cond77 = select i1 %.not66, i1 %i.q, i1 false
  br i1 %or.cond77, label %.thread, label %bb.h

.thread:                                          ; preds = %bb.g
  %i.r = load i32, ptr %i.a, align 4, !tbaa !4
  store i32 %i.r, ptr %0, align 4, !tbaa !4
  %i.s = load i32, ptr %i.b, align 4, !tbaa !4
  store i32 %i.s, ptr %1, align 4, !tbaa !4
  br label %.loopexit

bb.h:                                             ; preds = %bb.g
  %i.t = icmp slt i32 %.150, 0
  br i1 %i.t, label %.critedge3, label %.loopexit

.critedge3:                                       ; preds = %bb.h, %.critedge3.backedge
  %.0 = phi i32 [ %i.ap, %.critedge3.backedge ], [ 0, %bb.h ] ; 2 uses
  call void @random_nasko(ptr noundef nonnull @rd) #5
  %i.u = load i32, ptr @rd, align 4, !tbaa !4
  %i.v = srem i32 %i.u, 19                        ; 3 uses
  store i32 %i.v, ptr %0, align 4, !tbaa !4
  %i.w = add nsw i32 %i.v, -17
  %or.cond68 = icmp ult i32 %i.w, -15
  %i.x = add nsw i32 %i.v, -6
  %or.cond69 = icmp ult i32 %i.x, 7
  %or.cond78 = select i1 %or.cond68, i1 true, i1 %or.cond69
  br i1 %or.cond78, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.critedge3
  call void @random_nasko(ptr noundef nonnull @rd) #5
  %i.y = load i32, ptr @rd, align 4, !tbaa !4
  %i.z = srem i32 %i.y, 19                        ; 2 uses
  store i32 %i.z, ptr %0, align 4, !tbaa !4
  %i.aa = add nsw i32 %i.z, -17
  %or.cond70 = icmp ult i32 %i.aa, -15
  br i1 %or.cond70, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @random_nasko(ptr noundef nonnull @rd) #5
  %i.ab = load i32, ptr @rd, align 4, !tbaa !4
  %i.ac = srem i32 %i.ab, 19
  store i32 %i.ac, ptr %0, align 4, !tbaa !4
  br label %bb.k

bb.k:                                             ; preds = %.critedge3, %bb.i, %bb.j
  call void @random_nasko(ptr noundef nonnull @rd) #5
  %i.ad = load i32, ptr @rd, align 4, !tbaa !4
  %i.ae = srem i32 %i.ad, 19                      ; 3 uses
  store i32 %i.ae, ptr %1, align 4, !tbaa !4
  %i.af = add nsw i32 %i.ae, -17
  %or.cond71 = icmp ult i32 %i.af, -15
  %i.ag = add nsw i32 %i.ae, -6
  %or.cond72 = icmp ult i32 %i.ag, 7
  %or.cond79 = select i1 %or.cond71, i1 true, i1 %or.cond72
  br i1 %or.cond79, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @random_nasko(ptr noundef nonnull @rd) #5
  %i.ah = load i32, ptr @rd, align 4, !tbaa !4
  %i.ai = srem i32 %i.ah, 19                      ; 2 uses
  store i32 %i.ai, ptr %1, align 4, !tbaa !4
  %i.aj = add nsw i32 %i.ai, -17
  %or.cond73 = icmp ult i32 %i.aj, -15
  br i1 %or.cond73, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @random_nasko(ptr noundef nonnull @rd) #5
  %i.ak = load i32, ptr @rd, align 4, !tbaa !4
  %i.al = srem i32 %i.ak, 19
  store i32 %i.al, ptr %1, align 4, !tbaa !4
  br label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.l, %bb.m
  store i32 0, ptr @lib, align 4, !tbaa !4
  %i.am = load i32, ptr %0, align 4, !tbaa !4
  %i.an = load i32, ptr %1, align 4, !tbaa !4
  %i.ao = load i32, ptr @mymove, align 4, !tbaa !4
  call void @countlib(i32 noundef %i.am, i32 noundef %i.an, i32 noundef %i.ao) #5
  %i.ap = add nuw nsw i32 %.0, 1
  %exitcond.not = icmp eq i32 %.0, 399
  br i1 %exitcond.not, label %.critedge, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.aq = load i32, ptr %0, align 4, !tbaa !4     ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = getelementptr inbounds [19 x i8], ptr @p, i64 %i.ar
  %i.at = load i32, ptr %1, align 4, !tbaa !4     ; 2 uses
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr inbounds i8, ptr %i.as, i64 %i.au
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !8
  %i.ax = icmp ne i8 %i.aw, 0
  %i.ay = load i32, ptr @lib, align 4
  %i.az = icmp slt i32 %i.ay, 2
  %or.cond = select i1 %i.ax, i1 true, i1 %i.az
  br i1 %or.cond, label %.critedge3.backedge, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ba = call i32 @fioe(i32 noundef %i.aq, i32 noundef %i.at) #5
  %.not67 = icmp eq i32 %i.ba, 0
  br i1 %.not67, label %.loopexit, label %.critedge3.backedge

.critedge3.backedge:                              ; preds = %bb.p, %bb.o
  br label %.critedge3, !llvm.loop !9

.critedge:                                        ; preds = %bb.n
  %i.bb = load i32, ptr @pass, align 4, !tbaa !4
  %i.bc = add nsw i32 %i.bb, 1
  store i32 %i.bc, ptr @pass, align 4, !tbaa !4
  %puts = call i32 @puts(ptr nonnull dereferenceable(1) @str) ; 0 uses
  store i32 -1, ptr %0, align 4, !tbaa !4
  br label %bb.q

.loopexit:                                        ; preds = %bb.p, %bb.h, %.thread
  store i32 0, ptr @pass, align 4, !tbaa !4
  %i.bd = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1) ; 0 uses
  %i.be = load i32, ptr %1, align 4, !tbaa !4     ; 2 uses
  %i.bf = icmp slt i32 %i.be, 8
  %.051.v = select i1 %i.bf, i32 65, i32 66
  %.051 = add i32 %.051.v, %i.be
  %sext = shl i32 %.051, 24
  %i.bg = ashr exact i32 %sext, 24
  %putchar = call i32 @putchar(i32 %i.bg)         ; 0 uses
  %i.bh = load i32, ptr %0, align 4, !tbaa !4     ; 2 uses
  %i.bi = sub nsw i32 19, %i.bh                   ; 2 uses
  %i.bj = icmp sgt i32 %i.bh, 9
  br i1 %i.bj, label %2, label %4

2:                                                ; preds = %.loopexit
  %3 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %i.bi) ; 0 uses
  br label %bb.q

4:                                                ; preds = %.loopexit
  %5 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %i.bi) ; 0 uses
  br label %bb.q

bb.q:                                             ; preds = %2, %4, %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #5
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @eval(i32 noundef) local_unnamed_addr #2

declare i32 @findwinner(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @findsaver(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare i32 @findpatn(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @random_nasko(ptr noundef) local_unnamed_addr #2

declare void @countlib(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare i32 @fioe(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #4

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
