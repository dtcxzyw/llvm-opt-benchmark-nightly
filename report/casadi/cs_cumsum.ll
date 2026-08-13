loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define double @cs_cumsum(ptr nofree noundef writeonly captures(address_is_null) %0, ptr nofree noundef captures(address_is_null) %1, i32 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp ne ptr %0, null
  %i.b = icmp ne ptr %1, null
  %or.cond = and i1 %i.a, %i.b
  br i1 %or.cond, label %.preheader, label %bb.b

.preheader:                                       ; preds = %bb.a
  %i.c = icmp sgt i32 %2, 0
  br i1 %i.c, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %2 to i64      ; 2 uses
  %xtraiter = and i64 %wide.trip.count, 1
  %i.d = icmp eq i32 %2, 1
  br i1 %i.d, label %.lr.ph.epil.preheader, label %.lr.ph.preheader.new

.lr.ph.preheader.new:                             ; preds = %.lr.ph.preheader
  %unroll_iter = and i64 %wide.trip.count, 2147483646
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %.lr.ph.preheader.new
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader.new ], [ %indvars.iv.next.1, %.lr.ph ] ; 4 uses
  %.031 = phi double [ 0.000000e+00, %.lr.ph.preheader.new ], [ %i.o, %.lr.ph ]
  %.02330 = phi i32 [ 0, %.lr.ph.preheader.new ], [ %i.m, %.lr.ph ] ; 3 uses
  %niter = phi i64 [ 0, %.lr.ph.preheader.new ], [ %niter.next.1, %.lr.ph ]
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv
  store i32 %.02330, ptr %i.e, align 4, !tbaa !8
  %i.f = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv ; 2 uses
  %i.g = load i32, ptr %i.f, align 4, !tbaa !8    ; 2 uses
  %i.h = add nsw i32 %i.g, %.02330                ; 3 uses
  %i.i = sitofp i32 %i.g to double
  %i.j = fadd double %.031, %i.i
  store i32 %.02330, ptr %i.f, align 4, !tbaa !8
  %indvars.iv.next = or disjoint i64 %indvars.iv, 1 ; 2 uses
  %3 = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.next
  store i32 %i.h, ptr %3, align 4, !tbaa !8
  %i.k = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.next ; 2 uses
  %i.l = load i32, ptr %i.k, align 4, !tbaa !8    ; 2 uses
  %i.m = add nsw i32 %i.l, %i.h                   ; 3 uses
  %i.n = sitofp i32 %i.l to double
  %i.o = fadd double %i.j, %i.n                   ; 3 uses
  store i32 %i.h, ptr %i.k, align 4, !tbaa !8
  %indvars.iv.next.1 = add nuw nsw i64 %indvars.iv, 2 ; 2 uses
  %niter.next.1 = add i64 %niter, 2               ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit.unr-lcssa, label %.lr.ph, !llvm.loop !9

._crit_edge.loopexit.unr-lcssa:                   ; preds = %.lr.ph
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %.lr.ph.epil.preheader

.lr.ph.epil.preheader:                            ; preds = %._crit_edge.loopexit.unr-lcssa, %.lr.ph.preheader
  %indvars.iv.epil.init = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next.1, %._crit_edge.loopexit.unr-lcssa ] ; 2 uses
  %.031.epil.init = phi double [ 0.000000e+00, %.lr.ph.preheader ], [ %i.o, %._crit_edge.loopexit.unr-lcssa ]
  %.02330.epil.init = phi i32 [ 0, %.lr.ph.preheader ], [ %i.m, %._crit_edge.loopexit.unr-lcssa ] ; 3 uses
  %lcmp.mod42 = trunc i32 %2 to i1
  tail call void @llvm.assume(i1 %lcmp.mod42)
  %i.p = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %indvars.iv.epil.init
  store i32 %.02330.epil.init, ptr %i.p, align 4, !tbaa !8
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %indvars.iv.epil.init ; 2 uses
  %i.r = load i32, ptr %i.q, align 4, !tbaa !8    ; 2 uses
  %i.s = add nsw i32 %i.r, %.02330.epil.init
  %i.t = sitofp i32 %i.r to double
  %i.u = fadd double %.031.epil.init, %i.t
  store i32 %.02330.epil.init, ptr %i.q, align 4, !tbaa !8
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph.epil.preheader, %._crit_edge.loopexit.unr-lcssa, %.preheader
  %.023.lcssa = phi i32 [ 0, %.preheader ], [ %i.m, %._crit_edge.loopexit.unr-lcssa ], [ %i.s, %.lr.ph.epil.preheader ]
  %.0.lcssa = phi double [ 0.000000e+00, %.preheader ], [ %i.o, %._crit_edge.loopexit.unr-lcssa ], [ %i.u, %.lr.ph.epil.preheader ]
  %i.v = sext i32 %2 to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %0, i64 %i.v
  store i32 %.023.lcssa, ptr %i.w, align 4, !tbaa !8
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %.025 = phi double [ %.0.lcssa, %._crit_edge ], [ -1.000000e+00, %bb.a ]
  ret double %.025
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!5, !5, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
end_hunk_0
