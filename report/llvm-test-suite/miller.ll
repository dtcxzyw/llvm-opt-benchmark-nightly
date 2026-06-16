begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@Z_err_buf = external global [0 x i8], align 1
@.str = private unnamed_addr constant [22 x i8] c"found %d differences\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"fell off end of do_miller\0A\00", align 1

; Function Attrs: nounwind uwtable
define dso_local ptr @G_do_miller(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %i.a = add nsw i32 %1, %0                       ; 2 uses
  %i.b = add nsw i32 %i.a, 1
  %i.c = sext i32 %i.b to i64                     ; 2 uses
  %i.d = shl nsw i64 %i.c, 3
  %i.e = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef %i.d) #4 ; 4 uses
  %i.f = shl nsw i64 %i.c, 2
  %i.g = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef %i.f) #4 ; 5 uses
  %invariant.smin = tail call i32 @llvm.smin.i32(i32 %0, i32 %1) ; 3 uses
  %or.cond119 = icmp sgt i32 %invariant.smin, 0
  br i1 %or.cond119, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0103120 = phi i32 [ %i.j, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %i.h = tail call i32 (i32, i32, i32, ...) @X_com(i32 noundef %.0103120, i32 noundef %.0103120, i32 noundef %3) #4
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.b, label %.critedge

bb.b:                                             ; preds = %.lr.ph
  %i.j = add nuw nsw i32 %.0103120, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.j, %invariant.smin
  br i1 %exitcond.not, label %.critedge, label %.lr.ph, !llvm.loop !8

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.0103.lcssa = phi i32 [ 0, %bb.a ], [ %invariant.smin, %bb.b ], [ %.0103120, %.lr.ph ] ; 3 uses
  %i.k = sdiv i32 %i.a, 2                         ; 4 uses
  %i.l = sext i32 %i.k to i64                     ; 4 uses
  %i.m = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.l
  store i32 %.0103.lcssa, ptr %i.m, align 4, !tbaa !4
  %i.n = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.l
  store ptr null, ptr %i.n, align 8, !tbaa !10
  %i.o = icmp eq i32 %.0103.lcssa, %0             ; 2 uses
  %i.p = add nsw i32 %i.k, 1                      ; 2 uses
  %i.q = add nsw i32 %i.k, -1                     ; 2 uses
  %i.r = select i1 %i.o, i32 %i.p, i32 %i.q
  %i.s = icmp eq i32 %.0103.lcssa, %1             ; 2 uses
  %i.t = select i1 %i.s, i32 %i.q, i32 %i.p
  %i.u = and i1 %i.o, %i.s
  br i1 %i.u, label %bb.l, label %.preheader116

.preheader116:                                    ; preds = %.critedge
  %.not140 = icmp slt i32 %2, 1
  br i1 %.not140, label %._crit_edge144, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %.preheader116
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %bb.k
  %indvars.iv148 = phi i64 [ 1, %.preheader.lr.ph ], [ %indvars.iv.next149, %bb.k ] ; 4 uses
  %.098143 = phi i32 [ %i.r, %.preheader.lr.ph ], [ %i.bn, %bb.k ] ; 4 uses
  %.099142 = phi i32 [ %i.t, %.preheader.lr.ph ], [ %i.bo, %bb.k ] ; 3 uses
  %.not111133 = icmp sgt i32 %.098143, %.099142
  br i1 %.not111133, label %._crit_edge, label %.lr.ph137

.lr.ph137:                                        ; preds = %.preheader
  %i.v = sub nsw i64 %i.l, %indvars.iv148
  %i.w = add nsw i64 %indvars.iv148, %i.l
  %i.x = sext i32 %.098143 to i64
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph137, %bb.i
  %indvars.iv = phi i64 [ %i.x, %.lr.ph137 ], [ %indvars.iv.next, %bb.i ] ; 11 uses
  %.1136 = phi i32 [ %.098143, %.lr.ph137 ], [ %spec.select, %bb.i ]
  %.1100135 = phi i32 [ %.099142, %.lr.ph137 ], [ %.2101, %bb.i ]
  %i.y = tail call ptr (i64, ...) @_Z_myalloc(i64 noundef 24) #4 ; 5 uses
  %i.z = icmp eq i64 %indvars.iv, %i.v
  br i1 %i.z, label %._crit_edge153, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = icmp eq i64 %indvars.iv, %i.w
  br i1 %i.aa, label %._crit_edge152, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ab = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv ; 2 uses
  %i.ac = getelementptr i8, ptr %i.ab, i64 4
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !4
  %i.ae = getelementptr i8, ptr %i.ab, i64 -4
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !4
  %.not113 = icmp slt i32 %i.ad, %i.af
  br i1 %.not113, label %._crit_edge152, label %._crit_edge153

._crit_edge153:                                   ; preds = %bb.c, %bb.e
  %i.ag = add nsw i64 %indvars.iv, 1              ; 2 uses
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ag
  %i.ai = load i32, ptr %i.ah, align 4, !tbaa !4
  %i.aj = add nsw i32 %i.ai, 1
  br label %bb.f

._crit_edge152:                                   ; preds = %bb.d, %bb.e
  %i.ak = add nsw i64 %indvars.iv, -1             ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.g, i64 %i.ak
  %i.am = load i32, ptr %i.al, align 4, !tbaa !4
  br label %bb.f

bb.f:                                             ; preds = %._crit_edge152, %._crit_edge153
  %.sink165 = phi i64 [ %i.ak, %._crit_edge152 ], [ %i.ag, %._crit_edge153 ]
  %.sink = phi i32 [ 1, %._crit_edge152 ], [ 2, %._crit_edge153 ]
  %.1104 = phi i32 [ %i.am, %._crit_edge152 ], [ %i.aj, %._crit_edge153 ] ; 5 uses
  %i.an = getelementptr inbounds [8 x i8], ptr %i.e, i64 %.sink165
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !10
  store ptr %i.ao, ptr %i.y, align 8, !tbaa !13
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i32 %.sink, ptr %i.ap, align 8, !tbaa !15
  %i.aq = getelementptr inbounds nuw i8, ptr %i.y, i64 12
  store i32 %.1104, ptr %i.aq, align 4, !tbaa !16
  %i.ar = trunc nsw i64 %indvars.iv to i32
  %i.as = sub i32 %i.ar, %i.k
  %i.at = add i32 %i.as, %.1104                   ; 4 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store i32 %i.at, ptr %i.au, align 8, !tbaa !17
  %i.av = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv
  store ptr %i.y, ptr %i.av, align 8, !tbaa !10
  %i.aw = icmp slt i32 %.1104, %0
  %i.ax = icmp slt i32 %i.at, %1
  %or.cond114123 = and i1 %i.aw, %i.ax
  br i1 %or.cond114123, label %.lr.ph126, label %.critedge2

.lr.ph126:                                        ; preds = %bb.f, %bb.g
  %.0102125 = phi i32 [ %i.bb, %bb.g ], [ %i.at, %bb.f ] ; 3 uses
  %.2105124 = phi i32 [ %i.ba, %bb.g ], [ %.1104, %bb.f ] ; 3 uses
  %i.ay = tail call i32 (i32, i32, i32, ...) @X_com(i32 noundef %.2105124, i32 noundef %.0102125, i32 noundef %3) #4
  %i.az = icmp eq i32 %i.ay, 0
  br i1 %i.az, label %bb.g, label %.critedge2

bb.g:                                             ; preds = %.lr.ph126
  %i.ba = add nsw i32 %.2105124, 1                ; 3 uses
  %i.bb = add nsw i32 %.0102125, 1                ; 3 uses
  %i.bc = icmp slt i32 %i.ba, %0
  %i.bd = icmp slt i32 %i.bb, %1
  %or.cond114 = select i1 %i.bc, i1 %i.bd, i1 false
  br i1 %or.cond114, label %.lr.ph126, label %.critedge2, !llvm.loop !18

.critedge2:                                       ; preds = %.lr.ph126, %bb.g, %bb.f
  %.2105.lcssa = phi i32 [ %.1104, %bb.f ], [ %i.ba, %bb.g ], [ %.2105124, %.lr.ph126 ] ; 2 uses
  %.0102.lcssa = phi i32 [ %i.at, %bb.f ], [ %i.bb, %bb.g ], [ %.0102125, %.lr.ph126 ]
  %i.be = getelementptr inbounds [4 x i8], ptr %i.g, i64 %indvars.iv
  store i32 %.2105.lcssa, ptr %i.be, align 4, !tbaa !4
  %i.bf = icmp eq i32 %.2105.lcssa, %0            ; 2 uses
  %i.bg = icmp eq i32 %.0102.lcssa, %1            ; 2 uses
  %or.cond115 = select i1 %i.bf, i1 %i.bg, i1 false
  br i1 %or.cond115, label %bb.h, label %bb.i

bb.h:                                             ; preds = %.critedge2
  %i.bh = getelementptr inbounds [8 x i8], ptr %i.e, i64 %indvars.iv
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !10
  br label %bb.l

bb.i:                                             ; preds = %.critedge2
  %indvars.iv.next = add nsw i64 %indvars.iv, 2   ; 3 uses
  %i.bj = trunc nsw i64 %indvars.iv.next to i32
  %spec.select = select i1 %i.bf, i32 %i.bj, i32 %.1136 ; 2 uses
  %i.bk = trunc i64 %indvars.iv to i32
  %i.bl = add i32 %i.bk, -2
  %.2101 = select i1 %i.bg, i32 %i.bl, i32 %.1100135 ; 3 uses
  %i.bm = sext i32 %.2101 to i64
  %.not111 = icmp sgt i64 %indvars.iv.next, %i.bm
  br i1 %.not111, label %._crit_edge, label %bb.c, !llvm.loop !19

._crit_edge:                                      ; preds = %bb.i, %.preheader
  %.1100.lcssa = phi i32 [ %.099142, %.preheader ], [ %.2101, %bb.i ]
  %.1.lcssa = phi i32 [ %.098143, %.preheader ], [ %spec.select, %bb.i ]
  %i.bn = add nsw i32 %.1.lcssa, -1
  %i.bo = add nsw i32 %.1100.lcssa, 1
  %i.bp = trunc nuw nsw i64 %indvars.iv148 to i32 ; 2 uses
  %i.bq = urem i32 %i.bp, 100
  %i.br = icmp eq i32 %i.bq, 0
  br i1 %i.br, label %bb.j, label %bb.k

bb.j:                                             ; preds = %._crit_edge
  %i.bs = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @Z_err_buf, ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %i.bp) #4 ; 0 uses
  tail call void (ptr, ...) @Z_chatter(ptr noundef nonnull @Z_err_buf) #4
  br label %bb.k

bb.k:                                             ; preds = %._crit_edge, %bb.j
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %.not = icmp samesign ugt i64 %indvars.iv.next149, %wide.trip.count
  br i1 %.not, label %._crit_edge144, label %.preheader, !llvm.loop !20

._crit_edge144:                                   ; preds = %bb.k, %.preheader116
  tail call void (i32, ...) @Z_exceed(i32 noundef %2) #4
  tail call void (ptr, ...) @Z_fatal(ptr noundef nonnull @.str.1) #4
  br label %bb.l

bb.l:                                             ; preds = %.critedge, %._crit_edge144, %bb.h
  %.0 = phi ptr [ null, %._crit_edge144 ], [ %i.bi, %bb.h ], [ null, %.critedge ]
  ret ptr %.0
}

declare ptr @_Z_myalloc(...) local_unnamed_addr #1

declare i32 @X_com(...) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @sprintf(ptr noalias noundef writeonly captures(none), ptr noundef readonly captures(none), ...) local_unnamed_addr #2

declare void @Z_chatter(...) local_unnamed_addr #1

declare void @Z_exceed(...) local_unnamed_addr #1

declare void @Z_fatal(...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!11, !11, i64 0}
!11 = !{!"p1 _ZTS3edt", !12, i64 0}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!14, !11, i64 0}
!14 = !{!"edt", !11, i64 0, !5, i64 8, !5, i64 12, !5, i64 16}
!15 = !{!14, !5, i64 8}
!16 = !{!14, !5, i64 12}
!17 = !{!14, !5, i64 16}
!18 = distinct !{!18, !9}
!19 = distinct !{!19, !9}
!20 = distinct !{!20, !9}
end_hunk_0
