begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @SparseCompRow_num_flops(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = srem i32 %1, %0
  %i.b = sub nsw i32 %1, %i.a
  %i.c = sitofp i32 %i.b to double
  %i.d = fmul nnan double %i.c, 2.000000e+00
  %i.e = sitofp i32 %2 to double
  %i.f = fmul double %i.d, %i.e
  ret double %i.f
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @SparseCompRow_matmult(i32 noundef %0, ptr nofree noundef writeonly captures(none) %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef readonly captures(none) %5, i32 noundef %6) local_unnamed_addr #1 {
bb.a:
  %i.a = icmp sgt i32 %6, 0
  %i.b = icmp sgt i32 %0, 0
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader.us.preheader, label %._crit_edge31

.preheader.us.preheader:                          ; preds = %bb.a
  %.pre.pre = load i32, ptr %3, align 4, !tbaa !4
  %wide.trip.count37 = zext nneg i32 %0 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge29.us
  %.030.us = phi i32 [ %i.ay, %._crit_edge29.us ], [ 0, %.preheader.us.preheader ]
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %._crit_edge
  %i.c = phi i32 [ %.pre.pre, %.preheader.us ], [ %i.e, %._crit_edge ] ; 2 uses
  %indvars.iv34 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next35, %._crit_edge ] ; 2 uses
  %indvars.iv.next35 = add nuw nsw i64 %indvars.iv34, 1 ; 3 uses
  %i.d = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv.next35
  %i.e = load i32, ptr %i.d, align 4, !tbaa !4    ; 3 uses
  %i.f = icmp slt i32 %i.c, %i.e
  br i1 %i.f, label %.lr.ph.us.preheader, label %._crit_edge

.lr.ph.us.preheader:                              ; preds = %bb.b
  %i.g = sext i32 %i.c to i64                     ; 4 uses
  %wide.trip.count = sext i32 %i.e to i64         ; 3 uses
  %i.h = sub nsw i64 %wide.trip.count, %i.g
  %xtraiter = and i64 %i.h, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader, %.lr.ph.us.prol
  %indvars.iv.prol = phi i64 [ %indvars.iv.next.prol, %.lr.ph.us.prol ], [ %i.g, %.lr.ph.us.preheader ] ; 3 uses
  %.02326.us.prol = phi double [ %i.p, %.lr.ph.us.prol ], [ 0.000000e+00, %.lr.ph.us.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.us.prol ], [ 0, %.lr.ph.us.preheader ]
  %i.i = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.prol
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %i.k = sext i32 %i.j to i64
  %i.l = getelementptr inbounds [8 x i8], ptr %5, i64 %i.k
  %i.m = load double, ptr %i.l, align 8, !tbaa !8
  %i.n = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.prol
  %i.o = load double, ptr %i.n, align 8, !tbaa !8
  %i.p = tail call double @llvm.fmuladd.f64(double %i.m, double %i.o, double %.02326.us.prol) ; 3 uses
  %indvars.iv.next.prol = add nsw i64 %indvars.iv.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol, !llvm.loop !10

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph.us.preheader ], [ %i.p, %.lr.ph.us.prol ]
  %indvars.iv.unr = phi i64 [ %i.g, %.lr.ph.us.preheader ], [ %indvars.iv.next.prol, %.lr.ph.us.prol ]
  %.02326.us.unr = phi double [ 0.000000e+00, %.lr.ph.us.preheader ], [ %i.p, %.lr.ph.us.prol ]
  %i.q = sub nsw i64 %i.g, %wide.trip.count
  %i.r = icmp ugt i64 %i.q, -4
  br i1 %i.r, label %._crit_edge, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %indvars.iv = phi i64 [ %indvars.iv.next.3, %.lr.ph.us ], [ %indvars.iv.unr, %.lr.ph.us.prol.loopexit ] ; 6 uses
  %.02326.us = phi double [ %i.ax, %.lr.ph.us ], [ %.02326.us.unr, %.lr.ph.us.prol.loopexit ]
  %i.s = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %i.u = sext i32 %i.t to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %5, i64 %i.u
  %i.w = load double, ptr %i.v, align 8, !tbaa !8
  %i.x = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv
  %i.y = load double, ptr %i.x, align 8, !tbaa !8
  %i.z = tail call double @llvm.fmuladd.f64(double %i.w, double %i.y, double %.02326.us)
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.aa = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next
  %i.ab = load i32, ptr %i.aa, align 4, !tbaa !4
  %i.ac = sext i32 %i.ab to i64
  %i.ad = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ac
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !8
  %i.af = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next
  %i.ag = load double, ptr %i.af, align 8, !tbaa !8
  %i.ah = tail call double @llvm.fmuladd.f64(double %i.ae, double %i.ag, double %i.z)
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, 2 ; 2 uses
  %i.ai = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next.1
  %i.aj = load i32, ptr %i.ai, align 4, !tbaa !4
  %i.ak = sext i32 %i.aj to i64
  %i.al = getelementptr inbounds [8 x i8], ptr %5, i64 %i.ak
  %i.am = load double, ptr %i.al, align 8, !tbaa !8
  %i.an = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next.1
  %i.ao = load double, ptr %i.an, align 8, !tbaa !8
  %i.ap = tail call double @llvm.fmuladd.f64(double %i.am, double %i.ao, double %i.ah)
  %indvars.iv.next.2 = add nsw i64 %indvars.iv, 3 ; 2 uses
  %i.aq = getelementptr inbounds [4 x i8], ptr %4, i64 %indvars.iv.next.2
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !4
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [8 x i8], ptr %5, i64 %i.as
  %i.au = load double, ptr %i.at, align 8, !tbaa !8
  %i.av = getelementptr inbounds [8 x i8], ptr %2, i64 %indvars.iv.next.2
  %i.aw = load double, ptr %i.av, align 8, !tbaa !8
  %i.ax = tail call double @llvm.fmuladd.f64(double %i.au, double %i.aw, double %i.ap) ; 2 uses
  %indvars.iv.next.3 = add nsw i64 %indvars.iv, 4 ; 2 uses
  %exitcond.not.3 = icmp eq i64 %indvars.iv.next.3, %wide.trip.count
  br i1 %exitcond.not.3, label %._crit_edge, label %.lr.ph.us, !llvm.loop !12

._crit_edge:                                      ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %bb.b
  %.023.lcssa = phi double [ 0.000000e+00, %bb.b ], [ %.lcssa.unr, %.lr.ph.us.prol.loopexit ], [ %i.ax, %.lr.ph.us ]
  %7 = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %indvars.iv34
  store double %.023.lcssa, ptr %7, align 8, !tbaa !8
  %exitcond37.not = icmp eq i64 %indvars.iv.next35, %wide.trip.count37
  br i1 %exitcond37.not, label %._crit_edge29.us, label %bb.b, !llvm.loop !14

._crit_edge29.us:                                 ; preds = %._crit_edge
  %i.ay = add nuw nsw i32 %.030.us, 1             ; 2 uses
  %exitcond39.not = icmp eq i32 %i.ay, %6
  br i1 %exitcond39.not, label %._crit_edge31, label %.preheader.us, !llvm.loop !15

._crit_edge31:                                    ; preds = %._crit_edge29.us, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.unroll.disable"}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
end_hunk_0
