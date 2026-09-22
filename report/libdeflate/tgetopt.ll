Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libdeflate/original/tgetopt?download=true
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@toptind = dso_local local_unnamed_addr global i32 1, align 4
@topterr = dso_local local_unnamed_addr global i32 1, align 4
@tgetopt.empty = internal global [1 x i8] zeroinitializer, align 1
@tgetopt.nextchar = internal unnamed_addr global ptr null, align 8
@tgetopt.done = internal unnamed_addr global i1 false, align 1
@.str = private unnamed_addr constant [23 x i8] c"invalid option -- '%c'\00", align 1
@toptopt = dso_local local_unnamed_addr global i32 0, align 4
@toptarg = dso_local local_unnamed_addr global ptr null, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"option requires an argument -- '%c'\00", align 1

; Function Attrs: nounwind uwtable
define dso_local range(i32 -128, 128) i32 @tgetopt(i32 noundef %0, ptr nofree noundef captures(none) %1, ptr nofree noundef readonly %2) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr @toptind, align 4, !tbaa !10 ; 3 uses
  %i.b = icmp eq i32 %i.a, 1
  br i1 %i.b, label %.thread, label %bb.b

.thread:                                          ; preds = %bb.a
  store ptr null, ptr @tgetopt.nextchar, align 8, !tbaa !13
  store i1 false, ptr @tgetopt.done, align 1
  br label %.lr.ph.preheader

bb.b:                                             ; preds = %bb.a
  %tgetopt.done.promoted.pre = load i1, ptr @tgetopt.done, align 1
  %tgetopt.nextchar.promoted.pre = load ptr, ptr @tgetopt.nextchar, align 8
  br i1 %tgetopt.done.promoted.pre, label %.critedge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.thread, %bb.b
  %tgetopt.nextchar.promoted81 = phi ptr [ null, %.thread ], [ %tgetopt.nextchar.promoted.pre, %bb.b ] ; 2 uses
  %i.c = sext i32 %0 to i64
  %i.d = icmp ne ptr %tgetopt.nextchar.promoted81, null
  %i.e = icmp slt i32 %i.a, %0                    ; 2 uses
  %i.f = or i1 %i.d, %i.e
  br i1 %i.f, label %.lr.ph100, label %.critedge

.lr.ph100:                                        ; preds = %.lr.ph.preheader
  %i.g = sext i32 %i.a to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph100, %.lr.ph
  %i.h = phi i1 [ %i.e, %.lr.ph100 ], [ %i.x, %.lr.ph ]
  %i.i = phi ptr [ %tgetopt.nextchar.promoted81, %.lr.ph100 ], [ %i.v, %.lr.ph ] ; 3 uses
  %indvars.iv99 = phi i64 [ %i.g, %.lr.ph100 ], [ %indvars.iv.next, %.lr.ph ] ; 5 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv99, 1 ; 3 uses
  %i.k = trunc nsw i64 %indvars.iv.next to i32
  store i32 %i.k, ptr @toptind, align 4, !tbaa !10
  %i.l = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv99
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !13   ; 3 uses
  %i.n = load i8, ptr %i.m, align 1, !tbaa !14
  %i.o = icmp eq i8 %i.n, 45
  br i1 %i.o, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 1 ; 3 uses
  %i.q = load i8, ptr %i.p, align 1, !tbaa !14
  switch i8 %i.q, label %bb.g [
    i8 0, label %.lr.ph
    i8 45, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 2
  %i.s = load i8, ptr %i.r, align 1, !tbaa !14
  %i.t = icmp eq i8 %i.s, 0
  br i1 %i.t, label %..critedge_crit_edge.critedge, label %bb.g

..critedge_crit_edge.critedge:                    ; preds = %bb.f
  %i.u = getelementptr inbounds [8 x i8], ptr %1, i64 %indvars.iv99
  store ptr null, ptr %i.u, align 8, !tbaa !13
  br label %.critedge

bb.g:                                             ; preds = %bb.e, %bb.f
  store ptr %i.p, ptr @tgetopt.nextchar, align 8, !tbaa !13
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g, %bb.d
  %i.v = phi ptr [ null, %bb.e ], [ null, %bb.d ], [ %i.p, %bb.g ] ; 2 uses
  %i.w = icmp ne ptr %i.v, null
  %i.x = icmp slt i64 %indvars.iv.next, %i.c      ; 2 uses
  %i.y = select i1 %i.w, i1 true, i1 %i.x
  br i1 %i.y, label %bb.c, label %.critedge

bb.h:                                             ; preds = %bb.c
  %i.z = trunc nsw i64 %indvars.iv99 to i32
  %i.aa = load i8, ptr %i.i, align 1, !tbaa !14   ; 6 uses
  %i.ab = sext i8 %i.aa to i32                    ; 5 uses
  %i.ac = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.ab) #3 ; 3 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ae = load i32, ptr @topterr, align 4, !tbaa !10
  %.not44 = icmp eq i32 %i.ae, 0
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @msg(ptr noundef nonnull @.str, i32 noundef %i.ab) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.ab, ptr @toptopt, align 4, !tbaa !10
  br label %bb.aa

bb.l:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 9 uses
  store ptr %i.af, ptr @tgetopt.nextchar, align 8, !tbaa !13
  store ptr null, ptr @toptarg, align 8, !tbaa !13
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 1
  %i.ah = load i8, ptr %i.ag, align 1, !tbaa !14
  %i.ai = icmp eq i8 %i.ah, 58
  br i1 %i.ai, label %bb.m, label %.thread82

bb.m:                                             ; preds = %bb.l
  %i.aj = load i8, ptr %i.af, align 1, !tbaa !14
  %.not = icmp eq i8 %i.aj, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.af, ptr @toptarg, align 8, !tbaa !13
  store ptr @tgetopt.empty, ptr @tgetopt.nextchar, align 8, !tbaa !13
  br label %.thread82

bb.o:                                             ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 2
  %i.al = load i8, ptr %i.ak, align 1, !tbaa !14
  %.not40 = icmp eq i8 %i.al, 58                  ; 2 uses
  br i1 %i.h, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  br i1 %.not40, label %.thread82, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.am = getelementptr [8 x i8], ptr %1, i64 %indvars.iv99 ; 2 uses
  %i.an = getelementptr i8, ptr %i.am, i64 -8
  store ptr null, ptr %i.an, align 8, !tbaa !13
  %i.ao = add nsw i32 %i.z, 1
  store i32 %i.ao, ptr @toptind, align 4, !tbaa !10
  %i.ap = load ptr, ptr %i.am, align 8, !tbaa !13
  store ptr %i.ap, ptr @toptarg, align 8, !tbaa !13
  br label %.thread82

bb.r:                                             ; preds = %bb.o
  br i1 %.not40, label %.thread82, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.aq = load i32, ptr @topterr, align 4, !tbaa !10
  %.not42 = icmp eq i32 %i.aq, 0
  br i1 %.not42, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ar = load i8, ptr %2, align 1, !tbaa !14
  %.not43 = icmp eq i8 %i.ar, 58
  br i1 %.not43, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @msg(ptr noundef nonnull @.str.1, i32 noundef %i.ab) #4
  %.pre73.pre = load ptr, ptr @tgetopt.nextchar, align 8, !tbaa !13
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.pre73 = phi ptr [ %.pre73.pre, %bb.u ], [ %i.af, %bb.t ], [ %i.af, %bb.s ]
  store i32 %i.ab, ptr @toptopt, align 4, !tbaa !10
  %i.as = load i8, ptr %2, align 1, !tbaa !14
  %i.at = icmp eq i8 %i.as, 58
  %i.au = select i1 %i.at, i8 58, i8 63
  br label %.thread82

.thread82:                                        ; preds = %bb.p, %bb.n, %bb.r, %bb.v, %bb.q, %bb.l
  %i.av = phi ptr [ @tgetopt.empty, %bb.n ], [ %i.af, %bb.q ], [ %.pre73, %bb.v ], [ %i.af, %bb.r ], [ %i.af, %bb.l ], [ %i.af, %bb.p ]
  %.0 = phi i8 [ %i.aa, %bb.n ], [ %i.aa, %bb.q ], [ %i.au, %bb.v ], [ %i.aa, %bb.r ], [ %i.aa, %bb.l ], [ %i.aa, %bb.p ]
  %i.aw = load i8, ptr %i.av, align 1, !tbaa !14
  %i.ax = icmp eq i8 %i.aw, 0
  br i1 %i.ax, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread82
  %i.ay = load i32, ptr @toptind, align 4, !tbaa !10
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr [8 x i8], ptr %1, i64 %i.az
  %i.bb = getelementptr i8, ptr %i.ba, i64 -8
  store ptr null, ptr %i.bb, align 8, !tbaa !13
  store ptr null, ptr @tgetopt.nextchar, align 8, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread82
  %i.bc = sext i8 %.0 to i32
  br label %bb.aa

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge_crit_edge.critedge, %bb.b
  store i32 %0, ptr @toptind, align 4, !tbaa !10
  %i.bd = icmp sgt i32 %0, 1
  br i1 %i.bd, label %.lr.ph54.preheader, label %._crit_edge

.lr.ph54.preheader:                               ; preds = %.critedge
  %i.be = zext nneg i32 %0 to i64                 ; 3 uses
  %3 = and i64 %i.be, 1
  %lcmp.mod.not.not = icmp eq i64 %3, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph54.prol, label %.lr.ph54.prol.loopexit

.lr.ph54.prol:                                    ; preds = %.lr.ph54.preheader
  %indvars.iv.next67.prol = add nsw i64 %i.be, -1 ; 3 uses
  %4 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next67.prol
  %5 = load ptr, ptr %4, align 8, !tbaa !13       ; 2 uses
  %.not46.prol = icmp eq ptr %5, null
  br i1 %.not46.prol, label %.lr.ph54.prol.loopexit, label %6

6:                                                ; preds = %.lr.ph54.prol
  %7 = add nsw i32 %0, -1                         ; 3 uses
  store i32 %7, ptr @toptind, align 4, !tbaa !10
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds [8 x i8], ptr %1, i64 %8
  store ptr %5, ptr %9, align 8, !tbaa !13
  br label %.lr.ph54.prol.loopexit

.lr.ph54.prol.loopexit:                           ; preds = %.lr.ph54.prol, %6, %.lr.ph54.preheader
  %indvars.iv66.unr = phi i64 [ %i.be, %.lr.ph54.preheader ], [ %indvars.iv.next67.prol, %6 ], [ %indvars.iv.next67.prol, %.lr.ph54.prol ]
  %.unr = phi i32 [ %0, %.lr.ph54.preheader ], [ %7, %6 ], [ %0, %.lr.ph54.prol ]
  %10 = icmp eq i32 %0, 2
  br i1 %10, label %._crit_edge, label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.prol.loopexit, %bb.z
  %indvars.iv66 = phi i64 [ %indvars.iv.next67.1, %bb.z ], [ %indvars.iv66.unr, %.lr.ph54.prol.loopexit ] ; 3 uses
  %i.bf = phi i32 [ %i.bk, %bb.z ], [ %.unr, %.lr.ph54.prol.loopexit ] ; 2 uses
  %11 = getelementptr [8 x i8], ptr %1, i64 %indvars.iv66
  %12 = getelementptr i8, ptr %11, i64 -8
  %i.bg = load ptr, ptr %12, align 8, !tbaa !13   ; 2 uses
  %.not46 = icmp eq ptr %i.bg, null
  br i1 %.not46, label %.lr.ph54.1, label %13

13:                                               ; preds = %.lr.ph54
  %14 = add nsw i32 %i.bf, -1                     ; 3 uses
  store i32 %14, ptr @toptind, align 4, !tbaa !10
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [8 x i8], ptr %1, i64 %15
  store ptr %i.bg, ptr %16, align 8, !tbaa !13
  br label %.lr.ph54.1

.lr.ph54.1:                                       ; preds = %13, %.lr.ph54
  %17 = phi i32 [ %14, %13 ], [ %i.bf, %.lr.ph54 ] ; 2 uses
  %indvars.iv.next67.1 = add nsw i64 %indvars.iv66, -2 ; 2 uses
  %18 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next67.1
  %19 = load ptr, ptr %18, align 8, !tbaa !13     ; 2 uses
  %.not46.1 = icmp eq ptr %19, null
  br i1 %.not46.1, label %bb.z, label %bb.y

bb.y:                                             ; preds = %.lr.ph54.1
  %i.bh = add nsw i32 %17, -1                     ; 3 uses
  store i32 %i.bh, ptr @toptind, align 4, !tbaa !10
  %i.bi = sext i32 %i.bh to i64
  %i.bj = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bi
  store ptr %19, ptr %i.bj, align 8, !tbaa !13
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %.lr.ph54.1
  %i.bk = phi i32 [ %i.bh, %bb.y ], [ %17, %.lr.ph54.1 ]
  %20 = icmp sgt i64 %indvars.iv66, 3
  br i1 %20, label %.lr.ph54, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph54.prol.loopexit, %bb.z, %.critedge
  store i1 true, ptr @tgetopt.done, align 1
  br label %bb.aa

bb.aa:                                            ; preds = %bb.k, %bb.x, %._crit_edge
  %.1 = phi i32 [ -1, %._crit_edge ], [ 63, %bb.k ], [ %i.bc, %bb.x ]
  ret i32 %.1
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #1

declare void @msg(ptr noundef, ...) local_unnamed_addr #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind willreturn memory(read) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !15}
!10 = !{!6, !6, i64 0}
!11 = !{!"any pointer", !5, i64 0}
!12 = !{!"p1 omnipotent char", !11, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!5, !5, i64 0}
!15 = !{!"llvm.loop.mustprogress"}
end_hunk_0
