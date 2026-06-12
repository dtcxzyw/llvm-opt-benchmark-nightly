begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local double @SOR_num_flops(i32 noundef %0, i32 noundef %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = sitofp i32 %0 to double
  %i.b = sitofp i32 %1 to double
  %i.c = sitofp i32 %2 to double
  %i.d = fadd nnan double %i.a, -1.000000e+00
  %i.e = fadd nnan double %i.b, -1.000000e+00
  %i.f = fmul double %i.d, %i.e
  %i.g = fmul double %i.f, %i.c
  %i.h = fmul double %i.g, 6.000000e+00
  ret double %i.h
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @SOR_execute(i32 noundef %0, i32 noundef %1, double noundef %2, ptr nofree noundef readonly captures(none) %3, i32 noundef %4) local_unnamed_addr #1 {
bb.a:
  %i.a = fmul double %2, 2.500000e-01             ; 3 uses
  %i.b = fsub double 1.000000e+00, %2             ; 3 uses
  %5 = icmp sgt i32 %4, 0
  %6 = icmp sgt i32 %0, 2
  %or.cond = and i1 %5, %6
  %i.c = icmp sgt i32 %1, 2
  %or.cond54 = and i1 %or.cond, %i.c
  br i1 %or.cond54, label %.preheader.us.us.preheader, label %._crit_edge38

.preheader.us.us.preheader:                       ; preds = %bb.a
  %7 = add nsw i32 %1, -1                         ; 2 uses
  %8 = add nsw i32 %0, -1
  %.phi.trans.insert.phi.trans.insert = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.pre.pre = load ptr, ptr %.phi.trans.insert.phi.trans.insert, align 8, !tbaa !8
  %wide.trip.count48 = zext i32 %8 to i64
  %wide.trip.count = zext i32 %7 to i64
  %i.d = add nsw i64 %wide.trip.count, -1         ; 3 uses
  %xtraiter = and i64 %i.d, 1
  %i.e = icmp eq i32 %7, 2
  %unroll_iter = and i64 %i.d, -2
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  %lcmp.mod55 = trunc i64 %i.d to i1
  br label %.preheader.us.us

.preheader.us.us:                                 ; preds = %.preheader.us.us.preheader, %._crit_edge.split.us.us.us
  %.037.us.us = phi i32 [ %i.ak, %._crit_edge.split.us.us.us ], [ 0, %.preheader.us.us.preheader ]
  br label %.lr.ph.us.us.us

.lr.ph.us.us.us:                                  ; preds = %..loopexit_crit_edge.us.us.us, %.preheader.us.us
  %i.f = phi ptr [ %i.k, %..loopexit_crit_edge.us.us.us ], [ %.pre.pre, %.preheader.us.us ] ; 8 uses
  %indvars.iv45 = phi i64 [ %indvars.iv.next46, %..loopexit_crit_edge.us.us.us ], [ 1, %.preheader.us.us ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv45
  %i.h = getelementptr i8, ptr %i.g, i64 -8
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 3 uses
  %indvars.iv.next46 = add nuw nsw i64 %indvars.iv45, 1 ; 3 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv.next46
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 4 uses
  %.phi.trans.insert51 = getelementptr i8, ptr %i.f, i64 8
  %.pre52 = load double, ptr %.phi.trans.insert51, align 8, !tbaa !11 ; 2 uses
  %load_initial = load double, ptr %i.f, align 8  ; 2 uses
  br i1 %i.e, label %.epil.preheader, label %.lr.ph.us.us.us.new

.lr.ph.us.us.us.new:                              ; preds = %.lr.ph.us.us.us, %.lr.ph.us.us.us.new
  %store_forwarded = phi double [ %i.aj, %.lr.ph.us.us.us.new ], [ %load_initial, %.lr.ph.us.us.us ]
  %i.l = phi double [ %i.ag, %.lr.ph.us.us.us.new ], [ %.pre52, %.lr.ph.us.us.us ]
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.us.us.us.new ], [ 1, %.lr.ph.us.us.us ] ; 5 uses
  %niter = phi i64 [ %niter.next.1, %.lr.ph.us.us.us.new ], [ 0, %.lr.ph.us.us.us ]
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv
  %i.n = load double, ptr %i.m, align 8, !tbaa !11
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv
  %i.p = load double, ptr %i.o, align 8, !tbaa !11
  %i.q = fadd double %i.n, %i.p
  %i.r = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv
  %i.s = fadd double %i.q, %store_forwarded
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.t = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.u = load double, ptr %i.t, align 8, !tbaa !11 ; 2 uses
  %i.v = fadd double %i.s, %i.u
  %i.w = fmul double %i.b, %i.l
  %i.x = tail call double @llvm.fmuladd.f64(double %i.a, double %i.v, double %i.w) ; 2 uses
  store double %i.x, ptr %i.r, align 8, !tbaa !11
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.next
  %i.z = load double, ptr %i.y, align 8, !tbaa !11
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.next
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !11
  %i.ac = fadd double %i.z, %i.ab
  %i.ad = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.ae = fadd double %i.ac, %i.x
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.next.1
  %i.ag = load double, ptr %i.af, align 8, !tbaa !11 ; 3 uses
  %i.ah = fadd double %i.ae, %i.ag
  %i.ai = fmul double %i.b, %i.u
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.a, double %i.ah, double %i.ai) ; 3 uses
  store double %i.aj, ptr %i.ad, align 8, !tbaa !11
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %..loopexit_crit_edge.us.us.us.unr-lcssa, label %.lr.ph.us.us.us.new, !llvm.loop !13

..loopexit_crit_edge.us.us.us.unr-lcssa:          ; preds = %.lr.ph.us.us.us.new
  br i1 %lcmp.mod.not, label %..loopexit_crit_edge.us.us.us, label %.epil.preheader

.epil.preheader:                                  ; preds = %..loopexit_crit_edge.us.us.us.unr-lcssa, %.lr.ph.us.us.us
  %store_forwarded.epil.init = phi double [ %load_initial, %.lr.ph.us.us.us ], [ %i.aj, %..loopexit_crit_edge.us.us.us.unr-lcssa ]
  %.epil.init = phi double [ %.pre52, %.lr.ph.us.us.us ], [ %i.ag, %..loopexit_crit_edge.us.us.us.unr-lcssa ]
  %indvars.iv.epil.init = phi i64 [ 1, %.lr.ph.us.us.us ], [ %indvars.iv.next.1, %..loopexit_crit_edge.us.us.us.unr-lcssa ] ; 4 uses
  tail call void @llvm.assume(i1 %lcmp.mod55)
  %9 = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv.epil.init
  %10 = load double, ptr %9, align 8, !tbaa !11
  %11 = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv.epil.init
  %12 = load double, ptr %11, align 8, !tbaa !11
  %13 = fadd double %10, %12
  %14 = getelementptr [8 x i8], ptr %i.f, i64 %indvars.iv.epil.init
  %15 = fadd double %13, %store_forwarded.epil.init
  %16 = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %indvars.iv.epil.init
  %17 = getelementptr inbounds nuw i8, ptr %16, i64 8
  %18 = load double, ptr %17, align 8, !tbaa !11
  %19 = fadd double %15, %18
  %20 = fmul double %i.b, %.epil.init
  %21 = tail call double @llvm.fmuladd.f64(double %i.a, double %19, double %20)
  store double %21, ptr %14, align 8, !tbaa !11
  br label %..loopexit_crit_edge.us.us.us

..loopexit_crit_edge.us.us.us:                    ; preds = %..loopexit_crit_edge.us.us.us.unr-lcssa, %.epil.preheader
  %exitcond49.not = icmp eq i64 %indvars.iv.next46, %wide.trip.count48
  br i1 %exitcond49.not, label %._crit_edge.split.us.us.us, label %.lr.ph.us.us.us, !llvm.loop !15

._crit_edge.split.us.us.us:                       ; preds = %..loopexit_crit_edge.us.us.us
  %i.ak = add nuw nsw i32 %.037.us.us, 1          ; 2 uses
  %exitcond50.not = icmp eq i32 %i.ak, %4
  br i1 %exitcond50.not, label %._crit_edge38, label %.preheader.us.us, !llvm.loop !16

._crit_edge38:                                    ; preds = %._crit_edge.split.us.us.us, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #3

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

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
!9 = !{!"p1 double", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!12, !12, i64 0}
!12 = !{!"double", !6, i64 0}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
end_hunk_0
