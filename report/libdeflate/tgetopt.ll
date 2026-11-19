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
  %i.c = icmp ne ptr %tgetopt.nextchar.promoted81, null ; 2 uses
  %i.d = icmp slt i32 %i.a, %0                    ; 2 uses
  %i.e = or i1 %i.c, %i.d
  br i1 %i.e, label %bb.c, label %.critedge

bb.c:                                             ; preds = %.lr.ph.preheader, %.lr.ph
  %i.f = phi i1 [ %i.t, %.lr.ph ], [ %i.d, %.lr.ph.preheader ]
  %i.g = phi i1 [ %i.s, %.lr.ph ], [ %i.c, %.lr.ph.preheader ]
  %3 = phi i32 [ %5, %.lr.ph ], [ %i.a, %.lr.ph.preheader ] ; 4 uses
  %4 = phi ptr [ %i.r, %.lr.ph ], [ %tgetopt.nextchar.promoted81, %.lr.ph.preheader ] ; 2 uses
  br i1 %i.g, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %5 = add nsw i32 %3, 1                          ; 3 uses
  store i32 %5, ptr @toptind, align 4, !tbaa !10
  %6 = sext i32 %3 to i64                         ; 2 uses
  %i.h = getelementptr inbounds [8 x i8], ptr %1, i64 %6
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !13   ; 3 uses
  %i.j = load i8, ptr %i.i, align 1, !tbaa !14
  %i.k = icmp eq i8 %i.j, 45
  br i1 %i.k, label %bb.e, label %.lr.ph

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 3 uses
  %i.m = load i8, ptr %i.l, align 1, !tbaa !14
  switch i8 %i.m, label %bb.g [
    i8 0, label %.lr.ph
    i8 45, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  %i.o = load i8, ptr %i.n, align 1, !tbaa !14
  %i.p = icmp eq i8 %i.o, 0
  br i1 %i.p, label %..critedge_crit_edge.critedge, label %bb.g

..critedge_crit_edge.critedge:                    ; preds = %bb.f
  %i.q = getelementptr inbounds [8 x i8], ptr %1, i64 %6
  store ptr null, ptr %i.q, align 8, !tbaa !13
  br label %.critedge

bb.g:                                             ; preds = %bb.e, %bb.f
  store ptr %i.l, ptr @tgetopt.nextchar, align 8, !tbaa !13
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.g, %bb.d
  %i.r = phi ptr [ null, %bb.e ], [ null, %bb.d ], [ %i.l, %bb.g ] ; 2 uses
  %i.s = icmp ne ptr %i.r, null                   ; 2 uses
  %i.t = icmp slt i32 %5, %0                      ; 2 uses
  %i.u = select i1 %i.s, i1 true, i1 %i.t
  br i1 %i.u, label %bb.c, label %.critedge

bb.h:                                             ; preds = %bb.c
  %i.v = load i8, ptr %4, align 1, !tbaa !14      ; 6 uses
  %i.w = sext i8 %i.v to i32                      ; 5 uses
  %i.x = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %i.w) #3 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.z = load i32, ptr @topterr, align 4, !tbaa !10
  %.not44 = icmp eq i32 %i.z, 0
  br i1 %.not44, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  tail call void (ptr, ...) @msg(ptr noundef nonnull @.str, i32 noundef %i.w) #4
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  store i32 %i.w, ptr @toptopt, align 4, !tbaa !10
  br label %bb.ac

bb.l:                                             ; preds = %bb.h
  %i.aa = getelementptr inbounds nuw i8, ptr %4, i64 1 ; 9 uses
  store ptr %i.aa, ptr @tgetopt.nextchar, align 8, !tbaa !13
  store ptr null, ptr @toptarg, align 8, !tbaa !13
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 1
  %i.ac = load i8, ptr %i.ab, align 1, !tbaa !14
  %i.ad = icmp eq i8 %i.ac, 58
  br i1 %i.ad, label %bb.m, label %.thread82

bb.m:                                             ; preds = %bb.l
  %i.ae = load i8, ptr %i.aa, align 1, !tbaa !14
  %.not = icmp eq i8 %i.ae, 0
  br i1 %.not, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  store ptr %i.aa, ptr @toptarg, align 8, !tbaa !13
  store ptr @tgetopt.empty, ptr @tgetopt.nextchar, align 8, !tbaa !13
  br label %.thread82

bb.o:                                             ; preds = %bb.m
  %i.af = getelementptr inbounds nuw i8, ptr %i.x, i64 2
  %i.ag = load i8, ptr %i.af, align 1, !tbaa !14
  %.not40 = icmp eq i8 %i.ag, 58                  ; 2 uses
  br i1 %i.f, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  br i1 %.not40, label %.thread82, label %bb.q

bb.q:                                             ; preds = %bb.p
  %7 = sext i32 %3 to i64
  %i.ah = getelementptr [8 x i8], ptr %1, i64 %7  ; 2 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 -8
  store ptr null, ptr %i.ai, align 8, !tbaa !13
  %i.aj = add nsw i32 %3, 1
  store i32 %i.aj, ptr @toptind, align 4, !tbaa !10
  %i.ak = load ptr, ptr %i.ah, align 8, !tbaa !13
  store ptr %i.ak, ptr @toptarg, align 8, !tbaa !13
  br label %.thread82

bb.r:                                             ; preds = %bb.o
  br i1 %.not40, label %.thread82, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.al = load i32, ptr @topterr, align 4, !tbaa !10
  %.not42 = icmp eq i32 %i.al, 0
  br i1 %.not42, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.am = load i8, ptr %2, align 1, !tbaa !14
  %.not43 = icmp eq i8 %i.am, 58
  br i1 %.not43, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  tail call void (ptr, ...) @msg(ptr noundef nonnull @.str.1, i32 noundef %i.w) #4
  %.pre74.pre = load ptr, ptr @tgetopt.nextchar, align 8, !tbaa !13
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.s
  %.pre74 = phi ptr [ %.pre74.pre, %bb.u ], [ %i.aa, %bb.t ], [ %i.aa, %bb.s ]
  store i32 %i.w, ptr @toptopt, align 4, !tbaa !10
  %i.an = load i8, ptr %2, align 1, !tbaa !14
  %i.ao = icmp eq i8 %i.an, 58
  %i.ap = select i1 %i.ao, i8 58, i8 63
  br label %.thread82

.thread82:                                        ; preds = %bb.p, %bb.n, %bb.r, %bb.v, %bb.q, %bb.l
  %i.aq = phi ptr [ @tgetopt.empty, %bb.n ], [ %i.aa, %bb.q ], [ %.pre74, %bb.v ], [ %i.aa, %bb.r ], [ %i.aa, %bb.l ], [ %i.aa, %bb.p ]
  %.0 = phi i8 [ %i.v, %bb.n ], [ %i.v, %bb.q ], [ %i.ap, %bb.v ], [ %i.v, %bb.r ], [ %i.v, %bb.l ], [ %i.v, %bb.p ]
  %i.ar = load i8, ptr %i.aq, align 1, !tbaa !14
  %i.as = icmp eq i8 %i.ar, 0
  br i1 %i.as, label %bb.w, label %bb.x

bb.w:                                             ; preds = %.thread82
  %i.at = load i32, ptr @toptind, align 4, !tbaa !10
  %i.au = sext i32 %i.at to i64
  %i.av = getelementptr [8 x i8], ptr %1, i64 %i.au
  %i.aw = getelementptr i8, ptr %i.av, i64 -8
  store ptr null, ptr %i.aw, align 8, !tbaa !13
  store ptr null, ptr @tgetopt.nextchar, align 8, !tbaa !13
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.thread82
  %i.ax = sext i8 %.0 to i32
  br label %bb.ac

.critedge:                                        ; preds = %.lr.ph, %.lr.ph.preheader, %..critedge_crit_edge.critedge, %bb.b
  store i32 %0, ptr @toptind, align 4, !tbaa !10
  %i.ay = icmp sgt i32 %0, 1
  br i1 %i.ay, label %.lr.ph54.preheader, label %._crit_edge

.lr.ph54.preheader:                               ; preds = %.critedge
  %i.az = zext nneg i32 %0 to i64                 ; 3 uses
  %i.ba = and i64 %i.az, 1
  %lcmp.mod.not.not = icmp eq i64 %i.ba, 0
  br i1 %lcmp.mod.not.not, label %.lr.ph54.prol, label %.lr.ph54.prol.loopexit

.lr.ph54.prol:                                    ; preds = %.lr.ph54.preheader
  %indvars.iv.next67.prol = add nsw i64 %i.az, -1 ; 3 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next67.prol
  %i.bc = load ptr, ptr %i.bb, align 8, !tbaa !13 ; 2 uses
  %.not46.prol = icmp eq ptr %i.bc, null
  br i1 %.not46.prol, label %.lr.ph54.prol.loopexit, label %bb.y

bb.y:                                             ; preds = %.lr.ph54.prol
  %i.bd = add nsw i32 %0, -1                      ; 3 uses
  store i32 %i.bd, ptr @toptind, align 4, !tbaa !10
  %i.be = sext i32 %i.bd to i64
  %i.bf = getelementptr inbounds [8 x i8], ptr %1, i64 %i.be
  store ptr %i.bc, ptr %i.bf, align 8, !tbaa !13
  br label %.lr.ph54.prol.loopexit

.lr.ph54.prol.loopexit:                           ; preds = %.lr.ph54.prol, %bb.y, %.lr.ph54.preheader
  %indvars.iv66.unr = phi i64 [ %i.az, %.lr.ph54.preheader ], [ %indvars.iv.next67.prol, %bb.y ], [ %indvars.iv.next67.prol, %.lr.ph54.prol ]
  %.unr = phi i32 [ %0, %.lr.ph54.preheader ], [ %i.bd, %bb.y ], [ %0, %.lr.ph54.prol ]
  %i.bg = icmp eq i32 %0, 2
  br i1 %i.bg, label %._crit_edge, label %.lr.ph54

.lr.ph54:                                         ; preds = %.lr.ph54.prol.loopexit, %bb.ab
  %indvars.iv66 = phi i64 [ %indvars.iv.next67.1, %bb.ab ], [ %indvars.iv66.unr, %.lr.ph54.prol.loopexit ] ; 3 uses
  %i.bh = phi i32 [ %i.bu, %bb.ab ], [ %.unr, %.lr.ph54.prol.loopexit ] ; 2 uses
  %i.bi = getelementptr [8 x i8], ptr %1, i64 %indvars.iv66
  %i.bj = getelementptr i8, ptr %i.bi, i64 -8
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !13 ; 2 uses
  %.not46 = icmp eq ptr %i.bk, null
  br i1 %.not46, label %.lr.ph54.1, label %bb.z

bb.z:                                             ; preds = %.lr.ph54
  %i.bl = add nsw i32 %i.bh, -1                   ; 3 uses
  store i32 %i.bl, ptr @toptind, align 4, !tbaa !10
  %i.bm = sext i32 %i.bl to i64
  %i.bn = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bm
  store ptr %i.bk, ptr %i.bn, align 8, !tbaa !13
  br label %.lr.ph54.1

.lr.ph54.1:                                       ; preds = %bb.z, %.lr.ph54
  %i.bo = phi i32 [ %i.bl, %bb.z ], [ %i.bh, %.lr.ph54 ] ; 2 uses
  %indvars.iv.next67.1 = add nsw i64 %indvars.iv66, -2 ; 2 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv.next67.1
  %i.bq = load ptr, ptr %i.bp, align 8, !tbaa !13 ; 2 uses
  %.not46.1 = icmp eq ptr %i.bq, null
  br i1 %.not46.1, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %.lr.ph54.1
  %i.br = add nsw i32 %i.bo, -1                   ; 3 uses
  store i32 %i.br, ptr @toptind, align 4, !tbaa !10
  %i.bs = sext i32 %i.br to i64
  %i.bt = getelementptr inbounds [8 x i8], ptr %1, i64 %i.bs
  store ptr %i.bq, ptr %i.bt, align 8, !tbaa !13
  br label %bb.ab

bb.ab:                                            ; preds = %bb.aa, %.lr.ph54.1
  %i.bu = phi i32 [ %i.br, %bb.aa ], [ %i.bo, %.lr.ph54.1 ]
  %i.bv = icmp sgt i64 %indvars.iv66, 3
  br i1 %i.bv, label %.lr.ph54, label %._crit_edge, !llvm.loop !9

._crit_edge:                                      ; preds = %.lr.ph54.prol.loopexit, %bb.ab, %.critedge
  store i1 true, ptr @tgetopt.done, align 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.k, %bb.x, %._crit_edge
  %.1 = phi i32 [ -1, %._crit_edge ], [ 63, %bb.k ], [ %i.ax, %bb.x ]
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
